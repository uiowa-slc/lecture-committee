<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\TagField\TagField;

class LecturePage extends Page {

	private static $db = array(
		'EventDate' => 'Date',
		'Partnership' => 'Text',
		'Donations' => 'Text',
		'Location' => 'Text',
		'Time' => 'Text',
		'Price' => 'Text',
		'Details' => 'HTMLText',
		"LectureTitle" => "Text",
		"FeatureOnHomePage" => "Boolean",
		'Cancelled' => 'Boolean',
		"WebsiteLink" => "Text",
		'StreamingLink' => "Text",
		"DonorByline" => 'Text',
		'HostedBy' => 'Text',
		'Featuring' => 'Text',
	);

	private static $many_many = array(
		'Sponsors' => 'Sponsor',
		'Donors' => 'DonorPage',
	);

	private static $has_one = array(
		'Picture' => Image::class,
		'Poster' => Image::class,
	);

	private static $owns = array(
		'Picture',
		'Poster',
	);
	private static $show_in_sitetree = false;

	private static $default_sort = 'EventDate DESC';

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		// $titleField = $fields->FieldByName('Title');
		// $titleField->setDescription('(Or event name, for example if this event is a conference)');
		$fields->renameField("Title", "Name of Lecturer");
		$fields->removeFieldFromTab("Root.Main", "Content");
		$fields->removeByName("Metadata");

		$fields->addFieldToTab("Root.Main", new TextField('LectureTitle', 'Title of Lecture (optional)'));
		$fields->addFieldToTab("Root.Main", new DateField('EventDate', 'Date'));
		$fields->addFieldToTab("Root.Main", TextField::create('Featuring', 'Featuring')->setDescription('Optional, if multiple lecturers/speakers need to have their names in smaller type. Example: "Featuring: Person B'));
		$fields->addFieldToTab("Root.Main", new TextField('HostedBy', 'Hosted by:'));
		$fields->addFieldToTab("Root.Main", new TextField('Time', 'Time'));
		$fields->addFieldToTab("Root.Main", TextField::create('Location', 'Location')->setDescription('If the lecture is online, please put "Online" here'));
		$fields->addFieldToTab("Root.Main", new TextField('Partnership', 'In partnership with:'));
		$fields->addFieldToTab("Root.Main", new TextField('Donations', 'Support provided by:'));

		$donorField = TagField::create(
			'Donors',
			'Donor(s)',
			DonorPage::get(),
			$this->Donors()
		)
			->setShouldLazyLoad(false) // tags should be lazy loaded
			->setCanCreate(false); // new tag DataObjects can be created

		$sponsorField = TagField::create(
			'Sponsors',
			'Sponsor(s)',
			Sponsor::get(),
			$this->Sponsors()
		)
			->setShouldLazyLoad(false) // tags should be lazy loaded
			->setCanCreate(true); // new tag DataObjects can be created

		$fields->addFieldToTab("Root.Main", TextField::create('StreamingLink', 'Streaming Link')->setDescription('Usually this is "https://lectures.uiowa.edu/live" ("https://" required)'));
		$fields->addFieldToTab("Root.Main", new TextField('Price', 'Cost of lecture'));
		$fields->addFieldToTab("Root.Main", TextField::create('WebsiteLink', 'Lecturer website or more info link')->setDescription('Please include https:// in this link'));

		// $fields->addFieldToTab("Root.Main", $sponsorField);
		$fields->addFieldToTab("Root.Main", HTMLEditorField::create('Content', 'Description')->addExtraClass('stacked'));
		$fields->addFieldToTab("Root.Main", new UploadField('Picture'), "Content");
		$fields->addFieldToTab('Root.Main', CheckboxField::create('Cancelled', 'This lecture is cancelled or postponed')->setDescription('Prevents lectures from showing on the "Past Lectures" page'), 'Content');
		$fields->addFieldToTab("Root.DonorInfo", $donorField);
		$fields->addFieldToTab("Root.DonorInfo", TextField::create('DonorByline', 'Donor Byline')->setDescription('Shows up above the lecture/lecture title, example "Cassandra S. Foens M.D. FACR 2021 Lecture"'));
		$fields->addFieldToTab("Root.DonorInfo", UploadField::create('Poster', 'Poster for this event')->setDescription('This only shows up on special donor pages, and is not meant to show on the main page.'));
		return $fields;
	}

	public function getLecturer() {

		$title = $this->getField('Title');
		if ($title) {
			return ucwords($title);
		}

		return null;

	}

	public function getLectureTitle() {

		$title = $this->getField('LectureTitle');
		return ucwords($title);
	}

	public function getTitle() {

		$title = $this->getField('Title');
		return ucwords($title);

	}

	public function isToday() {
		if (!$this->EventDate) {
			return false;
		}
		return $this->obj('EventDate')->isToday();

	}

	public function isFuture() {
		//If the event is "in the future" aka it's not over (still returns true until the day following event)

		if (!$this->EventDate) {
			return false;
		}

		$midnight = new \DateTime();
		$midnight->setTimestamp(strtotime($this->EventDate))->modify('tomorrow')->setTime(0, 0);

		if ($midnight->getTimestamp() > time()) {
			return true;
		} else {
			return false;
		}
	}

	public function isPast() {

		//Event is conclusively over (ends next day)

		if (!$this->EventDate) {
			return false;
		}

		$midnight = new \DateTime();
		$midnight->setTimestamp(strtotime($this->EventDate))->modify('tomorrow')->setTime(0, 0);

		if ($midnight->getTimestamp() < time()) {
			return true;
		} else {
			return false;
		}
	}
	public function StreamButtonText() {
		$text = 'View Livestream';

		if ($this->StreamType() == 'Twitch') {
			$text = "View on Twitch";
		}

		return $text;

	}
	public function StreamType() {
		$url = $this->StreamLink;
		$locationType = 'Other';
		if ($url) {
			$domain = $this->parseDomain($url);

			if ($domain) {

				if (strpos($domain, 'twitch.tv') !== FALSE) {

					$locationType = 'Twitch';
				}

			}
		}

		return $locationType;
	}

	private function parseDomain($url) {
		$parsedUrl = parse_url($url);
		if (isset($parsedUrl["host"])) {
			$host = $parsedUrl["host"];
			return $host;
		}
	}
}

?>
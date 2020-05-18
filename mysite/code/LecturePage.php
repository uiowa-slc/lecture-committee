<?php

use SilverStripe\Assets\Image;
use SilverStripe\ORM\FieldType\DBDate;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\TagField\TagField;

class LecturePage extends Page {
	
	private static $db = array(
		'EventDate' => 'Date',
		'Partnership' => 'Text',
		'Location' => 'Text',
		'Time' => 'Text',
		'Price' => 'Text',
		'Details' => 'HTMLText',
		"LectureTitle" => "Text",
		"FeatureOnHomePage" => "Boolean",
		'Cancelled' => 'Boolean'
	);

	private static $many_many = array(
		'Sponsors' => 'Sponsor',
		'Donors' => 'Donor'
	);
	
	private static $has_one = array(
		'Picture' => Image::class
	);
	private static $show_in_sitetree = false;

	private static $default_sort = 'EventDate DESC';
	private static $allowed_children = array();
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$fields->renameField("Title", "Name of Lecturer");
		$fields->removeFieldFromTab("Root.Main","Content");
		$fields->removeByName("Metadata");
		$datefield = new DateField('EventDate','Date');
		$fields->addFieldToTab("Root.Main", new TextField('LectureTitle','Title of Lecture (optional)'));
		$fields->addFieldToTab("Root.Main", $datefield);
		$fields->addFieldToTab("Root.Main", new TextField('Partnership','In partnership with:'));
		$fields->addFieldToTab("Root.Main", new TextField('Time','Time'));

		$donorField = TagField::create(
			'Donors',
			'Donor(s)',
			Donor::get(),
			$this->Donors()
		)
			->setShouldLazyLoad(false) // tags should be lazy loaded
			->setCanCreate(true);     // new tag DataObjects can be created


		$sponsorField = TagField::create(
			'Sponsors',
			'Sponsor(s)',
			Sponsor::get(),
			$this->Sponsors()
		)
			->setShouldLazyLoad(false) // tags should be lazy loaded
			->setCanCreate(true);     // new tag DataObjects can be created


		$fields->addFieldToTab("Root.Main", new TextField('Location','Location'));
		$fields->addFieldToTab("Root.Main", new TextField('Price','Cost of lecture'));
		$fields->addFieldToTab("Root.Main", $donorField);
		$fields->addFieldToTab("Root.Main", $sponsorField);
		$fields->addFieldToTab("Root.Main", HTMLEditorField::create('Content','Description')->addExtraClass('stacked'));
		$fields->addFieldToTab("Root.Main", new UploadField('Picture'), "Content");
		$fields->addFieldToTab('Root.Main', new CheckboxField('Cancelled', 'This lecture is cancelled or postponed'));

		return $fields;
	}



	public function isPast() {
		if(empty($EventDate) || strtotime($EventDate) < time()){
			return true;
		} else {
			return false;
		}
	}
	
}
 
?>
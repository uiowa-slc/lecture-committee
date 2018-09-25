<?php

use SilverStripe\Assets\Image;
use SilverStripe\ORM\FieldType\DBDate;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\AssetAdmin\Forms\UploadField;


class LecturePage extends Page {
	
	private static $db = array(
		'EventDate' => 'Date',
		'Location' => 'Text',
		'Time' => 'Text',
		'Price' => 'Text',
		'Details' => 'HTMLText',
		"LectureTitle" => "Text",
		"FeatureOnHomePage" => "Boolean"
	);
	
	private static $has_one = array(
		'Picture' => Image::class
	);
	
	private static $allowed_children = array();
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->renameField("Title", "Name of Lecturer");
		$fields->removeFieldFromTab("Root.Main","Content");
		$fields->removeByName("Metadata");
		$datefield = new DateField('EventDate','Date');
		$fields->addFieldToTab("Root.Main", new TextField('LectureTitle','Title of Lecture (optional)'));
		$fields->addFieldToTab("Root.Main", $datefield);

		$fields->addFieldToTab("Root.Main", new TextField('Time','Time'));

		$fields->addFieldToTab("Root.Main", new TextField('Location','Location'));
		$fields->addFieldToTab("Root.Main", new TextField('Price','Cost of lecture'));
		$fields->addFieldToTab("Root.Main", new HTMLEditorField('Content','Description'));
		$fields->addFieldToTab("Root.Main", new UploadField('Picture'), "Content");

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
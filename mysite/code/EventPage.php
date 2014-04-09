<?php

class EventPage extends Page {
	
	private static $db = array(
		'EventDate' => 'Date',
		'Location' => 'Text',
		'Time' => 'Text',
		'Details' => 'HTMLText'
	);
	
	private static $has_one = array(
		'Picture' => 'Image'
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Main","Content");
		$datefield = new DateField('EventDate','Date of the event.');
		$datefield->setConfig('showcalendar', true);
		$fields->addFieldToTab("Root.Main", $datefield);
		$fields->addFieldToTab("Root.Main", new TextField('Time','Time of the lecture.'));
		$fields->addFieldToTab("Root.Main", new TextField('Location','Location of the lecture.'));
		$fields->addFieldToTab("Root.Main", new HTMLEditorField('Content','Lecture description below.'));
		//$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField('Details','Summary of the event for the left sidebar below.'));
		$fields->addFieldToTab("Root.Image", new ImageField('Picture'));
		return $fields;
	}
	
	function isPast() {
		if(empty($EventDate) || strtotime($EventDate) < time()){
			return true;
		} else {
			return false;
		}
	}
	
}
 
class EventPage_Controller extends Page_Controller {
	
	function init() {
		parent::init();
	}
	
	
	
}
?>
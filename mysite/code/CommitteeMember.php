<?php

use SilverStripe\Forms\TextField;


class CommitteeMember extends Page {
	
	private static $db = array(
		'Position' => 'Text'
	);
	private static $has_one = array(
		'LeaderImage' => 'LeaderImage'
	);
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		//removed Content
		$fields->removeFieldFromTab("Root.Main","Content");	
		$fields->addFieldToTab("Root.Main", new TextField('Position'));
		$fields->addFieldToTab("Root.Image", new ImageField('LeaderImage'));
		return $fields;
	}
}

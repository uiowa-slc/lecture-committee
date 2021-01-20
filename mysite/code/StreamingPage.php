<?php

use SilverStripe\Forms\TextField;

class StreamingPage extends Page {

	private static $db = array(
		'CheckinLink' => 'Text',
	);

	private static $has_one = array(
	);

	public function getCMSFields() {

		$f = parent::getCMSFields();

		$f->addFieldToTab('Root.Main', new TextField('CheckinLink'), 'Content');

		return $f;

	}

}
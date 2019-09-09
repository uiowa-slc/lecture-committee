<?php

use SilverStripe\Assets\Image;
use SilverStripe\ORM\PaginatedList;


class LectureHolderPage extends Page {
	
	private static $db = array(
	);
	
	private static $has_one = array(
		'Picture' => Image::class
	);

	private static $allowed_children = array(
		'LecturePage'
	);
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->renameField("Content", "Show the following content when there's no upcoming lectures:");
		return $fields;
	}
	
}
 


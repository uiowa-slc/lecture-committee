<?php

class LectureHolderPage extends Page {
	
	private static $db = array(
	);
	
	private static $has_one = array(
		'Picture' => 'Image'
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->renameField("Content", "Show the following content when there's no upcoming lectures:");
		return $fields;
	}
	
}
 
class LectureHolderPage_Controller extends Page_Controller {
	
	function init() {
		parent::init();
	}
	
	
	function paginatedPreviousLectures() {
		$curDate = date("Y-m-d");

		$previousLectures = $this->PreviousLectures();		
		$paginatedItems = new PaginatedList($previousLectures, $this->request);
		$paginatedItems->setPageLength(20);

		return $paginatedItems;
	}
	
}

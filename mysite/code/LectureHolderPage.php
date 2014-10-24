<?php

class LectureHolderPage extends Page {
	
	private static $db = array(
	);
	
	private static $has_one = array(
		'Picture' => 'Image'
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		return $fields;
	}
	
}
 
class LectureHolderPage_Controller extends Page_Controller {
	
	function init() {
		parent::init();
	}
	
	
	function paginatedPreviousLectures() {
		$curDate = date("Y-m-d");		
		$pagiList = new PaginatedList(LecturePage::get()->filter(array('EventDate:LessThan' => $curDate ))->sort('EventDate DESC'), $this->request);
		
		return $pagiList;
	}
	
}

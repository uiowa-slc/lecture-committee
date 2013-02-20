<?php

class LectureHolderPage extends Page {
	
	public static $db = array(
	);
	
	public static $has_one = array(
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
	
}
?>
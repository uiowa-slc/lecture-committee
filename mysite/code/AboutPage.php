<?php

class AboutPage extends Page {
	
	private static $db = array(
	);
	
	private static $has_one = array(
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		return $fields;
	}
}
 
class AboutPage_Controller extends Page_Controller {
	
	function init() {
		parent::init();
	}
	
}
?>
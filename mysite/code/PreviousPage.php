<?php

class PreviousPage extends Page {
	
	private static $db = array(
	);
	
	private static $has_one = array(
	);
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();
		return $fields;
	}
}
 

?>
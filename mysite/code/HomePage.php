<?php

class HomePage extends Page {
	
	public static $db = array(
	);
	
	public static $has_one = array(
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		return $fields;
	}
}
 
class HomePage_Controller extends Page_Controller {
	
	function init() {
		parent::init();
	}
	
	public function NextLecture(){
		$lecture = DataObject::get_one("LecturePage", "EventDate >= CURDATE() AND FeatureOnHomePage = 1", null, "EventDate ASC");
		
		if($lecture){
			return $lecture;
		}else{
			$lecture = DataObject::get_one("LecturePage", "EventDate >= CURDATE()", null, "EventDate ASC");
				if($lecture){
					return $lecture;
				}else{
					return false;
				}
		}
		
		
		
	}
	
}
?>
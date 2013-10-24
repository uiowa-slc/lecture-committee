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
		$curDate = date("Y-m-d", time() - 86400);
		$lecture = LecturePage::get()->filter(array('EventDate:GreaterThan' => $curDate, 'FeatureOnHomePage' => 1))->sort('EventDate ASC')->First();

		if($lecture){
			return $lecture;
		}else{
			$lecture = LecturePage::get()->filter(array('EventDate:GreaterThan' => $curDate))->sort('EventDate ASC')->First();
				if($lecture){
					return $lecture;
				}else{
					return false;
				}
		}
		
		
		
	}
	
}
?>
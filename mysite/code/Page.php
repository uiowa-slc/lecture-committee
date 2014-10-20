<?php
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array (
	);
	public function NextLecture(){
		$lecture = $this->UpcomingLectures()->First;
		
		if($lecture)
			return true;
		else
			return false;
	}
		
	function UpcomingLectures() {
		$curDate = date("Y-m-d", time() - 86400);
		$lectures = LecturePage::get()->filter(array('EventDate:GreaterThan' => $curDate ))->sort('EventDate ASC');
		return $lectures;
	}
	
	function PreviousLectures() {
		$curDate = date("Y-m-d");
		$lectures = LecturePage::get()->filter(array('EventDate:LessThan' => $curDate ))->sort('EventDate DESC');
		return $lectures;
	}

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		//Requirements::themedCSS('layout'); 
		//Requirements::themedCSS('typography'); 
		//Requirements::themedCSS('form'); 
	}
}
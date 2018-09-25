<?php

use SilverStripe\CMS\Controllers\ContentController;
class PageController extends ContentController {

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


	public function FirstAboutParagraph(){
		$about = AboutPage::get();

	}

	public function NextLecture(){
		$lecture = $this->UpcomingLectures()->First;
		
		if($lecture)
			return true;
		else
			return false;
	}
		
	public function UpcomingLectures() {
		$curDate = date("Y-m-d", time() - 86400);
		 $lectures = LecturePage::get()->filter(array('EventDate:GreaterThan' => $curDate ))->sort('EventDate ASC');
		//$lectures = LecturePage::get()->limit(2);
		//print_r($lectures->toArray());
		return $lectures;
	}
	
	public function PreviousLectures() {
		$curDate = date("Y-m-d");
		 $lectures = LecturePage::get()->filter(array('EventDate:LessThan' => $curDate ))->sort('EventDate DESC');
		//$lectures = LecturePage::get();
		return $lectures;
	}

    protected function init()
    {
        parent::init();
        // You can include any CSS or JS required by your project here.
        // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
    }
}
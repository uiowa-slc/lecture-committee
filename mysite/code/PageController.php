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

	public function AllDonors(){

		return Donor::get();
	}
	public function AllSponsors(){

		return Sponsor::get();
	}
		
	public function UpcomingLectures() {
	 // print_r(date("Y-m-d", time() - 86400));


		$curDate = date("Y-m-d", time() - 86400);
		$lectures = LecturePage::get()->filter(array('EventDate:GreaterThan' => $curDate ));
		//print_r($lectures->dataQuery()->sql());
		//print_r($lectures->toArray());
		return $lectures;
	}
	
	public function PreviousLectures() {
		$curDate = date("Y-m-d");
		$lectures = LecturePage::get()->filter(array('EventDate:LessThan' => $curDate, 'Cancelled' => 0 ))->sort('EventDate DESC');
		return $lectures;
	}

	protected function init() {
		parent::init();
		//Block all requirements because we're building them with grunt now.
		// Requirements::block('event_calendar/css/calendar_widget.css');
		// Requirements::block('event_calendar/css/calendar.css');
		// Requirements::block('division-bar/js/_division-bar.js');
		// Requirements::block('framework/thirdparty/jquery/jquery.js');
		// Requirements::block('event_calendar/javascript/calendar.js');
		// Requirements::block('event_calendar/javascript/calendar_widget.js');
		// Requirements::block('event_calendar/javascript/lang/calendar_en.js');
		// Requirements::block('event_calendar/javascript/calendar_widget_init.js');
	
 	}
}
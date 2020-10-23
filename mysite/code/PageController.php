<?php

use SilverStripe\CMS\Controllers\ContentController;

class PageController extends ContentController {

	private static $allowed_actions = array(
	);
	protected function init() {
		parent::init();

	}

	public function UpcomingLectures() {
		$curDate = date("Y-m-d", time() - 86400);
		$lectures = LecturePage::get()->filter(array('EventDate:GreaterThan' => $curDate))->sort('EventDate ASC, Time ASC');

		return $lectures;
	}

	public function UpcomingStreamingLectures() {
		$lectures = $this->UpcomingLectures()->filter(array('StreamingLink:PartialMatch' => 'https://'));
		return $lectures;
	}

	public function PreviousLectures() {
		$curDate = date("Y-m-d");
		$lectures = LecturePage::get()->filter(array('EventDate:LessThan' => $curDate, 'Cancelled' => 0))->sort('EventDate DESC');
		return $lectures;
	}

	public function NextLecture() {
		$lecture = $this->UpcomingLectures()->First;

		if ($lecture) {
			return true;
		} else {
			return false;
		}

	}

	public function StreamingLectureToday() {
		$today = date('Y-m-d');
		$lectureTest = LecturePage::get()->filter(array('EventDate' => $today))->First();

		if ($lectureTest) {
			return $lectureTest;
		}
		return false;
	}

	public function AllDonors() {
		return Donor::get();
	}
	public function AllSponsors() {
		return Sponsor::get();
	}

}
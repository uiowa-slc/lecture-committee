<?php
use SilverStripe\Control\HTTPRequest;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\View\ArrayData;

class LectureHolderPageController extends PageController {
	private static $allowed_actions = array(
		'year',
	);

	private static $url_handlers = array(
		'year//$year' => 'year',
	);
	public function init() {
		parent::init();
	}

	public function paginatedPreviousLectures() {
		$curDate = date("Y-m-d");

		$previousLectures = $this->PreviousLectures();
		$paginatedItems = new PaginatedList($previousLectures, $this->request);
		$paginatedItems->setPageLength(20);

		return $paginatedItems;
	}
	public function year(HTTPRequest $request) {

		$year = $request->param('year');

		if (!is_numeric($year)) {
			return $this->httpError('404');
		}

		//Todo something better than partial match, probably greater than/equal 1-1-$year and less than or equal to 12-31-$year

		$shows = LecturePage::get()->filter(array('EventDate:PartialMatch' => $year))->sort('EventDate DESC');

		$data = new ArrayData(array(

			'paginatedPreviousLectures' => $shows,
		));

		return $this->customise($data)->renderWith(array('LectureHolderPage', 'Page'));

	}
}

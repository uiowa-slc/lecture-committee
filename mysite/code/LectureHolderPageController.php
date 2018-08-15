<?php

class LectureHolderPageController extends PageController {
	
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
	
}
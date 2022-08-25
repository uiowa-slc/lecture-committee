<?php

use SilverStripe\Assets\Image;
use SilverStripe\Control\Controller;
use SilverStripe\Forms\GridField\GridFieldDataColumns;
use SilverStripe\ORM\ArrayList;
use SilverStripe\View\ArrayData;

class LectureHolderPage extends Page {

	private static $db = array(
	);

	private static $has_one = array(
		'Picture' => Image::class,
	);

	private static $allowed_children = array('LecturePage');

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->renameField("Content", "Show the following content when there's no upcoming lectures:");
		$contentField = $fields->dataFieldByName('Content');
		$contentField->setRows(2);

		$grid = $fields->dataFieldByName('ChildPages');
		$config = $grid->getConfig();
		$dataColumns = $config->getComponentByType(GridFieldDataColumns::class);

		$dataColumns->setDisplayFields([
			'Title' => 'Title',
			'Created' => 'Created',
		]);

		$list = $grid->getList();

		$sortedList = $list->sort('Created DESC');

		$grid->setList($sortedList);
		$grid->setTitle('Lectures');
		$grid->setName('Lectures');

		$fields->addFieldToTab('Root.Main', $grid);

		$fields->removeByName("ChildPages");
		$fields->removeByName("Metadata");

		return $fields;
	}
	public function Years() {

		$shows = LecturePage::get();
		$years = new ArrayList();

		foreach ($shows as $show) {
			$showYear = $show->obj('EventDate')->Format('y');

			if (!$years->filter(array('Year' => $showYear))->First()) {

				$params = Controller::curr()->getURLParams();
				if (isset($params['year'])) {
					if ($params['year'] == $showYear) {
						$active = true;
					} else {
						$active = false;
					}
				} else {
					$active = false;
				}

				$year = new ArrayData(array(
					'Year' => $showYear,
					'Link' => Controller::join_links($this->Link('year'), $showYear),
					'Active' => $active,
					'Lectures' => $this->PreviousLectures()->filter(array('EventDate:PartialMatch' => $showYear))->sort('EventDate DESC')
				));
				$years->push($year);
			}

		}

		return $years;

	}
	public function PreviousLectures() {
		$curDate = date("Y-m-d");
		$lectures = LecturePage::get()->filter(array('EventDate:LessThan' => $curDate, 'Cancelled' => 0))->sort('EventDate DESC');
		return $lectures;
	}
}

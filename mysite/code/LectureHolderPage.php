<?php

use SilverStripe\Assets\Image;
use SilverStripe\Forms\GridField\GridFieldDataColumns;


class LectureHolderPage extends Page {
	
	private static $db = array(
	);
	
	private static $has_one = array(
		'Picture' => Image::class
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
            'Created' => 'Created'
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
	
}
 

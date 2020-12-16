<?php
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;

class DonorPage extends Page {

	private static $db = array(
		'Title' => 'Varchar(155)',
	);

	private static $has_one = array(

		'Photo' => Image::class,

	);
	private static $belongs_many_many = array(
		'Lectures' => 'LecturePage',
	);

	private static $many_many = [
		'SlideshowImages' => 'SlideshowImage',
	];
	private static $many_many_extraFields = [
		'SlideshowImages' => [
			'SortOrder' => 'Int',
		],
	];
	// This is required to publish deletions as well,
	// as this will not happen by default!
	private static $cascade_deletes = [
		'SlideshowImages',
	];
	private static $owns = array(
		'SlideshowImages',
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$config = GridFieldConfig_RelationEditor::create();

		//$config->getComponentByType(GridFieldDetailForm::class)->setFields($teamFields);
		$conf = GridFieldConfig_RelationEditor::create(10);
		$conf->addComponent(new GridFieldSortableRows('SortOrder'));

		$fields->addFieldToTab('Root.Slideshow', new GridField('SlideshowImages', 'Images', $this->SlideshowImages(), $conf));

		$gridField = new GridField('Lectures', 'Lectures', $this->Lectures(), $config);
		$fields->addFieldToTab('Root.Lectures', $gridField);
		$fields->addFieldToTab("Root.Photo", new UploadField('Donor Photo'));
		return $fields;
	}
	public function SortedImages() {
		return $this->Images()->sort('SortOrder');
	}
}

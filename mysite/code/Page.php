<?php
use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use Bummzack\SortableFile\Forms\SortableUploadField;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;
class Page extends SiteTree {

	private static $db = array(
	);

	private static $has_one = array(
	);
	    // This page can have many images
    private static $many_many = [
        'SlideshowImages' => 'SlideshowImage'
    ];
	private static $many_many_extraFields = [
		'SlideshowImages' => [
			'SortOrder' => 'Int',
		]
	];

    // This is required to publish deletions as well,
    // as this will not happen by default!
    private static $cascade_deletes = [
        'SlideshowImages'
    ];
    private static $owns = array(
    	'SlideshowImages'
    );
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$conf = GridFieldConfig_RelationEditor::create(10);
		$conf->addComponent(new GridFieldSortableRows('SortOrder'));

		$fields->addFieldToTab('Root.Slideshow', new GridField('SlideshowImages', 'Images', $this->SlideshowImages(), $conf));

		return $fields;
	}

	public function SortedImages(){
		return $this->Images()->sort('SortOrder');
	}
}

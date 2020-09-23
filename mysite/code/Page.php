<?php
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Control\Director;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use SilverStripe\StaticPublishQueue\Contract\StaticallyPublishable;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;

class Page extends SiteTree implements StaticallyPublishable {

	private static $db = array(
	);

	private static $has_one = array(
	);
	// This page can have many images
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

		$conf = GridFieldConfig_RelationEditor::create(10);
		$conf->addComponent(new GridFieldSortableRows('SortOrder'));

		$fields->addFieldToTab('Root.Slideshow', new GridField('SlideshowImages', 'Images', $this->SlideshowImages(), $conf));

		return $fields;
	}

	public function SortedImages() {
		return $this->Images()->sort('SortOrder');
	}
	/**
	 * The only URL belonging to this object is it's own URL.
	 */
	public function urlsToCache() {
		$disallowedClasses = array(
			'SilverStripe\CMS\Model\RedirectorPage',
			'SilverStripe\UserForms\Model\UserDefinedForm',
		);

		if ($this->ClassName == 'LecturePage') {
			if ($this->IsPast()) {
				return [];
			}
		}

		if (!array_search($this->ClassName, $disallowedClasses)) {
			return [Director::absoluteURL($this->getOwner()->Link()) => 0];
		} else {
			return [];
		}

	}
	// /**
	//  * The only URL belonging to this object is it's own URL.
	//  */
	// public function urlsToCache() {
	// 	return [Director::absoluteURL($this->getOwner()->Link()) => 0];
	// }
	public function Image() {
		$picture = $this->obj('Picture');

		if ($picture) {
			return $picture;
		}

		$photo = $this->obj('Photo');
		if ($photo) {
			return $photo;
		}
	}

}

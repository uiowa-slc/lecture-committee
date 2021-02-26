<?php
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Control\Director;
use SilverStripe\StaticPublishQueue\Contract\StaticallyPublishable;

class Page extends SiteTree implements StaticallyPublishable {

	private static $db = array(
	);

	private static $has_one = array(
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		return $fields;
	}

	/**
	 * The only URL belonging to this object is it's own URL.
	 */
	public function urlsToCache() {
		$disallowedClasses = array(
			'SilverStripe\CMS\Model\RedirectorPage',
			'SilverStripe\UserForms\Model\UserDefinedForm',
		);

		//Only cache this year's previous lectures so the caching process doesn't go through the entire archive, while also invalidating recent events that featured the event being "live" the day before with the livestream links, etc
		if ($this->ClassName == 'LecturePage') {
			$currentYear = date("Y");
			$lectureYear = $this->obj('EventDate')->Format('y');

			if ($lectureYear < $currentYear) {
				return [];
			} else {
				return [Director::absoluteURL($this->getOwner()->Link()) => 0];
			}
		}
		print_r($this->ClassName . '<br />');
		if (array_search($this->ClassName, $disallowedClasses) === false) {
			echo 'YES<br />';
			return [Director::absoluteURL($this->getOwner()->Link()) => 0];
		} else {
			echo 'NO<br />';
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

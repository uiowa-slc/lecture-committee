<?php

//Data tables need this class from cfo-project for some reason or /dev/build fails. Legacy costs.
use SilverStripe\ORM\DataObject;

class CarouselImage extends DataObject {

	private static $db = array(

	);

	private static $has_one = array(

	);

	private static $default_sort = "SortOrder";

	public function getCMSFields() {

	}

}
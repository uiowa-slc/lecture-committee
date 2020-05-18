<?php
use SilverStripe\ORM\PaginatedList;
class AboutPageController extends PageController {
	
	private static $url_handlers = array(
		'donor//$ID'
	);

	public function init() {
		parent::init();
	}
	
	
	
}

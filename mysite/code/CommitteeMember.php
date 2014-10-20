<?php
class CommitteeMember extends Page {
	
	private static $db = array(
		'Position' => 'Text'
	);
	private static $has_one = array(
		'LeaderImage' => 'LeaderImage'
	);
	function getCMSFields() {
		$fields = parent::getCMSFields();
		//removed Content
		$fields->removeFieldFromTab("Root.Main","Content");	
		$fields->addFieldToTab("Root.Main", new TextField('Position'));
		$fields->addFieldToTab("Root.Image", new ImageField('LeaderImage'));
		return $fields;
	}
}
class LeaderImage extends Image {
	function generateLeaderPicture($gd) {
		$gd->setQuality(90);
		return $gd->paddedResize(100,120);
	}
}

class CommitteeMember_Controller extends Page_Controller {
	function init() {
		parent::init();
	}
}
?>
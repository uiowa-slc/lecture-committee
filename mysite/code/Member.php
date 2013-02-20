<?php
class CommitteeMember extends Page {
	
	public static $db = array(
		'Position' => 'Text'
	);
	public static $has_one = array(
		'LeaderImage' => 'LeaderImage'
	);
	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main","Content");	
		$fields->addFieldToTab("Root.Content.Main", new TextField('Position'));
		$fields->addFieldToTab("Root.Content.Image", new ImageField('LeaderImage'));
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
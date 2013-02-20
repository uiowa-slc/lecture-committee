<?php

class LecturePage extends Page {
	
	public static $db = array(
		'FirstHeading' => 'Text',
		'Second' => 'Text',
		'Third' => 'Text',
		'Fourth' => 'Text',
		'EventDate' => 'Date',
		'Location' => 'Text',
		'Time' => 'Text',
		'Price' => 'Text',
		'Details' => 'HTMLText',
		'Youtube' => 'Text',
		'PictureAlignment' => 'Text',
		'FeatureBackgroundColor' => 'Text',
		"LectureTitle" => "Text"
	);
	
	public static $has_one = array(
		'Picture' => 'Image'
	);
	

	
	function getCMSFields() {
		$alignments = Array('right' => 'right','left' => 'left');
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main","Content");
		$datefield = new DateField('EventDate','Date of the event.');
		$fields->addFieldToTab("Root.Content.Main", new TextField('LectureTitle','Title of Lecture (optional)'));
		$datefield->setConfig('showcalendar', true);
		$fields->addFieldToTab("Root.Content.Main", $datefield);

		$fields->addFieldToTab("Root.Content.Main", new TextField('Time','Time of the lecture.'));
		/*$fields->addFieldToTab("Root.Content.Main", new TextField('FirstHeading','First Heading'));
		$fields->addFieldToTab("Root.Content.Main", new TextField('Second','Second Heading'));
		$fields->addFieldToTab("Root.Content.Main", new TextField('Third','Third Heading'));
		$fields->addFieldToTab("Root.Content.Main", new TextField('Fourth','Fourth Heading'));
		*/
		$fields->addFieldToTab("Root.Content.Main", new TextField('Location','Location of the lecture.'));
		$fields->addFieldToTab("Root.Content.Main", new TextField('Price','Cost of lecture or Free Admission.'));
		$fields->addFieldToTab("Root.Content.Main", new TextField('Youtube','Video ID of youtube video. (Only the part between v= and &)'));
		$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField('Content','Lecture description below.'));
		//$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField('Details','Summary of the event for the left sidebar below.'));
		$fields->addFieldToTab("Root.Content.Image", new DropdownField('PictureAlignment', 'Align text to the right or left inside of the image:',$alignments));
		$fields->addFieldToTab("Root.Content.Image", new ImageField('Picture'));
		$fields->addFieldToTab("Root.Content.Image", new TextField('FeatureBackgroundColor','Image Background Color. Defaults to blue (#6C819E) if left blank.'));

		return $fields;
	}
	
	function isPast() {
		if(empty($EventDate) || strtotime($EventDate) < time()){
			return true;
		} else {
			return false;
		}
	}
	
}
 
class LecturePage_Controller extends Page_Controller {
	
	function init() {
		parent::init();
	}
	
	public function CroppedImage(){
		$image = $this->Picture;
		
		if($image)
			return $image->setCroppedResize(900,400);
	
	}
	
	
	
}
?>
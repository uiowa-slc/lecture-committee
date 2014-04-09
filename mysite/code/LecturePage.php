<?php

class LecturePage extends Page {
	
	private static $db = array(
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
		"LectureTitle" => "Text",
		"FeatureOnHomePage" => "Boolean"
	);
	
	private static $has_one = array(
		'Picture' => 'Image'
	);
	

	
	function getCMSFields() {
$alignments = Array('right' => 'right','left' => 'left');
$fields = parent::getCMSFields();
$fields->addFieldToTab("Root.Main", new CheckboxField('FeatureOnHomePage','Can this lecture be featured on the homepage?'));

$fields->removeFieldFromTab("Root.Main","Content");
$datefield = new DateField('EventDate','Date of the event.');
$fields->addFieldToTab("Root.Main", new TextField('LectureTitle','Title of Lecture (optional)'));
$datefield->setConfig('showcalendar', true);
$fields->addFieldToTab("Root.Main", $datefield);

$fields->addFieldToTab("Root.Main", new TextField('Time','Time of the lecture.'));
/*$fields->addFieldToTab("Root.Content.Main", new TextField('FirstHeading','First Heading'));
$fields->addFieldToTab("Root.Content.Main", new TextField('Second','Second Heading'));
$fields->addFieldToTab("Root.Content.Main", new TextField('Third','Third Heading'));
$fields->addFieldToTab("Root.Content.Main", new TextField('Fourth','Fourth Heading'));
*/
$fields->addFieldToTab("Root.Main", new TextField('Location','Location of the lecture.'));
$fields->addFieldToTab("Root.Main", new TextField('Price','Cost of lecture or Free Admission.'));
//$fields->addFieldToTab('Root.Main', new TextField('Cost of lecture or Firey Admission.'),'Price');
$fields->addFieldToTab("Root.Main", new TextField('Youtube','Video ID of youtube video. (Only the part between v= and &)'));
$fields->addFieldToTab("Root.Main", new HTMLEditorField('Content','Lecture description below.'));
//$fields->addFieldToTab("Root.Content.Main", new HTMLEditorField('Details','Summary of the event for the left sidebar below.'));
$fields->addFieldToTab("Root.Image", new DropdownField('PictureAlignment', 'Align text to the right or left inside of the image:',$alignments));
$fields->addFieldToTab("Root.Image", new UploadField('Picture'));
$fields->addFieldToTab("Root.Image", new TextField('FeatureBackgroundColor','Image Background Color. Defaults to blue (#6C819E) if left blank.'));

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
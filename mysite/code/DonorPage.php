<?php
use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use Bummzack\SortableFile\Forms\SortableUploadField;

class DonorPage extends Page {
	
	private static $db = array(
	);
	
	private static $has_one = array(
	);
	    // This page can have many images
    private static $many_many = [
        'Images' => Image::class
    ];

    // this adds the SortOrder field to the relation table.
    // Please note that the key (in this case 'Images')
    // has to be the same key as in the $many_many definition!
    private static $many_many_extraFields = [
        'Images' => ['SortOrder' => 'Int']
    ];

    private static $owns = array(
    	'Images'
    );
	public function getCMSFields() {
		$fields = parent::getCMSFields();
            $fields->addFieldToTab('Root.Main', SortableUploadField::create(
                'Images', $this->fieldLabel('Images')
            ), 'Content');
		return $fields;
	}

	public function SortedImages(){
		return $this->Images()->sort('SortOrder');
	}
}
 

?>
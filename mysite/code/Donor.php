<?php

use SilverStripe\Assets\Image;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\ORM\DataObject;
class Donor extends DataObject {
	
	private static $db = array(
		'Title' => 'Varchar(155)',
		'Content' => 'HTMLText'
	);
	
	private static $belongs_many_many = array(
		'Lectures' => 'LecturePage'
	);
	
	public function getCMSFields() {
		$fields = parent::getCMSFields();

		return $fields;
	}
	
}

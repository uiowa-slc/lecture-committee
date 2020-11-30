<?php
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;

class DonorPage extends Page {

	private static $db = array(
		'Title' => 'Varchar(155)',
	);

	private static $belongs_many_many = array(
		'Lectures' => 'LecturePage',
	);

	public function getCMSFields() {
		$fields = parent::getCMSFields();

		$config = GridFieldConfig_RelationEditor::create();

		//$config->getComponentByType(GridFieldDetailForm::class)->setFields($teamFields);

		$gridField = new GridField('Lectures', 'Lectures', $this->Lectures(), $config);
		$fields->addFieldToTab('Root.Lectures', $gridField);

		return $fields;
	}

}

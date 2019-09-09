<?php

use SilverStripe\Dev\BuildTask;
use DNADesign\Elemental\Models\BaseElement;
use DNADesign\Elemental\Models\ElementalArea;
use SilverStripe\ORM\DB;
use SilverStripe\ORM\Queries\SQLSelect;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Blog\Model\BlogPost;

class FixLectureTitleFieldsTask extends BuildTask{

	protected $title = 'Moves lecturer names and titles around';
	protected $description = '';

	protected $enabled = true;

	function run($request){
		echo '<p>Gathering Lectures</p>';
		$lectures = LecturePage::get();
		echo '<ul>';
		$pn = new proper_nouns();
		$pnArray =  Array();

		foreach($lectures as $lecture){
			$pnArray = $pn->get($lecture->Title);
			
			//if lecture page's Title is a proper noun, then change LecturerName to whatever was in Title
			if(!empty($pnArray)){
				$lecture->LecturerName = $pnArray[0];
				echo '<li>'.$lecture->Title.':';
				print_r($pnArray);
				echo '</li>';
				// $lecture->write();
				// if($lecture->isPublished()){
				// 	$lecture->publish('Stage', 'Live');
				// }				
			}
		}
		echo '</ul>';

	}

}
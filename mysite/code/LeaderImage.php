<?php

use SilverStripe\Assets\Image;

class LeaderImage extends Image {
	function generateLeaderPicture($gd) {
		$gd->setQuality(90);
		return $gd->paddedResize(100,120);
	}
}

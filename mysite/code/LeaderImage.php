<?php
use SilverStripe\Assets\Image;
class LeaderImage extends Image {
	public function generateLeaderPicture($gd) {
		$gd->setQuality(90);
		return $gd->paddedResize(100,120);
	}
}
?>
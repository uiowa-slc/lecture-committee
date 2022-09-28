<?php

class StreamingPageController extends PageController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	private static $allowed_actions = array(
	);

	public function init() {
		
		
		// $streamingLecture = $this->StreamingLectureToday;

		// if($streamingLecture && (($streamingLecture->StreamingLink != 'https://lectures.uiowa.edu/live') || ($streamingLecture->StreamingLink != 'https://lectures.uiowa.edu/live/'))){

		// 	$this->redirect($streamingLecture->StreamingLink, 302);
		// }
		parent::init();
	}


}
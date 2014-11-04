<div class="large-12 columns">
	<h1>Calendar</h1>
		$Content
		$Form
	<div id="upcoming-lectures">
		<h2>Next:</h2>
		<% loop UpcomingLectures %>
			<% include LectureCardBig %>
		<% end_loop %>
	</div>
	<div id="previous-lectures">
		<h2>Previously presented by the Lecture Committee:</h2>
		<ul class="large-block-grid-2">
			<% loop paginatedPreviousLectures %>
	  			<li><% include LectureCard %></li>
			<% end_loop %>
		</ul>
			<% include LecturePagination %>
	</div>

</div>



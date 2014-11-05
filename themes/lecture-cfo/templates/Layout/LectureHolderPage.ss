<div class="large-12 columns">
	<div id="upcoming-lectures">
	<% if $UpcomingLectures %>
		<h1>Next: </h1>
		<% loop UpcomingLectures %>
			<% include LectureCardBig %>
		<% end_loop %>
	<% else %>
		<h1>Calendar</h1>
		$Content
		$Form
	<% end_if %>
	</div>
	<div id="previous-lectures">
		<h2>Previously presented:</h2>
		<ul class="large-block-grid-2">
			<% loop paginatedPreviousLectures %>
	  			<li><% include LectureCard %></li>
			<% end_loop %>
		</ul>
			<% include LecturePagination %>
	</div>

</div>



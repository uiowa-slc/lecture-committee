<div class="large-12 columns">
	<div id="upcoming-lectures">

	<% if $UpcomingLectures %>
		<% loop UpcomingLectures %>
			
			<% include LectureCardBig %>
		<% end_loop %>
	<% else %>
		<h1>Calendar</h1>
		$Content
		$Form
	<% end_if %>
	</div>

</div>

</div><!-- end main-content from ../Page.ss -->
</div><!-- end main from ../Page.ss -->


	<div id="previous-lectures">
		<h2>Previously presented:</h2>
		<ul class="xxlarge-block-grid-5 xlarge-block-grid-4 large-block-grid-3 medium-block-grid-2">
			<% loop paginatedPreviousLectures %>
	  			<li><% include LectureCard %></li>
			<% end_loop %>
		</ul>
			<% include LecturePagination %>
	</div>
</div>




<div class="large-12 columns">
	<section id="upcoming-lectures" class="row">
		<% if $UpcomingLectures %>
		<% loop UpcomingLectures %>
			<% include LectureCardBig %>
		<% end_loop %>
		<% end_if %>
		<% if not $UpcomingLectures %>
		<div class="no-upcoming-content" style="color: white;">
			<h1>Upcoming:</h1>
			$Content
		</div>
	<% end_if %>
	</section>
</div>

</div><!-- end main-content from ../Page.ss -->
</div><!-- end main from ../Page.ss -->

<div class="previous-lectures-container">
	<section id="previous-lectures">

		<h1 class="section-title page-header">Previously presented:</h1>
		<hr />
		<ul class="xlarge-block-grid-4 large-block-grid-3 medium-block-grid-2">
			<% loop paginatedPreviousLectures %>
	  			<li><% include LectureCard %></li>
			<% end_loop %>
		</ul>
		<% include LecturePagination %>
	</section>
</div>


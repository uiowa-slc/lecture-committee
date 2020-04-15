<% if $UpcomingLectures %>
<div class="large-12 columns">
	<section id="upcoming-lectures" class="row">
	
		<% loop UpcomingLectures %>
			<% include LectureCardBig %>
		<% end_loop %>
	
	</section>
</div>
<% end_if %>
</div><!-- end main-content from ../Page.ss -->
</div><!-- end main from ../Page.ss -->

<div class="previous-lectures-container">
	<section id="previous-lectures">
	<% if not $UpcomingLectures %>
		<div class="no-upcoming-content">$Content</div>
	<% end_if %>
		<h1 class="section-title">Previously presented:</h1>
		<hr />
		<ul class="xlarge-block-grid-4 large-block-grid-3 medium-block-grid-2">
			<% loop paginatedPreviousLectures %>
	  			<li><% include LectureCard %></li>
			<% end_loop %>
		</ul>
		<% include LecturePagination %>
	</section>
</div>


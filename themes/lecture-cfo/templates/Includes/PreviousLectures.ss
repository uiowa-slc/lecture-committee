<div id="previous-lectures">
	<% include previousLecturePagination %>
		<% loop paginatedPreviousLectures %>
			<a href="$Link">
			<article class="panel row">
				<div class="medium-4 columns">
					<%-- $Picture.CroppedImage(140, 140) --%>
					<img src="$picture.URL" alt="Image for $Title" />
				</div>
				<div class="medium-8 columns">
					<%-- <img src="$Picture.CroppedImage(40, 30)" alt="$Picture.Title" /> --%>
					<h2 class="lecture_name">$Title.LimitWordCount(3)</h2>
					<ul>
						<li><strong>Date:</strong> $EventDate.format(F) $EventDate.format(j), $EventDate.format(Y)&nbsp;&nbsp;&nbsp;$Time</li>
						<li><strong>Location:</strong> $Location</li>
						<li><strong>Description:</strong> $Content.LimitWordCount(20)</li>
					</ul>
				</div>
			</article>
			</a>
		<% end_loop %>
	<% include previousLecturePagination %>
</div>
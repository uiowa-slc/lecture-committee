<div id="previous_lectures">
	<% if $paginatedPreviousLectures.MoreThanOnePage%>
		<% if $paginatedPreviousLectures.NotFirstPage %>
			<a class="prev" href="$PaginatedPreviousLectures.PrevLink">Prev</a>
		<% else_if $paginatedPreviousLectures.NotLastPage %>
       		<a class="next" href="$pagintatedPreviousLectures.NextLink">Next</a>
   		<% end_if %>
		<% loop paginatedPreviousLectures %>

			<article class="panel row">
				<div class="medium-4 columns">
					<%-- $Picture.CroppedImage(140, 140) --%>
					<img src="$picture.URL" alt="Image for $Title" />
				</div>
				<div class="medium-8 columns">
					<%-- <img src="$Picture.CroppedImage(40, 30)" alt="$Picture.Title" /> --%>
					<h2 class="lecture_name"><a href="$Link">$Title.LimitWordCount(5)</a></h2>
					<ul>
						<li>Date: $EventDate.format(F) $EventDate.format(j), $EventDate.format(Y)&nbsp;&nbsp;&nbsp;$Time</li>
						<li>Location: $Location</li>
						<li>Description: $Content.LimitWordCount(20)</li>
					</ul>
				</div>
			</article>
		<% end_loop %>
	<% else %>
		<h3>No previous lectures listed.</h3>
	<% end_if %>
</div>

	<article class="lecture-card row">

		<div class="lecture-details large-7 columns">
			<% if $LectureTitle %>
				<h1><a href="$Link">$LectureTitle</a></h1>
			<% else %>
				<h1><a href="$Link">$Title</a></h1>
			<% end_if %>
			<% include LectureDetails %>
			<p>$Content.Summary(75) <a href="$Link">Continue Reading</a></p>
		</div>
		<div class="lecture-image large-5 columns">
			<% if $Picture %>
				<a href="$Link"><img src="$Picture.CroppedFocusedImage(600,700).URL" alt="Image for $Title" /></a>
			<% end_if %>
		</div>
	</article>
	<% if not $Last %>
	<hr />
	<% end_if %>
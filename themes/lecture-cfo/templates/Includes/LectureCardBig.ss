
	<div class="row">
	<% if $First %><h1 class="section-title">Next Up:</h1> <hr /><% end_if %>
		<article class="lecture-card">
			<% if $Picture %>
				<a href="$Link"><img src="$Picture.CroppedFocusedImage(600,700).URL" alt="Image for $Title" /></a>
			<% end_if %>
			<div class="lecture-details">
				<% if $LectureTitle %>
					<h1><a href="$Link">$LectureTitle</a></h1>
				<% else %>
					<h1><a href="$Link">$Title</a></h1>
				<% end_if %>
				<% include LectureDetails %>
				<p>$Content</p>
			</div>
		</article>
		<% if not $Last %>
		<hr />
		<% end_if %>
	</div>

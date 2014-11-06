<a href="$Link" class="lecture-card-link">
	<div class="row">
	<% if $First %><h1>Next Up:</h1><% end_if %>
		<article class="lecture-card">
			<% if $Picture %>
				<img src="$Picture.CroppedFocusedImage(600,700).URL" alt="Image for $Title" />
			<% end_if %>
			<div class="lecture-details">
				<% if $LectureTitle %>
					<h1>$LectureTitle</h1>
				<% else %>
					<h1>$Title</h1>
				<% end_if %>
				<% include LectureDetails %>
				<p>$Content.Summary <strong>Continue Reading</strong></p>
			</div>
		</article>
		<% if not $Last %>
		<hr />
		<% end_if %>
	</div>
</a>

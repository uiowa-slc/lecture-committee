<a href="$Link" class="lecture-card-link">
	<article class="row lecture-card">
	<% if $First %><h2>Next Up:</h2><% end_if %>
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
</a>
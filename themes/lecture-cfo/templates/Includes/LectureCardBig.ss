<a href="$Link" class="lecture-card-link">
	<article class="row lecture-card">
		<% if $Picture %>
			<img src="$Picture.CroppedFocusedImage(600,700).URL" alt="Image for $Title" />
		<% end_if %>
		<div class="lecture-details">
			<h1>$Title</h1>
			<p><strong>Date:</strong> $EventDate.format(F) $EventDate.format(j), $EventDate.format(Y) $Time <br />
			<strong>Location: </strong>$Location</p>
			<p>$Content.Summary <strong>Continue Reading</strong></p>
		</div>
	</article>
</a>
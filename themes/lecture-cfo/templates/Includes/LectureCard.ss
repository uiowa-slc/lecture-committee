<a href="$Link" class="lecture-card-link">
	<article class="lecture-card">
		<% if $Picture %>
			<img src="$Picture.CroppedFocusedImage(500, 600).URL" alt="Photo representing $Title" />
		<% end_if %>
			<h1>$Title.LimitWordCount(10)</h1>
			<ul>
				<li><strong>Date:</strong> $EventDate.format(F) $EventDate.format(j), $EventDate.format(Y) $Time</li>
				<li><strong>Location:</strong> $Location</li>
				<li>$Content.LimitWordCount(40) <strong>Continue Reading</strong></li>
			</ul>
	</article>
</a>
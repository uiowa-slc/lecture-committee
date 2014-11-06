<a href="$Link" class="lecture-card-link">
	<article class="lecture-card">
		<% if $Picture %>
			<img src="$Picture.CroppedFocusedImage(500, 600).URL" alt="Photo representing $Title" />
		<% else %>
			<img src="{$ThemeDir}/images/lecture-placeholder.jpg" alt="Placeholder photo representing $Title" />
		<% end_if %>
			<% if $LectureTitle %>
				<h1>$LectureTitle.LimitWordCount(10)</h1>
			<% else %>
				<h1>$Title.LimitWordCount(10)</h1>
			<% end_if %>
			<% include LectureDetails %>4
			$Content.LimitWordCount(40) <strong>Continue Reading</strong>
	</article>
</a>
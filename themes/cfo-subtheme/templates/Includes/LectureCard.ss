<a href="$Link" class="lecture-card-link">
	<article class="lecture-card">
		<% if $Picture %>
			<img src="$Picture.FocusFill(500, 600).URL" alt="Photo representing $Title" />
		<% else %>
			<img src="{$ThemeDir}/dist/images/lecture-placeholder.jpg" alt="Placeholder photo representing $Title" />
		<% end_if %>
			<% if $LectureTitle %>
				<h1>$LectureTitle.LimitWordCount(10)</h1>
			<% else %>
				<h1>$Title.LimitWordCount(10)</h1>
			<% end_if %>
			<% if $Partnership %>
				<p class="h3">In partnership with: $Partnership</p>
			<% end_if %>
			<% include LectureDetails %>
			$Content.LimitWordCount(40) <strong>Continue Reading</strong>
	</article>
</a>
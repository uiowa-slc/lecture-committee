<div class="large-12 columns">
	<article class="article lecture-single">
		$Picture
		<% if $LectureTitle %>
			<h1>$LectureTitle</h1>
		<% else %>
			<h1>$Title</h1>
		<% end_if %>
		<% include LectureDetails %>
		<br />
		$Content
	</article>
</div>
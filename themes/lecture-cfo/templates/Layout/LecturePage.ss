<div class="large-12 columns">
	<%--<article class="article lecture-single">
		$Picture
		<% if $LectureTitle %>
			<h1>$LectureTitle</h1>
		<% else %>
			<h1>$Title</h1>
		<% end_if %>
		<% include LectureDetails %>
		<br />
		$Content
	</article>--%>

<article class="row">
	<div class="lecture-details medium-8 large-7 columns">
		<% if $LectureTitle %>
			<h1>$LectureTitle</h1>
		<% else %>
			<h1>$Title</h1>
		<% end_if %>
		<% include LectureDetails %>
		<p>$Content</p>
	</div>
	<div class="lecture-image medium-4 large-5 columns">
		<% if $Picture %>
			<a href="$Link"><img src="$Picture.CroppedFocusedImage(600,700).URL" alt="Image for $Title" /></a>
		<% end_if %>
	</div>
</article>

</div>
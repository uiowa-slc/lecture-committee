<a href="$Link" class="lecture-card-link">
	<article class="lecture-card">
		<% if $Picture %>
			<% if $Picture.Orientation == "0" %>
				<img src="$Picture.Pad(544,544,222222).URL" alt="$Title">
			<% else %>
				<img src="$Picture.Pad(500,600,222222).URL" alt="Image for $Title" />
			<% end_if %>
		<% else %>
			<img src="{$ThemeDir}/dist/images/lecture-placeholder.jpg" alt="Placeholder photo representing $Title" />
		<% end_if %>
			<% if $LectureTitle %>
				<h1>$LectureTitle.LimitWordCount(10)</h1>
			<% else %>
				<h1>$Title.LimitWordCount(10)</h1>
			<% end_if %>
				<% if $Partnership %>
					<p style="font-size: 16px; color: #666; margin-bottom: 10px; font-weight: bold;">In partnership with: <span style="color: #000; font-weight: normal;">$Partnership</span></p>
				<% end_if %>
				<% if $Donations %>
					<p style="font-size: 16px; color: #666; margin-bottom: 10px; font-weight: bold;">Support provided by: <span style="color: #000; font-weight: normal;">$Donations</span></p>
				<% end_if %>

			
			$Content.LimitWordCount(40) <strong>Continue Reading</strong>
	</article>
</a>
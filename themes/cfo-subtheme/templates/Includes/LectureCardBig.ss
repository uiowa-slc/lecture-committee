	<article class="lecture-card row">

		<div class="lecture-details large-7 columns">
			<% if $LectureTitle %>
				<h1><a href="$Link">$LectureTitle</a></h1>
			<% else %>
				<h1><a href="$Link">$Title</a></h1>
			<% end_if %>
			<ul class="lecture-details" style="margin-bottom: 10px">
				<% if $LectureTitle %><li class="h2">$Title</li><% end_if %>

				<li><strong>Date:</strong> $EventDate.Format("MMMM d, YYYY") $Time</li>
				<li><strong>Location:</strong> $Location</li>
				<li><strong>Cost:</strong> $Price</li>
				<% if $Partnership %>
					<li style="font-size: 16px; color: #939393; margin-bottom: 10px; font-weight: bold;">In partnership with: <span style="color: #eee">$Partnership</span></li>
				<% end_if %>
				<% if $Donations %>
					<li style="font-size: 16px; color: #939393; margin-bottom: 10px; font-weight: bold;">Support provided by: <span style="color: #eee">$Donations</span></li>
				<% end_if %>
			</ul>
			<p>$Content.Summary(75) <a href="$Link">Continue Reading</a></p>
		</div>
		<div class="lecture-image large-5 columns">
			<% if $Picture %>
				<a href="$Link"><img src="$Picture.Pad(600,700,222222).URL" alt="Image for $Title" /></a>
			<% end_if %>
		</div>
	</article>
	<% if not $Last %>
	<hr />
	<% end_if %>
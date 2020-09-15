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
					<% if $StreamingLink %>
					<li><strong>Video stream link:</strong> <a href="#" class="button button--streaming small">View stream <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-camera-video" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
				  <path fill-rule="evenodd" d="M0 5a2 2 0 0 1 2-2h7.5a2 2 0 0 1 1.983 1.738l3.11-1.382A1 1 0 0 1 16 4.269v7.462a1 1 0 0 1-1.406.913l-3.111-1.382A2 2 0 0 1 9.5 13H2a2 2 0 0 1-2-2V5zm11.5 5.175l3.5 1.556V4.269l-3.5 1.556v4.35zM2 4a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h7.5a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1H2z"/>
				</svg></a></li>
					<% end_if %>
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
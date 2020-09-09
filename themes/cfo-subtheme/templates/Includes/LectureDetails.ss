<ul class="lecture-details" style="margin-bottom: 10px">
	<% if $LectureTitle %><li class="h2">$Title</li><% end_if %>

	<li><strong>Date:</strong> $EventDate.Format("MMMM d, YYYY") $Time</li>
	<li><strong>Location:</strong> $Location</li>
	<li><strong>Cost:</strong> $Price</li>
	<% if $Partnership %>
		<li style="font-size: 16px; color: #666; font-weight: bold;">In partnership with: <span style="color: #222; font-weight: normal;">$Partnership</span></li>
	<% end_if %>
	<% if $Donations %>
		<li style="font-size: 16px; color: #666; font-weight: bold;">Support provided by: <span style="color: #222; font-weight: normal;">$Donations</span></li>
	<% end_if %>
</ul>
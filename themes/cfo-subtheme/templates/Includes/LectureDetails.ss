<ul class="lecture-details">
	<% if $LectureTitle %><li class="h2">$Title</li><% end_if %>
	<% if $Partnership %>
		<li class="h4">In partnership with: $Partnership</li>
	<% end_if %>
	<li><strong>Date:</strong> $EventDate.Format("MMMM d, YYYY") $Time</li>
	<li><strong>Location:</strong> $Location</li>
	<li><strong>Cost:</strong> $Price</li>
</ul>
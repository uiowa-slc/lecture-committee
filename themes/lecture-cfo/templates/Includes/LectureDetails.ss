<ul class="lecture-details">
	<% if $LectureTitle %><li><strong>$Title</strong></li><% end_if %>
	<li><strong>Date:</strong> $EventDate.format(F) $EventDate.format(j), $EventDate.format(Y) $Time</li>
	<li><strong>Location:</strong> $Location</li>
</ul>
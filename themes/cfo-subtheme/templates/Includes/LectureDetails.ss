<ul class="lecture-details">
	<% if $LectureTitle %><li><h3>$Title</h3></li><% end_if %>
	<li><strong>Date:</strong> $EventDate.Format("MMMM d, YYYY") $Time</li>
	<li><strong>Location:</strong> $Location</li>
	<li><strong>Cost:</strong> $Price</li>
</ul>
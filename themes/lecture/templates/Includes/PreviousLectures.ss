<div id="previous_lectures">
	<% if PreviousLectures %>
		<% loop PreviousLectures %>
			<div class="lecture_name"><a href="$Link">$Title</a></div>
			<div>$EventDate.format(F) $EventDate.format(j), $EventDate.format(Y)&nbsp;&nbsp;&nbsp;$Time</div>
			$Location
		<% end_loop %>
	<% else %>
		<p>No previous lectures listed.</p>
	<% end_if %>
</div>
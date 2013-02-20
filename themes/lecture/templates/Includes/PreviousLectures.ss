<div id="previous_lectures">
	<% if PreviousLectures %>
		<% control PreviousLectures %>
			<div class="lecture_name"><a href="$Link">$Title</a></div>
			<div>$EventDate.format(F) $EventDate.format(j), $EventDate.format(Y)&nbsp;&nbsp;&nbsp;$Time</div>
			$Location
		<% end_control %>
	<% else %>
		<p>No previous lectures listed.</p>
	<% end_if %>
</div>
<% if UpcomingLectures %>
	<div class="upcoming-lectures">
		<% control UpcomingLectures %>
			<div class="lecture">
				<div class="lecture_name"><a href="$Link">$Title</a></div>
				<div>$EventDate.format(F) $EventDate.format(j), $EventDate.format(Y)&nbsp;&nbsp;&nbsp;$Time</div>
				$Location
			</div>
		<% end_control %>
	</div>
<% else %>
	<p>No upcoming lectures scheduled.</p>
<% end_if %>
<p><a href="{$BaseHref}contact">To request a lecture, contact the UI Lecture Committee.</a></p>
<p><a href="{$BaseHref}lectures">View previous lectures.</a></p>
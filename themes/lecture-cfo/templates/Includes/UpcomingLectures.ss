<section id="upcoming-lectures">
<% if UpcomingLectures %>
	<h2> Upcoming Lectures: </h2>
		
		<% loop UpcomingLectures %>
		<h3 class="upcoming-lecture-title"><a href="$Link">$Title.LimitWordCount(4)</a></h3>
		<ul>
			<li>$EventDate.format(F) $EventDate.format(j), $EventDate.format(Y)</li>
			<li>$Time</li>
			<li>$Location</li>
		</ul>
		<% end_loop %>

<% else %>
	<h3>No upcoming lectures scheduled.</h3>
<% end_if %>
	<p><a href="{$BaseHref}contact">To request a lecture, contact the UI Lecture Committee.</a></p>
	<p><a href="{$BaseHref}lectures">View previous lectures.</a></p>
</section>
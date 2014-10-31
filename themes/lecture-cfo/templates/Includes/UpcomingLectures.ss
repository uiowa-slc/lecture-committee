<section id="upcoming-lectures">
<% if UpcomingLectures %>
	<h2> Upcoming Lectures: </h2>
		
	<% loop UpcomingLectures %>
		<a href="$Link">$picture.CroppedImage(250,250)</a>
		<h4><a href="$Link">$Title.LimitWordCount(5)</a></h4>
		<hr>
		<!--<img src="$picture.URL" alt="Image for $Title" />-->
	<% end_loop %>

<% else %>
	<h3>No upcoming lectures scheduled.</h3>
<% end_if %>
	<p><a href="{$BaseHref}contact">To request a lecture, contact the UI Lecture Committee.</a></p>
	<p><a href="{$BaseHref}lectures">View previous lectures.</a></p>
</section>
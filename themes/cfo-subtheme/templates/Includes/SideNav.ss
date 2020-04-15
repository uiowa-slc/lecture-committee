<ul class="side-nav">
	<% if $Parent.Parent %>
		<% with $Parent.Parent  %>
			<% include SideNavMenuItems %>
		<% end_with %>
	<% else_if $Parent %>
		<% with $Parent %>
			<% include SideNavMenuItems %>
		<% end_with %>
	<% else %>
		<% include SideNavMenuItems %>
	<% end_if %>
</ul>
<section class="upcoming-lectures">
	<% if UpcomingLectures %>
		<h2>Next: </h2>
		<% loop UpcomingLectures %>
			<a href="$Link">$picture.FocusFill(250,250)</a>
			<h3><a href="$Link">$Title.LimitWordCount(5)</a></h3>
			<p> $EventDate.format(MMM d, YYYY) $Time</p>
		<% end_loop %>

	<% else %>
		<h3>No upcoming lectures scheduled.</h3>
	<% end_if %>
</section>
<hr />
<ul class="side-nav">
		<h4>Previous Lectures:</h4>
		
		 	<% loop PreviousLectures.Limit(10) %>
		 		<% include SideNavMenuItem %>
		 	<% end_loop %>
		
		 <li><a href="{$BaseHref}lectures">See all previous lectures</a></li>
</ul>
<p><a href="{$BaseHref}contact">To request a lecture, contact the UI Lecture Committee.</a></p>
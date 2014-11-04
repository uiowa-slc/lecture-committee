<section class="upcoming-lectures">
	<% if UpcomingLectures %>
		<h2>Next: </h2>
		<% loop UpcomingLectures %>
			<a href="$Link">$picture.CroppedFocusedImage(250,250)</a>
			<h3><a href="$Link">$Title.LimitWordCount(5)</a></h3>
			<p> $EventDate.format(F) $EventDate.format(j), $EventDate.format(Y) $Time</p>
		<% end_loop %>

	<% else %>
		<h3>No upcoming lectures scheduled.</h3>
	<% end_if %>
</section>
<hr />
<ul class="side-nav">
	<% if $InSection("lectures") %> 
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
	<% else %>
		<h4>Previous Lectures</h4>
		 <% with $Page("lectures") %>
		 	<% loop Children.Sort("EventDate DESC").Limit(10) %>
		 		<% include SideNavMenuItem %>
		 	<% end_loop %>
		 <% end_with %>
		 <li><a href="{$BaseHref}lectures">See all previous lectures</a></li>
	<% end_if %>
</ul>
<p><a href="{$BaseHref}contact">To request a lecture, contact the UI Lecture Committee.</a></p>
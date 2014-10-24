

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
 	<% loop Children %>
 		<% include SideNavMenuItem %>
 	<% end_loop %>
 <% end_with %>


<% end_if %>
	
</ul>
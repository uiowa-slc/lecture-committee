$Content

<div id="previous">
<% loop PreviousLectures %>
	<p>
	<a href="$Link">$Title</a><br />
	<span>$EventDate.format(l), $EventDate.format(F j), $EventDate.format(Y)</span>
	</p>
<% end_loop %>
</div>
$Form

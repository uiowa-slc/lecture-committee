$Content
$Form

<div id="members">
<% loop Children %>
<div class="member">
	<div class="memberimage">
	<img src="$LeaderImage.LeaderPicture.URL" />
	</div>
	<div class="memberinfo">
	<strong>$Title</strong><br />
	$Position
	</div>
</div>
<% end_loop %>
</div>


<% if $SlideshowImages %>
<div class="donor-slideshow">
	<div class="slick">
		<% loop $SlideshowImages %>
		<div>
			<img class="unveil" src="_resources/vendor/md/cfo-project/src/images/loader.gif" data-src="$Pad(800,600,222222).URL" alt="$Title">
			<% if $Caption %>
				<p>$Caption.NoHTML</p>
			<% end_if %>
		</div>
		<% end_loop %>
	</div>
</div>
<% end_if %>
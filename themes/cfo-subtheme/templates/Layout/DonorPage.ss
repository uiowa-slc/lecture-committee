<div class="large-12 columns">
	<article>
		<h1 class="page-header">$Title</h1>

		<% if $SortedImages %>
		<div class="donor-slideshow">
			<div class="slick">
				<% loop $SortedImages %>
				<div>
					<img class="unveil" src="_resources/vendor/md/cfo-project/src/images/loader.gif" data-src="$Pad(800,600,222222).URL" alt="$Title">
				</div>
				<% end_loop %>
			</div>
		</div>
		<% end_if %>
		$Content

	</article>
</div>
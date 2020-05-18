<div class="large-12 columns">
	<article class="row">
		<div class="lecture-details medium-8 large-7 columns">
			<% if $LectureTitle %>
				<h1>$LectureTitle</h1>
			<% else %>
				<h1>$Title</h1>
			<% end_if %>
			<% if $Partnership %>
				<p class="h3">In partnership with: $Partnership</p>
			<% end_if %>
			<% include LectureDetails %>
			<p>$Content</p>
			<% if $Sponsors %>
			<h2>Sponsors:</h2>
			<% loop $Sponsors %>
				{$Title}<% if not $Last %>, <% end_if %>
			<% end_loop %>
			<% end_if %>
			<% if $Donors %>
			<h2>Additional support provided by:</h2>
			<% loop $Donors %>
				{$Title}<% if not $Last %>, <% end_if %>
			<% end_loop %>
			<% end_if %>
		
		</div>
		<div class="lecture-image medium-4 large-5 columns">
			<% if $Picture %>
				<img src="$Picture.FocusFill(600,700).URL" alt="Image for $Title" />
			<% end_if %>
		</div>
	</article>
</div>
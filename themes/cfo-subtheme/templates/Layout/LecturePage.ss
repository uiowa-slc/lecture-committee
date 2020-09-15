<div class="large-12 columns">
	<article class="row">
		<div class="lecture-details medium-8 large-7 columns">
			<% if $LectureTitle %>
				<h1 class="page-header">$LectureTitle</h1>
			<% else %>
				<h1 class="page-header">$Title</h1>
			<% end_if %>

			<% include LectureDetails %>
			<p>$Content</p>

			<% if $WebsiteLink %>
				<p><a href="$WebsiteLink" class="button small">More information <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-box-arrow-up-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8.636 3.5a.5.5 0 0 0-.5-.5H1.5A1.5 1.5 0 0 0 0 4.5v10A1.5 1.5 0 0 0 1.5 16h10a1.5 1.5 0 0 0 1.5-1.5V7.864a.5.5 0 0 0-1 0V14.5a.5.5 0 0 1-.5.5h-10a.5.5 0 0 1-.5-.5v-10a.5.5 0 0 1 .5-.5h6.636a.5.5 0 0 0 .5-.5z"/>
  <path fill-rule="evenodd" d="M16 .5a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h3.793L6.146 9.146a.5.5 0 1 0 .708.708L15 1.707V5.5a.5.5 0 0 0 1 0v-5z"/>
</svg></a></p>
			<% end_if %>
			
<%-- 			<% if $Donors %>
			<h2>Donations provided by:</h2>
			<% loop $Donors %>
				{$Title}<% if not $Last %>, <% end_if %>
			<% end_loop %>
			<% end_if %>
			<% if $Sponsors %>
			<h2>Support provided by:</h2>
			<% loop $Sponsors %>
				{$Title}<% if not $Last %>, <% end_if %>
			<% end_loop %>
			<% end_if %> --%>

		
		</div>
		<div class="lecture-image medium-4 large-5 columns">
			<% if $Picture %>
				<img src="$Picture.Pad(600,700,222222).URL" alt="Image for $Title" />
			<% end_if %>
		</div>
	</article>
</div>
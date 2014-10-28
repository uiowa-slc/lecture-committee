<div class="<% if $Children || $Parent ||$InSection("sponsorships") || $InSection("contact") %>large-9 columns content-left<% else %>large-12<% end_if %> columns">
	<h1 class="page-title"><span>$Title</span></h1>
	<article class="article">
		$Content
		$Form
	</article>

	<% include PreviousLectures %>

</div>

	<div class="large-3 columns content-right">
		<% include UpcomingLectures %>
	</div>
</div>



<div class="<% if $Children || $Parent ||$InSection("sponsorships") || $InSection("contact") || $InSection("about") %>large-9 columns content-left<% else %>large-12<% end_if %> columns">
	<article class="article">
		<h1 class="page-header">$Title</h1>
		$Content
		$Form
	</article>
</div>
<% if $InSection("sponsorships") || $InSection("contact") || $InSection("about")||$Children || Parent%><%--Determine if Side Nav should be rendered, you can change this logic--%>
<div class="large-3 columns content-right">
	<br>
	<% include SideNav %>
</div>
<% end_if %>
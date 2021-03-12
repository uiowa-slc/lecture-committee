<% include Header %>

<main class="container-xl my-5">
	<div class="row">
		<div class="<% if $Parent.ClassName != "LecturePage" && $Menu(2) %>col-lg-8 col-xl-9 <% else %>col-md-10 offset-md-1<% end_if %>">
            <%-- $Breadcrumbs --%>
			<article id="content">
				<h1>$Title</h1>
                $Content
			</article>
			$Form
			$PageComments

		</div>

		<% if $Parent.ClassName != "LecturePage" && $Menu(2) %>
            <% include SideBar %>
		<% end_if %>
	</div>
</main>
<% include TwitterFeature %>

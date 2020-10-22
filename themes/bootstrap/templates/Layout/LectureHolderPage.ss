<% include Header %>

<main class="container-xl my-5" id="content">
	<%--only show upcoming shows on index page (not archival "year/xxx" urls etc) --%>
	<% if $Action == "index" %>
	<div class="row">
		<div class="col-lg-12">
			<% if $UpcomingLectures %>
				<h1>Upcoming:</h1>
                <br>
				<div class="upcoming-shows">
					<% loop $UpcomingLectures %>
						<% include ShowCardBig %>
					<% end_loop %>
				</div>
				<br />
				<hr />
			<% end_if %>
        </div>
    </div>
    <% end_if %>
    <div class="row">
        <div class="col">
            <h1 class="my-3 my-md-4">Previously Presented:</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <nav class="nav nav-pills flex-column sticky-top">
            	<% loop $Years.Sort('Year DESC') %>
            		<a class="nav-item nav-link <% if $Active %>active<% end_if %>" href="$Link">$Year</a>
            	<% end_loop %>
            </nav>
        </div>
        <div class="col-md-9">
			<% loop $paginatedPreviousLectures %>
				<div class="previous-shows">
					<% include ShowCard %>
				</div>
			<% end_loop %>

			<% with $paginatedPreviousLectures %>
				<% include Pagination %>
			<% end_with %>
		</div>
	</div>
</main>


<%-- <% include Header %> --%>

<div class="donor-container bg-light text-dark">
<main class="container-fluid py-5">
	<div class="row justify-content-center">
		<div class="col-lg-9">
            <%-- $Breadcrumbs --%>
            <a href="{$BaseHref}"><img src="{$ThemeDir}/dist/images/logo-light-bg.png" alt="University of Iowa Lecture Committee" class="donor-ulc-logo" /></a>
            
			<article id="content" class="text-center py-5">
				<h1 class="text-center h5 text-uppercase">Notable Donor</h1>
				<h2 class="donor-title h1">$Title</h2>
                <div class="donor-content">$Content</div>
			</article>
			<div class="row justify-content-center">
				<% loop $Lectures.Sort("EventDate ASC") %>
					<div class="col-6 col-sm-4 mb-4">
						<% if $Picture %>

						<a href="$Link" class="donor-lecture-image-link d-block">
							<img data-ratio="1" class="lazyload donor-lecture-image d-block w-100" src="$resourceURL('themes/bootstrap/dist/images/lecture-placeholder.png')" data-src="$Picture.Pad(400,400,222).URL" class="card-img" alt="$Title" loading="lazy">
						</a>
						<% end_if %>
						<h3 class="card-title donor-lecture-title mt-2 mb-0 text-center">
							<a href="$Link">$Lecturer</a>
						</h3>

						<div class="mt-2 mt-md-0 text-center"><span class="donor-lecture-date">$EventDate.Format("MMMM d, Y")</span></div>
					</div>
				<% end_loop %>
			</div>
			$Form
			$PageComments

		</div>
		<% if $Menu(2) %>
            <% include SideBar %>
		<% end_if %>
	</div>
</main>
</div>
<% include TwitterFeature %>

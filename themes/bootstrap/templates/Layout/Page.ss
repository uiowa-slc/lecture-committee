<% include Header %>

<main class="container-xl my-5">
	<div class="row">
		<div class="<% if $Menu(2) %>col-lg-8 col-xl-9 <% else %>col-md-10 offset-md-1<% end_if %>">
            <%-- $Breadcrumbs --%>
			<article id="content">
				<h1>$Title</h1>
                $Content
			</article>
			$Form
			$PageComments

		</div>
		<% if $Menu(2) %>
            <% include SideBar %>
		<% end_if %>
	</div>
</main>

<% if $URLSegment == "live" %>
	<div id="check-in-modal" class="check-in-modal mfp-hide text-center">
		<div class="check-in-modal__content">
  		<p>Please help the University of Iowa Lecture Committee understand who is attending our educational programs by checking in below:</p>
  		<p><a href="https://bit.ly/33vzmqE" target="_blank" rel="noopener" class="btn check-in-modal__button btn-large">Check In <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-box-arrow-up-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8.636 3.5a.5.5 0 0 0-.5-.5H1.5A1.5 1.5 0 0 0 0 4.5v10A1.5 1.5 0 0 0 1.5 16h10a1.5 1.5 0 0 0 1.5-1.5V7.864a.5.5 0 0 0-1 0V14.5a.5.5 0 0 1-.5.5h-10a.5.5 0 0 1-.5-.5v-10a.5.5 0 0 1 .5-.5h6.636a.5.5 0 0 0 .5-.5z"/>
  <path fill-rule="evenodd" d="M16 .5a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h3.793L6.146 9.146a.5.5 0 1 0 .708.708L15 1.707V5.5a.5.5 0 0 0 1 0v-5z" />
</svg></a></p>
</div>
  		<p style="margin: 0;"><a href="live/" class="check-in-modal__dismiss">No thanks</a></p>
	</div>
<% end_if %>
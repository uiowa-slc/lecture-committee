<% include Header %>
<%--
<% if $StreamingLectureToday %>
<div class="container-xl my-2">
	<div class="row">
		<div class="col-12 text-center">
			<% with $StreamingLectureToday %>
			<p class="m-0">Up next: $Lecturer on $EventDate.Nice at $Time</p>
			<% end_with %>
		</div>
	</div>
</div>
<% end_if %>
--%>



<main class="container-xl my-3">

	<% if $StreamingLectureToday %>

		<div class="row justify-content-center">
			<div class="col-12 text-center">
                <p class="small">Please help us understand who is attending our educational programs by <a href="https://bit.ly/33vzmqE" target="_blank" rel="noopener">checking in.</a> Questions for the guest(s) may be sent to <a href="mailto:lecture-commitee@uiowa.edu">lecture-commitee@uiowa.edu</a>.</p>
			</div>
		</div>



		<div class="row mb-3">
			<div class="col-12">
				<div style="position: relative; overflow: hidden; padding-bottom: 56.25%;"><iframe style="position: absolute;" title="UI live ch1" src="https://cdn.jwplayer.com/players/z2z9XSYM-7EaCFiXK.html" width="100%" height="100%" frameborder="0" scrolling="auto"></iframe></div>
			</div>
		</div>
	<% end_if %>
	<div class="row my-5">
		<div class="<% if $Menu(2) %>col-lg-8 col-xl-9 <% else %>col-md-10 offset-md-1<% end_if %>">
            <%-- $Breadcrumbs --%>
			<article id="content">
				<h1>$Title</h1>
                $Content
			</article>
			$Form
			$PageComments

			<% if $UpcomingStreamingLectures %>
				<hr />
				<h2 class="text-center">Up Next:</h2>
				<% loop $UpcomingStreamingLectures %>
					<% include ShowCardNoStreamingLink %>
				<% end_loop %>
			<% end_if %>

		</div>
		<% if $Menu(2) %>
            <% include SideBar %>
		<% end_if %>
	</div>
</main>
<% include TwitterFeature %>

<% if $StreamingLectureToday %>
	<div id="check-in-modal" class="check-in-modal mfp-hide text-center">
		<div class="check-in-modal__content">
  		<p>Please help the University of Iowa Lecture Committee understand who is attending our educational programs by checking in below:</p>
  		<p><a href="https://bit.ly/33vzmqE" target="_blank" rel="noopener" class="btn check-in-modal__button btn-large">Check In <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-box-arrow-up-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8.636 3.5a.5.5 0 0 0-.5-.5H1.5A1.5 1.5 0 0 0 0 4.5v10A1.5 1.5 0 0 0 1.5 16h10a1.5 1.5 0 0 0 1.5-1.5V7.864a.5.5 0 0 0-1 0V14.5a.5.5 0 0 1-.5.5h-10a.5.5 0 0 1-.5-.5v-10a.5.5 0 0 1 .5-.5h6.636a.5.5 0 0 0 .5-.5z"/>
  <path fill-rule="evenodd" d="M16 .5a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h3.793L6.146 9.146a.5.5 0 1 0 .708.708L15 1.707V5.5a.5.5 0 0 0 1 0v-5z" />
</svg></a></p>
</div>
  		<p style="margin: 0;"><a href="live/" class="check-in-modal__dismiss">No, thank you.</a></p>
	</div>
<% end_if %>

<% include Header %>



	<% if $StreamingLectureToday %>
	<div class="stream-wrap">
		<div class="row no-gutters mb-3 justify-content-center">
			<div class="col-xl-8">
				<div class="embed-responsive embed-responsive-16by9">


				<iframe class="embed-responsive-item"src="https://cdn.jwplayer.com/players/z2z9XSYM-7EaCFiXK.html" allowfullscreen></iframe>
					<%-- example video that seems to work when ULC isnt streaming --%>
	<%-- 						<iframe class="embed-responsive-item"src="https://cdn.jwplayer.com/players/LxNvlC58-7EaCFiXK.html" allowfullscreen></iframe> --%>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row justify-content-center pb-3">
				<div class="col-12 text-center">
					 <p class="small m-0">Please help us understand who is attending our educational programs by <a href="$CheckinLink" target="_blank" rel="noopener">checking in.</a> Questions for the guest(s) may be sent to <a href="mailto:lecture-committee@uiowa.edu">lecture-committee@uiowa.edu</a>.</p>

				</div>
			</div>

		</div>
	</div>
	<div class="container-fluid">
		<% with $StreamingLectureToday %>
			<% if $Donors %>
			<div class="row justify-content-center">
				<div class="col-lg-12">
	                 <p class="h4 text-center">This lecture made possible by <% loop $Donors %><a href="$Link">$Title</a><% if not $Last %>, <% end_if %><% end_loop %>.</p>
				</div>
			</div>
			<% end_if %>
		<% end_with %>
	</div>
	<% else %>
		<div class="stream-wrap stream-wrap--empty">
			<div class="container-fluid">
				<div class="row mb-3 justify-content-center" style="height: 40vh;">
					<div class="col-lg-8 text-center align-self-center">

						<p><svg style="color: #666" aria-hidden="true" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-broadcast" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M3.05 3.05a7 7 0 0 0 0 9.9.5.5 0 0 1-.707.707 8 8 0 0 1 0-11.314.5.5 0 0 1 .707.707zm2.122 2.122a4 4 0 0 0 0 5.656.5.5 0 0 1-.708.708 5 5 0 0 1 0-7.072.5.5 0 0 1 .708.708zm5.656-.708a.5.5 0 0 1 .708 0 5 5 0 0 1 0 7.072.5.5 0 1 1-.708-.708 4 4 0 0 0 0-5.656.5.5 0 0 1 0-.708zm2.122-2.12a.5.5 0 0 1 .707 0 8 8 0 0 1 0 11.313.5.5 0 0 1-.707-.707 7 7 0 0 0 0-9.9.5.5 0 0 1 0-.707z"/>
  <path d="M10 8a2 2 0 1 1-4 0 2 2 0 0 1 4 0z"/> </svg> No event currently livestreaming.</p>
						<% if $UpcomingStreamingLectures %>
						<h2 class="h5">Next Livestream Event:</h2>
							<p><% with $UpcomingStreamingLectures.First %><a href="$Link">$Lecturer <br />{$EventDate.Format("MMMM d, Y")}, $Time</a><% end_with %></p>
						<% end_if %>
						<%-- <div class="stream-wrap__placeholder">
							
						</div> --%>
					</div>
				</div>
			</div>
		</div>
	<% end_if %>
	
	<main class="container-xl my-3">
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
					<h2>Upcoming Livestream Events:</h2>
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
			<p class="h6 check-in-modal__today">Today:</p>
		<h2 class="h4 check-in-modal__heading"><% with $StreamingLectureToday %>$Lecturer <br />{$EventDate.Format("MMMM d, Y")}, $Time<% end_with %></h2>
  		<p>Welcome! Please help the University of Iowa Lecture Committee understand who is attending our educational programs by checking in below:</p>
  		<p><a href="$CheckinLink" target="_blank" rel="noopener" class="btn btn-light check-in-modal__button btn-large">Check In <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-box-arrow-up-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8.636 3.5a.5.5 0 0 0-.5-.5H1.5A1.5 1.5 0 0 0 0 4.5v10A1.5 1.5 0 0 0 1.5 16h10a1.5 1.5 0 0 0 1.5-1.5V7.864a.5.5 0 0 0-1 0V14.5a.5.5 0 0 1-.5.5h-10a.5.5 0 0 1-.5-.5v-10a.5.5 0 0 1 .5-.5h6.636a.5.5 0 0 0 .5-.5z"/>
  <path fill-rule="evenodd" d="M16 .5a.5.5 0 0 0-.5-.5h-5a.5.5 0 0 0 0 1h3.793L6.146 9.146a.5.5 0 1 0 .708.708L15 1.707V5.5a.5.5 0 0 0 1 0v-5z" />
</svg></a><br /><span class="small">(Opens in a new tab)</span></p>

</div>
  		<p style="margin: 0;"><a href="live/" class="check-in-modal__dismiss">No, thank you.</a></p>
  		<hr />
  		<p><small>Questions for the guest(s) may be sent to <a href="mailto:lecture-commitee@uiowa.edu" style="color: #222;">lecture-commitee@uiowa.edu</a>.</small></p>
	</div>
<% end_if %>

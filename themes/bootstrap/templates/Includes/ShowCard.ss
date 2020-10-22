<%-- <div class="row d-flex align-items-center">
                            <div class="col-lg-5">
                                <!-- Date -->
                                <div class="text-uppercase mt-2 mt-md-0">October 8, 2020 7:00 p.m.</div>

                                <!-- Title -->
                                
                                    <h1 class="display-4 show-title">
                                        <a href="/lecture-committee/lectures/eric-deggens-and-venise-berry/" class="text-light text-decoration-none">
                                            <span class="link-highlight">Race And The Media:  How The Media Shapes Race Issues And Influences Our Beliefs</span>
                                        </a>
                                    </h1>
                                    
                                        <p class="display-5">Eric Deggens &amp; Venise Berry</p>
                                    
                                
  

                                <!-- Content -->
                                <p class="lead"></p>

                                
                                        <p><a class="btn btn-primary btn-stream-other" href="TBD " target="_blank">View Stream <i class="fas fa-video"></i></a></p>
                                
                                <a href="/lecture-committee/lectures/eric-deggens-and-venise-berry/" class="btn  btn-primary mb-3">View Details</a>

                                <!-- Ticket buttons -->
                                
                                    
                                    
                                 
                            </div>
                            <div class="col-lg-7">
                                
                                    <img src="/lecture-committee/assets/Uploads/berry-deggens-alt2-square__PadWzgwMCw4MDAsImY4ZjlmYSIsMF0.jpg" class="w-100" alt="Poster for Eric Deggens &amp; Venise Berry">
                                
                            </div>
                        </div> --%>



<div class="my-5">
	<div class="row no-gutters">

		<div class="col-md-8">
			<div>
				<div class="text-uppercase mt-2 mt-md-0"> $EventDate.Format("MMM. d, Y")  $Time</div>
				<h3 class="card-title show-title my-2">
					<% if $LectureTitle %>
						<a href="$Link">$LectureTitle</a>
					<% else %>
						<a href="$Link">$Title</a>
					<% end_if %>
				</h3>
				<% if LectureTitle %>
				<p class="h4">$Title</p>
				<% end_if %>               

                <!-- Date/Time -->
				<ul class="lecture-details ">
					<% if not $StreamingLink %>
						<li class="lecture-details__item"><strong>Location:</strong> $Location</li>
					<% end_if %>
				</ul>
				<% if $isFuture && $StreamingLink %>
                	<p><a class="btn btn-primary btn-stream-other" href="{$StreamingLink} " target="_blank">View Stream <i class="fas fa-video"></i></a></p>
                <% end_if %>
				<br />
                
                <a href="$Link" class="btn btn-primary d-block d-sm-inline-block mb-2 mb-sm-0">See Details</a>
                
                <!-- Ticket Links -->
                <% if $SoldOut %>
                    <div class="alert alert-warning mt-2" role="alert">
                        This show is sold out!
                    </div>
                <% else %>
                    <% if $EventDate.inFuture || $EventDate.isToday %>
                        <% if $BuyTicketsOnlineLink %>
                            <a href="$BuyTicketsOnlineLink" class="btn btn-outline-primary" target="_blank">Buy Tickets Online</a>
                        <% end_if %>
                        <% if $BuyTicketsInPersonLink %>
                            <a href="$BuyTicketsInPersonLink" class="btn btn-outline-primary" target="_blank">Buy Tickets In Person</a>
                        <% end_if %>
                        <%-- <a href="$Link" class="btn btn-primary" aria-label="See details about $Title">See Details</a> --%>
                    <% end_if %>
				<% end_if %>
				
			</div>
		</div>
		<% if $Picture %>
		<div class="col-md-4">
			<a href="$Link">
				<img src="$Picture.Pad(400,400,000).URL" class="card-img" alt="$Title" loading="lazy">
			</a>
		</div>
		<% end_if %>
	</div>
</div>
<div class="my-4 show-card">
	<div class="row no-gutters">

		<div class="col-md-8 order-12 order-md-1">
			
				<% if not $Cancelled %><div class="text-uppercase mt-2 mt-md-0"> $EventDate.Format("MMMM d, Y") $Time</div><% end_if %>
				<% if $DonorByline %>
                    <p class="h4">$DonorByline</p>
                <% end_if %>
				<% if $LectureTitle %>
					<h3 class="card-title show-title my-2">
						<a href="$Link">$LectureTitle.RAW</a>
					</h3>
					<p class="h4">$Lecturer</p>
				<% else %>
					<h3 class="card-title show-title my-2">
						<a href="$Link">$Lecturer</a>
					</h3>
				<% end_if %>
				<% if $Featuring %>
                    <p class="featuring-header">$Featuring</p>
                <% end_if %>           
				<hr />
                <!-- Date/Time -->
				<ul class="lecture-details ">
					<% if $HostedBy %>
		                <li class="lecture-details__item">
		                    <strong>Hosted by:</strong> $HostedBy
		                </li>
	                <% end_if %>
					<% if not $StreamingLink %>
						<li class="lecture-details__item"><strong>Location:</strong> $Location</li>
					<% end_if %>
				</ul>

				<p>$Content.LimitCharacters(150)</p>
                
                <a href="$Link" class="btn btn-primary d-block d-sm-inline-block mb-2 mb-sm-0">Details</a>
                
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
		<% if $Picture %>
		<div class="col-md-4 order-1 order-md-12">
			<a href="$Link" class="d-block pl-3">
				<img data-ratio="1" class="lazyload d-block w-100 show-image" src="$resourceURL('themes/bootstrap/dist/images/lecture-placeholder.png')" data-src="$Picture.Pad(400,400,fff).URL" class="card-img" alt="$Title" loading="lazy">
			</a>
		</div>
		<% end_if %>
	</div>
</div>
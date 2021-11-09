<div class="my-6 show-card">
	<div class="row no-gutters">

		<div class="col-md-8 order-12 order-md-1">
			
		<div class="text-uppercase mt-2 mt-md-0"><span class"show-card__time-label">$EventDate.Format("MMMM d, Y")</span></div>
		<% if $DonorByline %>
            <p class="h5">$DonorByline</p>
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
            <% if $Location %>
				<li class="lecture-details__item"><strong>Location:</strong> $Location</li>
			<% end_if %>
			
		</ul>
		<% if $isFuture && $StreamingLink %>
        	<p><% include StreamButton %></p>
        <% end_if %>
		    <% if $ShowFullContentInCard %>
                <p>$Content</p>
            <% else %>
                <p>$Content.LimitCharacters(180)</p>
            <% end_if %>
        <!-- Ticket Links -->

        <% if $TicketingInfo && $isFuture %>
            $TicketingInfo
        <% end_if %>   
        <a href="$Link" class="btn btn-primary d-block d-sm-inline-block mb-2 mb-sm-0">Details</a>
        		
		</div>
		<% if $Picture %>
		<div class="col-md-4 order-1 order-md-12">
			<a href="$Link" class="d-block pl-lg-3">
				<img data-ratio="1" class="lazyload d-block w-100 show-image show-image--small" src="$resourceURL('themes/bootstrap/dist/images/lecture-placeholder.png')" data-src="$Picture.Pad(400,400,000).URL" class="card-img" alt="" role="decoration" loading="lazy">
			</a>
		</div>
		<% end_if %>
	</div>
</div>
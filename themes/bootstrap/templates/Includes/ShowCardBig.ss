<div class="mt-3 mb-6 show-card show-card--big" id="content">
    <div class="row d-flex">
        <div class="col-md-7 col-lg-6 order-12 order-md-1">
            <!-- Date -->
            <% if $isFuture %>
            <div class="text-uppercase mt-2 mt-md-0 show-card__time-label">$EventDate.Format("MMMM d, Y")</div>
            <% else %>
            <div class="text-uppercase mt-2 mt-md-0 show-card__time-label">Presented on $EventDate.Format("MMMM d, Y")</div>
            <% end_if %>
            <% if $DonorByline %>
                <p class="h4">$DonorByline</p>
            <% end_if %>
            <!-- Title -->
            <% if $LectureTitle %>
                <h1 class="display-5 show-title">
                    <a href="$Link" class="text-light text-decoration-none">
                        <span class="link-highlight">$LectureTitle.RAW</span>
                    </a>
                </h1>
                <% if $Lecturer %>
                    <p class="h2">$Lecturer</p>
                <% end_if %>
            <% else %>
                <h1 class="display-5 show-title">
                    <a href="$Link" class="text-light text-decoration-none">
                        <span class="link-highlight">$Lecturer</span>
                    </a>
                </h1>

            <% end_if %>
                <% if $Featuring %>
                    <p class="featuring-header">$Featuring</p>
                <% end_if %>
            <hr />
            <ul class="lecture-details ">
                <% if $HostedBy %>
                    <li class="lecture-details__item">
                        <strong>Hosted by:</strong> $HostedBy
                    </li>
                <% end_if %>
                <li class="lecture-details_item"><strong>Date:</strong> $EventDate.Format("MMMM d, Y"), $Time</li>
                <% if $Location %><li class="lecture-details__item"><strong>Location:</strong> $Location</li><% end_if %>
            </ul>
            <!-- Content -->
            <% if $ShowFullContentInCard %>
                <p>$Content</p>
            <% else %>
                <p>$Content.FirstParagraph.LimitCharacters(180)</p>
            <% end_if %>

            <p>

                <a href="$Link" class="btn btn-primary d-block d-sm-inline-block mb-2 mb-sm-0">Details</a>
                <% if $StreamingLink && not $isPast%>
                    <% include StreamButton %>
                <% end_if %>

            </p>
            <!-- Ticket buttons -->

            <% if $TicketingInfo && $isFuture %>
                $TicketingInfo
            <% end_if %>

                <% if $Cost %>
                    <div class="lecture-details__item">
                        <strong>Cost:</strong> $Cost
                    </div>
                <% end_if %>
                <% if $Partnership %>
                    <div class="lecture-details__item">
                        <strong>In partnership with:</strong> $Partnership
                    </div>
                <% end_if %>
                <% if $Donations %>
                    <div class="lecture-details__item">
                        <strong>Support provided by:</strong> $Donations
                    </div>
                <% end_if %>
                 <% if $SponsoredBy %>
                    <div class="lecture-details__item">
                        <strong>Sponsored by:</strong> $SponsoredBy
                    </div>
                <% end_if %>       
            <% if $Donors %>
                 <p class="h5">This lecture made possible by <% loop $Donors %><a href="$Link">$Title</a><% if not $Last %>, <% end_if %><% end_loop %>.</p>
            <% end_if %>
        </div>
        <div class="col-md-5 col-lg-6 order-1 order-md-12">
            <% if $Picture %>
                <a href="$Link" class="d-block">
                    <img data-ratio="1" src="$resourceURL('themes/bootstrap/dist/images/lecture-placeholder.png')" data-src="$Picture.Pad(800,800, 000).URL" class="show-image lazyload d-block w-100" alt="Poster for {$Title}" />
                </a>
            <% end_if %>
        </div>
    </div>
</div>
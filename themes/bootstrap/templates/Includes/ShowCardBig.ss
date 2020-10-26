<div class="mt-3 mb-6 show-card show-card--big" id="content">
    <div class="row d-flex">
        <div class="col-md-7 col-lg-6 order-12 order-md-1">
            <!-- Date -->
            <% if $isFuture %>
            <div class="text-uppercase mt-2 mt-md-0 show-card__time-label">$EventDate.Format("MMMM d, Y"), $Time</div>
            <% else %>
            <div class="text-uppercase mt-2 mt-md-0 show-card__time-label">Presented on $EventDate.Format("MMMM d, Y") $Time</div>
            <% end_if %>
            <!-- Title -->
            <% if $LectureTitle %>
                <h1 class="display-5 show-title">
                    <a href="$Link" class="text-light text-decoration-none">
                        <span class="link-highlight">$LectureTitle</span>
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

            <hr />
                <ul class="lecture-details ">
                    
                    <li class="lecture-details__item"><strong>Location:</strong> $Location</li>
                    
                </ul>
            <!-- Content -->
            <p class="lead">$Content.FirstParagraph.LimitCharacters(180)</p>

            <p>

                <a href="$Link" class="btn btn-primary d-block d-sm-inline-block mb-2 mb-sm-0">Details</a>
                <% if $StreamingLink && not $isPast%>
                    <% include StreamButton %>
                <% end_if %>

            </p>
            <!-- Ticket buttons -->
            <% if $SoldOut %>
                <div class="alert alert-warning mb-0" role="alert">
                    This show is sold out!
                </div>
            <% else_if $isFuture %>
                <% if $BuyTicketsOnlineLink %>
                    <a href="$BuyTicketsOnlineLink" class="btn btn-outline-primary mb-3" target="_blank" rel="noopener noreferrer">Buy Tickets Online</a>
                <% end_if %>
                <% if $BuyTicketsInPersonLink %>
                    <a href="$BuyTicketsInPersonLink" class="btn btn-outline-primary mb-3" target="_blank" rel="noopener noreferrer">Buy Tickets In Person</a>
                <% end_if %>
            <% end_if %>
                <% if $Cost %>
                    <p class="lecture-details__item">
                        <strong>Cost:</strong> $Cost
                    </p>
                <% end_if %>
                <% if $Partnership %>
                    <p class="lecture-details__item">
                        <strong>In partnership with:</strong> $Partnership
                    </p>
                <% end_if %>
                <% if $Donations %>
                    <p class="lecture-details__item">
                        <strong>Support provided by:</strong> $Donations
                    </p>
                <% end_if %>
        </div>
        <div class="col-md-5 col-lg-6 order-1 order-md-12">
            <% if $Picture %>
                <a href="$Link" class="d-block">
                    <img data-ratio="1" src="$resourceURL('themes/bootstrap/dist/images/lecture-placeholder.png')" data-src="$Picture.Pad(800,800, 222).URL" class="lazyload d-block w-100" alt="Poster for {$Title}" />
                </a>
            <% end_if %>
        </div>
    </div>
</div>
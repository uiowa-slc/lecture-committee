<div class="my-5 show-card show-card--big" id="content">
    <div class="row d-flex align-items-center">
        <div class="col-md-5 order-12 order-md-1">
            <!-- Date -->
            <% if $isFuture %>
            <div class="text-uppercase mt-2 mt-md-0">$EventDate.Format("MMMM d, Y") $Time</div>
            <% else %>
            <div class="text-uppercase mt-2 mt-md-0">Presented on $EventDate.Format("MMMM d, Y") $Time</div>
            <% end_if %>
            <!-- Title -->
            <% if $LectureTitle %>
                <h1 class="display-4 show-title">
                    <a href="$Link" class="text-light text-decoration-none">
                        <span class="link-highlight">$LectureTitle</span>
                    </a>
                </h1>
                <% if $Lecturer %>
                    <p class="h2">$Lecturer</p>
                <% end_if %>
            <% else %>
                <h1 class="display-4 show-title">
                    <a href="$Link" class="text-light text-decoration-none">
                        <span class="link-highlight">$Lecturer</span>
                    </a>
                </h1>

            <% end_if %>


            <!-- Content -->
            <p class="lead">$Content.FirstParagraph.LimitCharacters(180)</p>

            <a href="$Link" class="btn  btn-primary mb-3">View Details</a>

            <% if $StreamingLink && $isToday %>
                <p><% include StreamButton %></p>
            <% end_if %>
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
        </div>
        <div class="col-md-7 order-1 order-md-12">
            <% if $Picture %>
                <a href="$Link" class="d-block">
                    <img data-ratio="1" src="$resourceURL('themes/bootstrap/dist/images/lecture-placeholder.png')" data-src="$Picture.Pad(800,800, 333).URL" class="lazyload d-block w-100" alt="Poster for {$Title}" />
                </a>
            <% end_if %>
        </div>
    </div>
</div>
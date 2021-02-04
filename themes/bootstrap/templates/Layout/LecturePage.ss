<% include Header %>
<main class="container-xl mb-5" id="content">
    <div class="row">
        <div class="col-md-7 col-lg-6 order-12 order-md-1">
            <div class="pt-4">
                $Breadcrumbs
                <% if $LectureTitle %>
                    <h1>$LectureTitle.RAW</h1>
                    <% if $Lecturer %><p class="h2">$Lecturer</p><% end_if %>
                <% else %>
                    <h1>$Lecturer</h1>
                <% end_if %>
                <hr>
            </div>

            <ul class="lecture-details">
                <li class="lecture-details__item">
                    <strong>Date:</strong> $EventDate.Format("MMMM d, Y"), $Time
                </li>
                <% if $Location %>
                    <li class="lecture-details__item">
                        <strong>Location:</strong> $Location
                    </li>
                <% end_if %>
                <% if $StreamingLink && $isFuture %>
                    <li class="lecture-details__item">
                        <% include StreamButton %>
                    </li>
                <% end_if %>
                <% if $Cost %>
                    <li class="lecture-details__item">
                        <strong>Cost:</strong> $Cost
                    </li>
                <% end_if %>
                <% if $Partnership %>
                    <li class="lecture-details__item">
                        <strong>In partnership with:</strong> $Partnership
                    </li>
                <% end_if %>
                <% if $Donations %>
                    <li class="lecture-details__item">
                        <strong>Support provided by:</strong> $Donations
                    </li>
                <% end_if %>
            </ul>
            <% if $SoldOut %>
                <div class="alert alert-warning mb-0 rounded-0" role="alert">
                    This show is sold out!
                </div>
            <% else %>
                <% if $Date.inFuture || $Date.isToday %>
                    <div class="card-body text-center">
                        <% if $BuyTicketsOnlineLink %>
                        <a href="$BuyTicketsOnlineLink" class="btn btn-primary card-link mb-2" target="_blank" rel="noopener noreferrer"> Buy Tickets Online</a>
                        <% end_if %>
                        <% if $BuyTicketsInPersonLink %>
                        <a href="$BuyTicketsInPersonLink" class="btn btn-primary card-link mb-2" target="_blank" rel="noopener noreferrer"> Buy Tickets In Person</a>
                        <% end_if %>
                    </div>
                <% end_if %>
            <% end_if %>

           
                <p>$Content</p>

                <% if $Donors %>
                <hr />
                    <p class="h4">This lecture made possible by <% loop $Donors %><a href="$Link">$Title</a><% if not $Last %>, <% end_if %><% end_loop %>.</p>
                <% end_if %>
       
        </div>
        <div class="col-md-5 col-lg-6 pt-5 order-1 order-md-12">
                <div class="sticky-side">
                <% if $Picture %>
                <img src="$Picture.Pad(800,800,000).URL" class="d-block w-100" alt="Poster for {$Title}, please continue reading for specific event information." />
                <% end_if %>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-9">
              

             

                <hr />
                <p class="small">Individuals with disabilities are encouraged to attend all University of Iowa - sponsored events. If you are a person with a disability who requires an accommodation in order to participate in this program, please contact the Lecture Committee in advance at <a href="mailto:lecture-committee@uiowa.edu">lecture-committee@uiowa.edu</a>.</p>
            </div>
        </div>
    </div>
</main>
<% include TwitterFeature %>

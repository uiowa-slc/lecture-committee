<% include Header %>
<main class="container-xl mb-5" id="content">
    <div class="row pt-4">
        <div class="col-lg-12">
            $Breadcrumbs
        </div>
    </div>
    <div class="row">
        <div class="col-md-7 col-lg-6 order-12 order-md-1">
        
                
                <% if $DonorByline %>
                    <p class="h4">$DonorByline</p>
                <% end_if %>
                <% if $LectureTitle %>
                    <h1>$LectureTitle.RAW</h1>
                    <% if $Lecturer %><p class="h2">$Lecturer</p><% end_if %>
                <% else %>
                    <h1>$Lecturer</h1>
                <% end_if %>
                <% if $Featuring %>
                    <p class="featuring-header">$Featuring</p>
                <% end_if %>
                <hr>
      

            <ul class="lecture-details">
                <% if $HostedBy %>
                    <li class="lecture-details__item">
                        <strong>Hosted by:</strong> $HostedBy
                    </li>
                <% end_if %>
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
                 <% if $SponsoredBy %>
                    <li class="lecture-details__item">
                        <strong>Sponsored by:</strong> $SponsoredBy
                    </li>
                <% end_if %> 
            </ul>

            <% if $TicketingInfo && $isFuture %>
                $TicketingInfo
            <% end_if %>


           
                <p>$Content</p>

                <% if $Donors %>
                    <p class="h5">This lecture made possible by <% loop $Donors %><a href="$Link">$Title</a><% if not $Last %>, <% end_if %><% end_loop %>.</p>
                <% end_if %>
       
        </div>
        <div class="col-md-5 col-lg-6 order-1 order-md-12">
                <div class="sticky-side">
                <% if $Picture %>
               
                    <img src="$Picture.Pad(800,800,111).URL" class="d-block show-image w-100" alt="Poster for {$Title}, please continue reading for specific event information." />
              
                <% end_if %>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-9">
                <hr />
                <% if $AccessibilityStatementOverride %>
                <div class="small">
                    $AccessibilityStatementOverride
                </div>
                <% else %>
                    <p class="small">Individuals with disabilities are encouraged to attend all University of Iowa-sponsored events. If you are a person with a disability who requires a reasonable accommodation in order to participate in this program, please contact the Lecture Committee in advance at <a href="mailto:lecture-committee@uiowa.edu">lecture-committee@uiowa.edu</a> or by calling <a href="tel:319-335-3059">319-335-3059</a>.</p>
                <% end_if %>
            </div>
        </div>
    </div>
</main>
<% if Donors %>
    <% include DonorFeature %>
<% end_if %>
<% include TwitterFeature %>

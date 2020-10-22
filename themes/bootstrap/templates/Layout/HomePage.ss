<% include Header %>

<main id="content" class="my-3 mb-5 my-lg-6">
    <% if $UpcomingLectures %>
 
            <% loop $UpcomingLectures %>  
                      
                    <div class="container-xl my-5" id="content">
                        <div class="row d-flex align-items-center">
                            <div class="col-lg-5">
                                <!-- Date -->
                                <div class="text-uppercase mt-2 mt-md-0">$EventDate.Format("MMMM d, Y") $Time</div>

                                <!-- Title -->
                                <% if $LectureTitle %>
                                    <h1 class="display-4 show-title">
                                        <a href="$Link" class="text-light text-decoration-none">
                                            <span class="link-highlight">$LectureTitle</span>
                                        </a>
                                    </h1>
                                    <% if $Lecturer %>
                                        <p class="display-5">$Lecturer</p>
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

                                <% if $StreamingLink %>
                                        <p><% include StreamButton %></p>
                                <% end_if %>
                                <a href="$Link" class="btn  btn-primary mb-3">View Details</a>

                                <!-- Ticket buttons -->
                                <% if $SoldOut %>
                                    <div class="alert alert-warning mb-0" role="alert">
                                        This show is sold out!
                                    </div>
                                <% else %>
                                    <% if $BuyTicketsOnlineLink %>
                                        <a href="$BuyTicketsOnlineLink" class="btn btn-outline-primary mb-3" target="_blank" rel="noopener noreferrer">Buy Tickets Online</a>
                                    <% end_if %>
                                    <% if $BuyTicketsInPersonLink %>
                                        <a href="$BuyTicketsInPersonLink" class="btn btn-outline-primary mb-3" target="_blank" rel="noopener noreferrer">Buy Tickets In Person</a>
                                    <% end_if %>
                                <% end_if %> 
                            </div>
                            <div class="col-lg-7">
                                <% if $Picture %>
                                    <img src="$Picture.Pad(800,800, f8f9fa).URL" class="w-100" alt="Poster for {$Title}" />
                                <% end_if %>
                            </div>
                        </div>
                    </div>
      
            <% end_loop %>
      
    <% else %>
<%--         <div class="container-xl" id="content">
            <div class="row d-flex align-items-center">
                <div class="col-lg-5">
                    <!-- Headline -->
                    <% if $AssociatedPage %>
                        <h1 class="display-1 show-title">
                            <a href="$AssociatedPage.Link" class="text-dark text-decoration-none">
                                <span class="link-highlight">$Headline</span>
                            </a>
                        </h1>
                    <% else %>
                        <h1 class="display-1 show-title  text-dark">
                            <span class="bg-light">$Headline</span>
                        </h1>
                    <% end_if %>

                    <!-- Content -->
                    <p class="lead">$Content</p>

                    <!-- button -->
                    <% if $AssociatedPage %>
                        <a href="$AssociatedPage.Link" class="btn btn-primary mb-3">
                            <% if $ButtonText %>$ButtonText<% else %>View Details<% end_if %></a>
                    <% end_if %>
                    
                    
                </div>
                <div class="col-lg-7">
                    <% if $Photo %>
                        <img src="$Photo.Fill(800,800).URL" class="w-100" alt="Poster for {$Title}" />
                    <% end_if %>
                </div>
            </div>
        </div> --%>
    <% end_if %><!-- end upcoming shows if statement -->
</main>

<!-- Tickets link -->
<section class="bg-primary text-white py-3 py-sm-6">
    <div class="container-xl">
        <div class="row d-flex align-items-center">
            <div class="col-sm-8 col-md-7">
                <p class="lead">For more than 30 years, The University of Iowa Lecture Committee has brought some of the world's great thinkers to the University of Iowa campus. Speakers have included an impressive roster of national and international figures in science, politics, business, human rights, law, and the arts. Each year the University hosts from 6 to 10 thought-provoking lectures. These events help enrich Iowa's academic environment and enhance its reputation as a prestigious Big Ten university.</p>
            </div>
            
                <div class="col-sm-4 offset-md-1">
                <ul class="list-group list-group-flush quick-links">
                  <li class="list-group-item"><a href="">Request a lecturer <i class="fas fa-chevron-right"></i></a></li>
                  <li class="list-group-item"><a href="">Make a donation to the Lecture Committee <i class="fas fa-chevron-right"></i></a></li>
                  <li class="list-group-item"><a href="">See our lecture archive (2011 - {$Now.Year}) <i class="fas fa-chevron-right"></i></a></li>
                  <li class="list-group-item"><a href="">See other lectures on campus <i class="fas fa-chevron-right"></i></a></li>
                </ul>
                </div>
         
        </div>
    </div>
</section>

<section class="py-3 py-sm-6 my-5">
    <div class="container-xl">
        <div class="row">
            <div class="col-sm-6">
                <h3 class="display-3">Our Mission</h3>
            </div>
            <div class="col-sm-6">
                <p class="lead">To stimulate thought, discussion, and engagement, the University Lecture Committee presents an intellectually diverse program that brings the broader University of Iowa communities face-to-face with the world's notable thinkers throughout each academic year.</p>
            </div>
        </div>
    </div>
</section>

<section class="py-5">
    <div class="container-xl">
        <h2 class="text-center display-3 mb-5">Meet Our Staff</h2>
        <div class="stafflist">
            <ul class="stafflist__list list-unstyled">
                <% loop RandomStaffMembers(8) %>
                    <% include StaffPageListItem %>
                <% end_loop %>
            </ul>
            <a href="{$baseUrl}staff/" class="text-center d-block">View all staff</a>
            <br>
        </div>
    </div>
</section>




<% include InstaFeed %>
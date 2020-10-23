<% include Header %>
<div class="container-xl">
<main id="content" class="my-3 mb-5 my-lg-6">
    <% if $UpcomingLectures %>
        <% loop $UpcomingLectures %>  
            <% include ShowCardBig %>
        <% end_loop %>
    <% else_if $PreviousLectures %>
        <% loop $PreviousLectures.Limit(1) %>
            <% include ShowCardBig %>
        <% end_loop %>

    <% end_if %>
</main>
</div>

<section class="bg-primary text-white py-3 py-sm-6">
    <div class="container-xl">
        <div class="row d-flex align-items-center">
            <div class="col-sm-8 col-md-7">
                <h2>About the Lecture Committee</h2>
                <p class="lead">For more than 30 years, The University of Iowa Lecture Committee has brought some of the world's great thinkers to the University of Iowa campus. Speakers have included an impressive roster of national and international figures in science, politics, business, human rights, law, and the arts. Each year the University hosts from 6 to 10 thought-provoking lectures. These events help enrich Iowa's academic environment and enhance its reputation as a prestigious Big Ten university.</p>
                <p><a href="about/" class="btn btn-light btn-large">Learn more about the Lecture Committee</a></p>
            </div>
            
                <div class="col-sm-4 offset-md-1">
                <ul class="list-group list-group-flush quick-links text-center">
                    <% loop HomePageQuicklinks %>
                  <li class="list-group-item"><a href="$Link">$Title</a></li>
                  <% end_loop %>
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
<% include TwitterFeature %>
<section class="py-5">
    <div class="container-xl">
        <h2 class="text-center display-3 mb-5">Meet Our Staff</h2>
        <div class="stafflist">
            <ul class="stafflist__list list-unstyled">
                <% loop RandomStaffMembers(8) %>
                    <% include StaffPageListItem %>
                <% end_loop %>
            </ul>
            <p class="text-center"><a href="about/" class="text-center btn btn-primary">View all staff</a></p>
            
        </div>
    </div>
</section>



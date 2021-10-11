<% include Header %>




<div class="container-xl">
<main id="content" class="mt-2 mb-5 mb-lg-6">
    <% if $UpcomingLectures %>
        <% loop $UpcomingLectures %>  
            <% include ShowCardBig %>
        <% end_loop %>
    <% else_if $PreviousLectures %>
        <div class="my-4">
            <% with $Page("lectures") %>
            $Content
            <% end_with %>
        </div>
        <hr />
        <div class="row">
            <div class="col-lg-12">
                <h2 class="text-center">Previously presented by the University Lecture Committee:</h2>
            </div>

        </div>
        <div class="row justify-content-center">

            <div class="col-md-9">
                
                <% loop PreviousLectures.Limit(1) %>
                    <% include ShowCard %>
                <% end_loop %>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <p class="text-center"><a href="lectures/" class="btn btn-outline-light">View the lecture archive</a></p>

            </div>

        </div>
    <% end_if %>
</main>
</div>
<section class="py-3 py-sm-6 bg-dark recent-posts">
    <div class="container-xl">
        <div class="row">
            <div class="text-divider">
                            <span class="text-light">Recent Posts</span>
                        </div>

        </div>
        <div class="row d-flex align-items-center">
            <% loop $BlogPosts.Limit(3) %>

                <div class="col-lg-4 mb-3 mb-lg-0">
                    <a href="$Link" class="text-light d-block">
                           <img src="$FeaturedImage.URL" class="d-block w-100 mb-2" alt="" role="presentation" />
                           <h2>$Title</h2>
                           <% if $PublishDate %>
                            <p class="text-light">
                                <small>
                                <%t SilverStripe\\Blog\\Model\\Blog.Posted "Posted" %>
                                $PublishDate.format("MMMM d, y")
                                </small>
                            </p>
                            <% else %>
                            <p class="text-light">
                                <small>Not published yet.</small>
                            </p>
                            <% end_if %>
                    </a>
                </div>
            <% end_loop %>
        </div>
        <div class="row mt-3 d-flex align-items-center">
            <div class="col">
                <p class="text-center"><a href="news/" class="btn btn-outline-light">More Posts</a></p>
            </div>
        </div>
    </div>
</section>
<section class="bg-primary text-white py-5">
    <div class="container-xl">
        <div class="row d-flex align-items-center">
            <div class="col-sm-8 col-md-7">
                <h2 class="h1">About the University Lecture Committee</h2>
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
<% include DonorFeature %>
<section class="py-4 my-5">
    <div class="container-xl">
        <div class="row">
            <div class="col-sm-6">
                <h3 class="h1">Our Mission</h3>
            </div>
            <div class="col-sm-6">
                <p class="lead">To stimulate thought, discussion, and engagement, the University Lecture Committee presents an intellectually diverse program that brings the broader University of Iowa communities face-to-face with the world's notable thinkers throughout each academic year.</p>
            </div>
        </div>
    </div>
</section>

<% include TwitterFeature %>
<section class="py-4">
    <div class="container-xl">
        <h2 class="h1 text-center display-3 mb-5">Meet Our Members</h2>
        <div class="stafflist">
            <ul class="stafflist__list list-unstyled">
                <% loop RandomStaffMembers(8) %>
                    <% include StaffPageListItem %>
                <% end_loop %>
            </ul>
            <p class="text-center"><a href="about/" class="text-center btn btn-primary">View all members</a></p>
            
        </div>
    </div>
</section>



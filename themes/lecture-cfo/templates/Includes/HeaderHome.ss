<header class="header" role="banner">
	<div class="row collapse">
		<div class="large-4 columns">
			<div class="logo-quicklinks">
				<% include HeaderLogo %>
				<% include NavMobile %>


				<% if HomePageQuicklinks %>
					<ul class="home-quicklinks">
						<% loop HomePageQuicklinks %>
							<% if $AssociatedPage %>
								<li>
									<a href="$AssociatedPage.Link">
										<h4 class="quicklinks-title">$Title <span>$SubTitle</span></h4>
									</a>
								</li>
							<% else_if $ExternalLink %>
								<li>
									<a href="$ExternalLink">
										<h4 class="quicklinks-title">$Title <span>$SubTitle</span></h4>
									</a>
								</li>
							<% else %>
								<li>
									<h4 class="quicklinks-title">$Title <span>$SubTitle</span></h4>
								</li>
							<% end_if %>
						<% end_loop %>
					</ul>
				<% end_if %>
			</div>
		</div>
		<div class="large-8 columns">
			<% include Nav %>

			<ul class="home-orbit" data-orbit data-options="
				animation:slide;
				animation_speed:1000;
				pause_on_hover:true;
				navigation_arrows:true;
				bullets:false;
				timer:false;">
				<% if UpcomingLectures %>
					<% loop UpcomingLectures.Limit(3) %>
					<li>
					<a href="$Link">
								<img src="$Picture.CroppedFocusedImage(644,390).URL" alt="$Title">
							</a>
						<div class="orbit-caption">
	
								<a href="$Link"><% if $LectureTitle %>$LectureTitle<% else %>$Title<% end_if %>, $EventDate.Format("M j")</a>
						</div>
					</li>
					<% end_loop %>
				<% else %>
					<% loop PreviousLectures.Limit(3) %>
					<li>
					<a href="$Link">
								<img src="$Picture.CroppedFocusedImage(644,390).URL" alt="$Title">
							</a>
						<div class="orbit-caption">
	
								<a href="$Link">Previously Presented: <% if $LectureTitle %>$LectureTitle<% else %>$Title<% end_if %>, $EventDate.Format("M j")</a>
						</div>
					</li>
					<% end_loop %>
				<% end_if %>
			</ul>
		</div>
	</div>
</header>
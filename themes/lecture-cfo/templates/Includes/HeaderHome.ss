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

				<% include fbpage %>
			</div>
		</div>
		<div class="large-8 columns">
			<% include Nav %>

			<% if UpcomingLectures %>
			<div class="slider <% if $UpcomingLectures.Count < 2 %>single<% end_if %>">
			<ul class="home-orbit" data-orbit data-options="
				animation:slide;
				animation_speed:1000;
				pause_on_hover:true;
				navigation_arrows:true;
				bullets:false;
				timer:false;">
					<% loop UpcomingLectures.Limit(3) %>
						<li>
						<a href="$Link">
									<img src="$Picture.CroppedFocusedImage(544,650).URL" alt="$Title">
								</a>
							<div class="orbit-caption">
		
									<a href="$Link">{$Title}, <% if $LectureTitle %>$LectureTitle<% end_if %> - $EventDate.Format("F j")</a>
							</div>
						</li>
					<% end_loop %>
				<% else %>
				<div class="slider <% if $PreviousLectures.Count < 2 %>single<% end_if %>">
					<ul class="home-orbit" data-orbit data-options="
						animation:slide;
						animation_speed:1000;
						pause_on_hover:true;
						navigation_arrows:true;
						bullets:false;
						timer:false;">
					<% loop PreviousLectures.Limit(3) %>
						<li>
						<a href="$Link">
									<img src="$Picture.CroppedFocusedImage(544,650).URL" alt="$Title">
								</a>
							<div class="orbit-caption">
		
									<a href="$Link">{$Title}, <% if $LectureTitle %>$LectureTitle<% end_if %> - $EventDate.Format("F j")</a>
							</div>
						</li>
					<% end_loop %>
				<% end_if %>
			</ul>
			</div>
		</div>
	</div>
</header>
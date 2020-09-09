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
						<li><a href="other-lectures/"><h4 class="quicklinks-title quicklinks-title--big">Other Lectures on Campus</h4></a></li>
					</ul>
				<% end_if %>

				<% include FBPage %>
			</div>
		</div>
		<div class="large-8 columns">
			<% include Nav %>
			<div class="row">
				<div class="large-10 large-offset-2" style="margin-top:20px;">
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
										<% if $Picture %>
											<img src="$Picture.Pad(544,800,222222).URL" alt="$Title">
										<% else %>
											<img src="{$ThemeDir}/dist/images/lecture-placeholder.jpg" alt="$Title">
										<% end_if %>
											</a>
										<div class="orbit-caption slider-lecture-caption">
											<% if $LectureTitle %>
												<h2><a href="$Link">$LectureTitle</a>
													<span style="font-size: 32px; color: #d4e3f9; display: block;">$Title</span>
												</h2>
											<% else %>
												<h2><a href="$Link">{$Title}</a></h2>
											<% end_if %>
												<ul class="lecture-details" style="color: white;">
												<li><strong>Date:</strong> $EventDate.Format("MMMM d, YYYY") $Time</li>
												<li><strong>Location:</strong> $Location</li>
												<li><strong>Cost:</strong> $Price</li>
												<% if $Partnership %>
													<li style="font-size: 16px; color: #ccc; margin-bottom: 10px;">In partnership with: <span style="color: #fff">$Partnership</span></li>
												<% end_if %>
												<% if $Donations %>
													<li style="font-size: 16px; color: #ccc; margin-bottom: 10px;">Support provided by: <span style="color: #fff">$Donations</span></li>
												<% end_if %>
											</ul>
										</div>
									</li>
								<% end_loop %>
							</ul>
					</div>

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
								<img src="$Picture.Pad(544,650,222222).URL" alt="$Title">
							</a>
						<div class="orbit-caption">
		
						<% if $LectureTitle %>
						<% if not $Cancelled %><p style="color: white; font-size: 16px; margin: 0; text-transform: uppercase; font-family: proxima-nova-condensed, sans-serif;">Previously presented:</p><% end_if %>
								<h2><a href="$Link">$LectureTitle</a>
									<span style="font-size: 32px; color: #d4e3f9; display: block;">$Title</span>
								</h2>
							<% else %>
								<h2><a href="$Link">{$Title}</a></h2>
							<% end_if %>
								<ul class="lecture-details" style="color: white;">
								<li><strong>Date:</strong> $EventDate.Format("MMMM d, YYYY") $Time</li>
								<li><strong>Location:</strong> $Location</li>
								<li><strong>Cost:</strong> $Price</li>
								<% if $Partnership %>
									<li style="font-size: 16px; color: #ccc; margin-bottom: 10px;">In partnership with: <span style="color: #fff">$Partnership</span></li>
								<% end_if %>
								<% if $Donations %>
									<li style="font-size: 16px; color: #ccc; margin-bottom: 10px;">Support provided by: <span style="color: #fff">$Donations</span></li>
								<% end_if %>
						</div>
					</li>
				<% end_loop %>
			</ul>
			</div>
			<% end_if %>
				</div>
			</div>
		</div>
	</div>
</header>
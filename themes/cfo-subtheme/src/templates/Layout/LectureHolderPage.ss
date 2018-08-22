$Header
<main class="main-content__container" id="main-content__container">
	<!-- Background Image Feature -->
	<% if $BackgroundImage %>
	<% include FeaturedImage %>
	<% end_if %>
	$Breadcrumbs
	<% if not $BackgroundImage %>
	<div class="column row">
		<div class="main-content__header" style="padding-top: 20px">
			<h1>$Title</h1>
		</div>
	</div>
	<% end_if %>
	$BeforeContent
	<div>
		$Content
		
		<% include LectureCardBig %>
		
		<% loop UpcomingLectures %>
		<div class="upnext grid-x grid-padding-x align-stretch small-up-2 medium-up-2 large-up-3">
			
			<div class="cell"><% if $Pos == 1 %><h2 class="upnext__header ">NEXT UP ▶</h2><% end_if %></div>

			<div class="cell ">
				<% include LectureCardBig %>
				<% include LectureDetails %>
				
			</div>
			<div class="cell" style="padding-bottom: 20px"> <a class ="lecture-card-big" href= "$Link"> <img src= "{$ThemeDir}/dist/images/likerealizingstuff.jpg" > </a> </div>
			
		</div>
		<% end_loop %>
		<hr>
		<div class="grid-x">
			<div class="cell grid-padding-x grid-padding-y align-center-middle text-center">
			<h2 class="lecture-holder-header">Previously Presented</h2>
			</div>
		</div>
		
		<div class="grid-container fluid">
			<div class="grid-x grid-margin-x grid-margin-y align-center-middle text-center small-up-2 medium-up-3 large-up-4">
				<% loop paginatedPreviousLectures %>
				
				<div class="cell grid-padding-x ">
					<% if $Picture %>
					<%-- <img src="$Picture.FocusFill(500, 600).URL" alt="Photo representing $Title" /> --%>
					<img src="{$ThemeDir}/dist/images/cokie-roberts2.jpg" />
					<% else %>
					<a href="$Link"><img src="{$ThemeDir}/dist/images/cokie-roberts2.jpg" /></a>
					<% end_if %>
					<% if $LectureTitle %>
						<h1><a class="lecture-holder-title" href="$Link">$LectureTitle.LimitWordCount(10)</a></h1>
					<% else %>
						<h1><a class="lecture-holder-title" href="$Link">$Title.LimitWordCount(10)</a></h1>
					<% end_if %>
				</div>
				<% end_loop %>
			</div>
		</div>
		$AfterContent
	</main>
	<%--
	<% if $UpcomingLectures %>
	<div class="large-12 columns">
		<section id="upcoming-lectures" class="row">
			
			
			
		</section>
	</div>
	<% end_if %>
	</div><!-- end main-content from ../Page.ss -->
	</div><!-- end main from ../Page.ss -->
	<div class="previous-lectures-container">
		<section id="previous-lectures">
			<% if not $UpcomingLectures %>
			<div class="no-upcoming-content">$Content</div>
			<% end_if %>
			<h1 class="section-title">Previously presented:</h1>
			<hr />
			<ul class="xlarge-block-grid-4 large-block-grid-3 medium-block-grid-2">
				<% loop paginatedPreviousLectures %>
				<li><% include LectureCard %></li>
				<% end_loop %>
			</ul>
			<% include LecturePagination %>
		</section>
	</div>  --%>
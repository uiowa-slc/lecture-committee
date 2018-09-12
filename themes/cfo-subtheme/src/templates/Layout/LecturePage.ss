$Header
<main class="main-content__container" id="main-content__container">
	<!-- Background Image Feature -->
	
	<div class="column row">
		<div class="main-content__header">
			<% if $LectureTitle %>
						<h1>$LectureTitle</h1>
						<% else %>
						<h1>$Title</h1>
						<% end_if %>

		</div>
	</div>
	$BeforeContent
	<div class="row">
		<article role="main" class="main-content main-content--with-padding <% if $SiteConfig.ShowExitButton %>main-content--with-exit-button-padding<% end_if %> <% if $Children || $Menu(2) || $SidebarArea.Elements ||  $SidebarView.Widgets %>main-content--with-sidebar<% else %>main-content--full-width<% end_if %>">
			$BeforeContentConstrained
			<% if $MainImage %>
			<img class="main-content__main-img" src="$MainImage.ScaleMaxWidth(500).URL" alt="" role="		presentation"/>
			<% end_if %>
			<div class="main-content__text">
				<% include LectureDetails %>
				$Content
				
			
	<div class="lecture-image medium-4 large-5 columns">
		<% if $Picture %>
		<img src="$Picture.FocusFill(600,700).URL" alt="Image for $Title" />
		<% end_if %>
	</div>

			</div>
			$AfterContentConstrained
			$Form
			<% if $ShowChildPages %>
			<% include ChildPages %>
			<% end_if %>
		</article>
		<aside class="sidebar dp-sticky">
			<% include SideNav %>
			<% if $SideBarView %>
			$SideBarView
			<% end_if %>
			$SidebarArea
		</aside>
	</div>
	$AfterContent
</main>
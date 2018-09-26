$Header
<main class="main-content__container" id="main-content__container">
	<!-- Background Image Feature -->
	
	
	$BeforeContent

	

	<div class="row">

			<div class="columns large-6 large-push-6 lecture__image" > <% if $Picture %>
						<img src="$Picture.FocusFill(300,400).URL" alt="Image for $Title" />
						<% end_if %></div>
				<div class="columns large-6 large-pull-6"><% if $LectureTitle %>
							<h1>$LectureTitle</h1>
							<% else %>
							<h1>$Title</h1>
							<% end_if %>			
							<% include LectureDetails %>
							$Content
				
				</div>
		

	
			
	

			</div>
			$AfterContentConstrained
			$Form
			<% if $ShowChildPages %>
			<% include ChildPages %>
			<% end_if %>

		

	$AfterContent
</main>

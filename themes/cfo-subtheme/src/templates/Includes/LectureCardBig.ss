<div class="grid-container">
	<div class="grid-x grid-padding-x align-stretch small-up-1 large-up-2">
		<div class="cell small-order-2">
		<% if $LectureTitle %>
			<h1 class="lecture-upcoming-holder__header"><a href="$Link">$LectureTitle</a></h1>
			<p class="lecture-upcoming-holder__subheader">$Title</p>
		<% else %>
			<h1 class="lecture-upcoming-holder__header"><a href="$Link">$Title</a></h1>
		<% end_if %>
			<% include LectureDetails %>
			$Content
		</div>
		<div class="cell small-order-1" style="padding-bottom: 20px"> 
			<a class="lecture-card-big" href= "$Link"> 
				<img src="$Picture.FocusFill(500,600).URL" > 
			</a>
		</div>
	</div>
</div>

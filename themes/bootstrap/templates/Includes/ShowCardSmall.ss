<div class="show-card">
	<div class="row no-gutters">
		<div class="col-md-8 order-12 order-md-1">
			<% if $Picture %>
			<a href="$Link" class="d-block">
				<img data-ratio="1" class="lazyload show-image d-block w-100" src="$resourceURL('themes/bootstrap/dist/images/lecture-placeholder.png')" data-src="$Picture.Pad(400,400,000).URL" class="card-img" alt="$Title" loading="lazy">
			</a>
			<% end_if %>
			<% if $DonorByline %>
                <p class="h4">$DonorByline</p>
            <% end_if %>
			<h3 class="card-title show-title my-2">
				<a href="$Link">$Lecturer</a>
			</h3>

			<div class="text-uppercase mt-2 mt-md-0"><span class"show-card__time-label">$EventDate.Format("MMMM d, Y")</span></div>
		</div>
	</div>
</div>
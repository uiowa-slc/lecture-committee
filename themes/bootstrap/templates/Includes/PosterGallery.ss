
	<% if $Poster %>

		<a href="$Poster.URL" class="donor-lecture-image-link donor-gallery-link d-block">
			<img data-ratio="1" class="lazyload donor-lecture-image d-block w-100" src="$resourceURL('themes/bootstrap/dist/images/lecture-placeholder.png')" data-src="$Poster.Pad(480,720,fff).URL" class="card-img" alt="$Title" loading="lazy">
		</a>
	<% else_if $Picture %>
		<a href="$Picture.URL" class="donor-lecture-image-link donor-gallery-link d-block">
			<img data-ratio="1" class="lazyload donor-lecture-image d-block w-100" src="$resourceURL('themes/bootstrap/dist/images/lecture-placeholder.png')" data-src="$Picture.Pad(400,400,fff).URL" class="card-img" alt="$Title" loading="lazy">
		</a>

	<% end_if %>
	<h3 class="card-title donor-lecture-title mt-2 mb-0 text-center">
		<a href="$Link">$Lecturer</a>
	</h3>

	<div class="mt-2 mt-md-0 mb-2 text-center"><span class="donor-lecture-date">$EventDate.Format("MMMM d, Y")</span></div>

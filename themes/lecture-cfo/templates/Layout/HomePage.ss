

	<div class="large-12 columns">
		<!-- $Content -->
		<!-- $Form -->

		<div class="our-programs">
			<h4 class="subtitle">Lectures</h4>
			<% with Page("lectures") %>
				<div class="row">
					<% loop $Titles %>
						<div class="medium-6 large-3 columns">
							<h5><a href="{$baseUrl}lectures">$Title</a> </h5>
							<p>$Content</p>
						</div>
					<% end_loop %>
				</div>
			<% end_with %>
		</div>
	</div>
</div>

<div class="row collapse">
	<div class="large-12 columns">
		<div class="mission-statement">
			
   			 <% include AboutTeaser %>

		</div>
	</div>
</div>

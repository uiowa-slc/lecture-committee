<div class="<% if $Children || $Parent %>large-9 columns content-left<% else %>large-12<% end_if %> columns">
	<article>
		<h1>$Title</h1>
		$Content

		<% loop $Children %>

			<h2>$Title</h2>
			<div class="donor-slideshow">
				<div class="slick">
					<div>
						<img class="unveil" src="_resources/vendor/md/cfo-project/src/images/loader.gif" data-src="{$ThemeDir}/dist/images/donor-slide-1.jpg" alt="$Title">
					</div>
					<div>
						<img class="unveil" src="_resources/vendor/md/cfo-project/src/images/loader.gif" data-src="{$ThemeDir}/dist/images/donor-slide-2.jpg" alt="$Title">
					</div>
					<div>
						<img class="unveil" src="_resources/vendor/md/cfo-project/src/images/loader.gif" data-src="{$ThemeDir}/dist/images/donor-slide-3.jpg" alt="$Title">
					</div>
				</div>
			</div>

			<h2>Cassandra Foens, MD</h2>
			<p>
				Nec aliquam fames mus pellentesque vehicula. Enim dolor tempor, tortor tellus? Consectetur eleifend netus eros imperdiet aliquet condimentum torquent orci. Nam nulla cursus commodo, turpis turpis nostra. Felis pretium metus vestibulum tristique molestie. Non justo cum et blandit luctus senectus gravida ligula arcu. A etiam enim nunc! Sem ornare fusce aliquet curabitur inceptos? Commodo semper habitasse urna diam vestibulum tristique egestas elementum risus. Habitasse suscipit rhoncus sagittis tristique lorem senectus. Hendrerit nec erat arcu sit sollicitudin quisque cursus primis torquent? Nostra fringilla placerat hac a, ipsum donec duis. Dis ornare bibendum donec porta euismod eu blandit.
			</p>
			<p>
				Tincidunt nunc volutpat sociis. Massa aliquam augue amet? Imperdiet nam aenean aptent fermentum. Lacinia blandit in morbi consectetur primis platea facilisi amet! Pretium fames magna nascetur adipiscing orci! Vestibulum platea pulvinar venenatis. Eros fermentum magnis ornare diam. Sodales litora praesent purus sapien convallis quis cum nulla torquent purus. Laoreet aenean netus nascetur id mattis, lobortis montes ultrices eu ipsum? Per parturient platea pretium quis dui cubilia quisque?
			</p>
			<p>
				Morbi elementum quam mollis scelerisque parturient? Nascetur nam bibendum hac fringilla platea urna. Egestas consequat, nam sit. Nam lobortis magnis sit, quisque maecenas at vulputate proin. Taciti, ullamcorper elit vitae mus mauris commodo rhoncus nec dictumst dictumst vulputate! Et penatibus mi; risus taciti ipsum conubia. Mattis etiam, amet aliquet vestibulum nisl dapibus pellentesque eleifend cubilia duis ornare id. Cras dapibus vestibulum fermentum arcu leo. Hac, donec condimentum habitasse sed ad class curae; ullamcorper eleifend curae; risus? Gravida tempor aliquet purus quis tempus suscipit fusce vulputate nascetur eu ridiculus cras. Sociosqu pharetra risus conubia placerat id elementum.
			</p>
			<p>
				Consectetur proin condimentum dis enim diam at mi lorem habitasse consectetur ad. Nulla ullamcorper luctus conubia molestie viverra. Elementum eu quam neque aenean scelerisque senectus lorem habitasse ut rutrum a nulla. Eu lacus proin ante nisi nunc eget justo eros eget feugiat faucibus pulvinar. Maecenas ac natoque tempus sed pharetra mollis vulputate leo ornare himenaeos magnis. Ad tortor vivamus metus vel praesent netus! Vitae.
			</p>
			<p>
				Suspendisse praesent a tincidunt, at ut bibendum justo nunc justo risus. Aenean magna himenaeos curae; inceptos bibendum nibh. Mi a conubia consequat. Fusce nascetur tortor sit nullam aptent. Vehicula magnis rhoncus laoreet rhoncus diam nullam purus nullam massa nulla vestibulum libero. Cum litora enim nullam sed platea molestie senectus. Luctus augue consectetur leo blandit, tortor elit. Odio vitae quisque cursus turpis est integer nam pharetra. Nec platea magna ultrices felis lacus lacinia inceptos semper blandit ad varius tincidunt. Amet hendrerit feugiat felis lobortis senectus diam gravida conubia.
			</p>
		</article>
		<% end_loop %>

	</article>
</div>

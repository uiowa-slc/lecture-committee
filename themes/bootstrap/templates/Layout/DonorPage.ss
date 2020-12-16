<%-- <% include Header %> --%>

<div class="donor-container bg-light text-dark">
	<main class="container-fluid py-5">
		<div class="row justify-content-center">
			<div class="col-lg-7">
	            <%-- $Breadcrumbs --%>
	            <a href="{$BaseHref}"><img src="{$ThemeDir}/dist/images/logo-light-bg.png" alt="University of Iowa Lecture Committee" class="donor-ulc-logo" /></a>
	        </div>
	    </div>
<%-- 		<div class="row justify-content-center">

			<div class="col-lg-8">
				<div class="row">
					<% loop $Lectures.Sort("EventDate ASC").Limit(3) %>
						<div class="col-6 col-sm-4 mb-4">
							<% if $Picture %>

							<a href="$Link" class="donor-lecture-image-link d-block">
								<img data-ratio="1" class="lazyload donor-lecture-image d-block w-100" src="$resourceURL('themes/bootstrap/dist/images/lecture-placeholder.png')" data-src="$Picture.Pad(400,400,fff).URL" class="card-img" alt="$Title" loading="lazy">
							</a>
							<% end_if %>
							<h3 class="card-title donor-lecture-title mt-2 mb-0 text-center">
								<a href="$Link">$Lecturer</a>
							</h3>

							<div class="mt-2 mt-md-0 text-center"><span class="donor-lecture-date">$EventDate.Format("MMMM d, Y")</span></div>
						</div>
					<% end_loop %>
				</div>
			</div>
		</div> --%>

		<div class="row justify-content-center">
			<div class="d-none d-lg-block col-lg-2 order-2 order-lg-1 py-5">
					<% loop $Lectures.Sort("EventDate ASC").Limit(5) %>
						<div class="donor-gallery">
							<% include PosterGallery %>
						</div>
					<% end_loop %>

			</div>
			<div class=" col-lg-6 order-1 order-lg-2 offset-lg-1 px-lg-0">
				<article id="content" class="py-5">
					<h1 class="h5 text-uppercase">Notable Donor</h1>
					<img class="float-right d-inline-block d-lg-block m-3" src="{$ThemeDir}/dist/images/cassandra-foens.jpg" width="40%" />
					<h2 class="donor-title h1">$Title</h2>

	                <div class="donor-content">
	                	<span class="h2 d-block my-3">Over 10 Years of Bringing the World's Greatest Thinkers to the University of Iowa</span>
<p><strong>Cassandra S. Foens</strong>, 83BS, 87MD, is a highly regarded radiation oncologist and champion of educational causes whose personal contributions have allowed others to follow in her footsteps.</p>
<p>In a career spanning more than two decades, Foens has established herself as a successful physician in her hometown of Waterloo, Iowa&mdash;and in 2006, she became both the first woman and the first radiation oncologist from Iowa to be elected to the American College of Radiology (ACR) board of chancellors.</p>
<p>Foens received a bachelor's degree in 1983, earned her doctor of medicine degree in 1987, and completed a residency in radiation oncology in 1992&mdash;all at the University of Iowa. Following her UI training, Foens joined the Edward W. Sparrow Hospital in Lansing, Michigan, as a radiation oncologist. In 1994, she accepted a position with Clinical Radiologists at the Covenant Cancer Treatment Center in Waterloo, where she still works today.</p>
<p>Foens' passion for health care extends far beyond this practice, as she has served on the Cedar Valley Hospice Governing Board and the Wheaton Franciscan-Iowa Healthcare Board, and is the spokesperson for many cancer-related topics. In addition to donating her time at community screenings and educational presentations, she also volunteered for Speaking of Women's Health&mdash;a national organization that assists women in making informed choices about their health.</p>


<p>Beyond these volunteer activities, Foens has helped create far-reaching educational opportunities for students through her generous personal giving. She made the lead contribution for a new science lab at Columbus High School in Waterloo and also established a scholarship with Dollars for Scholars for an X-ray technology student to attend the training program at Covenant Medical Center.</p>
<p>At her alma mater, Foens created the Cassandra S. Foens, M.D., Presidential Scholarship. Each fall, thanks to the Cassandra S. Foens, M.D., Lecture Series she established, UI students benefit from a lively and educational evening of discourse. Foens also supports the UI's N.E.W. Leadership Program, which seeks to increase the participation of underrepresented women in government, and she is a frequent donor to the UI Roy J. and Lucille A. Carver College of Medicine.</p>
<p>A firm believer in civic involvement, Foens serves on the UI Foundation board of directors and the governing board of the Covenant Foundation. She received the 2003 Friend of the Year award from KBBG Radio and the Association of Fundraising Professional's 2011 Outstanding Volunteer Fundraiser award.</p>
<p>Her investments in the community and at her alma mater have made an indelible impact on others. "Dr. Foens represents the best of what the University of Iowa provides to the state of Iowa and its students and alumni: personal accomplishment, generosity, and commitment to service," says Emily Anne Vail, a 2010 UI graduate who is completing an anesthesia residency at Columbia University Medical Center. "She has established a legacy that I aspire to one day continue."</p>
<p>Thanks to her deep commitment to service and engagement, Cassandra S. Foens will leave a lasting impression on all the patients, colleagues, and students whose lives she has touched.</p>
<p><strong>Foens is a life member of the UI Alumni Association's Old Capitol Club and a member of the UI Foundation's Presidents Club.</strong></p>
<p>The University of Iowa Lecture Committee became the beneficiary of a generous donation by Dr. Foens in ????.<span>&nbsp; </span>The funding provided by her was earmarked to support an annual lecture program scheduled in conjunction with a campus-wide program entitled &ldquo;Week of Welcome.&rdquo; which focused on providing a variety of events designed to kick the academic year off named in her honor.<span>&nbsp; </span>, instituted an annual lecture program named in her honor.<span>&nbsp; </span>The Cassandra S. Foens MD annual lecture was created in ???? through a generous donation by Dr. Foens.<span>&nbsp; </span></p>
</div>

				</article>

				$Form
				$PageComments

			</div>
			<div class="d-none d-lg-block col-lg-2 order-3 order-lg-3 offset-lg-1 py-5">
					<% loop $Lectures.Sort("EventDate ASC").Limit(999,5) %>
						<div class="donor-gallery">
							<% include PosterGallery %>
						</div>
					<% end_loop %>

			</div>
		</div>
		<div class="container d-lg-none">
			<div class="row justify-content-center">
				<% loop $Lectures %>
					<div class="col-4">
						<div class="donor-gallery-sm">
							<% include PosterGallery %>
						</div>
					</div>
				<% end_loop %>
			</div>
		</div>
		<div class="container">
			<h2 class="text-center my-4">Photos</h2>
			<div class="row justify-content-center donor-gallery">

				<% if $SlideshowImages %>
					<% loop $SlideshowImages %>
						<div class="col-6 col-lg-3">
							<a class="d-block donor-gallery-link" href="$Image.ScaleWidth(600).URL"><img src="$Image.ScaleWidth(600).URL" alt="$Title" class="d-block w-100" /></a>
							<p class="text-center small">Example caption</p>
						</div>
						<% end_loop %>
				<% end_if %>
			</div>

		</div>
		<div class="container-xl">
		<div class="row justify-content-center">
			<div class="col-lg-12">
				<h2 class="text-center my-4">Words of Thanks</h2>
				<blockquote class="donor-quote" id="donor-quote">
					<div class="donor-quote__body" id="donor-quote__body">
				    <p>In my two years on Lecture Committee, Dr. Foens’ generous contributions made possible several unique, varied, and valuable experiences for University of Iowa students, staff, and the surrounding community.</p>
				    <p>A particularly special event that I got to work on with Dr. Foens was the Leslie Odom Jr. lecture and concert at Hancher while I was chair of the committee in 2017. I remember sitting in the front row next to her when the band came out, and just thinking how stinking cool it was to be able to share this experience with the hundreds of people in the audience with us, most of whom would never be able to afford a ticket to see a Tony award winner without an opportunity like this. </p>

				    <p>Dr. Foens is extremely kind and no doubt a brilliant oncologist, but as a woman who has since entered a healthcare profession myself, she was also a great example for me that, once I have the means to do so myself, I want to be able to give back to my community in a way that provides opportunities that wouldn’t otherwise exist. Dr. Foens’ generosity does just that, and the University Lecture Committee and University of Iowa community as a whole are incredibly lucky to have her.</p>
				    <footer class="donor-quote__credits"><cite id="donor-quote__cite"> Sarah Tortora,  Chair, University of Iowa Lecture Committee 2017</cite></footer>
					</div>
				</blockquote>



			</div>

		</div>
	</div>
<%-- 		<div class="row justify-content-center">
			<div class="col-lg-8">
				<div class="row">
					<% loop $Lectures.Sort("EventDate ASC").Limit(4) %>
						<div class="col-6 col-sm-4 mb-4">
							<% if $Picture %>

							<a href="$Link" class="donor-lecture-image-link d-block">
								<img data-ratio="1" class="lazyload donor-lecture-image d-block w-100" src="$resourceURL('themes/bootstrap/dist/images/lecture-placeholder.png')" data-src="$Picture.Pad(400,400,fff).URL" class="card-img" alt="$Title" loading="lazy">
							</a>
							<% end_if %>
							<h3 class="card-title donor-lecture-title mt-2 mb-0 text-center">
								<a href="$Link">$Lecturer</a>
							</h3>

							<div class="mt-2 mt-md-0 text-center"><span class="donor-lecture-date">$EventDate.Format("MMMM d, Y")</span></div>
						</div>
					<% end_loop %>
				</div>
			</div>
		</div> --%>
	</main>
</div>
<% include TwitterFeature %>

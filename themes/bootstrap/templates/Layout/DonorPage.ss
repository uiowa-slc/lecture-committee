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

<p>On August 27, 2008, at the Englert Theater in downtown Iowa City, author Chuck Klosterman was ushered to the stage marking the inaugural event of the Cassandra S. Foens, M.D., Lecture Series.  Before a standing room only audience, the University of Iowa Lecture Committee students proudly introduced the new series and the remarkable individual who made it possible, Dr. Cassandra Foens.</p>
<p>What was originally envisioned as a program offering within the UI’s annual Week of Welcome, a week-long series of programs and events to welcome new and returning students for the start of a new academic year, the series has shifted to lectures that take place throughout the academic year. The series has hosted a diverse slate of speakers including author Margaret Atwood, Broadway star Leslie Odom, Jr., Doctors Without Borders physician Dr. Paul Farmer, talk show host Seth Myers, and legendary basketball star and author Kareem Abdul-Jabbar.</p>
<p>Because of Dr. Foens’ generosity, countless University of Iowa students, faculty, staff, and members of the community have enjoyed the unique opportunity to experience and learn in-person from noted leaders and personalities. University of Iowa Lecture Committee students, in particular, benefit from receiving a unique educational experience. Each student on the committee is responsible for hosting one of the guest speakers, and while doing so, manages all aspects of the itinerary. This includes everything from planning and organizing all public program details and activities for the speaker throughout the day to transporting and escorting the speaker to all planned events. While serving on the committee, students also have the opportunity to personally interact with Dr. Foens when she comes to campus to the meet students on the committee, engage in conversation, and provide encouragement while they gain valuable, life-long experience in planning these lectures. Other UI students outside of the committee are able to engage with guest speakers through activities like small group or classroom discussions, media interviews, book signings, and as guests at meals and receptions.</p>
<p>Investing in the University of Iowa Lecture Committee is just one of the many ways Dr. Foens has chosen to enrich the lives of UI students, faculty, staff, and the greater community. The impact of her support will be felt far into the future.</p>
	<blockquote class="my-5 donor-quote" id="donor-quote">
		<div class="donor-quote__body" id="donor-quote__body">
			<p>“A particularly special event that I got to work on with Dr. Foens was the Leslie Odom, Jr., lecture and concert at Hancher in 2017. I distinctly remember sitting in the front row next to Dr. Foens when the band came out and just thinking how incredibly cool it was to be able to share this experience with the hundreds of people in the audience. In particular, I thought about how there were likely students in the audience who might not be able to afford a ticket to see a Tony Award winner if not for an opportunity like this—and no less, free of charge.</p>
			<p>Dr. Foens has been an inspiration to me and once I have the means to do so myself, I want to be able to give back to my community to provide opportunities that would not otherwise exist, like she has done. The University Lecture Committee and University of Iowa community are incredibly lucky to have her.”</p>
			<footer class="donor-quote__credits"><cite id="donor-quote__cite"> Sarah Tortora (18PHR), chair, University of Iowa Lecture Committee 2017</cite></footer>
		</div>
	
	</blockquote>

			<div class="row justify-content-center donor-gallery">

				<% if $SlideshowImages %>
					<% loop $SlideshowImages %>
						<div class="col-6 col-lg-4">
							<a class="d-block donor-gallery-link" href="$Image.ScaleWidth(600).URL"><img src="$Image.ScaleWidth(600).URL" alt="$Title" class="d-block w-100 mb-3" /></a>
							<% if $Caption %><p class="text-center small">$Caption</p><% end_if %>
						</div>
						<% end_loop %>
				<% end_if %>
			</div>
	                	<span class="h2 d-block my-3">More Than 10 Years of Bringing the World's Greatest Thinkers to the&nbsp;University&nbsp;of&nbsp;Iowa</span>
<p><strong>Cassandra S. Foens</strong>, 83BS, 87MD, is a highly regarded radiation oncologist and champion of educational causes whose personal contributions have allowed others to follow in her footsteps.</p>

<p>In a career spanning more than two decades, Foens has established herself as a successful physician in her hometown of Waterloo, Iowa—and in 2006, she became both the first woman and the first radiation oncologist from Iowa to be elected to the American College of Radiology board of chancellors.</p>

<p>Foens received a bachelor's degree in 1983, earned a Doctor of Medicine in 1987, and completed a residency in radiation oncology in 1992—all at the University of Iowa. Following her UI training, Foens joined the Edward W. Sparrow Hospital in Lansing, Michigan, as a radiation oncologist. In 1994, she accepted a position with Clinical Radiologists at the Covenant Cancer Treatment Center in Waterloo, where she still works today.</p>

<p>Foens' passion for health care extends far beyond this practice, as she has served on the Cedar Valley Hospice Governing Board and the Wheaton Franciscan-Iowa Healthcare Board and is the spokesperson for many cancer-related topics. In addition to donating her time at community screenings and educational presentations, she has also volunteered for Speaking of Women's Health—a national organization that assists women in making informed choices about their health.</p>

<p>Through her generous personal giving, Foens has helped create far-reaching educational opportunities for students. She made the lead contribution for a new science lab at Columbus High School in Waterloo and established a scholarship with Dollars for Scholars for an x-ray technology student to attend the training program at Covenant Medical Center.</p>

<p>At her alma mater, Foens created the Cassandra S. Foens, M.D., Presidential Scholarship. And each fall, thanks to the Cassandra S. Foens, M.D., Lecture Series she established through a generous donation in 2007, UI students benefit from a lively and educational evening of discourse. She also supports the UI's N.E.W. Leadership Program, which seeks to increase the participation of underrepresented women in government.</p>

<p>A firm believer in civic involvement, Foens serves on the UI Center for Advancement Board of Directors and the governing board of the Covenant Foundation. She received the 2003 Friend of the Year award from KBBG Radio and the Association of Fundraising Professional's 2011 Outstanding Volunteer Fundraiser award.</p>

<p>Her investments in the community and at her alma mater have made an indelible impact on others. "Dr. Foens represents the best of what the University of Iowa provides to the State of Iowa and its students and alumni: personal accomplishment, generosity, and commitment to service," says Emily Anne Vail, a 2010 UI graduate who is completing an anesthesia residency at Columbia University Medical Center. "She has established a legacy that I aspire to one day continue."</p>

<p>Thanks to her deep commitment to service and engagement, Cassandra S. Foens will leave a lasting impression on all the patients, colleagues, and students whose lives she has touched.</p>

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


		</div>
		<div class="container-xl">
		
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

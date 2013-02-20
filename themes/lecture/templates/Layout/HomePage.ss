<% if NextLecture %>
<% control NextLecture %>
<div id="main_feature" style="background-color: <% if FeatureBackgroundColor %>$FeatureBackgroundColor<% else %>#6C819E<% end_if %>;">
	<div id="main_feature_item" style="background-color: <% if FeatureBackgroundColor %>$FeatureBackgroundColor<% else %>#6C819E<% end_if %>; background-image: url(<% control Picture.SetWidth(500) %> $URL <% end_control %>);">

	<div id="main_feature_description" class="$PictureAlignment" >
		<% if LectureTitle %> <p><strong><em>$LectureTitle</em></strong></p> <% end_if %>
		<p><strong>$Title</strong></p>
		<p>$EventDate.format(l) $EventDate.format(F) $EventDate.format(j), $EventDate.format(Y)</p>
		<p>$Location, $Time</p>
		<% if Price %><p>$Price</p><% end_if %>
	</div>
	<div class="clear"></div>
	</div>

</div>


<div id="main_content">
	<div id="details">
		<h1>$Title</h1>
		<!--<h2>$EventDate.format(l)<br />$EventDate.format(F) $EventDate.format(j), $EventDate.format(Y)</h2>
		<div id="lecture_location_time">$Location, $Time</div>
		<div id="lecture_price">$Price</div>-->
		
		<div id="lecture_content">
			$Content
			
			<% if Youtube %>
				<br />
				<iframe width="540" height="333" src="http://www.youtube.com/embed/$Youtube" frameborder="0" allowfullscreen="1"></iframe>
			<% end_if %>
		</div>
	</div>
<% end_control %> <%-- end control NextLecture --%>
<% else %>
<div id="main_content">
	<div id="details">
		<h1>No Upcoming Lectures Currently Scheduled. Check Back Soon!</h1>
	
	</div>
</div>
<% end_if %> <%-- end if NextLecture --%>

	<div id="extra">
		<h2><a href="{$BaseHref}lectures/">Upcoming Lectures</a></h2>
		<% include UpcomingLectures %>
		
		<br /><br /><br />
		
		<div id="share-lecture">
		<h2>Share This Lecture</h2>
			<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style addthis_32x32_style">
<a class="addthis_button_preferred_1"></a>
<a class="addthis_button_preferred_2"></a>
<a class="addthis_button_preferred_3"></a>
<a class="addthis_button_preferred_4"></a>
<a class="addthis_button_compact"></a>
<a class="addthis_counter addthis_bubble_style"></a>
</div>

<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4e95cc4602e10a17"></script>
</div>
		
		<h2>Connect With Us</h2>
		<a href="http://www.facebook.com/iowa.ulc"><span style="background: url('{$BaseHref}assets/uclips.png') -420px -20px; display: block; float: left; height: 60px; width: 60px;"></span></a>
		<!--<a href="/"><span style="background: url('http://uber.imu.uiowa.edu/lecture/assets/uclips.png') -350px -20px; display: block; float: left; height: 60px; width: 60px;"></span></a>-->

		
	</div>
</div>


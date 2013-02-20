<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
	<head>
		<title>$Title - UI Lecture Committee</title>
		<% base_tag %>
		<link rel="stylesheet" type="text/css" href="$ThemeDir/css/layout.css" />
		<link rel="stylesheet" type="text/css" href="$ThemeDir/css/typography.css" />
		<link rel="stylesheet" type="text/css" href="$ThemeDir/css/form.css" />
	</head>
	<body>
		<div id="main">
			<div id="left">
				<div id="left-top">
				
				</div>
				<div id="left-middle">
					<% include UpcomingLectures %>
				</div>
				<div id="left-bottom">
					<ul>
						<% control Menu(1) %>
							<li><a href="$Link"><span>$MenuTitle</span></a></li>
						<% end_control %>
					</ul>
					<div id="space">
						
					</div>
					<div id="details">
						<div id="detail-info">
							<% include Details %>
						</div>
					</div>
				</div>
			</div>
			<div id="right">
				<div id="right-image" style="background: url('$Picture.URL') no-repeat left bottom; width: 637px; height: 595px;">
					<div id="right-float" style="background: url('/lecture/$ThemeDir/images/lecture-top.png'); float: left; width: 637px; height: 135px;">
					</div>
				</div>
				<div id="content">
					$Content
					$Form
				</div>
			</div>
			<div id="footer">
				<p>
				© <strong>The University of Iowa</strong> 2010. All rights reserved<br />
				Email questions or comments to <strong>lecture-committee@uiowa.edu</strong><br />
				All lectures and co-sponsored events are free and open to the public.
				</p>
			</div>
			<div class="clear"></div>
		</div>
	</body>
</html>

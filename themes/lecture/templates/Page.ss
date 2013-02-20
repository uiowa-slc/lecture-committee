<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" >
	<head>
		<% if URLSegment = home %>
			<title><% if NextLecture %>$NextLecture.Title<% else %>Home<% end_if %> - The University of Iowa Lecture Committee</title>
		<% else %>
			<title>$Title - The University of Iowa Lecture Committee</title>
		<% end_if %>
		<% base_tag %>
		<link rel="stylesheet" type="text/css" href="$ThemeDir/css/layout.css" />
		<link rel="stylesheet" type="text/css" href="$ThemeDir/css/typography.css" />
		<link rel="stylesheet" type="text/css" href="$ThemeDir/css/form.css" />
		<!--[if IE 7]>
		<style type="text/css">
		#mid_magic_content {
			height: 410px;
		}
		#mid_magic_bottom {
			height: 40px;
		}
		#mid_pic {
			height: 360px;
		}
		#mid_gradient {
			height: 360px;
		}
		#mid_magic_div {
			height: 360px;
		}
		#main_content {
			padding-top: 0px;
		}
		#main_feature_description {
			background-color: black;
			font-size: 30px;
		
		}
		</style>
		<![endif]-->
		<!--[if IE 8]>
		<style type="text/css">
		#mid_magic_content {
			height: 410px;
		}
		#mid_magic_bottom {
			height: 40px;
		}
		#mid_pic {
			height: 360px;
		}
		#mid_gradient {
			height: 360px;
		}
		#mid_magic_div {
			height: 400px;
		}
		#main_content {
			padding-top: 20px;
		}
		#mid_1 {
			margin: 65px 0px 0px 0px;
		}
		
		#main_feature_description {
			background-color: black;
			font-size: 30px;
		
		}
		</style>
		<![endif]-->
		
	</head>
	<body>
		<div id="top-wrapper">
		
			<div id="header-content">
				<div id="lecture_logo"><a href="/"></a></div>
				<div id="uiowa_logo"><a href="http://www.uiowa.edu"></a></div>
				<div class="clear"></div>
			
				<div id="navigation">
					<div>
						<% include Navigation %>
					</div>
				</div>
			
			</div>
			
			
			

		</div>
		
		
		
		$Layout
		
		<div class="clear"></div>
		<% include Footer %>
	</body>
</html>

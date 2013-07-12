		<div id="footslant"></div>
		<div id="foot">
			<div id="foot_logo"></div>
			<div id="foot_text">
			<ul>
				<% loop Menu(1) %>
					<li><a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode"><span>$MenuTitle.XML</span></a></li>
				<% end_loop %>
			</ul>
				
				<br />
				<div id="foot_info">
					Email questions or comments to <a href="mailto:lecture-committee@uiowa.edu">lecture-committee@uiowa.edu</a><br />
					All lectures and co-sponsored events are free and open to the public.<br />
					<small>&copy; <a href="http://www.uiowa.edu">The University of Iowa</a> $Now.Year. All rights reserved</small>
				</div>
			</div>
			<div class="clear"></div>
		</div>
<% control Menu(1) %>	  
	<% if First %>
	
	<% else %>
	 | 
	<% end_if %>
	<a href="$Link" title="Go to the $Title.XML page" class="$LinkingMode"><span>$MenuTitle.XML</span></a>
<% end_control %>
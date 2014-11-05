<% if $paginatedPreviousLectures.MoreThanOnePage%>
	<ul class="inline-list right pagination">
	<% if $paginatedPreviousLectures.NotFirstPage %>
   		<li class=""><a class="next" href="$paginatedPreviousLectures.PrevLink()#previous-lectures">Later</a></li>
		<% end_if %>
	<% loop $paginatedPreviousLectures.PaginationSummary(10) %>
		<% if $PageNum = $Up.CurrentPage %>
			<li class="curPage"><a href="$Link#previous-lectures">$PageNum</li>
			<% else %>
			<li class=""><a href="$Link#previous-lectures">$PageNum</li>
			<% end_if %>
		<% end_loop %>
		<% if $paginatedPreviousLectures.NotLastPage %>
		<li class=""><a class="prev" href="$paginatedPreviousLectures.NextLink()#previous-lectures">Earlier</a></li>
	<% end_if %>
	</ul>
<% end_if %>
<div class="clearfix"></div>
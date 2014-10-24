<article>
		<% with Page("about-us") %>
			
			<p>$Content.FirstParagraph</p>
			
			<a href="$Link" title="Read more on &quot;{$Title}&quot;">Read more &gt;&gt;</a>
		<% end_with %>
</article>	
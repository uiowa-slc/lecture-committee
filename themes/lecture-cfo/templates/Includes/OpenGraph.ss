<% if $URLSegment == "home" %>
	<meta property="og:title" content="$SiteConfig.Title" />
	<meta property="og:content" content="The Division of Student Life fosters student success by creating and promoting inclusive educationally purposeful services and activities within and beyond the classroom." />

		<meta property="og:image" content="{$BaseHref}cfo-project/images/og-dsl.png" />
		<meta property="og:image:width" content="1200" />
		<meta property="og:image:height" content="630" />


<% else %>
	<meta property="og:title" content="$Title - $SiteConfig.Title" />

	<% if $Image %>
		<meta property="og:image" content="$Image.ScaleWidth(600).AbsoluteURL" />
		<meta property="og:image:width" content="$Image.SetWidth(600).Width" />
		<meta property="og:image:height" content="$Image.SetWidth(600).Height" />
	<% else_if $Photo %>
		<meta property="og:image" content="$Photo.ScaleWidth(600).AbsoluteURL" />
		<meta property="og:image:width" content="$Photo.SetWidth(600).Width" />
		<meta property="og:image:height" content="$Photo.SetWidth(600).Height" />
	<% else_if $Picture %>
		<meta property="og:image" content="$Picture.SetWidth(600).AbsoluteURL" />
		<meta property="og:image:width" content="$Picture.SetWidth(600).Width" />
		<meta property="og:image:height" content="$Picture.SetWidth(600).Height" />
	<% else %>
		<meta property="og:image" content="{$BaseHref}cfo-project/images/og-dsl.png" />
		<meta property="og:image:width" content="1200" />
		<meta property="og:image:height" content="630" />
	<% end_if %>
	<meta property="og:description" content="$Content.Summary(50).ATT" />


<% end_if %>
	<meta property="og:type" content="article" />
	<meta property="og:url" content="$AbsoluteLink" />
	<meta property="og:site_name" content="$SiteConfig.Title.ATT" />
	<meta property="fb:admins" content="64131067165" />

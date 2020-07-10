<% if $URLSegment == "home" %>
	<meta property="og:title" content="$SiteConfig.Title" />
	<meta property="og:content" content="The Division of Student Life fosters student success by creating and promoting inclusive educationally purposeful services and activities within and beyond the classroom." />

		<meta property="og:image" content="{$BaseHref}cfo-project/images/og-dsl.png" />
		<meta property="og:image:width" content="1200" />
		<meta property="og:image:height" content="630" />


<% else %>
	<meta property="og:title" content="$Title - $SiteConfig.Title" />

	<% if $Image %>
		<meta property="og:image" content="$Image.Pad(1200,630,222222).AbsoluteURL" />
		<meta property="og:image:width" content="1200" />
		<meta property="og:image:height" content="630" />
	<% else_if $Photo %>
		<meta property="og:image" content="$Photo.Pad(1200,630,222222).AbsoluteURL" />
		<meta property="og:image:width" content="1200" />
		<meta property="og:image:height" content="630" />
	<% else_if $Picture %>
		<meta property="og:image" content="$Picture.Pad(1200,630,222222).AbsoluteURL" />
		<meta property="og:image:width" content="1200" />
		<meta property="og:image:height" content="630" />
	<% else %>
		<meta property="og:image" content="{$BaseHref}cfo-project/images/og-dsl.png" />
		<meta property="og:image:width" content="1200" />
		<meta property="og:image:height" content="630" />
	<% end_if %>
	<meta property="og:description" content="<% if $EventDate %>On $EventDate.Format("F j"): <% end_if %>$Content.Summary(50).ATT" />


<% end_if %>
	<meta property="og:type" content="article" />
	<meta property="og:url" content="$AbsoluteLink" />
	<meta property="og:site_name" content="$SiteConfig.Title.ATT" />
	<meta property="fb:app_id" content="127918570561161" />

<header class="header border-bottom">
    <a class="skip-link small" href="#content">Skip to main content</a>
    <div class="container-xl">
        <div class="row">
            <div class="col">
                <nav class="navbar navbar-expand-lg navbar-dark px-0" aria-label="Site Navigation">
                    <a class="navbar-brand" href="{$BaseUrl}" aria-label="{$SiteConfig.Title}">
                        <span class="sr-only">$SiteConfig.Title</span>
                        <img src="{$ThemeDir}/dist/images/logo.png" alt="Scope Productions" class="navbar-brand__logo" />
                    </a>

                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarText">
                        <ul class="navbar-nav">
                            <% loop $Menu(1) %>
                                <% if $URLSegment != "home" %>
                                <li class="nav-item">
                                    <% if $URLSegment == "live" %>
                                        <% if $Top.StreamingLectureToday %>
                                            <a class="btn btn-blue" href="$Link">$MenuTitle <i class="fas fa-play"></i></a>
                                        <% else %>
                                            <a class="nav-link" href="$Link">$MenuTitle</a>
                                        <% end_if %>

                                    <% else %>
                                         <a class="nav-link" href="$Link">$MenuTitle</a>
                                    <% end_if %>
                                   
                                </li>
                                <% end_if %>
                            <% end_loop %>
                        </ul>

                        <% if $SiteConfig.TicketsLink %>
                            <div class="navbar-text">
                                &nbsp;<a href="$SiteConfig.TicketsLink" class="btn btn-sm btn-primary">Get Tickets</a>
                            </div>
                        <% end_if %>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</header>

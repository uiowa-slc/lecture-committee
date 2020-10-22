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
                                <li class="nav-item $LinkingMode nav-item<% if $isCurrent || $isSection %> active<% end_if %><% if Children && ClassName != 'LectureHolderPage' && ClassName != "StaffHolderPage" %> dropdown<% end_if %>">
                                    <a class="nav-link<% if Children && ClassName != 'LectureHolderPage' && ClassName != "StaffHolderPage" %> dropdown-toggle<% end_if %>" href="$Link"  <% if Children && ClassName != 'LectureHolderPage'  && ClassName != "StaffHolderPage" %> id="navbarDropdown$Pos" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"<% end_if %> >$MenuTitle.XML</a>

                                    <% if Children && ClassName != 'LectureHolderPage' && ClassName != "StaffHolderPage" %>
                                        <div class="dropdown-menu shadow-sm" aria-labelledby="navbarDropdown$Pos">
                                            <a class="dropdown-item" href="$Link">$MenuTitle</a>
                                            <% loop Children %>
                                                <a class="dropdown-item" href="$Link">$MenuTitle</a>
                                            <% end_loop %>
                                        </div>
                                    <% end_if %>

                                </li>
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

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
                                            <a class="btn btn-blue" href="$Link">$MenuTitle <svg aria-hidden="true" aria-labelledby="title" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-broadcast" fill="currentColor" xmlns="http://www.w3.org/2000/svg">

  <path fill-rule="evenodd" d="M3.05 3.05a7 7 0 0 0 0 9.9.5.5 0 0 1-.707.707 8 8 0 0 1 0-11.314.5.5 0 0 1 .707.707zm2.122 2.122a4 4 0 0 0 0 5.656.5.5 0 0 1-.708.708 5 5 0 0 1 0-7.072.5.5 0 0 1 .708.708zm5.656-.708a.5.5 0 0 1 .708 0 5 5 0 0 1 0 7.072.5.5 0 1 1-.708-.708 4 4 0 0 0 0-5.656.5.5 0 0 1 0-.708zm2.122-2.12a.5.5 0 0 1 .707 0 8 8 0 0 1 0 11.313.5.5 0 0 1-.707-.707 7 7 0 0 0 0-9.9.5.5 0 0 1 0-.707z"/>
  <path d="M10 8a2 2 0 1 1-4 0 2 2 0 0 1 4 0z"/>
</svg></a>
                                        <% else %>
                                            <a class="nav-link <% if $LinkOrSection == "section" %>active<% end_if %>" href="$Link">$MenuTitle <svg aria-hidden="true" width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-broadcast" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M3.05 3.05a7 7 0 0 0 0 9.9.5.5 0 0 1-.707.707 8 8 0 0 1 0-11.314.5.5 0 0 1 .707.707zm2.122 2.122a4 4 0 0 0 0 5.656.5.5 0 0 1-.708.708 5 5 0 0 1 0-7.072.5.5 0 0 1 .708.708zm5.656-.708a.5.5 0 0 1 .708 0 5 5 0 0 1 0 7.072.5.5 0 1 1-.708-.708 4 4 0 0 0 0-5.656.5.5 0 0 1 0-.708zm2.122-2.12a.5.5 0 0 1 .707 0 8 8 0 0 1 0 11.313.5.5 0 0 1-.707-.707 7 7 0 0 0 0-9.9.5.5 0 0 1 0-.707z"/>
                        <path d="M10 8a2 2 0 1 1-4 0 2 2 0 0 1 4 0z"/>
                        </svg></a>
                                        <% end_if %>

                                    <% else %>
                                         <a class="nav-link <% if $LinkOrSection == "section" %>active<% end_if %>" href="$Link">$MenuTitle</a>
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
<% if $ClassName != "StreamingPage" %>
<div class="event-alert-container">
    <div class="container-xl">
        <div class="row">
            <div class="col-12">
                <% if $StreamingLectureToday %>
                    <div class="">
                        <p class="event-alert my-3"> <a class="" href="live/"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-broadcast" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M3.05 3.05a7 7 0 0 0 0 9.9.5.5 0 0 1-.707.707 8 8 0 0 1 0-11.314.5.5 0 0 1 .707.707zm2.122 2.122a4 4 0 0 0 0 5.656.5.5 0 0 1-.708.708 5 5 0 0 1 0-7.072.5.5 0 0 1 .708.708zm5.656-.708a.5.5 0 0 1 .708 0 5 5 0 0 1 0 7.072.5.5 0 1 1-.708-.708 4 4 0 0 0 0-5.656.5.5 0 0 1 0-.708zm2.122-2.12a.5.5 0 0 1 .707 0 8 8 0 0 1 0 11.313.5.5 0 0 1-.707-.707 7 7 0 0 0 0-9.9.5.5 0 0 1 0-.707z"/>
                        <path d="M10 8a2 2 0 1 1-4 0 2 2 0 0 1 4 0z"/>
                        </svg> Livestream Event Today: <% with $StreamingLectureToday %>{$Lecturer}, {$EventDate.Format("MMMM d, Y")}, $Time<% end_with %></a></p>
                    </div>
                <% end_if %>
            </div>
        </div>
    </div>
</div>
<% end_if %>
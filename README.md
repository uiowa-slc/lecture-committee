## Lecture Committee Website

- Built on SilverStripe
- Uses `staticpublishqueue` to build every hour via cron job
- `LecturePage` instances in the SiteTree with an upcoming date and a streaming link will change the website's theme to promote the next streaming event
- `LecturePage` instances with an upcoming date will show up in the Upcoming Lectures heading

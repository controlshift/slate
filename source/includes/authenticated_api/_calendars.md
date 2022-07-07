## Calendars

Calendars are collections of related events.

### Show

> GET response Body

```json
{
  "calendar": {
    "name": "Movie Screenings For Healthcare Access",
    "description": "We're watching this amazing and powerful movie about the fight for health care for all.",
    "slug": "movie-screenings-for-healthcare-access",
    "url": "https://demo.controlshiftlabs.com/calendars/movie-screenings-for-healthcare-access",
    "partnership": {
      "slug": "space-captains-for-health-care",
      "url": "https://demo.controlshiftlabs.com/partnerships/space-captains-for-health-care"
    }
  }
}
```

Find information about a calendar by URL slug.

`GET /api/v1/calendars/movie-screenings-for-healthcare-access`

The `slug` used to identify a calendar for API purposes is the same as the `slug` that appears in member-facing URLs.
For example, for a calendar whose member-facing hub is at `https://demo.controlshiftlabs.com/calendars/day-of-action-for-justice`,
the calendar `slug` is `day-of-action-for-justice`.

<div></div>

### List Events

List the events that are part of a Calendar. 

This is a paginated response. You can advance to the next page using the page parameter, which accepts a page number integer.
By default the first page is returned. 

Hash     | Description
--------- | ------- 
meta      | pagination information
calendar  | basic information about the calendar
events | an array of event results

`GET /api/v1/calendars/movie-screenings-for-healthcare-access/events?page=2`

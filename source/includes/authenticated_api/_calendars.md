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

### Create Event
> POST /api/v1/calendars/movie-screenings-for-healthcare-access/events

```json
{
  "event": {
    "title": "Movie Screening at the Community Center",
    "description": "We're going to watch this amazing movie",
    "start_at": "2025-06-01T15:00-05:00",
    "end_at": "2025-06-01T17:30-05:00",
    "time_zone": "America/Chicago",
    "host": {
      "first_name": "Cori",
      "last_name": "Bush",
      "email": "cori.bush@example.com"
    },
    "host_address": "Congressional Office, 6724-A Page Ave., St. Louis, MO 63133",
    "location": {
      "venue": "Community Center",
      "street_number": "123",
      "street": "Main Street",
      "locality": "Kansas City",
      "region": "KS",
      "postal_code": "12345",
      "country": "US"
    },
    "extra_location_info": "We'll be in the multi-purpose room on the first floor.",
    "event_type": {
      "id": 12
    },
    "labels": [
      "health care"
    ]
  }
}
```

> Response body

```json
{
  "status": "success",
  "event": {
    "slug": "movie-screening-at-the-community-center-2",
    "title": "Movie Screening at the Community Center",
    "url": "https://demo.controlshiftlabs.com/events/movie-screening-at-the-community-center-2",
    "description": "We're going to watch this amazing movie",
    "start_at": "2025-06-01T20:00Z",
    "end_at": "2025-06-01T22:30Z",
    "start_in_zone": "2025-06-01T15:00-05:00",
    "end_in_zone": "2025-06-01T17:30-05:00",
    "time_zone": "America/Chicago",
    "virtual": false,
    "launched_at": "2025-05-23T21:32Z",
    "locale": "en-US",
    "host_address": "Congressional Office, 6724-A Page Ave., St. Louis, MO 63133",
    "max_attendees_count": null,
    "location": {
      "latitude": 39.168100,
      "longitude": -94.776063,
      "postal_code": "12345",
      "country": "US",
      "region": "KS",
      "locality": "Kansas City",
      "query": "Community Center, 123 Main Street, Kansas City, KS 12345, US",
      "street": "Main Street",
      "street_number": "123",
      "venue": "Community Center",
      "created_at": "2025-05-23T21:32Z",
      "extra_location_info": "We'll be in the multi-purpose room on the first floor."
    },
    "event_type": {
      "name": "Movie Screening"
    },
    "shifts": [],
    "calendar": {
      "name": "Movie Screenings For Healthcare Access",
      "slug": "movie-screenings-for-healthcare-access",
      "url": "https://demo.controlshiftlabs.com/calendars/movie-screenings-for-healthcare-access"
    },
    "labels": [
      "health care"
    ]
  }
}
```

Create a new event in the calendar.

`POST /api/v1/calendars/movie-screenings-for-healthcare-access/events`

If the event is created successfully, the host will receive an email asking them to confirm that they are hosting.
Once the host confirms, the event will work the same way as an event created via the web UI.
The URL in the response is the public event page where members can RSVP.
To update an event after creation, use the returned `slug` with the Event Update endpoint.

The request body should be a JSON block containing one `"event"` object, which can have the following properties:

Field | Type | Description | Required?
------|------|-------------|----------
campaigner_contactable | Boolean | Whether members of the public can contact the event host via the public event page | no; default is `true`
description | String | Description of the event | yes
end_at | String | ISO 8601 date/time that the event ends | no; default is no specific end time
event_host_name_override | String | Name to display on the event page instead of the host’s account name | no
event_type[id] | Integer | Unique ID of an existing Event Type that should be set on the event | no
extra_location_info | String | Information about the event’s location | no
forum_enabled | Boolean | Whether the forum on the event page should be enabled | no; defaults to calendar setting or organisation setting
group[slug] | String | Unique identifier for an existing group this event should be associated with | no
hidden_address | Boolean | Whether the event’s full address should be obscured before RSVP | no; default is `false`
hide_recent_attendees | Boolean | Whether to suppress the display of attendee’s names in the "recently shared" display. | no; default is `false`
host_address | String | Host's mailing address | only if the calendar requires it
host | User block ([see above](#json-type-user)) | User who will host the event. If a user account does not already exist with this email, we will create one. | yes
labels | List of Strings | Labels that should be applied to the new event. Any labels that do not already exist will be created | no
locale | String | The ISO 639-1 two-letter code for the language the event content is in. Must be one of the languages supported by ControlShift. | no; defaults to organisation's default language
location | Location block ([see above](#json-type-location)) | Information about either the exact location of an in-person event, or the location a virtual event is relevant to. May be omitted entirely for a virtual event that doesn't have a specific audience location. If latitude and longitude are included, we’ll use them. Otherwise, we’ll geocode the fields provided. | only for in-person events
max_attendees_count | Integer | Maximum number of attendees allowed | no
partnership[slug] | String | Unique identifier for an existing partnership this event should be associated with | no
start_at | String | ISO 8601 date/time that the event starts | yes
target[slug] | String | Unique identifier for an existing decision maker this event should be associated with. Only relevant for constituency-bound calendars, where it must belong to the decision maker collection associated with the calendar. | only in constituency-bound calendars
time_zone | String | tz database code for the event’s time zone (e.g. "America/New_York") | yes
title | String | Title of the event | yes
virtual | Boolean | Whether this is a virtual event | no; defaults to the organisation default for new events
web_conference_url | String | URL for a Zoom or other virtual meeting associated with this event | no


<div></div>

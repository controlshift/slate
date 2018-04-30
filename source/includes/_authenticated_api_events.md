## Events

Events represent real-world or virtual meetings that members can RSVP to. RSVP records are called "attendees".

### Show

> GET response Body

```json
{
  "event": {
    "slug": "hands-off-my-birth-control-rally",
    "title": "Hands Off My Birth Control! A Rally.",
    "url": "https://demo.controlshiftlabs.com/events/hands-off-my-birth-control-rally",
    "description": "We'll meet at the park and march to City Hall. We're demanding that the mayor pledge to include all forms of birth control in health insurance plans for city employees.",
    "start": "2018-03-01T12:00:00Z",
    "end": "2018-03-01T13:30:00Z",
    "start_in_zone": "2018-03-01T12:00:00-05:00",
    "end_in_zone": "2018-03-01T13:30:00-05:00",
    "time_zone": "America/New_York",
    "virtual": false,
    "launched_at": "2018-02-03T12:34:56Z",
    "locale": "en-US",
    "host_address": null,
    "max_attendees_count": null,
    "external_id": "control-shift-hands-off-my-birth-control-rally",
    "location": {
      "query": "boston harbor",
      "latitude": "42.3376368",
      "longitude": "-70.99304",
      "venue": "Boston Harbor",
      "street_number": "",
      "street": "",
      "region": "MA",
      "postal_code": "",
      "country": "US",
      "created_at": "2017-11-16T22:38:29Z"
    },
    "local_chapter": {
      "slug": "planned-parenthood-allies-boston",
      "url": "https://demo.controlshiftlabs.com/groups/planned-parenthood-allies-boston"
    },
    "partnership": {
      "slug": "planned-parenthood-league-of-massachusetts",
      "url": "https://demo.controlshiftlabs.com/partnerships/planned-parenthood-league-of-massachusetts"
    }
}
```

Find information about an event by URL slug.

`GET /api/v1/events/hands-off-my-birth-control-rally`

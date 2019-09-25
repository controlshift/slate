## Events

Events represent real-world or virtual meetings that members can RSVP to. RSVP records are called "attendees".

### Show

> GET response Body

```json
{
  "event": {
    "slug": "deliver-the-petition-to-the-wizard",
    "title": "Deliver the Petition to the Wizard",
    "url": "https://demo.controlshiftlabs.com/events/deliver-the-petition-to-the-wizard",
    "description": "Join us as we travel to the Emerald City to deliver our petition to the Wizard.",
    "start": "2018-03-01T12:00:00Z",
    "end_at": "2018-03-01T13:30:00Z",
    "start_in_zone": "2018-03-01T12:00:00-05:00",
    "end_in_zone": "2018-03-01T13:30:00-05:00",
    "time_zone": "America/New_York",
    "virtual": false,
    "launched_at": "2018-02-03T12:34:56Z",
    "locale": "en-US",
    "host_address": null,
    "max_attendees_count": null,
    "external_id": "control-shift-deliver-the-petition-to-the-wizard",
    "location": {
      "query": "wizard room",
      "latitude": "42.3376368",
      "longitude": "-70.99304",
      "venue": "The Wizard's Throne Room",
      "street_number": "",
      "street": "",
      "region": "MA",
      "postal_code": "",
      "country": "US",
      "created_at": "2017-11-16T22:38:29Z"
    },
    "petition": {
      "slug": "repair-the-yellow-brick-road-1",
      "url": "https://demo.controlshiftlabs.com/petitions/repair-the-yellow-brick-road-1"
    }
}
```

Find information about an event by URL slug.

`GET /api/v1/events/deliver-the-petition-to-the-wizard`

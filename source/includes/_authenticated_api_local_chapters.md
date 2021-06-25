## Events

Events represent real-world or virtual meetings that members can RSVP to. RSVP records are called "attendees".

### List

> GET response body

```json
{
  "events": [
    {
      "slug": "deliver-the-petition-to-the-wizard",
      "title": "Deliver the Petition to the Wizard",
      "url": "https://demo.controlshiftlabs.com/events/deliver-the-petition-to-the-wizard",
      "description": "Join us as we travel to the Emerald City to deliver our petition to the Wizard.",
      "start_at": "2018-03-01T12:00:00Z",
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
      "shifts": [
        {
          "id": "103",
          "name": "Lunch",
          "start_at": "2018-03-01T12:00:00Z",
          "end_at": "2018-03-01T13:00:00Z"
        },
        {
          "id": "105",
          "name": "Demonstration",
          "start_at": "2018-03-01T13:00:00Z",
          "end_at": "2018-03-01T13:30:00Z"
        }
      ],
      "petition": {
        "slug": "repair-the-yellow-brick-road-1",
        "url": "https://demo.controlshiftlabs.com/petitions/repair-the-yellow-brick-road-1"
      },
      "labels": ["oz-organizer-help"]
    },
    ...
  ],
  "meta": {
    "current_page": 1,
    "total_pages": 1,
    "previous_page": null,
    "next_page": null
  }
}
```

Get a paginated list of all events, including ones that are unlaunched or otherwise not visible to the public. Includes all the same data as the single-event endpoint for each event.

`GET /api/v1/events?page=1`

### Show
<div></div>

> GET response Body

```json
{
  "event": {
    "slug": "deliver-the-petition-to-the-wizard",
    "title": "Deliver the Petition to the Wizard",
    "url": "https://demo.controlshiftlabs.com/events/deliver-the-petition-to-the-wizard",
    "description": "Join us as we travel to the Emerald City to deliver our petition to the Wizard.",
    "start_at": "2018-03-01T12:00:00Z",
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
    },
    "labels": ["oz-organizer-help"]
  }
}
```

Find information about an event by URL slug.

`GET /api/v1/events/deliver-the-petition-to-the-wizard`


### Apply Label
<div></div>

Applies an existing Label to a specific Local Group.

**Note:** Currently it is not possible to create Labels via the API. The Label needs to exists to allow tagging an Local Group with it.

The request body must include a `name` attribute with the name of the label to be applied to the Local Group.

`POST /api/v1/local_chapters/deliver-the-petition-to-the-wizard/labelings`

Response on success will not have a body, and status code will be `201 - Created`

> POST request body

```json
{
  "name": "Oz"
}
```

### Remove Label

Removes a Label from the Event.

The name of the Label must be included in the URL and be correctly percent encoded as per RFC 3986.

Response on success will not have a body, and status code will be `200 - Ok`

`DELETE /api/v1/petitions/no-taxes-on-tea/labelings/Oz`

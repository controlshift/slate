### Get organizing locations: points

> Example response

```json
[
    {
        "lat": 40.7032775,
        "lon": -74.0170279,
        "type": "Event",
        "id": "picnic-in-the-park"
    },
    {
        "lat": 8.2710078,
        "lon": 148.0209055,
        "type": "Group",
        "id": "default-org-mariana-trench"
    },
    {
        "lat": 41.467116,
        "lon": -73.9992597,
        "type": "ExternalEvent",
        "id": "https://example.com/sail-on-the-hudson"
    }
]
```

This JSON endpoint returns a complete list of latitude/longitude coordinates for publicly listed events, groups, and external events in your organisation. It's intended to be used for plotting organizing activities on a map.

#### HTTP Request

`GET https://demo.controlshiftlabs.com/api/local/points.json`

- &check; CORS supported
- &times; JSONP not supported

#### Query Parameters

All parameters are optional and default to null (no filter).

Parameter                | Description
---------                | -----------
filter[calendars]        | List of calendar slugs. If specified, only events in those calendars will be returned.
filter[event_types]      | List of event type IDs. If specified, only events of those types will be returned.
filter[geographies]      | List of geographic shape IDs. If specified, only events/groups whose locations fall within those geographies will be returned.
filter[geography_slugs]  | Alternative way of filtering by geographic shapes. Works like `filter[geographies]`, but accepts a list of geography slugs instead of a list of geography IDs.
filter[labels]           | List of label IDs. If specified, only events/groups with at least one of those labels will be returned.
filter[regions]          | List of region IDs. If specified, only events/groups assigned to those regions will be returned.
filter[start_date_range] | JSON object with a `start_date` and `end_date` representing a range of time. Events will only be returned if their start times are within the range, but the returned groups will not be affected.
filter[types]            | List of types of results to return. Should contain at least one of `event` or `group`.

<div></div>

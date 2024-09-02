### Get organizing locations: details

> Example response

```json
{
    "meta": {
        "count": 23,
        "page": 1,
        "per_page": 3,
        "total_pages": 8
    },
    "data": [
        {
            "type": "Event",
            "id": "picnic-in-the-park",
            "title": "Picnic in the Park",
            "description": "We are having a picnic in the park and you are invited!",
            "start_at": "2020-03-01T12:00:00Z"
        },
        {
            "type": "Group",
            "id": "default-org-mariana-trench",
            "title": "Default Org: Mariana Trench",
            "description": "This group has the deepest conversations you will ever hear."
        },
        {
            "type": "ExternalEvent",
            "id": "https://example.com/sail-on-the-hudson"
            "title": "Sail on the Hudson",
            "description": "Go for a sail on the Hudson river to promote environmentalism.",
            "start_at": "2019-05-03T13:00:00Z"
        }
    ]
}
```

This JSON endpoint returns a paginated list of publicly listed events, groups, and external events in your organisation.
It can be used alongside the `/api/local/points` endpoint; the criteria for inclusion are the same.

#### HTTP Request

`GET https://demo.controlshiftlabs.com/api/local.json`

- &check; CORS supported
- &times; JSONP not supported

#### Query Parameters

All parameters are optional.

Parameter                | Default                | Description
---------                | -------                | -----------
filter[boundary_box]     | null                   | If there is a location filter, bounding box to use for geocoding the location query.
filter[calendars]        | null (no filter)       | List of calendar slugs. If specified, only events in those calendars will be returned.
filter[event_types]      | null (no filter)       | List of event type IDs. If specified, only events of those types will be returned.
filter[geographies]      | null (no filter)       | List of geographic shape IDs. If specified, only events/groups whose locations fall within those geographies will be returned.
filter[geography_slugs]  | null (no filter)       | Alternative way of filtering by geographic shapes. Works like `filter[geographies]`, but accepts a list of geography slugs instead of a list of geography IDs.
filter[labels]           | null (no filter)       | List of label IDs. If specified, only events/groups with at least one of those labels will be returned.
filter[location]         | null                   | Searched location query. Should be a string such as "New York" or "90210".
filter[regions]          | null (no filter)       | List of region IDs. If specified, only events/groups assigned to those regions will be returned.
filter[start_date_range] | JSON object with a `start_date` and `end_date`, each in ISO-8601 string format, representing a range of time. Events will only be returned if their start times are within the range, but the returned groups will not be affected.
filter[types]            | null (no filter)       | List of types of results to return. Should contain at least one of `event` or `group`.
page                     | 1                      | Which page of results to fetch
per_page                 | 10                     | How many results, maximum, should be included on each page
search_strategy          | distance_from_location | When there is a location filter, determines which results match: `distance_from_location` finds all points within a certain radius, vs. `geography_for_location` finds all geographic shapes that contain the searched location
user_country             | null                   | When there is a location filter, in which country should the location query be interpreted?

<div></div>

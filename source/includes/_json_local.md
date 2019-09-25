## Get organizing locations: details

```js
$(document).ready(function(){
  $.ajax({
    url: 'https://demo.controlshiftlabs.com/api/local.json?page=1&per_page=3',
    dataType: 'jsonp',
  })
  .done(function(data) {
    console.log(data);
  });
});
```

> The above code would retrieve one page of location data and log it to the js console. The JSON would be structured like this:

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

### HTTP Request

`GET https://demo.controlshiftlabs.com/api/local.json`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
page      | 1       | (optional) Which page of results to fetch
per_page  | 10      | (optional) How many results, maximum, should be included on each page

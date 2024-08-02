### Get organizing locations: points

```js
$(document).ready(function(){
  $.ajax({
    url: 'https://demo.controlshiftlabs.com/api/local/points.json',
    dataType: 'jsonp',
  })
  .done(function(data) {
    console.log(data);
  });
});
```

> The above code would retrieve point locations and log them to the js console. The JSON would be structured like this:

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

<div></div>

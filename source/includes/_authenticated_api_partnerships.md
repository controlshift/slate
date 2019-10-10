## Partnerships

Partnerships are other organisations you collaborate with 

### List

> GET response body

```json
{
  "partnerships": [
    {
      "slug": "fight-fascism",
      "title": "Fight Fascism",
      "description": "Fighting fascism one day at a time. With petitions.",
      "external_id": "no-fascism-123",
      "created_at": "2015-12-02T01:43:17Z",
      "updated_at": "2015-12-02T01:43:17Z",
      "url": "https://demo.controlshiftlabs.com/partnerships/fight-fascism",
      "image": {
        "urls": {
          "open_graph": "http://cdn.example.com/partnerships/images/25/open_graph/a-little-teapot.png?1516647704",
          "horizontal": "http://cdn.example.com/partnerships/images/25/horizontal/a-little-teapot.png?1516647704",
          "hero": "http://cdn.example.com/partnerships/images/25/hero/a-little-teapot.png?1516647704",
          "original": "http://cdn.example.com/partnerships/images/25/original/a-little-teapot.png?1516647704",
          "form": "http://cdn.example.com/partnerships/images/25/form/a-little-teapot.png?1516647704"
        }
      }
    },
    {
      "slug": "save-whales",
      "title": "Save the Whales",
      "description": "We're devoted to all policies that are good for whales.",
      "external_id": null,
      "created_at": "2018-01-02T12:32:45Z",
      "updated_at": "2018-12-22T01:43:17Z",
      "url": "https://demo.controlshiftlabs.com/partnerships/save-whales",
      "image": null
    }
  ],
  "meta": {
    "current_page": 1,
    "total_pages": 1,
    "previous_page": null,
    "next_page": null
  }
}
```

Get a paginated list of all partnerships.

`GET /api/v1/partnerships?page=1`



### Show

> GET response Body

```json
{
  "partnership": {
    "slug": "fight-fascism",
    "title": "Fight Fascism",
    "description": "Fighting fascism one day at a time. With petitions.",
    "external_id": "no-fascism-123",
    "created_at": "2015-12-02T01:43:17Z",
    "updated_at": "2015-12-02T01:43:17Z",
    "url": "https://demo.controlshiftlabs.com/partnerships/fight-fascism",
    "image": {
      "urls": {
        "open_graph": "http://cdn.example.com/partnerships/images/25/open_graph/a-little-teapot.png?1516647704",
        "horizontal": "http://cdn.example.com/partnerships/images/25/horizontal/a-little-teapot.png?1516647704",
        "hero": "http://cdn.example.com/partnerships/images/25/hero/a-little-teapot.png?1516647704",
        "original": "http://cdn.example.com/partnerships/images/25/original/a-little-teapot.png?1516647704",
        "form": "http://cdn.example.com/partnerships/images/25/form/a-little-teapot.png?1516647704"
      }
    }
  }
}
```

Find information about a partnership by URL slug.

`GET /api/v1/partnerships/fight-fascism`




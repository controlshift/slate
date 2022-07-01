### Get list of efforts

> JSON response example

```json
{
  "meta": {
    "count": 35,
    "page": 1,
    "per_page": 10,
    "total_pages": 4
  },
  "data": [
    {
      "slug": "ranked-choice-voting-everywhere",
      "url": "https://demo.controlshiftlabs.com/efforts/ranked-choice-voting-everywhere.json",
      "title": {
        "en-US": "Ranked Choice Voting Everywhere!",
        "es": "Votación por Orden de Preferencia en Todo el Mundo!"
      },
      "description": "Call on your municipality to implement ranked-choice voting.",
      "image_url": "http://example.cloudfront.net/efforts/123/image/voting_maching.png",
      "petitions_count": 23,
      "signature_count": 9000,
      "goal": 10000,
      "search_method": "closest",
    },
    ...
  ]
}
```

This JSON endpoint returns a paginated list of all Efforts and Landing Pages on the platform. The `url` returned for each effort can be used to retrieve information on that effort's petitions, as specified below.

#### HTTP Request

`GET https://demo.controlshiftlabs.com/efforts.json`

<div></div>

### Search petitions by keyword

> JSON response example for the search using the `wizard` keyword:

```json
{
  "meta":
    {
      "total_pages": 1,
      "total_entries": 2,
      "per_page": 10,
      "search_term": "wizard"
    },
  "data":
    [
      {
        "slug": "let-dorothy-go-home",
        "title": "Let Dorothy Go Home!",
        "url": "http://demo.controlshiftlabs.com/petitions/let-dorothy-go-home",
        "admin_status": "good",
        "who": " Oz, the Great and Terrible, Wizard",
        "target": {
          "name": " Oz, the Great and Terrible",
          "slug": "oz-the-great-and-terrible",
          "context": "Wizard",
          "location": {
            "query": "Land of Oz, Kensington Avenue, Buffalo, NY, United States",
            "latitude": "42.9399637",
            "longitude": "-78.8087571",
            "street": "Kensington Ave",
            "postal_code": "",
            "country": "US",
            "region": "NY",
            "street_number": "",
            "venue": "",
            "created_at": "2016-06-10T19:13:19Z"
          }
        },
        "successful": false,
        "ended_story": null,
        "ended": false,
        "ended_type": null,
        "ended_reason": null,
        "what": "The Yellow Brick Road has been neglected; commit to repairing the damaged sections of the road in the next year!",
        "rich_what": "<div>The Yellow Brick Road has been neglected; commit to repairing the damaged sections of the road in the next year!</div>",
        "goal": 500,
        "signature_count": 223,
        "creator_name": "Kristyn Arrighi",
        "locale": "en",
        "created_at": "2014-10-02T01:43:17Z",
        "updated_at": "2018-05-07T15:38:39Z",
        "why": "The Yellow Brick Road is the main road connecting Munchkin Country to the Emerald City and in its current state it's impassable.",
        "rich_why": "<div>The Yellow Brick Road is the main road connecting Munchkin Country to the Emerald City and in its current state it's impassable.</div>",
        "location": {
          "query": "Land of Oz, Kensington Avenue, Buffalo, NY, United States",
          "latitude": "42.9399637",
          "longitude": "-78.8087571",
          "street": "Kensington Ave",
          "postal_code": "",
          "country": "US",
          "region": "NY",
          "street_number": "",
          "venue": "",
          "created_at": "2016-06-10T19:13:19Z"
        }
      },
      {
        "slug": "stop-saruman-saruman-the-white",
        "title": "Stop Saruman",
        "url": "http://demo.controlshiftlabs.com/petitions/stop-saruman-saruman-the-white",
        "admin_status": "good",
        "who": "Saruman The White (Wizard)",
        "target":
        {
          "name": "Saruman The White",
          "slug": "saruman-the-white",
          "context": "Wizard",
          "location":
          {
            "latitude": "-44.7731846",
            "longitude": "168.325246",
            "postal_code": "9372",
            "country": "NZ",
            "region": "Glenorchy",
            "locality": "Denver",
            "query": "Isengard Lookout",
            "street": "Glenorchy-Routeburn Road",
            "street_number": null,
            "venue": "Isengard Lookout",
            "created_at": "2021-07-19T19:55:11Z"
          }
        },
        "successful": true,
        "ended_story": "Yay, we defeated Saruman! ",
        "ended": true,
        "ended_type": "won",
        "ended_reason": "Yay, we defeated Saruman! ",
        "what": "Stop cutting down the woods",
        "rich_what": "<div>Stop cutting down the woods</div>",
        "goal": 100,
        "signature_count": 8780,
        "creator_name": "Treebeard",
        "locale": "en",
        "created_at": "2016-10-25T18:40:42Z",
        "updated_at": "2022-03-31T18:30:36Z",
        "why": "Ents want a place to live in peace",
        "rich_why": "<div>Ents want a place to live in peace</div>",
        "location":
        {
          "latitude": "-26.3168162",
          "longitude": "139.4674535",
          "postal_code": "3091",
          "country": "AU",
          "region": "Victoria",
          "locality": "Denver",
          "query": "Fangorn forest",
          "street": "Yarrambat",
          "street_number": "94C7+4R",
          "venue": "Fangorn forest",
          "created_at": "2021-07-19T19:55:11Z"
        }
      }
    ]
}
```

This JSON endpoint allows you to build an interface where users can search through all petitions by one or more keywords.

#### HTTP Request

`GET https://demo.controlshiftlabs.com/petitions/search.json`

- &times; CORS not supported
- &check; JSONP supported

#### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
query | null | string to search for
page | 1 | integer - optional - The page number of results for the specified search. Minimum of 1.

<div></div>

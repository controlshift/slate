## Petitions

Petition are pieces of content that can be signed by members. 

### Show

> GET response Body

```json
{
  "petition": {
    "slug": "no-taxes-on-tea",
    "title": "No Taxes on Tea",
    "who": "King George",
    "what": "Stop taxing our tea",
    "why": "It is unjust.",
    "locale": "en",
    "admin_status": "good",
    "created_at": "2018-01-22T19:01:44Z",
    "updated_at": "2018-03-05T15:02:02Z",
    "signature_count_add_amount": 100
    "source": "effort_near",
    "admin_notes": "We should have a call with this campaigner but they have no telephone.",
    "url": "https://demo.controlshiftlabs.com/petitions/no-taxes-on-tea",
    "public_who": "King George",
    "public_signature_count": 234,
    "goal": 500,
    "ended": true,
    "ended_type": "won",
    "ended_reason": "We overthrew the government and they don't tax our tea anymore.",
    "successful": true,
    "ended_story": "This was an overwhelming success!",
    "image": {
      "urls": {
        "open_graph": "http://cdn.example.com/petitions/images/25/open_graph/a-little-teapot.png?1516647704",
        "horizontal": "http://cdn.example.com/petitions/images/25/horizontal/a-little-teapot.png?1516647704",
        "hero": "http://cdn.example.com/petitions/images/25/hero/a-little-teapot.png?1516647704",
        "original": "http://cdn.example.com/petitions/images/25/original/a-little-teapot.png?1516647704",
        "form": "http://cdn.example.com/petitions/images/25/form/a-little-teapot.png?1516647704"
      },
      "description": "Picture of a small teapot with flowers on it and money tucked under the lid"
    },
    "creator": {
      "full_name": "Patrick Henry",
      "first_name": "Patrick",
      "last_name": "Henry"
      "email": "patrick.henry@example.com",
      "phone_number": "555-555-5555"
    },
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
    "decision_makers": [
      {
        "slug": "king-george",
        "name": "George",
        "context": "King of England",
        "phone_number": "",
        "email": "",
        "location": {
          "query": "buckingham palace",
          "latitude": "51.501364",
          "longitude": "-0.1440787",
          "venue": "Buckingham Palace",
          "street_number": "",
          "street": "",
          "region": "London",
          "postal_code": "SW1A 1AA",
          "country": "UK",
          "created_at": "2017-11-16T22:38:29Z"
        }
      }
    ],
    "effort": {
      "slug": "no-taxation-without-representation"
    },
    "partnership": {
      "slug": "the-american-revolution"
    }
  }
}
```

Find information about a petition by URL slug.

`GET /api/v1/petitions/no-taxes-on-tea`



### Update

Updates petition content using an HTTP PUT request.

We support several request formats for the data to be updated, but the most straightforward is to send the data as a json formatted PUT body. 

In the request body only include the fields that you would like to update to a new value. The slug in the URL defines which petition should be updated. 


`PUT /api/v1/petitions/no-taxes-on-tea`

> PUT request body

```json
{
  "petition": {
    "signature_count_add_amount": 100
  }
}
```



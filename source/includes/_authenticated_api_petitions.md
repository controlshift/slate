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
    "signature_count_add_amount": 100
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



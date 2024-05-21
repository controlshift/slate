### Get petition content

```js
fetch('https://demo.controlshiftlabs.com/api/petitions/repair-the-yellow-brick-road-1/what.json')
  .then((response) => {
    response.json().then((jsonData) => {
      console.log(jsonData)
    })
  })
```

> JSON response

```json
{
  "plain_text": "The Yellow Brick Road has been neglected. Commit to repairing the damaged sections of the road in the next year!",
  "rich_text": "<div>The <strong>Yellow Brick Road</strong> has been neglected. <em>Commit to repairing the damaged sections of the road in the next year!</em></div>",
}
```

Retrieve the formatted "What" or "Why" text of a petition.

#### HTTP Request

`GET https://demo.controlshiftlabs.com/api/petitions/<slug>/what.json`

`GET https://demo.controlshiftlabs.com/api/petitions/<slug>/why.json`

- &check; CORS supported
- &times; JSONP not supported

If the petition does not exist or is not visible to the public, the response will be 404 Not Found.

<div></div>

### Get a single petition

```js
$(document).ready(function(){
  var petitionSlug = 'repair-the-yellow-brick-road-1';
  $.ajax({
    url: 'https://demo.controlshiftlabs.com/petitions/'+petitionSlug+'.json',
    dataType: 'jsonp',
  })
  .done(function(data) {
    console.log(data);
  });
});
```

> The above code would display your returned petition data in the console.  The JSON response data would be structured like this:

```json
{
  "id": 92283,
  "title": "Repair the Yellow Brick Road",
  "slug": "repair-the-yellow-brick-road-1",
  "who": "Oz, the Great and Terrible, Wizard",
  "what": "The Yellow Brick Road has been neglected; commit to repairing the damaged sections of the road in the next year!",
  "rich_what": "<div>The Yellow Brick Road has been neglected; <strong>commit to repairing the damaged sections of the road in the next year!</strong></div>",
  "why": "The Yellow Brick Road is the main road connecting Munchkin Country to the Emerald City and in its current state it's impassable.",
  "rich_why": "<div>The <em>Yellow Brick Road</em> is the main road connecting Munchkin Country to the Emerald City and in its current state it's impassable.</div>",
  "created_at": "2014-10-02T01:43:17Z",
  "updated_at": "2018-05-07T15:38:39Z",
  "delivery_details": "We're off to see the wizard!",
  "administered_at": "2018-03-21T19:05:54Z",
  "source": "homepage",
  "alias": null,
  "categories": [
    {
      "name": "Oz",
      "slug": "oz"
    }
  ],
  "ended": true,
  "successful": true,
  "ended_story": "After we met with the wizard, he agreed to a timeline for repairing the road!",
  "goal": 500,
  "effort": null,
  "partnership": null,
  "resized_image_url": "https://d8s293fyljwh4.cloudfront.net/petitions/images/92283/hero/2016-06-20-1466458252-1098096-ywllowbrickroad.jpg?1473884741",
  "image_url": "https://d8s293fyljwh4.cloudfront.net/petitions/images/92283/original/2016-06-20-1466458252-1098096-ywllowbrickroad.jpg?1473884741",
  "creator_name": "Kristyn Arrighi",
  "signature_count": 223,
  "location": {
    "latitude":"36.1946827",
    "longitude":"-78.8087571",
    "query":"Land of Oz",
    "venue":"Land of OZ",
    "street_number":"1007",
    "street":"Beech Mountain Pkwy",
    "street_address":"1007 Beech Mountain Pkwy",
    "locality":"Beech Mountain",
    "region":"NC",
    "postal_code":"28604",
    "country":"US",
    "country_code":"US",
    "country_name":"United States",
    "static_map_url":"https://d8s293fyljwh4.cloudfront.net/locations/static_maps/27575/27575-static-map.png?1532035340"
  }
}
```

This retrieves a single petition object.

#### HTTP Request

`GET https://demo.controlshiftlabs.com/petitions/<slug>.json`

- &times; CORS not supported
- &check; JSONP supported

#### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
slug | null | string - required - The petition's unique identification slug. If none is provided, you will get a 404 error. Note: submitted as a part of the endpoint path, not as a separate URL parameter

#### Working Example

View and edit a working example on codepen.io:

<div class="js-codepen-data hidden" data-title="ControlShift Labs: Single Petition Example">
  <div class="codepen-html">
    <div id="js-content-wrapper" class="hidden">
      <span><span id="signature_count"></span> signatures</span>
      <p>Created by <span id="creator_name"></span></p>
      What
      <p id="what"></p>
      Who
      <p id="who"></p>
      Why
      <p id="why"></p>
    </div>
  </div>
  <pre class="codepen-js">
    $(document).ready(function(){
      var petitionSlug = 'repair-the-yellow-brick-road-1';
      $.ajax({
        url: 'https://demo.controlshiftlabs.com/petitions/'+petitionSlug+'.json',
        dataType: 'jsonp',
      })
      .done(function(data) {
        $('#title').html(data.title);
        $('#signature_count').html(data.signature_count);
        $('#creator_name').html(data.creator_name);
        $('#what').html(data.what);
        $('#who').html(data.who);
        $('#why').html(data.why);
        $('#js-content-wrapper').removeClass('hidden');
      });
    });
  </pre>
</div>

<form action="https://codepen.io/pen/define" method="POST" target="_blank" class="hidden">
  <input type="hidden" name="data" class="js-data" value="">
  <input type="submit" value="Launch Example on CodePen">
</form>
<div>
</div>

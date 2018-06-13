## Get featured petitions

```js
$(document).ready(function(){
  $.ajax({
    url: 'https://demo.controlshiftlabs.com/petitions/featured.json',
    dataType: 'jsonp',
  })
  .done(function(data) {
    console.log(data);
  });
});
```

> The above code would display your returned featured petitions data in the console.  The JSON would be structured like this:

```json
{
  "meta": {
    "total_pages": 3,
    "total_entries": 25,
    "per_page": 10
  },
  "data": [
    {
      "slug": "repair-the-yellow-brick-road-1",
      "url": "http://demo.controlshiftlabs.com/petitions/repair-the-yellow-brick-road-1",
      "title": "Repair the Yellow Brick Road",
      "who": " Oz, the Great and Terrible, Wizard",
      "what": "The Yellow Brick Road has been neglected; commit to repairing the damaged sections of the road in the next year!",
      "why": "The Yellow Brick Road is the main road connecting Munchkin Country to the Emerald City and in its current state it's impassable.",
      "admin_status": "good",
      "signature_count": 223,
      "goal": 500,
      "creator_name": "Kristyn Arrighi",
      "locale": "en",
      "created_at": "2014-10-02T01:43:17Z",
      "updated_at": "2018-05-07T15:38:39Z",
      "image_url": "https://d8s293fyljwh4.cloudfront.net/petitions/images/92283/hero/2016-06-20-1466458252-1098096-ywllowbrickroad.jpg?1473884741",
      "additional_image_sizes_url": [
        {
          "style": "original",
          "url": "https://d8s293fyljwh4.cloudfront.net/petitions/images/92283/original/2016-06-20-1466458252-1098096-ywllowbrickroad.jpg?1473884741"
        },
        {
          "style": "form",
          "url": "https://d8s293fyljwh4.cloudfront.net/petitions/images/92283/form/2016-06-20-1466458252-1098096-ywllowbrickroad.jpg?1473884741"
        },
        {
          "style": "horizontal",
          "url": "https://d8s293fyljwh4.cloudfront.net/petitions/images/92283/horizontal/2016-06-20-1466458252-1098096-ywllowbrickroad.jpg?1473884741"
        },
        {
          "style": "open_graph",
          "url": "https://d8s293fyljwh4.cloudfront.net/petitions/images/92283/open_graph/2016-06-20-1466458252-1098096-ywllowbrickroad.jpg?1473884741"
        }
      ],
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
      "slug": "we-need-more-bike-lanes",
      "title": "We Need More Bike Lanes",
      "who": "My Mayor",
      "what": "Build the bike lanes",
      "why": "Cyclists aren't safe.",
      "admin_status": "good",
      "signature_count": 5,
      "goal": 100,
      "creator_name": "Greg Dutcher",
      "locale": "en",
      "created_at": "2016-08-12T18:08:32Z",
      "updated_at": "2016-09-14T12:43:45Z",
      "image_url": "https://d8s293fyljwh4.cloudfront.net/petitions/images/167492/original/IMG_1854.JPG?1472046912",
      "additional_image_sizes_url": [
      ]
        {
          "style": "original",
          "url": "https://d8s293fyljwh4.cloudfront.net/petitions/images/167492/original/IMG_1854.JPG?1473884741"
        },
        {
          "style": "form",
          "url": "https://d8s293fyljwh4.cloudfront.net/petitions/images/167492/form/IMG_1854.JPG?1473884741"
        },
        {
          "style": "horizontal",
          "url": "https://d8s293fyljwh4.cloudfront.net/petitions/images/167492/horizontal/IMG_1854.JPG?1473884741"
        },
        {
          "style": "open_graph",
          "url": "https://d8s293fyljwh4.cloudfront.net/petitions/images/167492/open_graph/IMG_1854.JPG?1473884741"
        }
      ],
      "location": {
        "query": "New York",
        "latitude": "40.6974034",
        "longitude": "-74.1197633",
        "street": "",
        "postal_code": "",
        "country": "US",
        "region": "NY",
        "street_number": "",
        "venue": "New York",
        "created_at": "2017-04-11T13:32:08Z"
      }
    }
  ],
  "links": {
    "self": "https://demo.controlshiftlabs.com/petitions/featured.json?page=1",
    "first": "https://demo.controlshiftlabs.com/petitions/featured.json",
    "prev": null,
    "next": "https://demo.controlshiftlabs.com/petitions/featured.json?page=2",
    "last": "https://demo.controlshiftlabs.com/petitions/featured.json?page=3"
  }
}
```

This retrieves a JSON object compliant with the [JSON API](http://jsonapi.org/) specification, containing an array of featured petitions objects on its data property.

**Important Note:** The previous featured petitions API endpoint at `https://demo.controlshiftlabs.com/featured.json` (note the missing `/petitions` path) is being deprecated and **will be removed** in the near future. Please use this new endpoint for retrieving featured petitions from now on.

### HTTP Request

`GET https://demo.controlshiftlabs.com/petitions/featured.json`

### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
locale | null | string - optional - Locale filter for petitions

### Working Example

View and edit a working example on codepen.io:

<div class="js-codepen-data hidden" data-title="ControlShift Labs: Featured Petitions Example">
  <div class="codepen-html">
    <h1>Featured Petitions</h1>
    <ul id="featured-petitions">
    </ul>
  </div>
  <pre class="codepen-js">
    $(document).ready(function(){
      $.ajax({
        url: 'https://demo.controlshiftlabs.com/petitions/featured.json',
        dataType: 'jsonp',
      })
      .done(function(resp) {
        var $placeholder = $('#featured-petitions');
        $.each(resp.data, function(index, petition){
          output = '<li>'
          output += '<h2><a href="'+petition.url+'">'+petition.title+'</a></h2>';
          output += '<h3>'+petition.signature_count+' signatures out of '+petition.goal+' needed </h3>';
          output += '<p>'+petition.why+'</p>';
          output += '<p><a href="'+petition.url+'">Learn More</a></p>';
          output += '</li>';
          $placeholder.append(output);
        });
      });
    });
  </pre>
</div>

<form action="https://codepen.io/pen/define" method="POST" target="_blank" class="hidden">
  <input type="hidden" name="data" class="js-data" value="">
  <input type="submit" value="Launch Example on CodePen">
</form>

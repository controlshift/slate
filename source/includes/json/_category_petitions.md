### List petitions in a category

```js
$(document).ready(function(){
  $.ajax({
    url: 'https://demo.controlshiftlabs.com/categories/oz.json',
    dataType: 'jsonp',
  })
  .done(function(data) {
    console.log(data);
  });
});
```

> The above code would return petitions data from the category with the slug `oz`.  The JSON would be structured like this:

```json
{
  "current_page": 1,
  "total_pages": 25,
  "previous_page": null,
  "next_page": 2,
  "name": "Oz",
  "results": [
    {
      "slug": "let-dorothy-go-home",
      "url": "http://demo.controlshiftlabs.com/petitions/let-dorothy-go-home",
      "title": "Let Dorothy Go Home!",
      "who": " Oz, the Great and Terrible, Wizard",
      "what": "Let poor Dorothy Gale go home to Kansas",
      "rich_what": "<div>Let poor Dorothy Gale go home to Kansas</div>",
      "why": "There's no place like home.",
      "rich_why": "<div>There's no place like home.</div>",
      "admin_status": "good",
      "signature_count": 123,
      "goal": 200,
      "creator_name": "Tin Man",
      "locale": "en",
      "successful": false,
      "ended": false,
      "created_at": "2015-12-02T01:43:17Z",
      "updated_at": "2017-05-07T15:38:39Z",
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
          "created_at": "2016-06-10T19:13:19Z"
        }
      }
    },
    {
      "slug": "repair-the-yellow-brick-road-1",
      "url": "http://demo.controlshiftlabs.com/petitions/repair-the-yellow-brick-road-1",
      "title": "Repair the Yellow Brick Road",
      "who": " Oz, the Great and Terrible, Wizard",
      "what": "The Yellow Brick Road has been neglected; commit to repairing the damaged sections of the road in the next year!",
      "rich_what": "<div>The Yellow Brick Road has been neglected; commit to repairing the damaged sections of the road in the next year!</div>",
      "why": "The Yellow Brick Road is the main road connecting Munchkin Country to the Emerald City and in its current state it's impassable.",
      "rich_why": "<div>The Yellow Brick Road is the main road connecting Munchkin Country to the Emerald City and in its current state it's impassable.</div>",
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
        "created_at": "2016-06-10T19:13:19Z"
      }
    }
  ]
}

```

This retrieves a paginated list of petitions in a category.

#### HTTP Request

`GET https://demo.controlshiftlabs.com/categories/<category slug>.json`

- &check; CORS supported
- &check; JSONP supported

#### Query Parameters

Parameter | Default | Description
--------- | ------- | -----------
category slug | null | string - required - submitted as a part of the endpoint path, not as a separate URL parameter
page | 1 | integer - optional - The page number of results for the specified category. Minimum of 1.

#### Working Example

View and edit a working example on codepen.io:

<div class="js-codepen-data hidden"  data-title="ControlShift Labs: List of Petitions in a Category Example">
  <div class="codepen-html">
    <strong>Petitions in category "<span id="name"></span>"</strong>
    <div id="petitions">
    </div>
  </div>
  <pre class="codepen-js">
    $(document).ready(function(){
      $.ajax({
        url: 'https://demo.controlshiftlabs.com/categories/mice.json',
        dataType: 'jsonp',
      })
      .done(function(data) {
        // Populate global category data
        $('#name').text(data.name);

        // Populate petitions data
        var $placeholder = $('#petitions');
        $.each(data.results, function(index, petition){
          output = '<strong><a href="'+petition.url+'">'+petition.title+'</a></strong>';
          output += '<ul>';
          output += '<li><strong>Image:</strong> '+petition.image_url+'</li>';
          output += '<li><strong>Who:</strong> '+petition.who+'</li>';
          output += '<li><strong>What:</strong> '+petition.what+'</li>';
          output += '<li><strong>Why:</strong> '+petition.why+'</li>';
          output += '<li><strong>Signatures:</strong> '+petition.signature_count+'</li>';
          output += '<li><strong>URL:</strong> '+petition.url+'</li>';
          output += '</ul><hr/>';
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
<div></div>

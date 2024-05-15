### List petitions in an effort

```js
$(document).ready(function(){
  var effortSlug = 'drivers-licenses-for-all';
  $.ajax({
    url: 'https://demo.controlshiftlabs.com/efforts/'+effortSlug+'.json',
    dataType: 'jsonp',
  })
  .done(function(data) {
    console.log(data);
  });
});
```

> The above code would return petitions data from the effort with the slug `drivers-licenses-for-all`.  The JSON would be structured like this:

```json
{
  "title": "Drivers' Licenses for All",
  "slug": "drivers-licenses-for-all",
  "description": "We're asking towns and villages across New York to pass resolutions in support of the Drivers' License bill. Anyone who can pass a driving test should be able to get a license.",
  "goal": 1000,
  "signature_count": 511,
  "petitions": [
    {
      "slug": "ossining-support-drivers-licenses-for-all",
      "url": "http://demo.controlshiftlabs.com/petitions/ossining-support-drivers-licenses-for-all",
      "title": "Ossining: Support Drivers' Licenses For All",
      "who": "Ossining Village Board of Trustees",
      "what": "Pass a resolution in support of the Drivers' Licenses bill",
      "rich_what": "<div>Pass a resolution in support of the Drivers' Licenses bill</div>",
      "why": "Undocumented immigrants need access to drivers' licenses so they can drive to work, school, and everywhere else. This will improve road safety for everyone.",
      "rich_why": "<div>Undocumented immigrants need access to drivers' licenses so they can drive to work, school, and everywhere else. This will improve road safety for everyone.</div>",
      "admin_status": "good",
      "signature_count": 223,
      "goal": 500,
      "creator_name": "Jacinda Moore",
      "locale": "en",
      "successful": false,
      "ended": false,
      "created_at": "2016-10-02T01:43:17Z",
      "updated_at": "2016-10-07T15:38:39Z",
      "target": {
        "name": "Ossining Village Board of Trustees",
        "slug": "ossining-village-board-of-trustees",
        "context": "",
        "location": {
          "query": "Ossining",
          "latitude": "41.1617921",
          "longitude": "-73.8874165",
          "street": "",
          "postal_code": "10562",
          "country": "US",
          "region": "NY",
          "street_number": "",
          "venue": "",
          "created_at": "2016-06-10T19:13:19Z"
        }
      },
      "location": {
        "query": "Ossining",
        "latitude": "41.1617921",
        "longitude": "-73.8874165",
        "street": "",
        "postal_code": "10562",
        "country": "US",
        "region": "NY",
        "street_number": "",
        "venue": "",
        "created_at": "2016-06-10T19:13:19Z"
      }
    },
    {
      "slug": "yonkers-support-drivers-licenses-for-all",
      "url": "http://demo.controlshiftlabs.com/petitions/yonkers-support-drivers-licenses-for-all",
      "title": "Yonkers: Support Drivers' Licenses For All",
      "who": "Yonkers City Council",
      "what": "Pass a resolution in support of the Drivers' Licenses bill",
      "rich_what": "<div>Pass a resolution in support of the Drivers' Licenses bill</div>",
      "why": "Undocumented immigrants need access to drivers' licenses so they can drive to work, school, and everywhere else. This will improve road safety for everyone.",
      "rich_why": "<div>Undocumented immigrants need access to drivers' licenses so they can drive to work, school, and everywhere else. This will improve road safety for everyone.</div>",
      "admin_status": "good",
      "signature_count": 300,
      "goal": 500,
      "creator_name": "Jacinda Moore",
      "locale": "en",
      "successful": true,
      "ended_story": "We did it, we won!",
      "ended": true,
      "ended_type": "won",
      "ended_reason": "Campaigner said they won the campaign",
      "created_at": "2016-10-02T01:43:17Z",
      "updated_at": "2016-10-07T15:38:39Z",
      "target": {
        "name": "Yonkers City Council",
        "slug": "yonkers-city-council",
        "context": "",
        "location": {
          "query": "Yonkers",
          "latitude": "40.9443748",
          "longitude": "-73.8993138",
          "street": "",
          "postal_code": "10701",
          "country": "US",
          "region": "NY",
          "street_number": "",
          "venue": "",
          "created_at": "2016-06-10T19:13:19Z"
        }
      },
      "location": {
        "query": "Yonkers",
        "latitude": "40.9443748",
        "longitude": "-73.8993138",
        "street": "",
        "postal_code": "10701",
        "country": "US",
        "region": "NY",
        "street_number": "",
        "venue": "",
        "created_at": "2016-06-10T19:13:19Z"
      }
    }
  ]
}
```

This retrieves a list of petitions in an effort.

Ended petitions will have the `ended` attribute set to `true` and will also include the following additional attributes:

* `ended_type`: with values `"won"`, `"lost"` and `"other"` as set from petition Admin page.
* `ended_reason`: with private reason for ending set from petition Admin page.

Additionally, successful petitions will have the `successful` attribute set to `true` and will include the following additional attribute:

* `ended_story`: with ended story from petition Settings / Admin pages.

#### HTTP Request

`GET https://demo.controlshiftlabs.com/efforts/<effort slug>.json`

Parameter | Default | Description
--------- | ------- | -----------
effort slug | null | string - required - submitted as a part of the endpoint path, not as a separate URL parameter

#### Working Example

View and edit a working example on codepen.io:

<div class="js-codepen-data hidden" data-title="ControlShift Labs: List of Petitions in an Effort Example">
  <div class="codepen-html">
    <strong>Petitions in effort "<span id="title"></span>"</strong>
    <p><span id="description"></span></p>
    <div id="petitions">
    </div>
  </div>
  <pre class="codepen-js">
    $(document).ready(function(){
      var effortSlug = 'forecast-the-facts';
      $.ajax({
        url: 'https://demo.controlshiftlabs.com/efforts/'+effortSlug+'.json',
        dataType: 'jsonp',
      })
      .done(function(data) {
        // Populate global effort data
        $('#title').text(data.title);
        $('#description').text(data.description);

        // Populate petitions data
        var $placeholder = $('#petitions');
        $.each(data.petitions, function(index, petition){
          output = '<strong><a href="'+petition.url+'">'+petition.title+'</a></strong>';
          output += '<ul>';
          output += '<li><strong>Image:</strong> '+petition.image_url+'</li>';
          output += '<li><strong>Who:</strong> '+petition.who+'</li>';
          output += '<li><strong>What:</strong> '+petition.what+'</li>';
          output += '<li><strong>Why:</strong> '+petition.why+'</li>';
          output += '<li><strong>Signatures:</strong> '+petition.signature_count+'</li>';
          output += '<li><strong>Goal:</strong> '+petition.goal+'</li>';
          output += '<li><strong>URL:</strong> '+petition.url+'</li>';
          output += '<li><strong>Location:</strong> <ul>'
          output += '<li><strong>Query:</strong> '+petition.location.query+'</li>';
          output += '<li><strong>Latitude:</strong> '+petition.location.latitude+'</li>';
          output += '<li><strong>Longitude:</strong> '+petition.location.longitude+'</li>';
          output += '</ul></li>';
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

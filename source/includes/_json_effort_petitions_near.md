## Search petitions in a effort

```js
$(document).ready(function(){
  var effortSlug = 'drivers-licenses-for-all';
  $.ajax({
    url: 'https://demo.controlshiftlabs.com/efforts/'+effortSlug+'/'+'lookup/query.json',
    dataType: 'jsonp',
    data: {
      'location_query': 'briarcliff manor, ny'
    }
  })
  .done(function( data ) {
    console.log(data);
  });
});
```
<!--slash in '/'+'lookup/query.json' above disappears if combined with lookup/query-->

> The above code would return petitions, decision makers, or objectives data from the effort with the slug `drivers-licenses-for-all`. If returning decision makers, the JSON would be structured like this:

```json
{
  "closest_target": {
    "slug": "ossining-village-board-of-trustees",
    "name": "Ossining Village Board of Trustees",
    "context": "",
    "location": "Ossining, NY",
    "status": "target_petition_created",
    "petition": {
      "slug": "ossining-support-drivers-licenses-for-all",
      "title": "Ossining: Support Drivers' Licenses For All",
      "url": "http://demo.controlshiftlabs.com/petitions/ossining-support-drivers-licenses-for-all",
      "who": "Ossining Village Board of Trustees",
      "signature_count": 223,
      "goal": 500,
      "created_at": "2016-10-02T01:43:17Z",
      "updated_at": "2016-10-07T15:38:39Z",
    }
  },
  "other_targets": [
    {
      "slug": "yorktown-town-council",
      "name": "Yorktown Town Council",
      "context": "",
      "location": "Yorktown, NY",
      "status": "target_awaiting_petition",
      "create_petition_url": "https://demo.controlshiftlabs.com/efforts/drivers-licenses-for-all/petitions/creating?target_id=1234"
    }
  ]
}
```

This JSON endpoint allows you to build an interface where users can search the petitions in an effort.
Depending on how the effort is configured, you can search either by location, or by keyword.

### HTTP Request

`GET https://demo.controlshiftlabs.com/efforts/<effort slug>/lookup/query.json`

### Query Parameters

Parameter | Required? | Description
--------- | ------- | -----------
effort slug | yes | string - submitted as a part of the endpoint path, not as a separate URL parameter
location_query | yes, if effort is configured for location search | string to search for (will be geocoded on the server)
query | yes, if effort is configured for keyword search | string to search for

### Working Example

View and edit a working example on codepen.io:

<div class="js-codepen-data hidden"
  data-js_external="https://maps.googleapis.com/maps/api/js?key=AIzaSyAY2t1MpsrZH3aH6wJqAiq4vAQUscMmjY0&libraries=places;https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"
  data-title="ControlShift Labs: Search Petitions in an Effort Example">
  <div class="codepen-html">
    <h1>Find the closest petitions to you</h1>
    <form>
      <input type="text" class="form-control" id="effort-lookup-input" placeholder="Enter your city or postal code">
      <input type="submit" value="Search"></input>
    </form>
    <div id="petitions">
    </div>
  </div>
  <pre class="codepen-js">
    function buildPetition(target, description){
      output = '<h2><em>'+description+' Petition</em>: '+target.name+'</h2>';
      output += '<h3>'+target.location+'</h3> <ul>';
      output += '<li><strong>Title:</strong> '+target.petition.title+'</li>';
      output += '<li><strong>Who:</strong> '+target.petition.who+'</li>';
      output += '<li><strong>Goal:</strong> '+target.petition.goal+'</li>';
      output += '<li><strong>Signatures so far:</strong> '+target.petition.signature_count+'</li>';
      output += '</ul><hr/>';
      return output;
    }

    function performSearch(query) {
      // get the targets and petitions (if they exist) for the effort near the place specified.
      $.ajax({
        url: 'https://demo.controlshiftlabs.com/efforts/forecast-the-facts/lookup/query.json',
        dataType: 'jsonp',
        data: {
          'location_query': query
        }
      })
      .done(function(data) {
        $placeholder = $('#petitions');
        if (data.code != undefined) {
          if ((data.code == 'no_nearby_targets') || (data.code == 'no_nearby_petitions')){
            $placeholder.html('<h2>No Petitions Found</h2>');
            return;
          } else if (data.code == 'location_required') {
            $placeholder.html('<h2>Location required</h2>');
            return;
          }
        }
        //populate closest target
        $placeholder.html( buildPetition(data.closest_target, 'Closest') );
        $.each(data.other_targets, function(index, other_petition){
          $placeholder.append( buildPetition(other_petition, 'Near By') );
        });
      });
    };

    $(document).ready(function(){
      var input = document.getElementById('effort-lookup-input');
      $('form').on('submit', function(e){
        e.preventDefault()

        var searchQuery = $(input).val()
        performSearch(searchQuery);
      });
    });
  </pre>
</div>

<form action="https://codepen.io/pen/define" method="POST" target="_blank" class="hidden">
  <input type="hidden" name="data" class="js-data" value="">
  <input type="submit" value="Launch Example on CodePen">
</form>

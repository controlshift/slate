## Get calendar data

```js
$(document).ready(function(){
  $.ajax({
    url: 'https://demo.controlshiftlabs.com/calendars/national-day-of-action-against-fracking.json',
    dataType: 'jsonp',
  })
  .done(function(data) {
    console.log(data);
  });
});
```

> The above code would display a calendar's properties the js console.  The JSON would be structured like this:

```json

{
   "calendar":{
      "name":"National Day of Action Against Fracking",
      "description":"This is the description. It will be great.",
      "slug":"national-day-of-action-against-fracking",
      "image_url":"https://d8s293fyljwh4.cloudfront.net/calendars/images/26/hero/Oak-tree-in-field-007.jpg?1450370489",
      "event_count":85,
      "attendee_count":19,
      "events_upcoming":10
   }
}
```

This retrieves a JSON object representing a calendar.

### HTTP Request

`GET https://demo.controlshiftlabs.com/calendars/slug.json`

Where slug is the slug of the calendar you're retrieving. 

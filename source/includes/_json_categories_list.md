## Get list of categories

```js
$(document).ready(function(){
  $.ajax({
    url: 'https://demo.controlshiftlabs.com/categories.json',
    dataType: 'jsonp',
  })
  .done(function(data) {
    console.log(data);
  });
});
```

> The above code would display a list of categories in the console.  The JSON would be structured like this:

```json
[
  {
    "category_name": "Education",
    "category_count": 18,
    "slug": "education-9",
    "url": "https://demo.controlshiftlabs.com/categories/education-9.json",
    "signature_count": 421,
    "locales": {
      "es": "Educación"
    }
  },
  {
    "category_name": "Environment",
    "category_count": 352,
    "slug": "environment-6",
    "url": "https://demo.controlshiftlabs.com/categories/environment-6.json",
    "signature_count": 2606,
    "locales": {
      "es": "Medio Ambiente"
    }
  }
]
```

This retrieves a JSON array of category objects.

### HTTP Request

`GET https://demo.controlshiftlabs.com/categories.json`

### Working Example

View and edit a working example on codepen.io:

<div class="js-codepen-data hidden" data-title="ControlShift Labs: Categories List Example">
  <div class="codepen-html">
    <h1>Categories List</h1>
    <div id="categories">
    </div>
  </div>
  <pre class="codepen-js">
    $(document).ready(function(){
      $.ajax({
        url: 'https://demo.controlshiftlabs.com/categories.json',
        dataType: 'jsonp',
      })
      .done(function(data) {
        var $placeholder = $('#categories');
        $.each(data, function(index, category){
          output = '<h2><a href="'+category.url+'">'+category.category_name+'</a></h2>';
          output += '<ul>'
          output += '<li><strong>Slug:</strong> '+category.slug+'</li>';
          output += '<li><strong>Signatures:</strong>'+category.signature_count+'</li>';
          output += '<li><strong>API URL:</strong>'+category.url+'</li>';
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

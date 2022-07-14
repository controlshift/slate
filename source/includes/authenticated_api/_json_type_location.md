<a name="json-type-location"></a>

A Location block is a JSON object with some or all of the following properties:

Field | Type | Description
------|------|------------
country | String | ISO 3166-1 two-letter code for the country
latitude | Floating-point number | Latitude
locality | String | City
longitude | Floating-point number | Longitude
postal_code | String | Postcode / ZIP code
region | String | State/province/etc.
street | String | Street name
street_number | String | Street number (e.g. "123" in "123 Main Street")
venue | String | Venue name

If the block does not include latitude and longitude, it must include country and at least one of locality, region, or postal code, so that we can geocode the location.

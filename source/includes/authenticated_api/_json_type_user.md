<a name="json-type-user"></a>

A User block is a JSON object with some or all of the following properties:

Field | Type | Description | Required?
------|------|-------------|----------
email | String | Email address | yes
first_name | String | First/given name | no
last_name | String | Last/family name | no
locale | String | The ISO 639-1 two-letter code for the user's preferred language. Must be one of the languages supported by ControlShift. | no; defaults to organisation's default language
phone_number | String | Phone number | no
postcode | String | Postcode / ZIP code | no

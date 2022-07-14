<a name="json-type-target"></a>
A Target block is a JSON object that has either the unique **slug** of an existing decision maker, like this:

`{"slug": "president-joe-biden"}`

or a set of the following properties for creating a new decision maker:

Field | Type | Description | Required?
------|------|-------------|----------
context | String | Job title or additional context about the decision maker | no
email | String | Email address for contacting the decision maker | no
name | String | Decision maker's name | yes
phone_number | String | Phone number for contacting the decision maker | no

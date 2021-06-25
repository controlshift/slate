## Email Opt In Types

### List
Get a list of the email opt in types that have been configured for this organisation. 

Email opt in types represent the way that members have opted in to your email list. 

#### Context
The context this opt in type was displayed to users in.

Value     | Description
--------- | ------- 
web_form  | an action on the web
email     | in a confirmation email
offline   | collected offline via a paper form
external  | represents opt ins gathered in other systems

#### Kind
The sort of opt in that was gathered

Value               | Description
------------------- | ------- 
email_confirmation  | an action on the web
implicit            | a message displayed while taking action
offline             | collected offline via a paper form
unchecked_checkbox  | a checkbox that began unchecked
physical_signature  | a wet ink signature
pre_checked_checkbox | a checkbox that began checked 
radio                | a radio button with yes/no options

#### Active
This parameter is true if the opt in type is currently being used in it's specified context.

#### Mailable
Whether this opt-in type should be considered valid for email.

#### external_id
External IDs are set by customers through the admin interface while configuring opt in types. You can use them to match up email opt in types
with your external systems, or to refer to email opt in types consistently through this API. 


> GET /api/v1/organisation/email_opt_in_types

```json
{
  "email_opt_in_types": [{
    "context": "web_form",
    "kind": "implicit",
    "mailable": true,
    "active": true,
    "external_id": "your-external-id"
  }]
}
```
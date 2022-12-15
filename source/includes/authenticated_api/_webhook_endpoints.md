## Webhook Endpoints

Webhooks can be used by software engineers to integrate ControlShift with third-party systems. They allow engineers to build software that is triggered by events that take place within ControlShift. This authenticated endpoint provides status information about webhook endpoints.

This is useful for customers who would like to build automated reporting to detect when webhooks have been disabled or are setup incorrectly. 

### List Webhook Endpoints

Show information about all of the webhook endpoints configured for organisation

`GET /api/v1/webhook_endpoints`

> GET response body for Index (List)

```json
[
  {
    "id":1,
    "organisation_id":7,
    "url":"https://example.com/test1",
    "created_at":"2019-06-19T15:02:47Z",
    "updated_at":"2019-06-19T15:02:47Z",
    "disabled_at":null,
    "last_failure":null
  },
  {
    "id":2,
    "organisation_id":7,
    "url":"https://example.com/test2",
    "created_at":"2019-06-19T15:10:47Z",
    "updated_at":"2019-06-19T15:45:47Z",
    "disabled_at":"2019-06-19T15:45:47Z",
    "last_failure":"2019-06-19T15:45:01Z"
  }
]
```

### Create Webhook Endpoint

Creates a new webhook endpoint that will receive webhooks from the platform.

`POST /api/v1/webhook_endpoints`

The request body should be a JSON block containing one `"endpoint"` object, which can have the following properties:

Field | Type   | Description                                                  | Required?
------|--------|--------------------------------------------------------------|----------
url | string | URL webhook will be POSTed to.                               | yes
basic_auth_username | string | Optional. HTTP Basic Auth credential to use with your endpoint | no
basic_auth_password | string |                                                              | no
aws_account_id | string | Optional. Advanced feature. See Bulk Data API docs           | no

Successful response
```json
{
  "status": "success",
  "endpoint": {
    "url": "https://example.com",
    "signing_secret": "abc122"
  }
}
```

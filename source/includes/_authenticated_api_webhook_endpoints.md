## Webhook Endpoints

Webhooks can be used by software engineers to integrate ControlShift with third-party systems. They allow engineers to build software that is triggered by events that take place within ControlShift. This authenticated endpoint provides status information about webhook endpoints.

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
  },
]
```

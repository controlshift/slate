## Attendees

Attendees are member RSVPs to an Event. All attendee actions are namespaced by URL underneath the events that the attendee was recorded against.

### Lookup

Find an attendee by email address. Once you have obtained the attendee's id you can use this identifier in other API calls.

`GET /api/v1/events/deliver-the-petition-to-the-wizard/attendees/lookup?email=foo@bar.com`

> GET response body for Lookup

```json
{
  "attendee": {
    "notification_level": "all_messages",
    "attending_status": "attending",
    "additional_fields": {},
    "id": 123,
    "country": "US",
    "created_at": "2020-02-01T10:00:00Z",
    "updated_at": "2020-02-01T10:00:00Z",
    "unsubscribe_at": null,
    "email": "foo@bar.com",
    "confirmed_at": null,
    "confirmed_reason": null,
    "first_name": "Foo",
    "join_group": true,
    "join_organisation": true,
    "last_name": "Bar",
    "phone_number": "123-456",
    "postcode": "10010",
    "source": "",
    "token": "abcDEFghi123456789jklMNO",
    "user_ip": "123.123.123.123",
    "utm_campaign": "",
    "utm_content": "",
    "utm_medium": "",
    "utm_source": "",
    "utm_term": "",
    "eu_data_processing_consent": false,
    "consent_content_version": null,
    "email_opt_in_type": {
      "context": "web_form",
      "kind": "radio_sure",
      "mailable": true,
      "external_id": null,
      "active": true
    },
    "member": {
      "id": 111222333,
      "created_at": "2020-02-01T10:00:00Z"
    },
    "event": {
      "url": "https://your-organisation.controlshiftlabs.com/events/deliver-the-petition-to-the-wizard",
      "slug": "deliver-the-petition-to-the-wizard"
    }
  }
}
```

### Update email opt in type

Updates the email opt in type associated with a single attendee. This can be used to change the email opt in type
if a more legally compliant form of consent was gathered elsewhere. The email opt in type for the attendee is updated
to the opt in type specified by `external_id`.

No history is stored recording the original consent type, it is replaced by the new one specified in the API call.

`POST /api/v1/events/deliver-the-petition-to-the-wizard/attendees/123`

#### POST body

`external_id=foo`

### Destroy

> DELETE response body for Destroy

```json
{
  "attendee": {
    "deleted": true,
    "id": 123,
    "email": "foo@bar.com"
  }
}
```

Permanently deletes the attendee with the specified ID.

`DELETE /api/v1/events/deliver-the-petition-to-the-wizard/attendees/123`

### List

List the attendees that have RSVPed to an Event.

This is a paginated response. You can advance to the next page using the page parameter, which accepts a page number integer.
By default the first page is returned.

Hash        | Description
----------- | -----------
meta        | pagination information
event       | basic information about the event
attendees   | an array of attendee results

`GET /api/v1/events/deliver-the-petition-to-the-wizard/attendees?page=2`

### Unsubscribe

> POST response body for Unsubscribe

```json
{
  "attendee": {
    "unsubscribed": true,
    "notice": "You have successfully unsubscribed from the event.",
    "id": 123,
    "email": "foo@bar.com"
  }
}
```

Unsubscribes a member who has RSVPed to the event from any emails sent by event host. They will still receive transactional emails.

`POST /api/v1/events/deliver-the-petition-to-the-wizard/attendees/123/unsubscribe`

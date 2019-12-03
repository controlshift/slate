## Members

The platform transparently creates a member record for any email address that creates a user account, signs a petition, or attends an event. Members are unique by email address, and all
platform activity is tracked by member id.

> GET response body for Lookup or Show

```json
{
  "member": {
    "id": 123,
    "email": "foo@bar.com",
    "created_at": "2015-06-01T15:37:47Z",
    "updated_at": "2017-07-01T11:23:45Z",
    "external_id": "abc123",

    "data_processing_consent": {
      "consented_to_latest_version": false,

      "most_recent_consent_from_member": {
        "consented_at": "2018-01-01T04:00Z",

        "consent_content_version": {
          "id": "25",
          "external_id": "def456",
          "created_at": "2017-12-31T23:59Z"
        }
      }
    }
  }
}
```

### Lookup

Find a member by email address. Once you have obtained a member id you can use this identifier in other API calls.

`GET /api/v1/members/lookup?email=foo@bar.com`



### Show

Find a member by id.

The `data_processing_consent` block is only present when the data processing consent feature is enabled.

`GET /api/v1/members/123`



### Activity

> GET response body for Activity

```json
{
  "first_name": "Jane",
  "last_name": "Doe",
  "phone_number": "555-555-5555",
  "created_at": "2015-06-01T15:37:47Z",

  "signatures": [
    {
      "email": "jane.doe@example.com",
      "petition": {
        "slug": "save-the-whales"
      }
      ...
    }
    ...
  ]
  ...
}
```

Get information about a member's activity on the platform. This can be useful if you're building a member dashboard that includes information from ControlShift and other toolsets.

The member activity report includes basic biographical information as well as petitions created or signed, events hosted or attended, group memberships, forum posts, partnership subscriptions, and unsubscribe history.

`GET /api/v1/members/123/activity`



### Destroy

> DELETE response body for Destroy

```json
{
  "member": {
    "deleted": true,
    "id": 123,
    "email": "foo@bar.com"
  }
}
```

Permanently deletes a member with specified id and all associated records including petitions, signatures, events. The deletion feature is designed to honor requests from members around the right to be forgotten.

`DELETE /api/v1/members/123`

Deletes are synchronous and may take several seconds depending on how many resources are owned by the member.

Ownership of Petitions and Events created by the deleted member will be re-assigned to the user account specified in the organisation's settings.



### Anonymize

> POST response body for Anonymize

```json
{
  "member": {
    "deleted": true,
    "id": 123,
    "email": "foo@bar.com"
  }
}
```

Anonymizes the member with specified id. This permanently deletes the member and all associated signatures. However, petition signatures from the anonymized member are preserved, anonymized, on petition data exports, signature counts, and petition letters. The method of anonymization is configured in organisation name privacy settings.

`POST /api/v1/members/123/anonymize`

Anonymization is synchronous and may take several seconds depending on how many resources are owned by the member.

Ownership of Petitions and Events created by the deleted member will be re-assigned to the user account specified in the organisation's settings.



### Unsubscribe

> POST response body for Unsubscribe

```json
{
  "member": {
    "unsubscribed": true,
    "id": 123,
    "email": "foo@bar.com"
  }
}
```

Unsubscribes a member with specified id from emails from event hosts and petiton creators. Member will still receive transactional emails, and will be resubscribed if they opt in while signing a new petition or attending a new event, etc.

`POST /api/v1/members/123/unsubscribe`


### Update Email Opt In Type

#### POST body

`external_id=foo`

Changes the email opt in type for the member with the specified id to the external id in the POST body. This will update the opt in type for
all associated signatures, attendee records, user accounts and other data held by ControlShift to the opt in type specified by external_id.

This feature may be useful for upgrading the recorded consent when new consent for email communications has been collected in external systems.

Most likely you will be changing historical consents that may no longer be mailable for legal reasons to a new mailable consent type.

No history is stored recording the original consent type, it is replaced by the new one specified.

`POST /api/v1/members/123/update_email_opt_in_type`

## Signatures

Signatures are actions that people have taken on Petitions. All signature actions are namespaced by URL underneath the petitions that the signature
was recorded against.

### Lookup

Find a member by email address. Once you have obtained a member id you can use this identifier in other API calls.

`GET /api/v1/petitions/no-taxes-on-tea/signatures/lookup?email=foo@bar.com`

> GET response body for Lookup

```json
{
  "signature": {
    "bucket": "",
    "country_without_fallback": "US",
    "from_embed": null,
    "last_signed_at": "2020-02-01T10:00:00Z",
    "user_agent": null,
    "deleted_at": null,
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
    "join_group": null,
    "join_organisation": true,
    "last_name": "Bar",
    "phone_number": "123-456",
    "postcode": "10010",
    "source": "",
    "token": "abcDEFghi123456789jklMNO",
    "user_ip": "123.123.123.123",
    "utm_campaign": null,
    "utm_content": null,
    "utm_medium": null,
    "utm_source": null,
    "utm_term": null,
    "eu_data_processing_consent": false,
    "consent_content_version": null,
    "data_processing_consent_type": "explicit",
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
    "petition": {
      "url": "https://your-organisation.controlshiftlabs.com/petitions/no-taxes-on-tea",
      "slug": "no-taxes-on-tea"
    }
  }
}
```

### Update email opt in type

Updates the email opt in type associated with a single signature. This can be used to change the email opt in type
if a more legally compliant form of consent was gathered elsewhere. The email opt in type for the signature is updated
to the opt in type specified by `external_id`.

No history is stored recording the original consent type, it is replaced by the new one specified in the API call.

`POST /api/v1/petitions/no-taxes-on-tea/signatures/123`

#### POST body

`external_id=foo`

### Destroy

> DELETE response body for Destroy

```json
{
  "signature": {
    "deleted": true,
    "id": 123,
    "email": "foo@bar.com"
  }
}
```

Permanently deletes the signature with the specified ID. Note that this will decrement the signature count on the petition.

`DELETE /api/v1/petitions/no-taxes-on-tea/signatures/123`

### List

List the signatures that are part of a Petition.

This is a paginated response. You can advance to the next page using the page parameter, which accepts a page number integer.
By default the first page is returned.

Hash     | Description
--------- | -------
meta      | pagination information
petition  | basic information about the petition
signatures | an array of signature results

`GET /api/v1/petitions/no-taxes-on-tea/signatures?page=2`

### Unsubscribe

> POST response body for Unsubscribe

```json
{
  "signature": {
    "unsubscribed": true,
    "notice": "You have successfully unsubscribed from the petition.",
    "id": 123,
    "email": "foo@bar.com"
  }
}
```

Unsubscribes a member who has signed the petition from any emails sent by petition creator. They will still receive transactional emails.

`POST /api/v1/petitions/no-taxes-on-tea/signatures/123/unsubscribe`

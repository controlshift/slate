## Signatures

Signatures are actions that people have taken on Petitions. All signature actions are namespaced by URL underneath the petitions that the signature
was recorded against.

### Lookup

Find a specific signature by email address. Once you have obtained a signature id you can use this identifier in other API calls.

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
    "join_partnership": null,
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

### Create

Creates a new signature for the specified petition. This API endpoint can be used to record externally collected signatures for
a particular petition within your instance of the ControlShift platform.

All of the same post-signature actions that the platform usually supports including webhooks, CRM syncs, and other integrations
will still be triggered, in the same way they are for normal signatures.

For organisations that require email confirmation, a confirmation email will be sent to the action taker.


| Field                     |   Explanation                                                              |
| ------------------------- | ------------------------------------------------------------------------ |
| `signature[first_name]`   | The first name of the member who took action                     |
| `signature[last_name]`    | The last name of the member who took action                     |
| `signature[email]`        | The email address of the member who took action                  |
| `signature[postcode]`     | The postal or zip code of the member. Depending on your platform settings this may be a required field. Depending on your configuration, this may be validated for your country. |
| `signature[phone_number]` | The phone number of the member who took action. Depending on your platform settings this may be a required field. |
| `signature[locale]`       | The language and localization setting of the member who has taken action. This is specified as an [ISO_639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) two-character language code combined with an optional [ISO 3166](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes) two character country code. For eg `en-US` or `en`. |
| `signature[country]`      | The country specified as an [ISO 3166](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes) two character country code. This may be optional or required depending on your platform configuration. |
| `signature[email_opt_in_type_id]` | The External ID for the ControlShift email opt in type to use for this action. The email opt in type must have "external" context. You can list available email opt in types with [this endpoint](https://developers.controlshiftlabs.com/#email-opt-in-types)|
| `signature[join_organisation]` | Whether or not the member has opted in to email communications from this campaign and organisation |
| `signature[join_partnership]` | For partnership campaigns, whether or not this member has opted into communication from the partnership |
| `signature[eu_data_processing_consent]`      | Whether or not member has given consent for GDPR data processing. This field must be true if the organisation requires data processing consent for user actions with `use_eu_data_processing_consent = true` |
| `signature[consent_content_version_external_id]`      | The External ID for the data processing consent content version the member has consented to on this signature. The consent content version tracks what the privacy policy, terms of service, and checkbox label were at the time of this signature. You can list available consent content versions via [this endpoint](https://developers.controlshiftlabs.com/#consent-content-versions). This field is required if the organisation requires data processing consent for user actions `use_eu_data_processing_consent = true`|
| `signature[utm_source]`   | UTM tracking field, optional |
| `signature[utm_campaign]` | UTM tracking field, optional |
| `signature[utm_content]`  | UTM tracking field, optional |
| `signature[utm_medium]` | UTM tracking field, optional |
| `signature[utm_term]`     | UTM tracking field, optional |


`POST /api/v1/petitions/no-taxes-on-tea/signatures/`

#### POST body

`signature[first_name]=Ada&signature[last_name]=Lovelave&signature[email]=ada@lovelace.com&signature[postcode]=12345`

> POST response body for create

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
    "join_partnership": null,
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

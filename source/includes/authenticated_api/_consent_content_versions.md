## Consent Content Versions

### List
Get a list of the Data Processing Consent Content Versions that have been configured for this organisation.

These content versions track changes to the Terms of Service, Privacy Policy and Data Processing Consent disclaimers.

> GET /api/v1/organisation/consent_content_versions

> Response body

```json
{
  "consent_content_versions": [
    {
      "id": 123,
      "external_id": "consent-version-may-2018",
      "created_at": "2018-05-30T17:15:59Z",
      "privacy_policy": "Privacy Policy - ...",
      "tos": "Terms of Use Agreement - ...",
      "data_processing_consent_label": "I consent to my data being processed as described in the <a href=\"/tos\" target=\"_blank\">Terms of Service</a> and the <a href=\"/privacy_policy\" target=\"_blank\">Privacy Policy.</a>",
      "current": false
    },
    {
      "id": 711,
      "external_id": "consent-version-sept-2021",
      "created_at": "2021-09-30T11:10:44Z",
      "privacy_policy": "Privacy Policy v2 - ...",
      "tos": "Terms of Use Agreement - ...",
      "data_processing_consent_label": "I consent to my data being processed as described in the <a href=\"/tos\" target=\"_blank\">Terms of Service</a> and the <a href=\"/privacy_policy\" target=\"_blank\">Privacy Policy.</a>",
      "current": false
    },
    ...
  ]
}
```
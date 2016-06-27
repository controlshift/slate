## Organisation

### Retrieve
Get up to date statistics about the current organisation.

> GET /api/v1/organisation

```json
{
  "organisation": {
    "slug": "foo",
    "petitions_count": 3,
    "signatures_count": 4,
    "blast_emails_count": 0,
    "members_count": 5
  }
}
```
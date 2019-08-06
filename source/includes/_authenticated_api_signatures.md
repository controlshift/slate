## Signatures

Signatures are actions that people have taken on Petitions. All signature actions are namespaced by URL underneath the petitions that the signature
was recorded against. 

### Lookup

Find a member by email address. Once you have obtained a member id you can use this identifier in other API calls. 

`GET /api/v1/petitions/no-taxes-on-tea/signatures/lookup?email=foo@bar.com`



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
## Signatures

Signatures are actions that people have taken on Petitions. All signature actions are namespaced by URL underneath the petitions that the signature
was recorded against. 

### Lookup

Find a member by email address. Once you have obtained a member id you can use this identifier in other API calls. 

`GET /api/v1/petitions/no-taxes-on-tea/signatures/lookup?email=foo@bar.com`



### Update email opt in type

Updates the email opt in type associated with a single signature. This can be used to change the email opt in type
if a more legally compliant form of consent was gathered elsewhere. The email opt in type for the signature is updated
to the opt in type specified by external_id

No history is stored recording the original consent type, it is replaced by the new one specified in the API call.


`POST /api/v1/petitions/no-taxes-on-tea/signatures/123`

#### POST body 

`external_id=foo`



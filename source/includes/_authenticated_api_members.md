## Members

The platform transparently creates a member record for any email address that creates a user account, signs a petition, or attends an event. Members are unique by email address, and all 
platform activity is tracked by member id.  

### Lookup
```json
{
  "member": {
    "id": 123,
    "email": "foo@bar.com",
    ...
  }
}
```

Find a member by email address. Once you have obtained a member id you can use this identifier in other API calls. 

`GET /api/v1/members/lookup?email=foo@bar.com`



### Show

Find a member by id. Member ids can be discovered via a call to the lookup API. 

`GET /api/v1/members/123`



### Activity
```json
{
  "first_name": "Jane",
  "last_name": "Doe",
  "phone_number: "555-555-5555",
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

Deletes are synchronous and may take several seconds depdending on how many resources are owned by the member. 

Ownership of Petitions and Events created by the deleted member will be re-assigned to the user account specified in the organisation's settings. 



### Unsubscribe
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

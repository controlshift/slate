# Authenticated REST API

The Authenticated REST API allows customers to build applications that interact with their own data or securely grant access to third-party app developers without exposing administrative credentials. It is designed to be consumed server-side, in contrast to the JSONP API which is designed for unauthenticated javascript integrations. 

We use [OAuth2](http://oauth.net/2/) to allow organizations to securely grant access to API Applications. OAuth2 is a standardized protocol that allows user credentials to be exchanged for a secret token which can then be used to access an API. There are OAuth2 implementations available for most common programming languages. You'll probably want to read some general documentation on how OAuth2 works before attempting to use this API. 

An *API Application* must be configured within your ControlShift instance before using the API. Access is then granted to this application, and exchanged for a token which is used to authenticate your access to API endpoints.   

## Quickstart Guide

These are the steps to setup a new API Application and to use that new API Application to access platform resources through OAuth2. In a production context, automating these steps is recommended. 

1. **Setup a new API Application** Login as an Organisation Owner and navigate to Settings > Integrations > Configure API Applications. Add a New Application. Use urn:ietf:wg:oauth:2.0:oob as the callback URL unless you plan to allow self-service application authorization. 

1. **Generate Authorization Code** From the API Application show page, click "Authorize". This will generate a code that can be exchanged with a token to act as the currently signed in user. After the authorization is approved, an authorization code should be displayed. Record this code for the next step. 

> Use cURL to do the token exchange

```bash
curl -X POST --header "Content-Type: application/json" --header "Accept: application/json" --data '{"grant_type":"authorization_code", "code":"{code}", "client_id":"{client_id}", "client_secret":"{client_secret}", "redirect_uri":"{redirect_uri}"}' https://foo.controlshiftlabs.com/oauth/token
```

1. **Exchange Authorization Code for Token** Take the authorization code from the previous step and exchange it for an OAuth2 Token. 

`POST https://foo.controlshiftlabs.com/oauth/token
  client_id=...
  redirect_uri=...
  grant_type=authorization_code
  client_secret=...
  code=...`

1. **Use Token to Access API** The token can now be used to access API endpoints as the authorized user. 

`GET https://foo.controlshiftlabs.com/api/v1/organisation?access_token={token}`

Should return a json representation of the current organisation. See documentation for other endpoints that are available. 

We've also written an example [of this same work flow](https://github.com/controlshift/controlshift-oauth-example) in ruby using the oauth2 gem. 

In most production scenarios instead of manually performing the authorization, and exchanging the code for a token, this setup process would be automated. See your oauth2 library documentation for more information. 


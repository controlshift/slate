# Authenticated REST API

The Authenticated REST API allows customers to build applications that interact with their own data or securely grant access to third-party app developers without exposing administrative credentials. It is designed to be consumed server-side, in contrast to the JSONP API which is designed for unauthenticated javascript integrations.

We use [OAuth2](http://oauth.net/2/) to allow organizations to securely grant access to API Applications. OAuth2 is a standardized protocol that allows user credentials to be exchanged for a secret token which can then be used to access an API. There are OAuth2 implementations available for most common programming languages. You'll probably want to read some general documentation on how OAuth2 works before attempting to use this API.

An *API Application* must be configured within your ControlShift instance before using the API. Access is then granted to this application, and exchanged for a token which is used to authenticate your access to API endpoints.

## Rate Limits

We apply the following per-domain rate limits on HTTP requests made to the API:

* **OAuth Token exchange (`/oauth/token`)**: 10 requests per minute.
* **Authenticated REST API (`/api/v1/*`)**: 1000 requests per minute.

Once the limit is reached, we will return an HTTP response with status code `429 - Too Many Requests` and the following headers:

* `RateLimit-Limit`: returns the number of requests per minute allowed on the endpoint, values will match the ones listed above depending if you are invoking the _OAuth Token Exchange_ or one of the _Authenticated REST API_ endpoints.
* `RateLimit-Remaining`: this header will always have `0` as value, since this response is only returned when the rate limit has been reached.
* `RateLimit-Reset`: returns the number of seconds until the current rate limit is reset.

## Quickstart Guide

There are two ways to get set up to use the authenticated API. Use whichever is easier for you. *You only need to do one of these.*

### The Easy Way: Client Credentials

1. **Set up a new API Application** Log in as an Organisation Owner and navigate to Settings > Integrations > Configure API Applications. Add a New Application. Use urn:ietf:wg:oauth:2.0:oob as the callback URL unless you plan to allow self-service application authorization.

2. Clone the [oauth-api-example](https://github.com/controlshift/oauth-api-example) github repo.

3. Follow the instructions in the README.md file to get that example working with your credentials.

4. Do something similar in your actual code.

### The Hard Way: Application and Token Exchange
These are the steps to setup a new API Application and to use that new API Application to access platform resources through OAuth2. In a production context, automating these steps is recommended.

> Use cURL to do the token exchange

```bash
curl -X POST --header "Content-Type: application/json" --header "Accept: application/json" --data '{"grant_type":"authorization_code", "code":"{code}", "client_id":"{client_id}", "client_secret":"{client_secret}", "redirect_uri":"{redirect_uri}"}' https://foo.controlshiftlabs.com/oauth/token
```

1. **Set up a new API Application** Log in as an Organisation Owner and navigate to Settings > Integrations > Configure API Applications. Add a New Application. Use urn:ietf:wg:oauth:2.0:oob as the callback URL unless you plan to allow self-service application authorization.

2. **Generate Authorization Code** From the API Application show page, click "Authorize". This will generate a code that can be exchanged with a token to act as the currently signed in user. After the authorization is approved, an authorization code should be displayed. Record this code for the next step.

3. **Exchange Authorization Code for Token** Take the authorization code from the previous step and exchange it for an OAuth2 Token.

    `POST https://foo.controlshiftlabs.com/oauth/token
      client_id=...
      redirect_uri=...
      grant_type=authorization_code
      client_secret=...
      code=...`

4. **Use Token to Access API** The token can now be used to access API endpoints as the authorized user.

    `GET https://foo.controlshiftlabs.com/api/v1/organisation?access_token={token}`

    Should return a json representation of the current organisation. See documentation for other endpoints that are available.

We've also written an example [of this same work flow](https://github.com/controlshift/controlshift-oauth-example) in ruby using the oauth2 gem.

In most production scenarios instead of manually performing the authorization, and exchanging the code for a token, this setup process would be automated. See your oauth2 library documentation for more information.

**Note**: Access tokens have a 2 hours expiration, after that period you can use the old token to generate a new one.

# Authenticated REST API

The Authenticated REST API allows customers to build applications that interact with their own data or securely grant access to third-party app developers without exposing administrative credentials. It is designed to be consumed server-side, in contrast to the JSONP API which is designed for unauthenticated javascript integrations.

If you're synchronizing data from ControlShift into another system then the Webhooks API is likely a better choice for that use case.

## Getting Started
We support both API keys and OAuth2 for authenticating with the API. API keys are the recommended approach, because they are simpler to set up and use.
OAuth2 is supported for now, but may be deprecated in the future, so we do not recommend using it for new applications.

### HTTP Requests Format

The Authenticated REST API expects payloads in JSON format when submitting `POST` and `PUT` requests. Additionally, all responses will also be returned in this format. To ensure compatibility, the requests made to these endpoints should include the [`Accept`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept) and [`Content-Type`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Type) headers with the value `application/json`.

### Using API Keys
We support Bearer Authentication, using API keys that can be configured through the platform.

1. **Add a new API key** Log in as an Organisation Owner and navigate to Settings > Integrations > API Keys. Add a new API key and give it a name. Copy down the full key.
2. Include your key in an Authorization HTTP header on your API request, like this:

`curl https://demo.controlshiftlabs.com/api/v1/organisation -H "Authorization: Bearer cs_aBcDeFgHiJ0123456789kLmNoPqRsT"`

### Using OAuth2
We use [OAuth2](http://oauth.net/2/) to allow organizations to securely grant access to API Applications. OAuth2 is a standardized protocol that allows user credentials to be exchanged for a secret token which can then be used to access an API. There are OAuth2 implementations available for most common programming languages. You'll probably want to read some general documentation on how OAuth2 works before attempting to use OAuth2 to access the API.

An *API Application* must be configured within your ControlShift instance before using the API. Access is then granted to this application, and exchanged for a token which is used to authenticate your access to API endpoints.

1. **Set up a new API Application** Log in as an Organisation Owner and navigate to Settings > Integrations > Legacy OAuth Apps. Add a New Application. Use `urn:ietf:wg:oauth:2.0:oob` as the callback URL unless you plan to allow self-service application authorization.

2. Clone the [oauth-api-example](https://github.com/controlshift/oauth-api-example) github repo.

3. Follow the instructions in the README.md file to get that example working with your credentials.

4. Do something similar in your actual code.

**Note**: Access tokens have a 2 hours expiration, after that period you can use the old token to generate a new one.


## Rate Limits

We apply the following per-domain rate limits on HTTP requests made to the API:

* **OAuth Token exchange (`/oauth/token`)**: 10 requests per minute.
* **Authenticated REST API (`/api/v1/*`)**: 1000 requests per minute.

Once the limit is reached, we will return an HTTP response with status code `429 - Too Many Requests` and the following headers:

* `RateLimit-Limit`: returns the number of requests per minute allowed on the endpoint, values will match the ones listed above depending if you are invoking the _OAuth Token Exchange_ or one of the _Authenticated REST API_ endpoints.
* `RateLimit-Remaining`: this header will always have `0` as value, since this response is only returned when the rate limit has been reached.
* `RateLimit-Reset`: returns the number of seconds until the current rate limit is reset.

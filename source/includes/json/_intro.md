# JSON API Endpoints

The public JSON API is a simple way to access non-sensitive ControlShift data.
Many of the JSON API endpoints are intended for use by a front-end developer to embed content on web pages outside of the platform.
For example, a developer could:

* Show petitions
* Allow a user to search for near by petitions
* List petition categories
* Show petitions within an effort

The URL slugs through the API are the same as those that are used through the web to represent specific petitions or categories.

<aside class="success">
These examples use the domain <code>demo.controlshiftlabs.com</code>. You'll need to replace this with the hostname of your instance.
</aside>

## Using the JSON API from an external site
When one website includes a call to retrieve JSON data from another website, that is considered a **cross-origin** request.
For security reasons, browsers usually block this type of request by default.
There are two different ways to get around this restriction to allow calling public ControlShift JSON API endpoints from external sites: CORS and JSONP.
The documentation for each endpoint indicates which options are supported.

### CORS
CORS allows the ControlShift platform to specify that certain URLs are allowed to be requested cross-origin from certain domains.

For JSON requests relying on CORS to work, you'll need to configure the allowed domains from **Settings > Integrations > CORS Hostnames**.
Once a hostname is safe-listed there, any of the endpoints that support CORS can be used on pages on that domain.

For example, to embed petition content from a ControlShift website **demo.controlshiftlabs.com** on your external website **hq.example.org**,
you'd want to add **hq.example.org** to your CORS Hostnames.

### JSONP
JSONP is an older way to allow cross-origin requests for JSON data.
The way it works is by specifying a Javascript callback that will handle the JSON data. The server wraps that callback around the data it returns.
This allows the call to technically be a Javascript request instead of a JSON request, and so the browser allows it.

Many front-end libraries, including jQuery, make it easy to consume JSONP endpoints. Our examples below use jQuery when demonstrating JSONP calls.

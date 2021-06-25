ControlShift Labs API Documentation
------------------------------------

The ControlShift Labs API documentation uses Slate - a middleman static site template of sorts for API documentation.

### Updating Content

* This branch is based on the v1.5 release (tag)
* The only files you should need to edit:
  * `/build/index.html.md`
  * `/build/includes/*.md`
* Webhooks documentation is auto-updated from https://demo.controlshiftlabs.com/api/webhooks.json at build. Just redeploy to update.
* The source XML for the chart under BulkData is in /build/images. You can edit it by opening that file on [https://www.draw.io/](https://www.draw.io/).

### Content Considerations:

* Our audience includes very junior developers and even non-coders, attempting to pull content into their WISIWYG CRM pages.
* All examples and JS should be exceedingly basic, with generally linear control flows, and extremly easy to follow.

### Editing "External" Codepen.io Examples

Our codepen.io code examples are actually **generated/spawned on the fly** using codepen.io's [prefill API](https://blog.codepen.io/documentation/api/prefill/). Our "Launch Example" button links are actually form submit buttons sending post requests to the prefill endpoint.

* All the JS and HTML is handled at the bottom of the json_*.md files. The most complete example of the options were utilizing is in the `_json_effort_petitions_near.md` file.
* There is JS and some default options at the bottom of `layout.erb`.  This JS transforms the inline HTML content into the proper format for the API endpoint.
* **Write code samples in multiple languages** — If your API has bindings in multiple programming languages, you can easily put in tabs to switch between them. In your document, you'll distinguish different languages by specifying the language name at the top of each code block, just like with GitHub Flavored Markdown.

This approach has two key benefits. First, there are no external dependencies/assets we need to maintain. It also puts in a position where we could let clients set their own domains or arrive at the documents with their domain in the URL, have our examples use this domain, and potential populate examples JSON payloads with the client's actual content.

### Deploying to github pages

You just need to run `./deploy.sh`, and that script will deploy to whatever git's origin is set-up as. If you're not deploying master, you will need to specify the branch name. Example:

    GIT_DEPLOY_BRANCH=mf-cs-documentation ./deploy.sh


-----


* **Let your users update your documentation for you** — By default, your Slate-generated documentation is hosted in a public GitHub repository. Not only does this mean you get free hosting for your docs with GitHub Pages, but it also makes it simple for other developers to make pull requests to your docs if they find typos or other problems. Of course, if you don't want to use GitHub, you're also welcome to host your docs elsewhere.

* **RTL Support** Full right-to-left layout for RTL languages such as Arabic, Persian (Farsi), Hebrew etc.


Getting Started with Slate
------------------------------

### Prerequisites

You're going to need:

 - **Linux or macOS** — Windows may work, but is unsupported.
 - **Ruby, version 2.3.1 or newer**
 - **Bundler** — If Ruby is already installed, but the `bundle` command doesn't work, just run `gem install bundler` in a terminal.

### Getting Set Up

1. Fork this repository on GitHub.
2. Clone *your forked repository* (not our original one) to your hard drive with `git clone https://github.com/YOURUSERNAME/slate.git`
3. `cd slate`
4. Initialize and start Slate. You can either do this locally, or with Vagrant:

```shell
# either run this to run locally
bundle install
bundle exec middleman server

# OR run this to run with vagrant
vagrant up
```

You can now see the docs at http://localhost:4567. Whoa! That was fast!

Now that Slate is all set up on your machine, you'll probably want to learn more about [editing Slate markdown](https://github.com/slatedocs/slate/wiki/Markdown-Syntax), or [how to publish your docs](https://github.com/slatedocs/slate/wiki/Deploying-Slate).

If you'd prefer to use Docker, instructions are available [in the wiki](https://github.com/slatedocs/slate/wiki/Docker).

### Note on JavaScript Runtime

For those who don't have JavaScript runtime or are experiencing JavaScript runtime issues with ExecJS, it is recommended to add the [rubyracer gem](https://github.com/cowboyd/therubyracer) to your gemfile and run `bundle` again.

Companies Using Slate
---------------------------------

* [NASA](https://api.nasa.gov)
* [Sony](http://developers.cimediacloud.com)
* [Best Buy](https://bestbuyapis.github.io/api-documentation/)
* [Travis-CI](https://docs.travis-ci.com/api/)
* [Greenhouse](https://developers.greenhouse.io/harvest.html)
* [WooCommerce](http://woocommerce.github.io/woocommerce-rest-api-docs/)
* [Dwolla](https://docs.dwolla.com/)
* [Clearbit](https://clearbit.com/docs)
* [Coinbase](https://developers.coinbase.com/api)
* [Parrot Drones](http://developer.parrot.com/docs/bebop/)

You can view more in [the list on the wiki](https://github.com/slatedocs/slate/wiki/Slate-in-the-Wild).

Questions? Need Help? Found a bug?
--------------------

If you've got questions about setup, deploying, special feature implementation in your fork, or just want to chat with the developer, please feel free to [start a thread in our Discussions tab](https://github.com/slatedocs/slate/discussions)!

Found a bug with upstream Slate? Go ahead and [submit an issue](https://github.com/slatedocs/slate/issues). And, of course, feel free to submit pull requests with bug fixes or changes to the `dev` branch.

Contributors
--------------------

Slate was built by [Robert Lord](https://lord.io) while interning at [TripIt](https://www.tripit.com/).

Thanks to the following people who have submitted major pull requests:

- [@chrissrogers](https://github.com/chrissrogers)
- [@bootstraponline](https://github.com/bootstraponline)
- [@realityking](https://github.com/realityking)
- [@cvkef](https://github.com/cvkef)

Also, thanks to [Sauce Labs](http://saucelabs.com) for sponsoring the development of the responsive styles.

---
title: ControlShift Labs API & Webhook Reference

#language_tabs:
#  - js
#  - ruby

toc_footers:
  - <a href="https://www.controlshiftlabs.com/">Sign Up for ControlShift</a>
  - <a href="https://github.com/tripit/slate">Documentation Powered by Slate</a>

includes:
  - json/intro
  - json/petitions.md.erb
  - json/categories.md.erb
  - json/partnerships.md.erb
  - json/efforts.md.erb
  - json/calendars.md.erb
  - json/local.md.erb
  - json/bulk_data.md.erb
  - webhooks.md.erb
  - bulk_data.md.erb
  - authenticated_api/intro
  - authenticated_api/organisation
  - authenticated_api/email_opt_in_types
  - authenticated_api/consent_content_versions
  - authenticated_api/members.md.erb
  - authenticated_api/petitions.md.erb
  - authenticated_api/signatures.md.erb
  - authenticated_api/efforts.md.erb
  - authenticated_api/partnerships
  - authenticated_api/events.md.erb
  - authenticated_api/attendees.md.erb
  - authenticated_api/calendars.md.erb
  - authenticated_api/event_types.md.erb
  - authenticated_api/local_chapters.md.erb  
  - authenticated_api/webhook_endpoints

search: true
---

# Introduction

Welcome to the [ControlShift Labs](http://www.controlshiftlabs.com/) Developer documentation. Our APIs are designed to allow software engineers to create rich integrations between ControlShift content and third-party services and websites.

We offer several APIs to customers to cover different integration use cases.

- __JSONP API__ Unauthenticated API designed to be consumed by javascript clients written by front-end engineers. Quickly display public information about petitions, efforts, and events on external sites.

- __Webhooks__ Get notified when changes happen so external systems can react.

- __Bulk Data__ Integrate your ControlShift instance with a data warehouse like Redshift for SQL access and reporting.

- __Authenticated REST__ Server Side API integration option for more advanced scenarios than are possible with the JSONP API. Uses OAuth2 to allow third-party developers to create applications and customers to grant access.

It's important to choose the right API for the project you're undertaking. For example, the Webhooks API is almost always the right choice if you're syncing ControlShift data to a CRM.

API Usage assistance is available via email at [support@controlshiftlabs.com](mailto:support@controlshiftlabs.com) 

We publish various pieces of [open source code on Github](https://github.com/controlshift/) which you may find useful.

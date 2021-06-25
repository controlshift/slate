---
title: ControlShift Labs API & Webhook Reference

#language_tabs:
#  - js
#  - ruby

toc_footers:
  - <a href="https://www.controlshiftlabs.com/">Sign Up for ControlShift</a>
  - <a href="https://github.com/tripit/slate">Documentation Powered by Slate</a>

includes:
  - json_intro
  - json_single_petition
  - json_featured_petitions
  - json_categories_list
  - json_category_petitions
  - json_partnership_petitions
  - json_effort_petitions
  - json_effort_petitions_near
  - json_calendars
  - json_local_points
  - json_local
  - json_me
  - json_bulk_data_schema
  - json_bulk_data_columns
  - webhooks.md.erb
  - bulk_data.md.erb
  - authenticated_api_intro
  - authenticated_api_organisation
  - authenticated_api_email_opt_in_types
  - authenticated_api_consent_content_versions
  - authenticated_api_members
  - authenticated_api_petitions
  - authenticated_api_signatures.md.erb
  - authenticated_api_partnerships
  - authenticated_api_events
  - authenticated_api_attendees.md.erb
  - authenticated_api_calendars
  - authenticated_api_local_chapters  
  - authenticated_api_webhook_endpoints

search: true
---

# Introduction

Welcome to the [ControlShift Labs](http://www.controlshiftlabs.com/) Developer documentation. Our APIs are designed to allow software engineers to create rich integrations between ControlShift content and third-party services and websites.

We offer several APIs to customers to cover different integration use cases.

- __JSONP API__ Unauthenticated API designed to be consumed by javascript clients written by front-end engineers. Quickly display public information about petitions, efforts, and users on external sites.

- __Webhooks__ Get notified when changes happen so external systems can react.

- __Bulk Data__ Integrate your ControlShift instance with a data warehouse like Redshift for SQL access and reporting.

- __Authenticated REST__ Server Side API integration option for more advanced scenarios. Uses OAuth2 to allow third-party developers to create applications and customers to grant access.

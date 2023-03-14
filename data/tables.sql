DROP TABLE IF EXISTS admin_notes;
CREATE TABLE admin_notes ("id" bigint, "parent_type" CHARACTER VARYING(max), "parent_id" bigint, "source" CHARACTER VARYING(max), "user_id" bigint, "body" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS attendee_shifts;
CREATE TABLE attendee_shifts ("id" bigint, "shift_id" bigint, "attendee_id" bigint, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max));
DROP TABLE IF EXISTS attendees;
CREATE TABLE attendees ("id" integer, "event_id" integer, "member_id" integer, "email" CHARACTER VARYING(max), "first_name" CHARACTER VARYING(max), "last_name" CHARACTER VARYING(max), "phone_number" CHARACTER VARYING(max), "postcode" CHARACTER VARYING(max), "created_at" timestamp without time zone, "country" CHARACTER VARYING(max), "new_member" boolean, "attending_status" CHARACTER VARYING(max), "generated_local_chapter_member_id" integer, "cached_organisation_slug" CHARACTER VARYING(max), "additional_fields" CHARACTER VARYING(max), "external_action_id" CHARACTER VARYING(max), "join_organisation" boolean, "join_list_suppressed" boolean, "source" CHARACTER VARYING(max), "old_daisy_chain_used" CHARACTER VARYING(max), "token" CHARACTER VARYING(max), "eu_data_processing_consent" boolean, "consent_content_version_id" bigint, "daisy_chain_id_used" bigint, "email_opt_in_type_id" bigint, "locale" CHARACTER VARYING(max), "notification_level" CHARACTER VARYING(max), "confirmed_at" timestamp without time zone, "confirmed_reason" CHARACTER VARYING(max), "confirmation_token" CHARACTER VARYING(max), "confirmation_sent_at" timestamp without time zone, "unsubscribe_at" timestamp without time zone, "updated_at" timestamp without time zone, "synced_to_crm_at" timestamp without time zone, "utm_params" CHARACTER VARYING(max), "postcode_id" bigint, "referring_share_click_id" integer, "opt_in_sms" boolean, "sms_opt_in_type_id" bigint, "recaptcha_score" numeric(3,2), "new_mobile_subscriber" boolean, "external_ids" CHARACTER VARYING(max), "from_one_click" boolean, "partnership_opt_ins" CHARACTER VARYING(max), "user_ip" CHARACTER VARYING(max), "user_agent" CHARACTER VARYING(max));
DROP TABLE IF EXISTS blast_emails;
CREATE TABLE blast_emails ("id" integer, "petition_id" integer, "from_name" CHARACTER VARYING(max), "reply_to_address" CHARACTER VARYING(max), "subject" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "recipient_count" integer, "admin_status" CHARACTER VARYING(max), "delivery_status" CHARACTER VARYING(max), "administered_at" timestamp without time zone, "admin_reason" CHARACTER VARYING(max), "type" CHARACTER VARYING(max), "organisation_id" integer, "target_recipients" CHARACTER VARYING(max), "event_id" integer, "deliver_at" timestamp without time zone, "deliver_at_time_zone" CHARACTER VARYING(max), "partnership_id" bigint, "locale" CHARACTER VARYING(max), "reviewer_type" CHARACTER VARYING(max), "reviewer_id" bigint, "author_id" integer, "editor_mode" CHARACTER VARYING(max));
DROP TABLE IF EXISTS calendars;
CREATE TABLE calendars ("id" integer, "slug" CHARACTER VARYING(max), "organisation_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "archived_at" timestamp without time zone, "default_event_title" CHARACTER VARYING(max), "default_event_description" CHARACTER VARYING(max), "default_event_start" timestamp without time zone, "target_collection_id" integer, "auto_approved_events" boolean, "requires_organiser_instructions" boolean, "ask_host_address" boolean, "external_ids" CHARACTER VARYING(max), "disable_event_creation" boolean, "show_target_data_on_event_creation" boolean, "allow_multiple_events_per_constituency" boolean, "default_event_end" timestamp without time zone, "redirect_to" CHARACTER VARYING(max), "launched" boolean, "created_through_wizard" boolean, "current_wizard_step" CHARACTER VARYING(max), "partnership_id" bigint, "default_event_forum_enabled" boolean, "region_id" bigint, "default_event_image_file_name" CHARACTER VARYING(max), "default_event_image_content_type" CHARACTER VARYING(max), "default_event_image_file_size" bigint, "default_event_image_updated_at" timestamp without time zone, "social_share_image_file_name" CHARACTER VARYING(max), "social_share_image_content_type" CHARACTER VARYING(max), "social_share_image_file_size" bigint, "social_share_image_updated_at" timestamp without time zone, "theme_id" bigint);
DROP TABLE IF EXISTS campaign_admins;
CREATE TABLE campaign_admins ("id" integer, "user_id" integer, "invitation_email" CHARACTER VARYING(max), "invitation_token" CHARACTER VARYING(max), "campaign_id" integer, "campaign_type" CHARACTER VARYING(max), "external_ids" CHARACTER VARYING(max), "created_at" timestamp(6) without time zone, "updated_at" timestamp(6) without time zone);
DROP TABLE IF EXISTS campaigns_partnerships;
CREATE TABLE campaigns_partnerships ("id" bigint, "campaign_type" CHARACTER VARYING(max), "campaign_id" bigint, "partnership_id" bigint, "created_at" timestamp(6) without time zone, "updated_at" timestamp(6) without time zone);
DROP TABLE IF EXISTS categories;
CREATE TABLE categories ("id" integer, "name" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "organisation_id" integer, "slug" CHARACTER VARYING(max), "locales" CHARACTER VARYING(max), "external_ids" CHARACTER VARYING(max));
DROP TABLE IF EXISTS categorized_petitions;
CREATE TABLE categorized_petitions ("id" integer, "category_id" integer, "petition_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS comments;
CREATE TABLE comments ("id" integer, "text" CHARACTER VARYING(max), "up_count" integer, "approved" boolean, "flagged_at" timestamp without time zone, "flagged_by_id" integer, "signature_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "featured" boolean, "flag_reason" CHARACTER VARYING(max), "flag_recaptcha_score" numeric(3,2), "user_ip" CHARACTER VARYING(max), "user_agent" CHARACTER VARYING(max));
DROP TABLE IF EXISTS consent_content_versions;
CREATE TABLE consent_content_versions ("id" bigint, "organisation_id" integer, "privacy_policy_content_id" integer, "privacy_policy_content_version" integer, "tos_content_id" integer, "tos_content_version" integer, "data_processing_consent_label_content_id" integer, "data_processing_consent_label_content_version" integer, "created_at" timestamp without time zone, "external_id" CHARACTER VARYING(max), "consent_type" CHARACTER VARYING(max));
DROP TABLE IF EXISTS contents;
CREATE TABLE contents ("id" integer, "organisation_id" integer, "slug" CHARACTER VARYING(max), "name" CHARACTER VARYING(max), "category" CHARACTER VARYING(max), "body" CHARACTER VARYING(max), "filter" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "kind" CHARACTER VARYING(max), "locale_string" CHARACTER VARYING(max), "hidden_on_cms" boolean);
DROP TABLE IF EXISTS crm_sync_logs;
CREATE TABLE crm_sync_logs ("id" integer, "member_id" integer, "action_id" integer, "action_type" CHARACTER VARYING(max), "organisation_id" integer, "notifier" CHARACTER VARYING(max), "message" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS custom_links;
CREATE TABLE custom_links ("id" integer, "organisation_id" integer, "location" CHARACTER VARYING(max), "position" integer, "url" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "theme_id" bigint);
DROP TABLE IF EXISTS daisy_chain_rules;
CREATE TABLE daisy_chain_rules ("id" integer, "organisation_id" integer, "type" CHARACTER VARYING(max), "position" integer, "parameters" CHARACTER VARYING(max), "campaign_type" CHARACTER VARYING(max), "created_at" timestamp(6) without time zone, "updated_at" timestamp(6) without time zone);
DROP TABLE IF EXISTS daisy_chain_steps;
CREATE TABLE daisy_chain_steps ("id" bigint, "type" CHARACTER VARYING(max), "position" integer, "daisy_chain_id" bigint, "settings" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS daisy_chains;
CREATE TABLE daisy_chains ("id" bigint, "daisy_chain_rule_id" bigint, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS data_exports;
CREATE TABLE data_exports ("id" integer, "name" CHARACTER VARYING(max), "exported_by_id" integer, "report_file_name" CHARACTER VARYING(max), "report_content_type" CHARACTER VARYING(max), "report_file_size" bigint, "report_updated_at" timestamp without time zone, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "organisation_id" integer, "query_parameters" CHARACTER VARYING(max), "status" CHARACTER VARYING(max), "parent_type" CHARACTER VARYING(max), "parent_id" bigint, "export_type" CHARACTER VARYING(max));
DROP TABLE IF EXISTS data_processing_consents;
CREATE TABLE data_processing_consents ("id" bigint, "data_processing_consentable_type" CHARACTER VARYING(max), "data_processing_consentable_id" bigint, "consent_content_version_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS drip_email_preferences;
CREATE TABLE drip_email_preferences ("id" integer, "organisation_id" integer, "slug" CHARACTER VARYING(max), "enabled" boolean, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS efforts;
CREATE TABLE efforts ("id" integer, "organisation_id" integer, "slug" CHARACTER VARYING(max), "title_default" CHARACTER VARYING(max), "who_default" CHARACTER VARYING(max), "what_default" CHARACTER VARYING(max), "why_default" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "image_file_name" CHARACTER VARYING(max), "image_content_type" CHARACTER VARYING(max), "image_file_size" integer, "image_updated_at" timestamp without time zone, "ask_for_location" boolean, "effort_type" CHARACTER VARYING(max), "distance_limit" integer, "prompt_edit_individual_petition" boolean, "featured" boolean, "image_default_file_name" CHARACTER VARYING(max), "image_default_content_type" CHARACTER VARYING(max), "image_default_file_size" integer, "image_default_updated_at" timestamp without time zone, "target_collection_id" integer, "settings" CHARACTER VARYING(max), "hub_banner_file_name" CHARACTER VARYING(max), "hub_banner_content_type" CHARACTER VARYING(max), "hub_banner_file_size" integer, "hub_banner_updated_at" timestamp without time zone, "new_petition_form_banner_file_name" CHARACTER VARYING(max), "new_petition_form_banner_content_type" CHARACTER VARYING(max), "new_petition_form_banner_file_size" integer, "new_petition_form_banner_updated_at" timestamp without time zone, "new_petition_facebook_share_file_name" CHARACTER VARYING(max), "new_petition_facebook_share_content_type" CHARACTER VARYING(max), "new_petition_facebook_share_file_size" integer, "new_petition_facebook_share_updated_at" timestamp without time zone, "custom_goal" integer, "global_signature_count_add_amount" integer, "search_method" CHARACTER VARYING(max), "launched" boolean, "wizard_fields" CHARACTER VARYING(max), "search_kind" CHARACTER VARYING(max), "objective_collection_id" integer, "theme_id" bigint, "external_ids" CHARACTER VARYING(max));
DROP TABLE IF EXISTS email_opt_in_types;
CREATE TABLE email_opt_in_types ("id" bigint, "organisation_id" bigint, "kind" CHARACTER VARYING(max), "mailable" boolean, "active" boolean, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "context" CHARACTER VARYING(max), "external_id" CHARACTER VARYING(max), "content_settings" CHARACTER VARYING(max));
DROP TABLE IF EXISTS email_opt_in_uploads;
CREATE TABLE email_opt_in_uploads ("id" bigint, "organisation_id" bigint, "email_opt_in_type_id" bigint, "csv_file_url" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS event_imports;
CREATE TABLE event_imports ("id" integer, "event_import_batch_id" integer, "imported_event_id" integer, "import_status" CHARACTER VARYING(max), "import_errors" CHARACTER VARYING(max), "imported_at" timestamp without time zone, "last_processed_at" timestamp without time zone, "title" CHARACTER VARYING(max), "description" CHARACTER VARYING(max), "location" CHARACTER VARYING(max), "max_attendees_count" integer, "calendar_slug" CHARACTER VARYING(max), "time_zone" CHARACTER VARYING(max), "web_conference_url" CHARACTER VARYING(max), "host_email" CHARACTER VARYING(max), "locale" CHARACTER VARYING(max), "host_address" CHARACTER VARYING(max), "start_at_string" CHARACTER VARYING(max), "end_at_string" CHARACTER VARYING(max), "virtual" boolean);
DROP TABLE IF EXISTS event_types;
CREATE TABLE event_types ("id" bigint, "organisation_id" bigint, "name" CHARACTER VARYING(max), "localized_names" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max), "crm_settings" CHARACTER VARYING(max));
DROP TABLE IF EXISTS events;
CREATE TABLE events ("id" integer, "title" CHARACTER VARYING(max), "description" CHARACTER VARYING(max), "slug" CHARACTER VARYING(max), "start_at" timestamp without time zone, "end_at" timestamp without time zone, "location_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "user_id" integer, "organisation_id" integer, "calendar_id" integer, "admin_status" CHARACTER VARYING(max), "admin_reason" CHARACTER VARYING(max), "administered_at" timestamp without time zone, "max_attendees_count" integer, "locale" CHARACTER VARYING(max), "target_id" integer, "thank_attendee_email_content" CHARACTER VARYING(max), "approaching_event_attendee_email_content" CHARACTER VARYING(max), "notify_changes_to_attendees" boolean, "sharing_disabled" boolean, "host_address" CHARACTER VARYING(max), "cancel_reason" CHARACTER VARYING(max), "cancelled_at" timestamp without time zone, "local_chapter_id" integer, "launched_at" timestamp without time zone, "hidden_address" boolean, "promoted_from_waitlist_email_content" CHARACTER VARYING(max), "petition_id" integer, "extra_location_info" CHARACTER VARYING(max), "external_action_id" CHARACTER VARYING(max), "request_referer" CHARACTER VARYING(max), "time_zone" CHARACTER VARYING(max), "hidden_at" timestamp without time zone, "daisy_chain_id" bigint, "new_member_daisy_chain_id" bigint, "forum_enabled" boolean, "reviewer_id" integer, "event_type_id" integer, "region_id" bigint, "settings" CHARACTER VARYING(max), "campaigner_contactable" boolean, "crm_settings" CHARACTER VARYING(max), "created_by_id" bigint, "reviewer_type" CHARACTER VARYING(max), "mentor_id" bigint, "redirect_to" CHARACTER VARYING(max), "web_conference_url" CHARACTER VARYING(max), "virtual" boolean, "content_updated_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max), "featured" boolean, "theme_id" bigint, "utm_params" CHARACTER VARYING(max), "user_ip" CHARACTER VARYING(max), "user_agent" CHARACTER VARYING(max));
DROP TABLE IF EXISTS export_download_logs;
CREATE TABLE export_download_logs ("id" bigint, "user_id" bigint, "data_export_id" bigint, "created_at" timestamp without time zone);
DROP TABLE IF EXISTS external_events;
CREATE TABLE external_events ("id" bigint, "organisation_id" bigint, "title" CHARACTER VARYING(max), "description" CHARACTER VARYING(max), "location_id" bigint, "start_at" timestamp without time zone, "end_at" timestamp without time zone, "time_zone" CHARACTER VARYING(max), "url" CHARACTER VARYING(max), "external_ids" CHARACTER VARYING(max), "attending_count" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "region_id" bigint, "source_system" CHARACTER VARYING(max), "local_chapter_id" bigint, "calendar_id" bigint, "featured" boolean, "event_type_id" bigint);
DROP TABLE IF EXISTS import_batches;
CREATE TABLE import_batches ("id" integer, "organisation_id" integer, "user_id" integer, "original_csv_file_file_name" CHARACTER VARYING(max), "original_csv_file_content_type" CHARACTER VARYING(max), "original_csv_file_file_size" integer, "original_csv_file_updated_at" timestamp without time zone, "type" CHARACTER VARYING(max), "created_at" timestamp without time zone, "deleted_at" timestamp without time zone);
DROP TABLE IF EXISTS labelings;
CREATE TABLE labelings ("id" bigint, "label_id" bigint, "labelable_type" CHARACTER VARYING(max), "labelable_id" bigint, "created_by_user_id" bigint, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS labels;
CREATE TABLE labels ("id" bigint, "organisation_id" bigint, "name" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "crm_settings" CHARACTER VARYING(max), "public" boolean);
DROP TABLE IF EXISTS local_chapter_members;
CREATE TABLE local_chapter_members ("id" integer, "local_chapter_id" integer, "member_id" integer, "introduction" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "email" CHARACTER VARYING(max), "first_name" CHARACTER VARYING(max), "last_name" CHARACTER VARYING(max), "phone_number" CHARACTER VARYING(max), "postcode" CHARACTER VARYING(max), "country" CHARACTER VARYING(max), "locale" CHARACTER VARYING(max), "notification_level" CHARACTER VARYING(max), "type" CHARACTER VARYING(max), "local_chapter_organiser_request_id" integer, "user_id" integer, "deleted_at" timestamp without time zone, "eu_data_processing_consent_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max), "synced_to_crm_at" timestamp without time zone, "new_member" boolean, "additional_fields" CHARACTER VARYING(max), "cached_organisation_slug" CHARACTER VARYING(max), "utm_params" CHARACTER VARYING(max));
DROP TABLE IF EXISTS local_chapters;
CREATE TABLE local_chapters ("id" integer, "name" CHARACTER VARYING(max), "slug" CHARACTER VARYING(max), "organisation_id" integer, "geography_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "description" CHARACTER VARYING(max), "local_chapter_collection_id" integer, "creation_survey_responses" CHARACTER VARYING(max), "location_id" integer, "welcome_email_content" CHARACTER VARYING(max), "last_activity_notification_sent_at" timestamp without time zone, "deleted_at" timestamp without time zone, "region_id" bigint, "unlisted" boolean, "mentor_id" bigint, "content_updated_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max), "theme_id" bigint);
DROP TABLE IF EXISTS locales;
CREATE TABLE locales ("id" integer, "organisation_id" integer, "name" CHARACTER VARYING(max), "visible" boolean, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max));
DROP TABLE IF EXISTS locations;
CREATE TABLE locations ("id" integer, "query" CHARACTER VARYING(max), "latitude" numeric(13,10), "longitude" numeric(13,10), "street" CHARACTER VARYING(max), "locality" CHARACTER VARYING(max), "postal_code" CHARACTER VARYING(max), "country" CHARACTER VARYING(max), "region" CHARACTER VARYING(max), "warning" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "street_number" CHARACTER VARYING(max), "venue" CHARACTER VARYING(max), "ngp_van_external_ids" CHARACTER VARYING(max), "static_map_file_name" CHARACTER VARYING(max), "static_map_content_type" CHARACTER VARYING(max), "static_map_file_size" integer, "static_map_updated_at" timestamp without time zone);
DROP TABLE IF EXISTS members;
CREATE TABLE members ("id_old" integer, "email" CHARACTER VARYING(max), "organisation_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "forum_premoderation_required" boolean, "soft_login_token" CHARACTER VARYING(max), "soft_login_sent_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max), "banned_at" timestamp without time zone, "banned_by_user_id" bigint, "id" bigint);
DROP TABLE IF EXISTS model_contents;
CREATE TABLE model_contents ("id" integer, "slug" CHARACTER VARYING(max), "body" CHARACTER VARYING(max), "contentable_id" integer, "contentable_type" CHARACTER VARYING(max), "locale_string" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS objective_collections;
CREATE TABLE objective_collections ("id" bigint, "name" CHARACTER VARYING(max), "kind" CHARACTER VARYING(max), "file_upload_file_name" CHARACTER VARYING(max), "file_upload_content_type" CHARACTER VARYING(max), "file_upload_file_size" integer, "file_upload_updated_at" timestamp without time zone, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS objectives;
CREATE TABLE objectives ("id" bigint, "name" CHARACTER VARYING(max), "objective_collection_id" integer, "properties" CHARACTER VARYING(max), "location_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "slug" CHARACTER VARYING(max));
DROP TABLE IF EXISTS partnership_subscriptions;
CREATE TABLE partnership_subscriptions ("id" bigint, "partnership_id" bigint, "member_id" bigint, "token" CHARACTER VARYING(max), "signature_id" bigint, "unsubscribed_at" timestamp without time zone, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS partnerships;
CREATE TABLE partnerships ("id" bigint, "organisation_id" bigint, "title" CHARACTER VARYING(max), "slug" CHARACTER VARYING(max), "image_file_name" CHARACTER VARYING(max), "image_content_type" CHARACTER VARYING(max), "image_file_size" integer, "image_updated_at" timestamp without time zone, "settings" CHARACTER VARYING(max), "thank_signer_email" CHARACTER VARYING(max), "thank_signer_forward_email" CHARACTER VARYING(max), "share_by_email_body" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max), "theme_id" bigint, "external_website_url" CHARACTER VARYING(max), "facebook_url" CHARACTER VARYING(max), "twitter_url" CHARACTER VARYING(max));
DROP TABLE IF EXISTS petition_flags;
CREATE TABLE petition_flags ("id" integer, "petition_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "reason" CHARACTER VARYING(max), "email" CHARACTER VARYING(max), "member_id" bigint, "recaptcha_score" numeric(3,2), "user_ip" CHARACTER VARYING(max), "user_agent" CHARACTER VARYING(max));
DROP TABLE IF EXISTS petition_starts;
CREATE TABLE petition_starts ("id" bigint, "current_step" CHARACTER VARYING(max), "title" CHARACTER VARYING(max), "who" CHARACTER VARYING(max), "why" CHARACTER VARYING(max), "what" CHARACTER VARYING(max), "location_id" bigint, "organisation_id" bigint, "user_id" bigint, "started_petition_id" bigint, "partnership_id" bigint, "locale" CHARACTER VARYING(max), "external_action_id" CHARACTER VARYING(max), "source" CHARACTER VARYING(max), "created_at" timestamp(6) without time zone, "updated_at" timestamp(6) without time zone, "help_requested_at" timestamp without time zone, "email" CHARACTER VARYING(max), "member_id" bigint, "help_prompt_enabled" boolean, "local_chapter_id" bigint, "cannot_change_associated_partnership" boolean, "utm_params" CHARACTER VARYING(max));
DROP TABLE IF EXISTS petitions;
CREATE TABLE petitions ("id" integer, "title" CHARACTER VARYING(max), "who" CHARACTER VARYING(max), "why" CHARACTER VARYING(max), "what" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "user_id" integer, "slug" CHARACTER VARYING(max), "organisation_id" integer, "delivery_details" CHARACTER VARYING(max), "hidden" boolean, "admin_status" CHARACTER VARYING(max), "launched" boolean, "campaigner_contactable" boolean, "admin_reason" CHARACTER VARYING(max), "administered_at" timestamp without time zone, "effort_id" integer, "source" CHARACTER VARYING(max), "location_id" integer, "alias" CHARACTER VARYING(max), "target_id" integer, "redirect_to" CHARACTER VARYING(max), "external_facebook_page" CHARACTER VARYING(max), "external_site" CHARACTER VARYING(max), "show_progress_bar" boolean, "comments_updated_at" timestamp without time zone, "successful" boolean, "ended_story" CHARACTER VARYING(max), "locale" CHARACTER VARYING(max), "settings" CHARACTER VARYING(max), "signature_count_add_amount" integer, "locked_fields" CHARACTER VARYING(max), "request_referer" CHARACTER VARYING(max), "spam_status" CHARACTER VARYING(max), "ended_type" CHARACTER VARYING(max), "ended_reason" CHARACTER VARYING(max), "external_action_id" CHARACTER VARYING(max), "custom_goal" integer, "events_enabled_email_sent_at" timestamp without time zone, "local_chapter_id" integer, "image_description" CHARACTER VARYING(max), "signature_behaviour" CHARACTER VARYING(max), "objective_id" integer, "daisy_chain_id" bigint, "new_member_daisy_chain_id" bigint, "region_id" bigint, "ended_at" timestamp without time zone, "reviewer_type" CHARACTER VARYING(max), "reviewer_id" bigint, "mentor_id" bigint, "content_updated_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max), "theme_id" bigint, "utm_params" CHARACTER VARYING(max), "user_ip" CHARACTER VARYING(max), "user_agent" CHARACTER VARYING(max));
DROP TABLE IF EXISTS regions;
CREATE TABLE regions ("id" bigint, "organisation_id" bigint, "name" CHARACTER VARYING(max), "api_key" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "geography_id" bigint, "slug" CHARACTER VARYING(max), "public" boolean, "theme_id" bigint);
DROP TABLE IF EXISTS share_clicks;
CREATE TABLE share_clicks ("id" bigint, "page_type" CHARACTER VARYING(max), "page_id" bigint, "medium" CHARACTER VARYING(max), "member_id" bigint, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "token" CHAR(36), "auto_generated" boolean);
DROP TABLE IF EXISTS shifts;
CREATE TABLE shifts ("id" bigint, "event_id" bigint, "name" CHARACTER VARYING(max), "start_at" timestamp without time zone, "end_at" timestamp without time zone, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max));
DROP TABLE IF EXISTS signatures;
CREATE TABLE signatures ("id_old" integer, "petition_id" integer, "email" CHARACTER VARYING(max), "first_name" CHARACTER VARYING(max), "last_name" CHARACTER VARYING(max), "phone_number" CHARACTER VARYING(max), "postcode" CHARACTER VARYING(max), "created_at" timestamp without time zone, "join_organisation" boolean, "deleted_at" timestamp without time zone, "unsubscribe_at" timestamp without time zone, "member_id" integer, "additional_fields" CHARACTER VARYING(max), "cached_organisation_slug" CHARACTER VARYING(max), "source" CHARACTER VARYING(max), "new_member" boolean, "external_action_id" CHARACTER VARYING(max), "locale" CHARACTER VARYING(max), "bucket" CHARACTER VARYING(max), "country" CHARACTER VARYING(max), "updated_at" timestamp without time zone, "join_list_suppressed" boolean, "old_daisy_chain_used" CHARACTER VARYING(max), "from_embed" boolean, "confirmation_token" CHARACTER VARYING(max), "confirmed_at" timestamp without time zone, "confirmation_sent_at" timestamp without time zone, "last_signed_at" timestamp without time zone, "confirmed_reason" CHARACTER VARYING(max), "synced_to_crm_at" timestamp without time zone, "daisy_chain_experiment_slug" CHARACTER VARYING(max), "from_one_click" boolean, "eu_data_processing_consent" boolean, "consent_content_version_id" bigint, "daisy_chain_id_used" bigint, "email_opt_in_type_id" bigint, "facebook_id" CHARACTER VARYING(max), "utm_params" CHARACTER VARYING(max), "postcode_id" bigint, "referring_share_click_id" integer, "opt_in_sms" boolean, "sms_opt_in_type_id" bigint, "recaptcha_score" numeric(3,2), "new_mobile_subscriber" boolean, "external_ids" CHARACTER VARYING(max), "id" bigint, "partnership_opt_ins" CHARACTER VARYING(max), "user_ip" CHARACTER VARYING(max), "user_agent" CHARACTER VARYING(max));
DROP TABLE IF EXISTS sms_opt_in_types;
CREATE TABLE sms_opt_in_types ("id" bigint, "organisation_id" bigint, "context" CHARACTER VARYING(max), "kind" CHARACTER VARYING(max), "active" boolean, "content_settings" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "phone_number_required" boolean);
DROP TABLE IF EXISTS stories;
CREATE TABLE stories ("id" integer, "title" CHARACTER VARYING(max), "content" CHARACTER VARYING(max), "featured" boolean, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "image_file_name" CHARACTER VARYING(max), "image_content_type" CHARACTER VARYING(max), "image_file_size" integer, "image_updated_at" timestamp without time zone, "organisation_id" integer, "link" CHARACTER VARYING(max));
DROP TABLE IF EXISTS target_collections;
CREATE TABLE target_collections ("id" integer, "name" CHARACTER VARYING(max), "organisation_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "geographic_collection_id" integer, "target_name_format" CHARACTER VARYING(max));
DROP TABLE IF EXISTS target_notifications;
CREATE TABLE target_notifications ("id" integer, "target_for_petition_id" integer, "kind" CHARACTER VARYING(max), "opened_at" timestamp without time zone, "clicked_at" timestamp without time zone, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "token" CHARACTER VARYING(max));
DROP TABLE IF EXISTS targets;
CREATE TABLE targets ("id" integer, "name" CHARACTER VARYING(max), "phone_number" CHARACTER VARYING(max), "email" CHARACTER VARYING(max), "location_id" integer, "organisation_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "slug" CHARACTER VARYING(max), "geography_id" integer, "external_id" CHARACTER VARYING(max), "contact_instructions" CHARACTER VARYING(max), "context" CHARACTER VARYING(max), "published_at" timestamp without time zone, "source" CHARACTER VARYING(max), "added_by_user_id" integer);
DROP TABLE IF EXISTS targets_for_petitions;
CREATE TABLE targets_for_petitions ("id" integer, "petition_id" integer, "target_id" integer, "unsubscribed_at" timestamp without time zone, "unsubscribe_reason" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "subscribed_at" timestamp without time zone, "token" CHARACTER VARYING(max), "unsubscribe_option" CHARACTER VARYING(max));
DROP TABLE IF EXISTS targets_in_collections;
CREATE TABLE targets_in_collections ("id" integer, "target_id" integer, "target_collection_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS teams;
CREATE TABLE teams ("id" integer, "name" CHARACTER VARYING(max), "organisation_id" integer, "abilities" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "owner" boolean, "region_id" bigint, "limited_moderation_queue" boolean, "slug" CHARACTER VARYING(max));
DROP TABLE IF EXISTS timeline_posts;
CREATE TABLE timeline_posts ("id" integer, "text" CHARACTER VARYING(max), "user_id" integer, "petition_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "kind" CHARACTER VARYING(max), "text_variables" CHARACTER VARYING(max));
DROP TABLE IF EXISTS unsubscribes;
CREATE TABLE unsubscribes ("id" integer, "organisation_id" integer, "member_id" integer, "blast_email_id" integer, "email" CHARACTER VARYING(max), "unsubscribe_object" boolean, "unsubscribe_organisation" boolean, "unsubscribable_id" integer, "unsubscribable_type" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "externally_unsubscribed_at" timestamp without time zone, "bounce_id" integer, "source" CHARACTER VARYING(max), "external_ids" CHARACTER VARYING(max));
DROP TABLE IF EXISTS user_invitations;
CREATE TABLE user_invitations ("id" integer, "sender_id" integer, "recipient_id" integer, "recipient_email" CHARACTER VARYING(max), "organisation_id" integer, "token" CHARACTER VARYING(max), "accepted_at" timestamp without time zone, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS users;
CREATE TABLE users ("id" integer, "email" CHARACTER VARYING(max), "reset_password_sent_at" timestamp without time zone, "remember_created_at" timestamp without time zone, "sign_in_count" integer, "current_sign_in_at" timestamp without time zone, "last_sign_in_at" timestamp without time zone, "current_sign_in_ip" CHARACTER VARYING(max), "last_sign_in_ip" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "first_name" CHARACTER VARYING(max), "last_name" CHARACTER VARYING(max), "admin" boolean, "phone_number" CHARACTER VARYING(max), "postcode" CHARACTER VARYING(max), "join_organisation" boolean, "organisation_id" integer, "confirmed_at" timestamp without time zone, "confirmation_sent_at" timestamp without time zone, "opt_out_site_email" boolean, "member_id" integer, "additional_fields" CHARACTER VARYING(max), "cached_organisation_slug" CHARACTER VARYING(max), "image_file_name" CHARACTER VARYING(max), "image_content_type" CHARACTER VARYING(max), "image_file_size" integer, "image_updated_at" timestamp without time zone, "locale" CHARACTER VARYING(max), "token" CHARACTER VARYING(max), "new_member" boolean, "failed_attempts" integer, "unlock_token" CHARACTER VARYING(max), "locked_at" timestamp without time zone, "country" CHARACTER VARYING(max), "eu_data_processing_consent_at" timestamp without time zone, "email_opt_in_type_id" bigint, "external_ids" CHARACTER VARYING(max), "activated_at" timestamp without time zone, "activate_token" CHARACTER VARYING(max), "postcode_id" bigint, "recaptcha_score" numeric(3,2), "subscribed_to_marketing_list" boolean, "marketing_list_opt_in" boolean, "identity_provider_ids" CHARACTER VARYING(max), "home_region_id" bigint, "opt_in_sms" boolean, "sms_opt_in_type_id" bigint);

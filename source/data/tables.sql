DROP TABLE IF EXISTS attendees;
CREATE TABLE attendees ("id" integer, "event_id" integer, "member_id" integer, "email" character varying(255), "first_name" character varying(255), "last_name" character varying(255), "phone_number" character varying(255), "postcode" character varying(255), "created_at" timestamp without time zone, "country" character varying(3), "external_constituent_id" character varying(255), "new_member" boolean, "user_ip" character varying(39), "attending_status" character varying(50), "generated_local_chapter_member_id" integer, "cached_organisation_slug" character varying(255), "additional_fields" CHARACTER VARYING(max), "external_action_id" character varying(255), "external_id" character varying(255), "join_organisation" boolean, "join_group" boolean, "join_list_suppressed" boolean, "source" character varying, "old_daisy_chain_used" character varying(50), "token" character varying(24), "eu_data_processing_consent" boolean, "consent_content_version_id" bigint, "daisy_chain_id_used" bigint, "email_opt_in_type_id" bigint, "locale" character varying(5), "notification_level" character varying(20), "confirmed_at" timestamp without time zone, "confirmed_reason" character varying, "confirmation_token" character varying, "confirmation_sent_at" timestamp without time zone, "unsubscribe_at" timestamp without time zone, "updated_at" timestamp without time zone, "synced_to_crm_at" timestamp without time zone, "utm_params" CHARACTER VARYING(max), "postcode_id" bigint);
DROP TABLE IF EXISTS blast_emails;
CREATE TABLE blast_emails ("id" integer, "petition_id" integer, "from_name" character varying(255), "from_address" character varying(255), "subject" character varying(255), "body" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "recipient_count" integer, "admin_status" character varying, "delivery_status" character varying(255), "administered_at" timestamp without time zone, "admin_reason" CHARACTER VARYING(max), "type" character varying(255), "organisation_id" integer, "target_recipients" character varying(255), "reviewer_user_id" integer, "event_id" integer, "deliver_at" timestamp without time zone, "deliver_at_time_zone" character varying, "partnership_id" bigint, "locale" character varying(5));
DROP TABLE IF EXISTS calendars;
CREATE TABLE calendars ("id" integer, "name" character varying(255), "description" CHARACTER VARYING(max), "slug" character varying(255), "organisation_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "archived_at" timestamp without time zone, "default_event_title" character varying(255), "default_event_description" CHARACTER VARYING(max), "default_event_start" timestamp without time zone, "bsd_event_type_id" character varying(255), "image_file_name" character varying(255), "image_content_type" character varying(255), "image_file_size" integer, "image_updated_at" timestamp without time zone, "thank_attendee_email_content" CHARACTER VARYING(max), "create_event_thank_you_email_content" CHARACTER VARYING(max), "approaching_event_attendee_email_content" CHARACTER VARYING(max), "approaching_event_host_email_content" CHARACTER VARYING(max), "target_collection_id" integer, "auto_approved_events" boolean, "requires_organiser_instructions" boolean, "organiser_instructions" CHARACTER VARYING(max), "ask_host_address" boolean, "external_ids" CHARACTER VARYING(max), "disable_event_creation" boolean, "allow_hidden_address" boolean, "show_target_data_on_event_creation" boolean, "allow_multiple_events_per_constituency" boolean, "host_address_explanation" CHARACTER VARYING(max), "promoted_from_waitlist_email_content" CHARACTER VARYING(max), "default_event_end" timestamp without time zone, "new_host_thank_you_email_content" CHARACTER VARYING(max), "redirect_to" CHARACTER VARYING(max), "launched" boolean, "created_through_wizard" boolean, "current_wizard_step" character varying, "partnership_id" bigint, "default_event_forum_enabled" boolean, "region_id" bigint);
DROP TABLE IF EXISTS categories;
CREATE TABLE categories ("id" integer, "name" character varying(255), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "organisation_id" integer, "slug" character varying(255), "external_id" character varying(255), "locales" CHARACTER VARYING(max));
DROP TABLE IF EXISTS categorized_petitions;
CREATE TABLE categorized_petitions ("id" integer, "category_id" integer, "petition_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS comments;
CREATE TABLE comments ("id" integer, "text" CHARACTER VARYING(max), "up_count" integer, "approved" boolean, "flagged_at" timestamp without time zone, "flagged_by_id" integer, "signature_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "featured" boolean, "user_agent" CHARACTER VARYING(max), "user_ip" character varying(255), "flag_reason" character varying(255));
DROP TABLE IF EXISTS consent_content_versions;
CREATE TABLE consent_content_versions ("id" bigint, "organisation_id" integer, "privacy_policy_content_id" integer, "privacy_policy_content_version" integer, "tos_content_id" integer, "tos_content_version" integer, "data_processing_consent_label_content_id" integer, "data_processing_consent_label_content_version" integer, "created_at" timestamp without time zone, "external_id" character varying, "consent_type" character varying);
DROP TABLE IF EXISTS contents;
CREATE TABLE contents ("id" integer, "organisation_id" integer, "slug" character varying(255), "name" character varying(255), "category" character varying(255), "body" CHARACTER VARYING(max), "filter" character varying(255), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "kind" character varying(255), "locale_string" character varying(6), "hidden_on_cms" boolean);
DROP TABLE IF EXISTS crm_sync_logs;
CREATE TABLE crm_sync_logs ("id" integer, "member_id" integer, "action_id" integer, "action_type" character varying(255), "organisation_id" integer, "notifier" character varying(255), "message" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS csv_reports;
CREATE TABLE csv_reports ("id" integer, "name" character varying(255), "exported_by_id" integer, "report_file_name" character varying(255), "report_content_type" character varying(255), "report_file_size" bigint, "report_updated_at" timestamp without time zone, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "organisation_id" integer, "query_parameters" CHARACTER VARYING(max));
DROP TABLE IF EXISTS custom_links;
CREATE TABLE custom_links ("id" integer, "organisation_id" integer, "location" character varying(255), "position" integer, "url" character varying(255), "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS daisy_chain_rules;
CREATE TABLE daisy_chain_rules ("id" integer, "organisation_id" integer, "type" character varying(255), "position" integer, "parameters" CHARACTER VARYING(max), "campaign_type" character varying);
DROP TABLE IF EXISTS data_processing_consents;
CREATE TABLE data_processing_consents ("id" bigint, "data_processing_consentable_type" character varying, "data_processing_consentable_id" bigint, "consent_content_version_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS drip_email_preferences;
CREATE TABLE drip_email_preferences ("id" integer, "organisation_id" integer, "slug" character varying(255), "enabled" boolean, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS efforts;
CREATE TABLE efforts ("id" integer, "organisation_id" integer, "slug" character varying(255), "title_default" CHARACTER VARYING(max), "who_default" CHARACTER VARYING(max), "what_default" CHARACTER VARYING(max), "why_default" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "image_file_name" character varying(255), "image_content_type" character varying(255), "image_file_size" integer, "image_updated_at" timestamp without time zone, "ask_for_location" boolean, "effort_type" character varying(255), "distance_limit" integer, "prompt_edit_individual_petition" boolean, "featured" boolean, "image_default_file_name" character varying(255), "image_default_content_type" character varying(255), "image_default_file_size" integer, "image_default_updated_at" timestamp without time zone, "target_collection_id" integer, "settings" CHARACTER VARYING(max), "hub_banner_file_name" character varying(255), "hub_banner_content_type" character varying(255), "hub_banner_file_size" integer, "hub_banner_updated_at" timestamp without time zone, "new_petition_form_banner_file_name" character varying(255), "new_petition_form_banner_content_type" character varying(255), "new_petition_form_banner_file_size" integer, "new_petition_form_banner_updated_at" timestamp without time zone, "new_petition_facebook_share_file_name" character varying(255), "new_petition_facebook_share_content_type" character varying(255), "new_petition_facebook_share_file_size" integer, "new_petition_facebook_share_updated_at" timestamp without time zone, "custom_goal" integer, "bsd_constituent_group_id" character varying(255), "global_signature_count_add_amount" integer, "bsd_offline_signatures_constituent_group_id" character varying(255), "search_method" character varying, "launched" boolean, "wizard_fields" CHARACTER VARYING(max), "search_kind" character varying, "objective_collection_id" integer);
DROP TABLE IF EXISTS email_opt_in_types;
CREATE TABLE email_opt_in_types ("id" bigint, "organisation_id" bigint, "kind" character varying, "mailable" boolean, "active" boolean, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "context" character varying, "external_id" character varying, "content_settings" CHARACTER VARYING(max));
DROP TABLE IF EXISTS email_opt_in_uploads;
CREATE TABLE email_opt_in_uploads ("id" bigint, "organisation_id" bigint, "email_opt_in_type_id" bigint, "csv_file_url" character varying, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS event_imports;
CREATE TABLE event_imports ("id" integer, "event_import_batch_id" integer, "imported_event_id" integer, "import_status" character varying(255), "import_errors" CHARACTER VARYING(max), "imported_at" timestamp without time zone, "last_processed_at" timestamp without time zone, "title" character varying(255), "description" CHARACTER VARYING(max), "start" timestamp without time zone, "location" character varying(255), "max_attendees_count" integer, "calendar_slug" character varying, "time_zone" character varying(100));
DROP TABLE IF EXISTS event_types;
CREATE TABLE event_types ("id" bigint, "organisation_id" bigint, "name" character varying, "localized_names" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max), "crm_settings" CHARACTER VARYING(max));
DROP TABLE IF EXISTS events;
CREATE TABLE events ("id" integer, "title" character varying(255), "description" CHARACTER VARYING(max), "slug" character varying(255), "start" timestamp without time zone, "end" timestamp without time zone, "location_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "user_id" integer, "organisation_id" integer, "calendar_id" integer, "admin_status" character varying(255), "admin_reason" CHARACTER VARYING(max), "administered_at" timestamp without time zone, "external_id" character varying(255), "image_file_name" character varying(255), "image_content_type" character varying(255), "image_file_size" integer, "image_updated_at" timestamp without time zone, "max_attendees_count" integer, "locale" character varying(5), "target_id" integer, "thank_attendee_email_content" CHARACTER VARYING(max), "approaching_event_attendee_email_content" CHARACTER VARYING(max), "notify_changes_to_attendees" boolean, "sharing_disabled" boolean, "host_address" character varying(255), "cancel_reason" CHARACTER VARYING(max), "cancelled_at" timestamp without time zone, "deleted_at" timestamp without time zone, "type" character varying(255), "local_chapter_id" integer, "launched_at" timestamp without time zone, "hidden_address" boolean, "promoted_from_waitlist_email_content" CHARACTER VARYING(max), "petition_id" integer, "extra_location_info" CHARACTER VARYING(max), "external_action_id" character varying(255), "user_ip" character varying(255), "user_agent" CHARACTER VARYING(max), "request_referer" CHARACTER VARYING(max), "time_zone" character varying(100), "hidden_at" timestamp without time zone, "partnership_id" bigint, "daisy_chain_id" bigint, "new_member_daisy_chain_id" bigint, "forum_enabled" boolean, "reviewer_id" integer, "event_type_id" integer, "region_id" bigint, "settings" CHARACTER VARYING(max), "campaigner_contactable" boolean, "crm_settings" CHARACTER VARYING(max), "created_by_id" bigint);
DROP TABLE IF EXISTS external_events;
CREATE TABLE external_events ("id" bigint, "organisation_id" bigint, "title" character varying, "description" character varying, "location_id" bigint, "start" timestamp without time zone, "end" timestamp without time zone, "time_zone" character varying, "url" CHARACTER VARYING(max), "external_ids" CHARACTER VARYING(max), "attending_count" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "region_id" bigint);
DROP TABLE IF EXISTS import_batches;
CREATE TABLE import_batches ("id" integer, "organisation_id" integer, "user_id" integer, "original_csv_file_file_name" character varying(255), "original_csv_file_content_type" character varying(255), "original_csv_file_file_size" integer, "original_csv_file_updated_at" timestamp without time zone, "type" character varying(255), "created_at" timestamp without time zone, "deleted_at" timestamp without time zone);
DROP TABLE IF EXISTS labelings;
CREATE TABLE labelings ("id" bigint, "label_id" bigint, "labelable_type" character varying, "labelable_id" bigint, "created_by_user_id" bigint, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS labels;
CREATE TABLE labels ("id" bigint, "organisation_id" bigint, "name" character varying, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "crm_settings" CHARACTER VARYING(max));
DROP TABLE IF EXISTS local_chapter_members;
CREATE TABLE local_chapter_members ("id" integer, "local_chapter_id" integer, "member_id" integer, "introduction" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "email" character varying(255), "first_name" character varying(255), "last_name" character varying(255), "phone_number" character varying(255), "postcode" character varying(255), "country" character varying(255), "locale" character varying(5), "notification_level" character varying(20), "type" character varying(255), "local_chapter_organiser_request_id" integer, "user_id" integer, "deleted_at" timestamp without time zone, "eu_data_processing_consent_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max), "synced_to_crm_at" timestamp without time zone, "new_member" boolean, "additional_fields" CHARACTER VARYING(max), "cached_organisation_slug" character varying, "utm_params" CHARACTER VARYING(max));
DROP TABLE IF EXISTS local_chapters;
CREATE TABLE local_chapters ("id" integer, "name" character varying(255), "slug" character varying(255), "organisation_id" integer, "geography_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "description" CHARACTER VARYING(max), "local_chapter_collection_id" integer, "creation_survey_responses" CHARACTER VARYING(max), "location_id" integer, "welcome_email_content" CHARACTER VARYING(max), "last_activity_notification_sent_at" timestamp without time zone, "deleted_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max), "region_id" bigint, "unlisted" boolean);
DROP TABLE IF EXISTS locales;
CREATE TABLE locales ("id" integer, "organisation_id" integer, "name" character varying(255), "visible" boolean, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max));
DROP TABLE IF EXISTS locations;
CREATE TABLE locations ("id" integer, "query" character varying(255), "latitude" numeric(13,10), "longitude" numeric(13,10), "street" character varying(255), "locality" character varying(255), "postal_code" character varying(255), "country" character varying(2), "region" character varying(255), "warning" character varying(255), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "extras" CHARACTER VARYING(max), "street_number" character varying(200), "venue" character varying(255), "ngp_van_external_ids" CHARACTER VARYING(max), "static_map_file_name" character varying, "static_map_content_type" character varying, "static_map_file_size" integer, "static_map_updated_at" timestamp without time zone);
DROP TABLE IF EXISTS members;
CREATE TABLE members ("id" integer, "email" character varying(255), "organisation_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "external_id" character varying(255), "forum_premoderation_required" boolean, "soft_login_token" character varying, "soft_login_sent_at" timestamp without time zone, "external_ids" CHARACTER VARYING(max), "banned_at" timestamp without time zone, "banned_by_user_id" bigint);
DROP TABLE IF EXISTS objective_collections;
CREATE TABLE objective_collections ("id" bigint, "name" character varying, "kind" character varying, "file_upload_file_name" character varying, "file_upload_content_type" character varying, "file_upload_file_size" integer, "file_upload_updated_at" timestamp without time zone, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS objectives;
CREATE TABLE objectives ("id" bigint, "name" character varying, "objective_collection_id" integer, "properties" CHARACTER VARYING(max), "location_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS partnership_subscriptions;
CREATE TABLE partnership_subscriptions ("id" bigint, "partnership_id" bigint, "member_id" bigint, "token" character varying, "signature_id" bigint, "unsubscribed_at" timestamp without time zone, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS partnerships;
CREATE TABLE partnerships ("id" bigint, "organisation_id" bigint, "title" character varying, "slug" character varying, "description" CHARACTER VARYING(max), "external_id" character varying, "image_file_name" character varying, "image_content_type" character varying, "image_file_size" integer, "image_updated_at" timestamp without time zone, "settings" CHARACTER VARYING(max), "thank_signer_email" CHARACTER VARYING(max), "thank_signer_forward_email" CHARACTER VARYING(max), "share_by_email_body" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS petition_flags;
CREATE TABLE petition_flags ("id" integer, "petition_id" integer, "user_id" integer, "ip_address" character varying(255), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "reason" CHARACTER VARYING(max), "email" character varying(255));
DROP TABLE IF EXISTS petitions;
CREATE TABLE petitions ("id" integer, "title" character varying(255), "who" character varying(255), "why" CHARACTER VARYING(max), "what" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "user_id" integer, "slug" character varying(255), "organisation_id" integer, "image_file_name" character varying(255), "image_content_type" character varying(255), "image_file_size" integer, "image_updated_at" timestamp without time zone, "delivery_details" CHARACTER VARYING(max), "hidden" boolean, "admin_status" character varying(255), "launched" boolean, "campaigner_contactable" boolean, "admin_reason" CHARACTER VARYING(max), "administered_at" timestamp without time zone, "effort_id" integer, "admin_notes" CHARACTER VARYING(max), "source" character varying(255), "location_id" integer, "petition_letter_file_name" character varying(255), "petition_letter_content_type" character varying(255), "petition_letter_file_size" integer, "petition_letter_updated_at" timestamp without time zone, "alias" character varying(255), "bsd_constituent_group_id" character varying(255), "target_id" integer, "external_id" character varying(255), "redirect_to" CHARACTER VARYING(max), "external_facebook_page" character varying(255), "external_site" character varying(255), "show_progress_bar" boolean, "comments_updated_at" timestamp without time zone, "after_signature_redirect_url" CHARACTER VARYING(max), "successful" boolean, "ended_story" CHARACTER VARYING(max), "locale" character varying(255), "settings" CHARACTER VARYING(max), "signature_count_add_amount" integer, "locked_fields" CHARACTER VARYING(max), "user_ip" character varying(255), "user_agent" CHARACTER VARYING(max), "request_referer" CHARACTER VARYING(max), "spam_status" character varying(255), "ended_type" character varying(255), "ended_reason" CHARACTER VARYING(max), "external_action_id" character varying(255), "custom_goal" integer, "events_enabled_email_sent_at" timestamp without time zone, "local_chapter_id" integer, "achievements_store" CHARACTER VARYING(max), "image_description" character varying(255), "bsd_signup_form_id" character varying(255), "signature_behaviour" character varying, "social_share_image_file_name" character varying, "social_share_image_content_type" character varying, "social_share_image_file_size" integer, "social_share_image_updated_at" timestamp without time zone, "objective_id" integer, "partnership_id" bigint, "daisy_chain_id" bigint, "new_member_daisy_chain_id" bigint, "region_id" bigint, "reviewer_user_id" integer, "ended_at" timestamp without time zone);
DROP TABLE IF EXISTS regions;
CREATE TABLE regions ("id" bigint, "organisation_id" bigint, "name" character varying, "api_key" character varying, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "geography_id" bigint, "slug" character varying);
DROP TABLE IF EXISTS share_clicks;
CREATE TABLE share_clicks ("id" bigint, "page_type" character varying, "page_id" bigint, "medium" character varying, "member_id" bigint, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS signatures;
CREATE TABLE signatures ("id" integer, "petition_id" integer, "email" character varying(255), "first_name" character varying(255), "last_name" character varying(255), "phone_number" character varying(255), "postcode" character varying(255), "created_at" timestamp without time zone, "join_organisation" boolean, "deleted_at" timestamp without time zone, "unsubscribe_at" timestamp without time zone, "external_constituent_id" character varying(255), "member_id" integer, "additional_fields" CHARACTER VARYING(max), "cached_organisation_slug" character varying(255), "source" character varying(255), "join_group" boolean, "external_id" character varying(255), "new_member" boolean, "external_action_id" character varying(255), "locale" character varying(5), "obfuscated_bsd_cons_id" character varying(255), "bucket" character varying(255), "country" character varying(255), "updated_at" timestamp without time zone, "user_ip" character varying(39), "join_list_suppressed" boolean, "old_daisy_chain_used" character varying(50), "bsd_ab_test_cons_group_id" character varying(255), "from_embed" boolean, "user_agent" character varying(255), "confirmation_token" character varying(255), "confirmed_at" timestamp without time zone, "confirmation_sent_at" timestamp without time zone, "last_signed_at" timestamp without time zone, "confirmed_reason" character varying, "synced_to_crm_at" timestamp without time zone, "daisy_chain_experiment_slug" character varying, "from_one_click" boolean, "eu_data_processing_consent" boolean, "consent_content_version_id" bigint, "daisy_chain_id_used" bigint, "email_opt_in_type_id" bigint, "facebook_id" character varying, "utm_params" CHARACTER VARYING(max), "postcode_id" bigint, "referring_share_click_id" integer);
DROP TABLE IF EXISTS stories;
CREATE TABLE stories ("id" integer, "title" character varying(255), "content" CHARACTER VARYING(max), "featured" boolean, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "image_file_name" character varying(255), "image_content_type" character varying(255), "image_file_size" integer, "image_updated_at" timestamp without time zone, "organisation_id" integer, "link" character varying(255));
DROP TABLE IF EXISTS target_collections;
CREATE TABLE target_collections ("id" integer, "name" character varying(255), "organisation_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "geographic_collection_id" integer, "target_name_format" character varying(255));
DROP TABLE IF EXISTS target_notifications;
CREATE TABLE target_notifications ("id" integer, "target_for_petition_id" integer, "kind" character varying, "opened_at" timestamp without time zone, "clicked_at" timestamp without time zone, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "token" character varying);
DROP TABLE IF EXISTS targets;
CREATE TABLE targets ("id" integer, "name" character varying(255), "phone_number" character varying(255), "email" character varying(255), "location_id" integer, "organisation_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "slug" character varying(255), "geography_id" integer, "external_id" character varying(255), "extra_data" CHARACTER VARYING(max), "contact_instructions" CHARACTER VARYING(max), "context" character varying, "published_at" timestamp without time zone, "source" character varying, "added_by_user_id" integer);
DROP TABLE IF EXISTS targets_for_petitions;
CREATE TABLE targets_for_petitions ("id" integer, "petition_id" integer, "target_id" integer, "unsubscribed_at" timestamp without time zone, "unsubscribe_reason" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "subscribed_at" timestamp without time zone, "token" character varying, "unsubscribe_option" character varying(60));
DROP TABLE IF EXISTS targets_in_collections;
CREATE TABLE targets_in_collections ("id" integer, "target_id" integer, "target_collection_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS teams;
CREATE TABLE teams ("id" integer, "name" character varying, "organisation_id" integer, "abilities" CHARACTER VARYING(max), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "owner" boolean, "region_id" bigint);
DROP TABLE IF EXISTS timeline_posts;
CREATE TABLE timeline_posts ("id" integer, "text" CHARACTER VARYING(max), "user_id" integer, "petition_id" integer, "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "kind" character varying, "text_variables" CHARACTER VARYING(max));
DROP TABLE IF EXISTS unsubscribes;
CREATE TABLE unsubscribes ("id" integer, "organisation_id" integer, "member_id" integer, "blast_email_id" integer, "email" character varying(255), "unsubscribe_object" boolean, "unsubscribe_organisation" boolean, "unsubscribable_id" integer, "unsubscribable_type" character varying(255), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "external_id" character varying(255), "externally_unsubscribed_at" timestamp without time zone);
DROP TABLE IF EXISTS user_invitations;
CREATE TABLE user_invitations ("id" integer, "sender_id" integer, "recipient_id" integer, "recipient_email" character varying, "organisation_id" integer, "token" character varying, "accepted_at" timestamp without time zone, "created_at" timestamp without time zone, "updated_at" timestamp without time zone);
DROP TABLE IF EXISTS users;
CREATE TABLE users ("id" integer, "email" character varying(255), "reset_password_sent_at" timestamp without time zone, "remember_created_at" timestamp without time zone, "sign_in_count" integer, "current_sign_in_at" timestamp without time zone, "last_sign_in_at" timestamp without time zone, "current_sign_in_ip" character varying(255), "last_sign_in_ip" character varying(255), "created_at" timestamp without time zone, "updated_at" timestamp without time zone, "first_name" character varying(255), "last_name" character varying(255), "admin" boolean, "phone_number" character varying(255), "postcode" character varying(255), "join_organisation" boolean, "organisation_id" integer, "confirmed_at" timestamp without time zone, "confirmation_sent_at" timestamp without time zone, "opt_out_site_email" boolean, "facebook_id" character varying(255), "external_constituent_id" character varying(255), "member_id" integer, "additional_fields" CHARACTER VARYING(max), "cached_organisation_slug" character varying(255), "image_file_name" character varying(255), "image_content_type" character varying(255), "image_file_size" integer, "image_updated_at" timestamp without time zone, "locale" character varying(5), "token" character varying(255), "new_member" boolean, "failed_attempts" integer, "unlock_token" character varying(255), "locked_at" timestamp without time zone, "country" character varying(3), "authy_id" character varying(255), "last_sign_in_with_authy" timestamp without time zone, "authy_enabled" boolean, "original_to_large_ratio" double precision, "eu_data_processing_consent_at" timestamp without time zone, "email_opt_in_type_id" bigint, "external_ids" CHARACTER VARYING(max), "activated_at" timestamp without time zone, "activate_token" character varying, "postcode_id" bigint);

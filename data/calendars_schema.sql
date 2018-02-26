--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';

SET search_path = public, pg_catalog;

CREATE TABLE calendars (
    id SERIAL PRIMARY KEY,
    name character varying,
    description text,
    slug character varying,
    organisation_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    archived_at timestamp without time zone,
    default_event_title character varying,
    default_event_description text,
    default_event_start timestamp without time zone,
    bsd_event_type_id character varying,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at timestamp without time zone,
    thank_attendee_email_content text,
    create_event_thank_you_email_content text,
    approaching_event_attendee_email_content text,
    approaching_event_host_email_content text,
    target_collection_id integer,
    auto_approved_events boolean DEFAULT false,
    requires_organiser_instructions boolean DEFAULT false,
    organiser_instructions text,
    ask_host_address boolean DEFAULT false,
    external_ids hstore DEFAULT ''::hstore NOT NULL,
    disable_event_creation boolean DEFAULT false,
    allow_hidden_address boolean DEFAULT false,
    show_target_data_on_event_creation boolean,
    allow_multiple_events_per_constituency boolean DEFAULT false,
    host_address_explanation text,
    promoted_from_waitlist_email_content text,
    default_event_end timestamp without time zone,
    new_host_thank_you_email_content text,
    redirect_to text,
    launched boolean,
    created_through_wizard boolean,
    current_wizard_step character varying,
    partnership_id bigint
);

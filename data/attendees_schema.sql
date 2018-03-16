--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';

SET search_path = public, pg_catalog;

CREATE TABLE attendees (
    id SERIAL PRIMARY KEY,
    event_id integer,
    member_id integer,
    email character varying NOT NULL,
    first_name character varying,
    last_name character varying,
    phone_number character varying,
    postcode character varying,
    created_at timestamp without time zone,
    country character varying(3),
    external_constituent_id character varying,
    new_member boolean,
    user_ip character varying(39),
    attending_status character varying(50),
    generated_local_chapter_member_id integer,
    cached_organisation_slug character varying,
    additional_fields hstore DEFAULT ''::hstore NOT NULL,
    external_action_id character varying,
    external_id character varying,
    join_organisation boolean,
    join_group boolean,
    join_list_suppressed boolean,
    source character varying,
    old_daisy_chain_used character varying(50),
    token character varying(24) NOT NULL,
    eu_data_processing_consent boolean,
    consent_content_version_id bigint,
    daisy_chain_id_used bigint,
    email_opt_in_type_id bigint
);

--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';

SET search_path = public, pg_catalog;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email character varying DEFAULT ''::character varying NOT NULL,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    first_name character varying,
    last_name character varying,
    admin boolean,
    phone_number character varying,
    postcode character varying,
    join_organisation boolean,
    organisation_id integer NOT NULL,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    opt_out_site_email boolean,
    facebook_id character varying,
    external_constituent_id character varying,
    member_id integer,
    additional_fields hstore DEFAULT ''::hstore NOT NULL,
    cached_organisation_slug character varying,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at timestamp without time zone,
    locale character varying(5) DEFAULT 'en'::character varying,
    token character varying,
    new_member boolean,
    failed_attempts integer DEFAULT 0,
    unlock_token character varying,
    locked_at timestamp without time zone,
    country character varying(3),
    authy_id character varying,
    last_sign_in_with_authy timestamp without time zone,
    authy_enabled boolean DEFAULT false,
    original_to_large_ratio double precision,
    eu_data_processing_consent_at timestamp without time zone
);
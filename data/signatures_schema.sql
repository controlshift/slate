--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';

SET search_path = public, pg_catalog;

CREATE TABLE signatures (
    id SERIAL PRIMARY KEY,
    petition_id integer,
    email character varying NOT NULL,
    first_name character varying,
    last_name character varying,
    phone_number character varying,
    postcode character varying,
    created_at timestamp without time zone,
    join_organisation boolean,
    deleted_at timestamp without time zone,
    unsubscribe_at timestamp without time zone,
    external_constituent_id character varying,
    member_id integer,
    additional_fields hstore DEFAULT ''::hstore,
    cached_organisation_slug character varying,
    source character varying DEFAULT ''::character varying,
    join_group boolean,
    external_id character varying,
    new_member boolean,
    external_action_id character varying,
    locale character varying(5) DEFAULT 'en'::character varying,
    obfuscated_bsd_cons_id character varying,
    bucket character varying,
    country character varying,
    updated_at timestamp without time zone,
    user_ip character varying(39),
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    last_signed_at timestamp without time zone,
    join_list_suppressed boolean,
    old_daisy_chain_used character varying(50),
    bsd_ab_test_cons_group_id character varying,
    from_embed boolean,
    user_agent character varying,
    confirmed_reason character varying,
    synced_to_crm_at timestamp without time zone,
    daisy_chain_experiment_slug character varying,
    from_one_click boolean,
    eu_data_processing_consent boolean,
    consent_content_version_id bigint,
    daisy_chain_id_used bigint
);
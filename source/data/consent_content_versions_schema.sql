--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';

SET search_path = public, pg_catalog;

CREATE TABLE consent_content_versions (
    id BIGSERIAL PRIMARY KEY,
    organisation_id integer,
    privacy_policy_content_id integer,
    privacy_policy_content_version integer,
    tos_content_id integer,
    tos_content_version integer,
    data_processing_consent_label_content_id integer,
    data_processing_consent_label_content_version integer,
    created_at timestamp without time zone,
    external_id character varying
);

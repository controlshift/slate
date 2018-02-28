--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';

SET search_path = public, pg_catalog;

CREATE TABLE data_processing_consents (
    id BIGSERIAL PRIMARY KEY,
    data_processing_consentable_type character varying,
    data_processing_consentable_id bigint,
    consent_content_version_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);

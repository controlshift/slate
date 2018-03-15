--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';

SET search_path = public, pg_catalog;

CREATE TABLE email_opt_in_types (
    id BIGSERIAL PRIMARY KEY,
    organisation_id bigint NOT NULL,
    kind character varying NOT NULL,
    name character varying NOT NULL,
    mailable boolean,
    active boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);

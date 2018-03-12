--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';

SET search_path = public, pg_catalog;

CREATE TABLE local_chapter_members (
    id SERIAL PRIMARY KEY,
    local_chapter_id integer,
    member_id integer,
    introduction text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    email character varying NOT NULL,
    first_name character varying,
    last_name character varying,
    phone_number character varying,
    postcode character varying,
    country character varying,
    locale character varying(5) DEFAULT 'en'::character varying,
    notification_level character varying(20),
    type character varying NOT NULL,
    local_chapter_organiser_request_id integer,
    user_id integer,
    deleted_at timestamp without time zone,
    eu_data_processing_consent_at timestamp without time zone
);
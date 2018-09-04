--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.5.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.alevel_subject_performance DROP CONSTRAINT IF EXISTS pk_alevel_subject_performance;
DROP TABLE IF EXISTS public.alevel_subject_performance;
SET default_tablespace = '';

SET default_with_oids = false;


--
-- Name: alevel_subject_performance; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE alevel_subject_performance (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    year character varying(128) NOT NULL,
    schoolcode character varying(128) NOT NULL,
    schoolname character varying(128) NOT NULL,
    region character varying(128) NOT NULL,
    gpa character varying(128) NOT NULL,
    subjectcode character varying(128) NOT NULL,
    subjectname character varying(128) NOT NULL,
    subjectgpa character varying(128) NOT NULL,
    subjectregranking character varying(128) NOT NULL,
    subjectnatranking character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: alevel_subject_performance; Type: TABLE DATA; Schema: public; Owner: -
--

COPY alevel_subject_performance (geo_level, geo_code, geo_version, year, schoolcode, schoolname, region, gpa, subjectcode, subjectname, subjectgpa, subjectregranking, subjectnatranking, total) FROM stdin;
\.


--
-- Name: pk_alevel_subject_performance; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY alevel_subject_performance
    ADD CONSTRAINT pk_alevel_subject_performance PRIMARY KEY (geo_level, geo_code, geo_version, year, schoolcode, schoolname, region, gpa, subjectcode, subjectname, subjectgpa, subjectregranking, subjectnatranking);


--
-- PostgreSQL database dump complete
--

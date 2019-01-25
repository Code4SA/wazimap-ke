--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.election_attend_a_campaign_rally DROP CONSTRAINT IF EXISTS pk_election_attend_a_campaign_rally;
DROP TABLE IF EXISTS public.election_attend_a_campaign_rally;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: election_attend_a_campaign_rally; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.election_attend_a_campaign_rally (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    election_attend_a_campaign_rally character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: election_attend_a_campaign_rally; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.election_attend_a_campaign_rally (geo_level, geo_code, geo_version, election_attend_a_campaign_rally, total) FROM stdin;
province	1	2010	No	77
province	1	2010	Yes	42
province	2	2010	No	119
province	2	2010	Yes	73
province	3	2010	No	62
province	3	2010	Yes	74
province	4	2010	No	45
province	4	2010	Yes	42
province	5	2010	Don't know	1
province	5	2010	No	153
province	5	2010	Yes	70
province	6	2010	No	38
province	6	2010	Yes	25
province	8	2010	No	47
province	8	2010	Yes	17
province	7	2010	No	62
province	7	2010	Yes	34
province	9	2010	No	86
province	9	2010	Yes	50
province	10	2010	Don't know	1
province	10	2010	No	41
province	10	2010	Yes	38
country	ZM	2010	Yes	465
country	ZM	2010	No	730
country	ZM	2010	Don't know	2
\.


--
-- Name: election_attend_a_campaign_rally pk_election_attend_a_campaign_rally; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.election_attend_a_campaign_rally
    ADD CONSTRAINT pk_election_attend_a_campaign_rally PRIMARY KEY (geo_level, geo_code, geo_version, election_attend_a_campaign_rally);


--
-- PostgreSQL database dump complete
--


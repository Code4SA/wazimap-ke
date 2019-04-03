--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.15
-- Dumped by pg_dump version 9.6.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.election_attend_campaign_rally DROP CONSTRAINT IF EXISTS pk_election_attend_campaign_rally;
DROP TABLE IF EXISTS public.election_attend_campaign_rally;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: election_attend_campaign_rally; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.election_attend_campaign_rally (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    election_attend_campaign_rally character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: election_attend_campaign_rally; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.election_attend_campaign_rally (geo_level, geo_code, geo_version, election_attend_campaign_rally, total) FROM stdin;
county	30	2009	No	12
county	30	2009	Yes	20
county	36	2009	No	15
county	36	2009	Yes	33
county	39	2009	No	41
county	39	2009	Yes	39
county	40	2009	No	21
county	40	2009	Yes	19
county	28	2009	No	6
county	28	2009	Yes	10
county	14	2009	No	19
county	14	2009	Yes	21
county	7	2009	No	24
county	7	2009	Yes	8
county	43	2009	No	29
county	43	2009	Yes	27
county	11	2009	No	6
county	11	2009	Yes	2
county	34	2009	No	31
county	34	2009	Yes	17
county	37	2009	No	49
county	37	2009	Yes	47
county	35	2009	No	5
county	35	2009	Yes	35
county	22	2009	No	65
county	22	2009	Yes	55
county	3	2009	No	28
county	3	2009	Yes	36
county	20	2009	No	19
county	20	2009	Yes	21
county	45	2009	No	40
county	45	2009	Yes	32
county	42	2009	No	30
county	42	2009	Yes	26
county	15	2009	No	26
county	15	2009	Yes	30
county	2	2009	No	13
county	2	2009	Yes	27
county	31	2009	No	7
county	31	2009	Yes	17
county	5	2009	No	2
county	5	2009	Yes	6
county	16	2009	No	28
county	16	2009	Yes	44
county	17	2009	No	19
county	17	2009	Yes	37
county	9	2009	No	24
county	9	2009	Yes	24
county	10	2009	No	10
county	10	2009	Yes	6
county	12	2009	No	48
county	12	2009	Yes	37
county	44	2009	No	27
county	44	2009	Yes	21
county	1	2009	No	24
county	1	2009	Yes	48
county	21	2009	No	40
county	21	2009	Yes	24
county	47	2009	No	138
county	47	2009	Yes	110
county	32	2009	No	27
county	32	2009	Yes	77
county	29	2009	No	26
county	29	2009	Yes	22
county	33	2009	No	17
county	33	2009	Yes	31
county	46	2009	No	22
county	46	2009	Yes	18
county	18	2009	No	19
county	18	2009	Yes	21
county	19	2009	No	34
county	19	2009	Yes	14
county	25	2009	No	6
county	25	2009	Yes	2
county	41	2009	No	28
county	41	2009	Yes	20
county	6	2009	No	7
county	6	2009	Yes	9
county	4	2009	No	6
county	4	2009	Yes	2
county	13	2009	No	12
county	13	2009	Yes	12
county	26	2009	Don't know	1
county	26	2009	No	31
county	26	2009	Yes	16
county	23	2009	No	23
county	23	2009	Yes	25
county	27	2009	No	37
county	27	2009	Yes	19
county	38	2009	No	19
county	38	2009	Yes	13
county	8	2009	No	20
county	8	2009	Yes	12
county	24	2009	No	8
county	24	2009	Yes	16
country	KE	2009	Yes	1208
country	KE	2009	No	1188
country	KE	2009	Don't know	1
\.


--
-- Name: election_attend_campaign_rally pk_election_attend_campaign_rally; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.election_attend_campaign_rally
    ADD CONSTRAINT pk_election_attend_campaign_rally PRIMARY KEY (geo_level, geo_code, geo_version, election_attend_campaign_rally);


--
-- PostgreSQL database dump complete
--


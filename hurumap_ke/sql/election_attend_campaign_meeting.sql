--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.election_attend_campaign_meeting DROP CONSTRAINT IF EXISTS pk_election_attend_campaign_meeting;
DROP TABLE IF EXISTS public.election_attend_campaign_meeting;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: election_attend_campaign_meeting; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.election_attend_campaign_meeting (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    election_attend_campaign_meeting character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: election_attend_campaign_meeting; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.election_attend_campaign_meeting (geo_level, geo_code, geo_version, election_attend_campaign_meeting, total) FROM stdin;
county	30	2009	No	28
county	30	2009	Yes	4
county	36	2009	No	32
county	36	2009	Yes	16
county	39	2009	No	58
county	39	2009	Yes	22
county	40	2009	No	28
county	40	2009	Yes	12
county	28	2009	No	13
county	28	2009	Yes	3
county	14	2009	No	22
county	14	2009	Yes	18
county	7	2009	No	29
county	7	2009	Yes	3
county	43	2009	No	42
county	43	2009	Yes	14
county	11	2009	No	6
county	11	2009	Yes	2
county	34	2009	No	40
county	34	2009	Yes	8
county	37	2009	No	74
county	37	2009	Yes	22
county	35	2009	No	30
county	35	2009	Yes	10
county	22	2009	No	72
county	22	2009	Yes	48
county	3	2009	No	61
county	3	2009	Yes	3
county	20	2009	No	21
county	20	2009	Yes	19
county	45	2009	No	56
county	45	2009	Yes	16
county	42	2009	No	37
county	42	2009	Yes	19
county	15	2009	Missing	1
county	15	2009	No	29
county	15	2009	Yes	26
county	2	2009	No	35
county	2	2009	Yes	5
county	31	2009	No	21
county	31	2009	Yes	3
county	5	2009	No	5
county	5	2009	Yes	3
county	16	2009	No	40
county	16	2009	Yes	32
county	17	2009	Missing	1
county	17	2009	No	36
county	17	2009	Yes	19
county	9	2009	No	41
county	9	2009	Yes	7
county	10	2009	No	10
county	10	2009	Yes	6
county	12	2009	Don�t know	1
county	12	2009	No	56
county	12	2009	Yes	28
county	44	2009	No	29
county	44	2009	Yes	19
county	1	2009	No	64
county	1	2009	Yes	8
county	21	2009	No	40
county	21	2009	Yes	24
county	47	2009	No	179
county	47	2009	Yes	69
county	32	2009	No	82
county	32	2009	Yes	22
county	29	2009	No	44
county	29	2009	Yes	4
county	33	2009	No	30
county	33	2009	Yes	18
county	46	2009	No	29
county	46	2009	Yes	11
county	18	2009	No	27
county	18	2009	Yes	13
county	19	2009	No	32
county	19	2009	Yes	16
county	25	2009	No	8
county	41	2009	No	35
county	41	2009	Yes	13
county	6	2009	No	12
county	6	2009	Yes	4
county	4	2009	No	8
county	13	2009	Don�t know	1
county	13	2009	No	15
county	13	2009	Yes	8
county	26	2009	Don�t know	1
county	26	2009	No	41
county	26	2009	Yes	6
county	23	2009	No	40
county	23	2009	Yes	8
county	27	2009	No	51
county	27	2009	Yes	5
county	38	2009	No	27
county	38	2009	Yes	5
county	8	2009	No	26
county	8	2009	Yes	6
county	24	2009	No	18
county	24	2009	Yes	6
\.


--
-- Name: election_attend_campaign_meeting pk_election_attend_campaign_meeting; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.election_attend_campaign_meeting
    ADD CONSTRAINT pk_election_attend_campaign_meeting PRIMARY KEY (geo_level, geo_code, geo_version, election_attend_campaign_meeting);


--
-- PostgreSQL database dump complete
--


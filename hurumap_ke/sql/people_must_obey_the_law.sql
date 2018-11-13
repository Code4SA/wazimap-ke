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

ALTER TABLE IF EXISTS ONLY public.people_must_obey_the_law DROP CONSTRAINT IF EXISTS pk_people_must_obey_the_law;
DROP TABLE IF EXISTS public.people_must_obey_the_law;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: people_must_obey_the_law; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.people_must_obey_the_law (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    people_must_obey_the_law character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: people_must_obey_the_law; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.people_must_obey_the_law (geo_level, geo_code, geo_version, people_must_obey_the_law, total) FROM stdin;
county	30	2009	Agree	13
county	36	2009	Agree	17
county	39	2009	Agree	34
county	40	2009	Agree	8
county	28	2009	Agree	4
county	14	2009	Agree	15
county	7	2009	Agree	15
county	43	2009	Agree	17
county	11	2009	Agree	4
county	34	2009	Agree	23
county	37	2009	Agree	40
county	35	2009	Agree	12
county	22	2009	Agree	44
county	3	2009	Agree	20
county	20	2009	Agree	14
county	45	2009	Agree	19
county	42	2009	Agree	21
county	15	2009	Agree	21
county	2	2009	Agree	13
county	31	2009	Agree	7
county	5	2009	Agree	6
county	16	2009	Agree	29
county	17	2009	Agree	17
county	9	2009	Agree	33
county	10	2009	Agree	5
county	12	2009	Agree	29
county	44	2009	Agree	15
county	1	2009	Agree	21
county	21	2009	Agree	20
county	47	2009	Agree	108
county	32	2009	Agree	34
county	29	2009	Agree	21
county	33	2009	Agree	20
county	46	2009	Agree	16
county	18	2009	Agree	11
county	19	2009	Agree	18
county	25	2009	Agree	5
county	41	2009	Agree	20
county	6	2009	Agree	3
county	4	2009	Agree	4
county	13	2009	Agree	8
county	26	2009	Agree	22
county	23	2009	Agree	37
county	27	2009	Agree	29
county	38	2009	Agree	12
county	8	2009	Agree	20
county	24	2009	Agree	15
county	30	2009	Disagree	3
county	36	2009	Disagree	4
county	39	2009	Disagree	7
county	40	2009	Disagree	6
county	28	2009	Disagree	3
county	14	2009	Disagree	6
county	7	2009	Disagree	3
county	43	2009	Disagree	11
county	11	2009	Disagree	1
county	34	2009	Disagree	5
county	37	2009	Disagree	11
county	35	2009	Disagree	7
county	22	2009	Disagree	24
county	3	2009	Disagree	6
county	20	2009	Disagree	6
county	45	2009	Disagree	16
county	42	2009	Disagree	1
county	15	2009	Disagree	8
county	2	2009	Disagree	2
county	31	2009	Disagree	3
county	16	2009	Disagree	12
county	17	2009	Disagree	3
county	9	2009	Disagree	1
county	10	2009	Disagree	4
county	12	2009	Disagree	14
county	44	2009	Disagree	10
county	1	2009	Disagree	2
county	21	2009	Disagree	11
county	47	2009	Disagree	31
county	32	2009	Disagree	13
county	29	2009	Disagree	5
county	33	2009	Disagree	7
county	46	2009	Disagree	5
county	18	2009	Disagree	11
county	19	2009	Disagree	10
county	41	2009	Disagree	2
county	6	2009	Disagree	2
county	13	2009	Disagree	8
county	26	2009	Disagree	3
county	23	2009	Disagree	2
county	27	2009	Disagree	3
county	38	2009	Disagree	5
county	8	2009	Disagree	1
county	39	2009	Don�t Know	2
county	28	2009	Don�t Know	1
county	7	2009	Don�t Know	3
county	11	2009	Don�t Know	1
county	37	2009	Don�t Know	1
county	3	2009	Don�t Know	2
county	2	2009	Don�t Know	2
county	17	2009	Don�t Know	1
county	29	2009	Don�t Know	1
county	41	2009	Don�t Know	1
county	4	2009	Don�t Know	3
county	13	2009	Don�t Know	1
county	26	2009	Don�t Know	1
county	23	2009	Don�t Know	2
county	27	2009	Don�t Know	2
county	8	2009	Don�t Know	1
county	24	2009	Don�t Know	1
county	16	2009	Missing	1
county	30	2009	Neither Agree Nor Disagree	12
county	36	2009	Neither Agree Nor Disagree	3
county	39	2009	Neither Agree Nor Disagree	2
county	40	2009	Neither Agree Nor Disagree	2
county	28	2009	Neither Agree Nor Disagree	5
county	14	2009	Neither Agree Nor Disagree	1
county	43	2009	Neither Agree Nor Disagree	1
county	34	2009	Neither Agree Nor Disagree	12
county	37	2009	Neither Agree Nor Disagree	5
county	35	2009	Neither Agree Nor Disagree	3
county	22	2009	Neither Agree Nor Disagree	1
county	3	2009	Neither Agree Nor Disagree	3
county	20	2009	Neither Agree Nor Disagree	1
county	45	2009	Neither Agree Nor Disagree	4
county	42	2009	Neither Agree Nor Disagree	9
county	15	2009	Neither Agree Nor Disagree	15
county	2	2009	Neither Agree Nor Disagree	1
county	31	2009	Neither Agree Nor Disagree	1
county	16	2009	Neither Agree Nor Disagree	10
county	17	2009	Neither Agree Nor Disagree	1
county	9	2009	Neither Agree Nor Disagree	1
county	10	2009	Neither Agree Nor Disagree	2
county	12	2009	Neither Agree Nor Disagree	8
county	44	2009	Neither Agree Nor Disagree	3
county	1	2009	Neither Agree Nor Disagree	2
county	21	2009	Neither Agree Nor Disagree	2
county	47	2009	Neither Agree Nor Disagree	15
county	32	2009	Neither Agree Nor Disagree	3
county	29	2009	Neither Agree Nor Disagree	9
county	33	2009	Neither Agree Nor Disagree	2
county	46	2009	Neither Agree Nor Disagree	2
county	18	2009	Neither Agree Nor Disagree	1
county	19	2009	Neither Agree Nor Disagree	2
county	25	2009	Neither Agree Nor Disagree	3
county	41	2009	Neither Agree Nor Disagree	13
county	6	2009	Neither Agree Nor Disagree	1
county	13	2009	Neither Agree Nor Disagree	3
county	23	2009	Neither Agree Nor Disagree	3
county	27	2009	Neither Agree Nor Disagree	16
county	38	2009	Neither Agree Nor Disagree	1
county	24	2009	Neither Agree Nor Disagree	1
county	30	2009	Strongly Agree	4
county	36	2009	Strongly Agree	22
county	39	2009	Strongly Agree	17
county	40	2009	Strongly Agree	15
county	28	2009	Strongly Agree	3
county	14	2009	Strongly Agree	17
county	7	2009	Strongly Agree	11
county	43	2009	Strongly Agree	25
county	11	2009	Strongly Agree	2
county	34	2009	Strongly Agree	8
county	37	2009	Strongly Agree	23
county	35	2009	Strongly Agree	16
county	22	2009	Strongly Agree	35
county	3	2009	Strongly Agree	31
county	20	2009	Strongly Agree	14
county	45	2009	Strongly Agree	17
county	42	2009	Strongly Agree	22
county	15	2009	Strongly Agree	10
county	2	2009	Strongly Agree	21
county	31	2009	Strongly Agree	12
county	5	2009	Strongly Agree	2
county	16	2009	Strongly Agree	17
county	17	2009	Strongly Agree	28
county	9	2009	Strongly Agree	13
county	10	2009	Strongly Agree	5
county	12	2009	Strongly Agree	30
county	44	2009	Strongly Agree	10
county	1	2009	Strongly Agree	47
county	21	2009	Strongly Agree	24
county	47	2009	Strongly Agree	79
county	32	2009	Strongly Agree	47
county	29	2009	Strongly Agree	10
county	33	2009	Strongly Agree	16
county	46	2009	Strongly Agree	8
county	18	2009	Strongly Agree	15
county	19	2009	Strongly Agree	14
county	41	2009	Strongly Agree	12
county	6	2009	Strongly Agree	8
county	4	2009	Strongly Agree	1
county	13	2009	Strongly Agree	4
county	26	2009	Strongly Agree	11
county	23	2009	Strongly Agree	4
county	27	2009	Strongly Agree	4
county	38	2009	Strongly Agree	9
county	8	2009	Strongly Agree	10
county	24	2009	Strongly Agree	7
county	36	2009	Strongly Disagree	2
county	39	2009	Strongly Disagree	18
county	40	2009	Strongly Disagree	9
county	14	2009	Strongly Disagree	1
county	43	2009	Strongly Disagree	2
county	37	2009	Strongly Disagree	16
county	35	2009	Strongly Disagree	2
county	22	2009	Strongly Disagree	16
county	3	2009	Strongly Disagree	2
county	20	2009	Strongly Disagree	5
county	45	2009	Strongly Disagree	16
county	42	2009	Strongly Disagree	3
county	15	2009	Strongly Disagree	2
county	2	2009	Strongly Disagree	1
county	31	2009	Strongly Disagree	1
county	16	2009	Strongly Disagree	3
county	17	2009	Strongly Disagree	6
county	12	2009	Strongly Disagree	4
county	44	2009	Strongly Disagree	10
county	21	2009	Strongly Disagree	7
county	47	2009	Strongly Disagree	15
county	32	2009	Strongly Disagree	7
county	29	2009	Strongly Disagree	2
county	33	2009	Strongly Disagree	3
county	46	2009	Strongly Disagree	9
county	18	2009	Strongly Disagree	2
county	19	2009	Strongly Disagree	4
county	6	2009	Strongly Disagree	2
county	26	2009	Strongly Disagree	11
county	27	2009	Strongly Disagree	2
county	38	2009	Strongly Disagree	5
\.


--
-- Name: people_must_obey_the_law pk_people_must_obey_the_law; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_must_obey_the_law
    ADD CONSTRAINT pk_people_must_obey_the_law PRIMARY KEY (geo_level, geo_code, geo_version, people_must_obey_the_law);


--
-- PostgreSQL database dump complete
--


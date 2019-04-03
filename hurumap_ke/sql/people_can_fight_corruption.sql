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

ALTER TABLE IF EXISTS ONLY public.people_can_fight_corruption DROP CONSTRAINT IF EXISTS pk_people_can_fight_corruption;
DROP TABLE IF EXISTS public.people_can_fight_corruption;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: people_can_fight_corruption; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.people_can_fight_corruption (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    people_can_fight_corruption character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: people_can_fight_corruption; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.people_can_fight_corruption (geo_level, geo_code, geo_version, people_can_fight_corruption, total) FROM stdin;
county	30	2009	Agree	10
county	30	2009	Neither Agree Nor Disagree	1
county	30	2009	Strongly Agree	5
county	30	2009	Strongly Disagree	16
county	36	2009	Agree	11
county	36	2009	Disagree	6
county	36	2009	Neither Agree Nor Disagree	1
county	36	2009	Strongly Agree	19
county	36	2009	Strongly Disagree	11
county	39	2009	Agree	14
county	39	2009	Disagree	17
county	39	2009	Don't Know	2
county	39	2009	Neither Agree Nor Disagree	7
county	39	2009	Strongly Agree	26
county	39	2009	Strongly Disagree	14
county	40	2009	Agree	4
county	40	2009	Disagree	8
county	40	2009	Neither Agree Nor Disagree	3
county	40	2009	Strongly Agree	12
county	40	2009	Strongly Disagree	13
county	28	2009	Agree	3
county	28	2009	Neither Agree Nor Disagree	2
county	28	2009	Strongly Agree	3
county	28	2009	Strongly Disagree	8
county	14	2009	Agree	10
county	14	2009	Disagree	3
county	14	2009	Don't Know	3
county	14	2009	Neither Agree Nor Disagree	6
county	14	2009	Strongly Agree	10
county	14	2009	Strongly Disagree	8
county	7	2009	Agree	10
county	7	2009	Disagree	4
county	7	2009	Don't Know	3
county	7	2009	Strongly Agree	6
county	7	2009	Strongly Disagree	9
county	43	2009	Agree	12
county	43	2009	Disagree	6
county	43	2009	Neither Agree Nor Disagree	1
county	43	2009	Strongly Agree	15
county	43	2009	Strongly Disagree	22
county	11	2009	Don't Know	1
county	11	2009	Neither Agree Nor Disagree	2
county	11	2009	Strongly Agree	2
county	11	2009	Strongly Disagree	3
county	34	2009	Agree	15
county	34	2009	Disagree	2
county	34	2009	Neither Agree Nor Disagree	3
county	34	2009	Strongly Agree	4
county	34	2009	Strongly Disagree	24
county	37	2009	Agree	18
county	37	2009	Disagree	25
county	37	2009	Neither Agree Nor Disagree	10
county	37	2009	Strongly Agree	25
county	37	2009	Strongly Disagree	18
county	35	2009	Agree	16
county	35	2009	Disagree	10
county	35	2009	Neither Agree Nor Disagree	2
county	35	2009	Strongly Agree	9
county	35	2009	Strongly Disagree	3
county	22	2009	Agree	34
county	22	2009	Disagree	9
county	22	2009	Neither Agree Nor Disagree	5
county	22	2009	Strongly Agree	59
county	22	2009	Strongly Disagree	13
county	3	2009	Agree	19
county	3	2009	Disagree	1
county	3	2009	Don't Know	3
county	3	2009	Strongly Agree	16
county	3	2009	Strongly Disagree	25
county	20	2009	Agree	7
county	20	2009	Disagree	5
county	20	2009	Neither Agree Nor Disagree	1
county	20	2009	Strongly Agree	24
county	20	2009	Strongly Disagree	3
county	45	2009	Agree	18
county	45	2009	Disagree	6
county	45	2009	Don't Know	1
county	45	2009	Strongly Agree	23
county	45	2009	Strongly Disagree	24
county	42	2009	Agree	13
county	42	2009	Disagree	10
county	42	2009	Neither Agree Nor Disagree	1
county	42	2009	Strongly Agree	11
county	42	2009	Strongly Disagree	21
county	15	2009	Agree	18
county	15	2009	Disagree	4
county	15	2009	Neither Agree Nor Disagree	7
county	15	2009	Strongly Agree	20
county	15	2009	Strongly Disagree	7
county	2	2009	Agree	11
county	2	2009	Disagree	2
county	2	2009	Strongly Agree	17
county	2	2009	Strongly Disagree	10
county	31	2009	Agree	10
county	31	2009	Disagree	2
county	31	2009	Don't Know	2
county	31	2009	Neither Agree Nor Disagree	1
county	31	2009	Strongly Agree	5
county	31	2009	Strongly Disagree	4
county	5	2009	Agree	3
county	5	2009	Strongly Agree	4
county	5	2009	Strongly Disagree	1
county	16	2009	Agree	20
county	16	2009	Disagree	4
county	16	2009	Neither Agree Nor Disagree	13
county	16	2009	Strongly Agree	23
county	16	2009	Strongly Disagree	12
county	17	2009	Agree	14
county	17	2009	Disagree	1
county	17	2009	Don't Know	1
county	17	2009	Neither Agree Nor Disagree	2
county	17	2009	Strongly Agree	32
county	17	2009	Strongly Disagree	6
county	9	2009	Agree	12
county	9	2009	Disagree	16
county	9	2009	Don't Know	1
county	9	2009	Neither Agree Nor Disagree	1
county	9	2009	Strongly Agree	4
county	9	2009	Strongly Disagree	14
county	10	2009	Agree	3
county	10	2009	Don't Know	1
county	10	2009	Neither Agree Nor Disagree	4
county	10	2009	Strongly Agree	2
county	10	2009	Strongly Disagree	6
county	12	2009	Agree	14
county	12	2009	Disagree	6
county	12	2009	Don't Know	3
county	12	2009	Missing	1
county	12	2009	Neither Agree Nor Disagree	21
county	12	2009	Strongly Agree	24
county	12	2009	Strongly Disagree	16
county	44	2009	Agree	9
county	44	2009	Disagree	2
county	44	2009	Don't Know	1
county	44	2009	Neither Agree Nor Disagree	1
county	44	2009	Strongly Agree	24
county	44	2009	Strongly Disagree	11
county	1	2009	Agree	19
county	1	2009	Disagree	2
county	1	2009	Don't Know	2
county	1	2009	Neither Agree Nor Disagree	2
county	1	2009	Strongly Agree	25
county	1	2009	Strongly Disagree	22
county	21	2009	Agree	12
county	21	2009	Disagree	2
county	21	2009	Strongly Agree	42
county	21	2009	Strongly Disagree	8
county	47	2009	Agree	69
county	47	2009	Disagree	40
county	47	2009	Don't Know	4
county	47	2009	Missing	1
county	47	2009	Neither Agree Nor Disagree	10
county	47	2009	Strongly Agree	76
county	47	2009	Strongly Disagree	48
county	32	2009	Agree	34
county	32	2009	Disagree	17
county	32	2009	Don't Know	2
county	32	2009	Neither Agree Nor Disagree	2
county	32	2009	Strongly Agree	36
county	32	2009	Strongly Disagree	13
county	29	2009	Agree	15
county	29	2009	Disagree	4
county	29	2009	Neither Agree Nor Disagree	1
county	29	2009	Strongly Agree	6
county	29	2009	Strongly Disagree	22
county	33	2009	Agree	14
county	33	2009	Disagree	7
county	33	2009	Don't Know	1
county	33	2009	Neither Agree Nor Disagree	2
county	33	2009	Strongly Agree	15
county	33	2009	Strongly Disagree	9
county	46	2009	Agree	11
county	46	2009	Disagree	3
county	46	2009	Strongly Agree	17
county	46	2009	Strongly Disagree	9
county	18	2009	Agree	10
county	18	2009	Disagree	1
county	18	2009	Neither Agree Nor Disagree	1
county	18	2009	Strongly Agree	24
county	18	2009	Strongly Disagree	4
county	19	2009	Agree	13
county	19	2009	Disagree	2
county	19	2009	Strongly Agree	31
county	19	2009	Strongly Disagree	2
county	25	2009	Agree	2
county	25	2009	Neither Agree Nor Disagree	1
county	25	2009	Strongly Agree	1
county	25	2009	Strongly Disagree	4
county	41	2009	Agree	15
county	41	2009	Disagree	7
county	41	2009	Neither Agree Nor Disagree	5
county	41	2009	Strongly Agree	11
county	41	2009	Strongly Disagree	10
county	6	2009	Agree	5
county	6	2009	Don't Know	1
county	6	2009	Strongly Agree	9
county	6	2009	Strongly Disagree	1
county	4	2009	Disagree	3
county	4	2009	Don't Know	3
county	4	2009	Strongly Disagree	2
county	13	2009	Agree	3
county	13	2009	Don't Know	2
county	13	2009	Neither Agree Nor Disagree	5
county	13	2009	Strongly Agree	5
county	13	2009	Strongly Disagree	9
county	26	2009	Agree	10
county	26	2009	Disagree	8
county	26	2009	Don't Know	2
county	26	2009	Neither Agree Nor Disagree	3
county	26	2009	Strongly Agree	11
county	26	2009	Strongly Disagree	14
county	23	2009	Agree	18
county	23	2009	Disagree	7
county	23	2009	Don't Know	4
county	23	2009	Neither Agree Nor Disagree	3
county	23	2009	Strongly Agree	2
county	23	2009	Strongly Disagree	14
county	27	2009	Agree	20
county	27	2009	Don't Know	3
county	27	2009	Neither Agree Nor Disagree	4
county	27	2009	Strongly Agree	9
county	27	2009	Strongly Disagree	20
county	38	2009	Agree	5
county	38	2009	Disagree	6
county	38	2009	Don't Know	1
county	38	2009	Neither Agree Nor Disagree	2
county	38	2009	Strongly Agree	10
county	38	2009	Strongly Disagree	8
county	8	2009	Agree	11
county	8	2009	Disagree	8
county	8	2009	Don't Know	2
county	8	2009	Strongly Agree	1
county	8	2009	Strongly Disagree	10
county	24	2009	Agree	6
county	24	2009	Disagree	5
county	24	2009	Don't Know	1
county	24	2009	Neither Agree Nor Disagree	1
county	24	2009	Strongly Agree	2
county	24	2009	Strongly Disagree	9
country	KE	2009	Neither Agree Nor Disagree	137
country	KE	2009	Missing	2
country	KE	2009	Disagree	271
country	KE	2009	Strongly Agree	757
country	KE	2009	Don't Know	50
country	KE	2009	Strongly Disagree	560
country	KE	2009	Agree	620
\.


--
-- Name: people_can_fight_corruption pk_people_can_fight_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_can_fight_corruption
    ADD CONSTRAINT pk_people_can_fight_corruption PRIMARY KEY (geo_level, geo_code, geo_version, people_can_fight_corruption);


--
-- PostgreSQL database dump complete
--


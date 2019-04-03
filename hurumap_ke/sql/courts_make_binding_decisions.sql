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

ALTER TABLE IF EXISTS ONLY public.courts_make_binding_decisions DROP CONSTRAINT IF EXISTS pk_courts_make_binding_decisions;
DROP TABLE IF EXISTS public.courts_make_binding_decisions;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: courts_make_binding_decisions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.courts_make_binding_decisions (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    courts_make_binding_decisions character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: courts_make_binding_decisions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.courts_make_binding_decisions (geo_level, geo_code, geo_version, courts_make_binding_decisions, total) FROM stdin;
county	30	2009	Agree	17
county	30	2009	Disagree	2
county	30	2009	Don't Know	1
county	30	2009	Neither Agree Nor Disagree	8
county	30	2009	Strongly Agree	4
county	36	2009	Agree	13
county	36	2009	Disagree	9
county	36	2009	Neither Agree Nor Disagree	1
county	36	2009	Strongly Agree	24
county	36	2009	Strongly Disagree	1
county	39	2009	Agree	31
county	39	2009	Disagree	9
county	39	2009	Don't Know	2
county	39	2009	Neither Agree Nor Disagree	1
county	39	2009	Strongly Agree	18
county	39	2009	Strongly Disagree	19
county	40	2009	Agree	14
county	40	2009	Disagree	4
county	40	2009	Neither Agree Nor Disagree	4
county	40	2009	Strongly Agree	10
county	40	2009	Strongly Disagree	8
county	28	2009	Agree	5
county	28	2009	Don't Know	1
county	28	2009	Neither Agree Nor Disagree	6
county	28	2009	Strongly Agree	2
county	28	2009	Strongly Disagree	2
county	14	2009	Agree	17
county	14	2009	Disagree	3
county	14	2009	Neither Agree Nor Disagree	4
county	14	2009	Strongly Agree	13
county	14	2009	Strongly Disagree	3
county	7	2009	Agree	10
county	7	2009	Disagree	8
county	7	2009	Don't Know	3
county	7	2009	Strongly Agree	11
county	43	2009	Agree	20
county	43	2009	Disagree	7
county	43	2009	Neither Agree Nor Disagree	3
county	43	2009	Strongly Agree	22
county	43	2009	Strongly Disagree	4
county	11	2009	Agree	4
county	11	2009	Disagree	1
county	11	2009	Don't Know	2
county	11	2009	Strongly Agree	1
county	34	2009	Agree	31
county	34	2009	Don't Know	1
county	34	2009	Neither Agree Nor Disagree	13
county	34	2009	Strongly Agree	2
county	34	2009	Strongly Disagree	1
county	37	2009	Agree	44
county	37	2009	Disagree	14
county	37	2009	Don't Know	2
county	37	2009	Neither Agree Nor Disagree	3
county	37	2009	Strongly Agree	18
county	37	2009	Strongly Disagree	15
county	35	2009	Agree	14
county	35	2009	Disagree	6
county	35	2009	Neither Agree Nor Disagree	1
county	35	2009	Strongly Agree	16
county	35	2009	Strongly Disagree	3
county	22	2009	Agree	55
county	22	2009	Disagree	31
county	22	2009	Don't Know	2
county	22	2009	Neither Agree Nor Disagree	5
county	22	2009	Strongly Agree	21
county	22	2009	Strongly Disagree	6
county	3	2009	Agree	23
county	3	2009	Disagree	2
county	3	2009	Don't Know	2
county	3	2009	Neither Agree Nor Disagree	5
county	3	2009	Strongly Agree	30
county	3	2009	Strongly Disagree	2
county	20	2009	Agree	14
county	20	2009	Disagree	4
county	20	2009	Neither Agree Nor Disagree	2
county	20	2009	Strongly Agree	13
county	20	2009	Strongly Disagree	7
county	45	2009	Agree	26
county	45	2009	Disagree	17
county	45	2009	Neither Agree Nor Disagree	5
county	45	2009	Strongly Agree	16
county	45	2009	Strongly Disagree	8
county	42	2009	Agree	37
county	42	2009	Disagree	2
county	42	2009	Strongly Agree	16
county	42	2009	Strongly Disagree	1
county	15	2009	Agree	37
county	15	2009	Disagree	2
county	15	2009	Neither Agree Nor Disagree	9
county	15	2009	Strongly Agree	6
county	15	2009	Strongly Disagree	2
county	2	2009	Agree	13
county	2	2009	Disagree	2
county	2	2009	Don't Know	1
county	2	2009	Neither Agree Nor Disagree	1
county	2	2009	Strongly Agree	22
county	2	2009	Strongly Disagree	1
county	31	2009	Agree	9
county	31	2009	Disagree	2
county	31	2009	Strongly Agree	13
county	5	2009	Agree	6
county	5	2009	Strongly Agree	2
county	16	2009	Agree	46
county	16	2009	Disagree	7
county	16	2009	Don't Know	1
county	16	2009	Neither Agree Nor Disagree	4
county	16	2009	Strongly Agree	13
county	16	2009	Strongly Disagree	1
county	17	2009	Agree	20
county	17	2009	Disagree	1
county	17	2009	Don't Know	2
county	17	2009	Neither Agree Nor Disagree	1
county	17	2009	Strongly Agree	25
county	17	2009	Strongly Disagree	7
county	9	2009	Agree	27
county	9	2009	Disagree	8
county	9	2009	Don't Know	1
county	9	2009	Neither Agree Nor Disagree	1
county	9	2009	Strongly Agree	10
county	9	2009	Strongly Disagree	1
county	10	2009	Agree	7
county	10	2009	Disagree	1
county	10	2009	Don't Know	3
county	10	2009	Neither Agree Nor Disagree	3
county	10	2009	Strongly Agree	2
county	12	2009	Agree	39
county	12	2009	Disagree	6
county	12	2009	Don't Know	2
county	12	2009	Neither Agree Nor Disagree	9
county	12	2009	Strongly Agree	26
county	12	2009	Strongly Disagree	3
county	44	2009	Agree	15
county	44	2009	Disagree	11
county	44	2009	Neither Agree Nor Disagree	3
county	44	2009	Strongly Agree	13
county	44	2009	Strongly Disagree	6
county	1	2009	Agree	21
county	1	2009	Neither Agree Nor Disagree	3
county	1	2009	Strongly Agree	47
county	1	2009	Strongly Disagree	1
county	21	2009	Agree	26
county	21	2009	Disagree	10
county	21	2009	Strongly Agree	23
county	21	2009	Strongly Disagree	5
county	47	2009	Agree	93
county	47	2009	Disagree	40
county	47	2009	Don't Know	1
county	47	2009	Neither Agree Nor Disagree	21
county	47	2009	Strongly Agree	76
county	47	2009	Strongly Disagree	17
county	32	2009	Agree	32
county	32	2009	Disagree	7
county	32	2009	Neither Agree Nor Disagree	2
county	32	2009	Strongly Agree	58
county	32	2009	Strongly Disagree	5
county	29	2009	Agree	22
county	29	2009	Disagree	4
county	29	2009	Don't Know	3
county	29	2009	Neither Agree Nor Disagree	9
county	29	2009	Strongly Agree	9
county	29	2009	Strongly Disagree	1
county	33	2009	Agree	16
county	33	2009	Disagree	2
county	33	2009	Neither Agree Nor Disagree	2
county	33	2009	Strongly Agree	22
county	33	2009	Strongly Disagree	6
county	46	2009	Agree	14
county	46	2009	Disagree	7
county	46	2009	Neither Agree Nor Disagree	4
county	46	2009	Strongly Agree	9
county	46	2009	Strongly Disagree	6
county	18	2009	Agree	18
county	18	2009	Disagree	9
county	18	2009	Neither Agree Nor Disagree	1
county	18	2009	Strongly Agree	7
county	18	2009	Strongly Disagree	5
county	19	2009	Agree	26
county	19	2009	Disagree	6
county	19	2009	Neither Agree Nor Disagree	2
county	19	2009	Strongly Agree	11
county	19	2009	Strongly Disagree	3
county	25	2009	Agree	3
county	25	2009	Don't Know	3
county	25	2009	Neither Agree Nor Disagree	2
county	41	2009	Agree	27
county	41	2009	Don't Know	1
county	41	2009	Neither Agree Nor Disagree	5
county	41	2009	Strongly Agree	14
county	41	2009	Strongly Disagree	1
county	6	2009	Agree	4
county	6	2009	Disagree	1
county	6	2009	Neither Agree Nor Disagree	1
county	6	2009	Strongly Agree	8
county	6	2009	Strongly Disagree	2
county	4	2009	Agree	3
county	4	2009	Disagree	2
county	4	2009	Don't Know	3
county	13	2009	Agree	10
county	13	2009	Disagree	7
county	13	2009	Don't Know	1
county	13	2009	Neither Agree Nor Disagree	2
county	13	2009	Strongly Agree	4
county	26	2009	Agree	19
county	26	2009	Disagree	4
county	26	2009	Don't Know	1
county	26	2009	Neither Agree Nor Disagree	4
county	26	2009	Strongly Agree	11
county	26	2009	Strongly Disagree	9
county	23	2009	Agree	34
county	23	2009	Disagree	5
county	23	2009	Don't Know	5
county	23	2009	Neither Agree Nor Disagree	1
county	23	2009	Strongly Agree	3
county	27	2009	Agree	28
county	27	2009	Disagree	5
county	27	2009	Don't Know	4
county	27	2009	Neither Agree Nor Disagree	13
county	27	2009	Strongly Agree	5
county	27	2009	Strongly Disagree	1
county	38	2009	Agree	11
county	38	2009	Disagree	7
county	38	2009	Neither Agree Nor Disagree	2
county	38	2009	Strongly Agree	9
county	38	2009	Strongly Disagree	3
county	8	2009	Agree	16
county	8	2009	Disagree	3
county	8	2009	Don't Know	6
county	8	2009	Neither Agree Nor Disagree	2
county	8	2009	Strongly Agree	5
county	24	2009	Agree	17
county	24	2009	Don't Know	2
county	24	2009	Neither Agree Nor Disagree	1
county	24	2009	Strongly Agree	4
country	KE	2009	Neither Agree Nor Disagree	169
country	KE	2009	Disagree	278
country	KE	2009	Strongly Agree	694
country	KE	2009	Agree	1034
country	KE	2009	Strongly Disagree	166
country	KE	2009	Don't Know	56
\.


--
-- Name: courts_make_binding_decisions pk_courts_make_binding_decisions; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.courts_make_binding_decisions
    ADD CONSTRAINT pk_courts_make_binding_decisions PRIMARY KEY (geo_level, geo_code, geo_version, courts_make_binding_decisions);


--
-- PostgreSQL database dump complete
--


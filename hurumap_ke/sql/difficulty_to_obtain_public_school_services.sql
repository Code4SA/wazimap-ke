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

ALTER TABLE IF EXISTS ONLY public.difficulty_to_obtain_public_school_services DROP CONSTRAINT IF EXISTS pk_difficulty_to_obtain_public_school_services;
DROP TABLE IF EXISTS public.difficulty_to_obtain_public_school_services;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: difficulty_to_obtain_public_school_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficulty_to_obtain_public_school_services (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    difficulty_to_obtain_public_school_services character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: difficulty_to_obtain_public_school_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.difficulty_to_obtain_public_school_services (geo_level, geo_code, geo_version, difficulty_to_obtain_public_school_services, total) FROM stdin;
county	30	2009	Difficult	6
county	30	2009	Easy	12
county	30	2009	No contact	9
county	30	2009	Very Easy	5
county	36	2009	Difficult	11
county	36	2009	Easy	21
county	36	2009	No contact	8
county	36	2009	Very Difficult	3
county	36	2009	Very Easy	5
county	39	2009	Difficult	14
county	39	2009	Easy	12
county	39	2009	No contact	29
county	39	2009	Very Difficult	9
county	39	2009	Very Easy	16
county	40	2009	Difficult	6
county	40	2009	Easy	5
county	40	2009	No contact	17
county	40	2009	Very Difficult	2
county	40	2009	Very Easy	10
county	28	2009	Easy	10
county	28	2009	No contact	2
county	28	2009	Very Difficult	1
county	28	2009	Very Easy	3
county	14	2009	Difficult	1
county	14	2009	Easy	12
county	14	2009	No contact	16
county	14	2009	Very Difficult	1
county	14	2009	Very Easy	10
county	7	2009	Easy	16
county	7	2009	No contact	12
county	7	2009	Very Difficult	1
county	7	2009	Very Easy	3
county	43	2009	Difficult	10
county	43	2009	Easy	18
county	43	2009	No contact	17
county	43	2009	Very Difficult	3
county	43	2009	Very Easy	8
county	11	2009	Easy	3
county	11	2009	No contact	3
county	11	2009	Very Difficult	1
county	11	2009	Very Easy	1
county	34	2009	Difficult	8
county	34	2009	Easy	18
county	34	2009	No contact	17
county	34	2009	Very Easy	5
county	37	2009	Difficult	19
county	37	2009	Easy	18
county	37	2009	No contact	38
county	37	2009	Very Difficult	6
county	37	2009	Very Easy	15
county	35	2009	Difficult	6
county	35	2009	Easy	18
county	35	2009	No contact	9
county	35	2009	Very Difficult	2
county	35	2009	Very Easy	5
county	22	2009	Difficult	8
county	22	2009	Easy	23
county	22	2009	No contact	73
county	22	2009	Very Difficult	5
county	22	2009	Very Easy	11
county	3	2009	Difficult	9
county	3	2009	Easy	15
county	3	2009	No contact	29
county	3	2009	Very Difficult	3
county	3	2009	Very Easy	8
county	20	2009	Easy	7
county	20	2009	No contact	24
county	20	2009	Very Difficult	3
county	20	2009	Very Easy	6
county	45	2009	Difficult	23
county	45	2009	Easy	20
county	45	2009	No contact	18
county	45	2009	Very Difficult	1
county	45	2009	Very Easy	10
county	42	2009	Difficult	3
county	42	2009	Easy	9
county	42	2009	No contact	22
county	42	2009	Very Difficult	3
county	42	2009	Very Easy	19
county	15	2009	Difficult	6
county	15	2009	Easy	18
county	15	2009	No contact	22
county	15	2009	Very Easy	10
county	2	2009	Difficult	9
county	2	2009	Easy	12
county	2	2009	No contact	13
county	2	2009	Very Difficult	1
county	2	2009	Very Easy	5
county	31	2009	Difficult	7
county	31	2009	Easy	6
county	31	2009	No contact	8
county	31	2009	Very Difficult	2
county	31	2009	Very Easy	1
county	5	2009	Easy	1
county	5	2009	No contact	4
county	5	2009	Very Easy	3
county	16	2009	Difficult	6
county	16	2009	Easy	8
county	16	2009	No contact	39
county	16	2009	Very Easy	19
county	17	2009	Difficult	8
county	17	2009	Easy	15
county	17	2009	No contact	24
county	17	2009	Very Difficult	2
county	17	2009	Very Easy	7
county	9	2009	Difficult	2
county	9	2009	Easy	25
county	9	2009	No contact	12
county	9	2009	Very Difficult	1
county	9	2009	Very Easy	8
county	10	2009	Difficult	2
county	10	2009	Easy	6
county	10	2009	No contact	3
county	10	2009	Very Difficult	3
county	10	2009	Very Easy	2
county	12	2009	Difficult	3
county	12	2009	Don't Know	1
county	12	2009	Easy	29
county	12	2009	No contact	36
county	12	2009	Very Easy	16
county	44	2009	Difficult	7
county	44	2009	Easy	16
county	44	2009	No contact	13
county	44	2009	Very Easy	12
county	1	2009	Difficult	5
county	1	2009	Easy	12
county	1	2009	No contact	44
county	1	2009	Very Difficult	4
county	1	2009	Very Easy	7
county	21	2009	Difficult	4
county	21	2009	Easy	12
county	21	2009	No contact	35
county	21	2009	Very Difficult	3
county	21	2009	Very Easy	10
county	47	2009	Difficult	31
county	47	2009	Easy	55
county	47	2009	Missing	1
county	47	2009	No contact	133
county	47	2009	Very Difficult	13
county	47	2009	Very Easy	15
county	32	2009	Difficult	18
county	32	2009	Easy	30
county	32	2009	No contact	37
county	32	2009	Very Difficult	7
county	32	2009	Very Easy	12
county	29	2009	Difficult	7
county	29	2009	Easy	24
county	29	2009	No contact	8
county	29	2009	Very Easy	9
county	33	2009	Difficult	10
county	33	2009	Easy	14
county	33	2009	No contact	16
county	33	2009	Very Difficult	4
county	33	2009	Very Easy	4
county	46	2009	Difficult	7
county	46	2009	Easy	13
county	46	2009	No contact	15
county	46	2009	Very Easy	5
county	18	2009	Difficult	2
county	18	2009	Easy	7
county	18	2009	No contact	26
county	18	2009	Very Easy	5
county	19	2009	Difficult	3
county	19	2009	Easy	14
county	19	2009	No contact	15
county	19	2009	Very Difficult	2
county	19	2009	Very Easy	14
county	25	2009	Difficult	1
county	25	2009	Easy	2
county	25	2009	No contact	3
county	25	2009	Very Easy	2
county	41	2009	Difficult	6
county	41	2009	Easy	12
county	41	2009	No contact	18
county	41	2009	Very Easy	12
county	6	2009	Difficult	2
county	6	2009	Easy	1
county	6	2009	No contact	10
county	6	2009	Very Easy	3
county	4	2009	Difficult	2
county	4	2009	Easy	2
county	4	2009	No contact	4
county	13	2009	Difficult	1
county	13	2009	Don't Know	1
county	13	2009	Easy	7
county	13	2009	No contact	9
county	13	2009	Very Easy	6
county	26	2009	Difficult	3
county	26	2009	Easy	7
county	26	2009	No contact	31
county	26	2009	Very Difficult	2
county	26	2009	Very Easy	5
county	23	2009	Difficult	9
county	23	2009	Easy	24
county	23	2009	No contact	4
county	23	2009	Very Difficult	1
county	23	2009	Very Easy	10
county	27	2009	Difficult	9
county	27	2009	Easy	27
county	27	2009	No contact	15
county	27	2009	Very Easy	5
county	38	2009	Difficult	5
county	38	2009	Easy	3
county	38	2009	No contact	19
county	38	2009	Very Difficult	2
county	38	2009	Very Easy	3
county	8	2009	Difficult	1
county	8	2009	Easy	12
county	8	2009	No contact	9
county	8	2009	Very Difficult	1
county	8	2009	Very Easy	9
county	24	2009	Easy	18
county	24	2009	No contact	3
county	24	2009	Very Easy	3
country	KE	2009	Missing	1
country	KE	2009	Very Easy	362
country	KE	2009	No contact	971
country	KE	2009	Easy	669
country	KE	2009	Very Difficult	92
country	KE	2009	Don't Know	2
country	KE	2009	Difficult	300
\.


--
-- Name: difficulty_to_obtain_public_school_services pk_difficulty_to_obtain_public_school_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_public_school_services
    ADD CONSTRAINT pk_difficulty_to_obtain_public_school_services PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_public_school_services);


--
-- PostgreSQL database dump complete
--


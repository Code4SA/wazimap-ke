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

ALTER TABLE IF EXISTS ONLY public.difficulty_to_obtain_household_services DROP CONSTRAINT IF EXISTS pk_difficulty_to_obtain_household_services;
DROP TABLE IF EXISTS public.difficulty_to_obtain_household_services;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: difficulty_to_obtain_household_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficulty_to_obtain_household_services (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    difficulty_to_obtain_household_services character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: difficulty_to_obtain_household_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.difficulty_to_obtain_household_services (geo_level, geo_code, geo_version, difficulty_to_obtain_household_services, total) FROM stdin;
county	30	2009	Difficult	8
county	30	2009	Easy	5
county	30	2009	No contact	16
county	30	2009	Very Difficult	2
county	30	2009	Very Easy	1
county	36	2009	Difficult	7
county	36	2009	Easy	2
county	36	2009	No contact	38
county	36	2009	Very Difficult	1
county	39	2009	Easy	1
county	39	2009	No contact	77
county	39	2009	Very Easy	2
county	40	2009	Easy	1
county	40	2009	No contact	39
county	28	2009	Difficult	4
county	28	2009	Easy	2
county	28	2009	No contact	10
county	14	2009	Difficult	4
county	14	2009	Easy	2
county	14	2009	No contact	32
county	14	2009	Very Difficult	2
county	7	2009	Difficult	3
county	7	2009	Easy	5
county	7	2009	No contact	23
county	7	2009	Very Difficult	1
county	43	2009	Difficult	2
county	43	2009	Easy	1
county	43	2009	No contact	52
county	43	2009	Very Difficult	1
county	11	2009	No contact	7
county	11	2009	Very Difficult	1
county	34	2009	Difficult	8
county	34	2009	Easy	13
county	34	2009	No contact	23
county	34	2009	Very Difficult	2
county	34	2009	Very Easy	2
county	37	2009	No contact	93
county	37	2009	Very Difficult	3
county	35	2009	Difficult	11
county	35	2009	Easy	8
county	35	2009	No contact	18
county	35	2009	Very Difficult	2
county	35	2009	Very Easy	1
county	22	2009	Difficult	10
county	22	2009	Easy	7
county	22	2009	No contact	96
county	22	2009	Very Difficult	3
county	22	2009	Very Easy	4
county	3	2009	Easy	1
county	3	2009	No contact	60
county	3	2009	Very Difficult	2
county	3	2009	Very Easy	1
county	20	2009	Difficult	2
county	20	2009	Easy	2
county	20	2009	No contact	31
county	20	2009	Very Difficult	3
county	20	2009	Very Easy	2
county	45	2009	Difficult	1
county	45	2009	Easy	2
county	45	2009	No contact	64
county	45	2009	Very Difficult	2
county	45	2009	Very Easy	3
county	42	2009	Difficult	4
county	42	2009	No contact	51
county	42	2009	Very Difficult	1
county	15	2009	Difficult	3
county	15	2009	Easy	6
county	15	2009	No contact	46
county	15	2009	Very Difficult	1
county	2	2009	Easy	1
county	2	2009	No contact	36
county	2	2009	Very Easy	3
county	31	2009	Difficult	1
county	31	2009	Easy	1
county	31	2009	No contact	21
county	31	2009	Very Difficult	1
county	5	2009	No contact	8
county	16	2009	Difficult	7
county	16	2009	Easy	3
county	16	2009	No contact	51
county	16	2009	Very Difficult	7
county	16	2009	Very Easy	4
county	17	2009	Difficult	5
county	17	2009	Easy	2
county	17	2009	No contact	44
county	17	2009	Very Difficult	4
county	17	2009	Very Easy	1
county	9	2009	Difficult	11
county	9	2009	No contact	37
county	10	2009	No contact	13
county	10	2009	Very Difficult	3
county	12	2009	Difficult	4
county	12	2009	Don't Know	1
county	12	2009	Easy	8
county	12	2009	No contact	67
county	12	2009	Very Difficult	1
county	12	2009	Very Easy	4
county	44	2009	Difficult	2
county	44	2009	Easy	2
county	44	2009	No contact	43
county	44	2009	Very Difficult	1
county	1	2009	Easy	3
county	1	2009	No contact	69
county	21	2009	Difficult	4
county	21	2009	Easy	2
county	21	2009	No contact	52
county	21	2009	Very Difficult	1
county	21	2009	Very Easy	5
county	47	2009	Difficult	17
county	47	2009	Easy	34
county	47	2009	No contact	164
county	47	2009	Very Difficult	19
county	47	2009	Very Easy	14
county	32	2009	Difficult	11
county	32	2009	Easy	7
county	32	2009	No contact	79
county	32	2009	Very Difficult	7
county	29	2009	Difficult	7
county	29	2009	Easy	9
county	29	2009	No contact	31
county	29	2009	Very Easy	1
county	33	2009	Difficult	3
county	33	2009	Easy	1
county	33	2009	No contact	42
county	33	2009	Very Difficult	2
county	46	2009	No contact	40
county	18	2009	Difficult	4
county	18	2009	Easy	4
county	18	2009	No contact	32
county	19	2009	Difficult	1
county	19	2009	Easy	9
county	19	2009	No contact	34
county	19	2009	Very Difficult	2
county	19	2009	Very Easy	2
county	25	2009	Difficult	1
county	25	2009	Easy	1
county	25	2009	No contact	6
county	41	2009	Difficult	1
county	41	2009	No contact	45
county	41	2009	Very Easy	2
county	6	2009	No contact	15
county	6	2009	Very Easy	1
county	4	2009	No contact	7
county	4	2009	Very Difficult	1
county	13	2009	Difficult	3
county	13	2009	Easy	6
county	13	2009	No contact	15
county	26	2009	No contact	47
county	26	2009	Very Difficult	1
county	23	2009	Difficult	13
county	23	2009	Easy	2
county	23	2009	No contact	33
county	27	2009	Difficult	12
county	27	2009	Easy	13
county	27	2009	No contact	28
county	27	2009	Very Difficult	1
county	27	2009	Very Easy	2
county	38	2009	No contact	32
county	8	2009	Difficult	3
county	8	2009	Easy	2
county	8	2009	No contact	26
county	8	2009	Very Difficult	1
county	24	2009	Difficult	3
county	24	2009	Don't Know	1
county	24	2009	Easy	2
county	24	2009	No contact	18
country	KE	2009	Very Easy	55
country	KE	2009	No contact	1911
country	KE	2009	Easy	170
country	KE	2009	Very Difficult	79
country	KE	2009	Don't Know	2
country	KE	2009	Difficult	180
\.


--
-- Name: difficulty_to_obtain_household_services pk_difficulty_to_obtain_household_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_household_services
    ADD CONSTRAINT pk_difficulty_to_obtain_household_services PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_household_services);


--
-- PostgreSQL database dump complete
--


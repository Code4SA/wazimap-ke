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

ALTER TABLE IF EXISTS ONLY public.difficulty_to_obtain_medical_treatment DROP CONSTRAINT IF EXISTS pk_difficulty_to_obtain_medical_treatment;
DROP TABLE IF EXISTS public.difficulty_to_obtain_medical_treatment;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: difficulty_to_obtain_medical_treatment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficulty_to_obtain_medical_treatment (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    difficulty_to_obtain_medical_treatment character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: difficulty_to_obtain_medical_treatment; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.difficulty_to_obtain_medical_treatment (geo_level, geo_code, geo_version, difficulty_to_obtain_medical_treatment, total) FROM stdin;
county	30	2009	Difficult	10
county	30	2009	Easy	17
county	30	2009	No contact	3
county	30	2009	Very Easy	2
county	36	2009	Difficult	8
county	36	2009	Easy	32
county	36	2009	No contact	3
county	36	2009	Very Difficult	3
county	36	2009	Very Easy	2
county	39	2009	Difficult	16
county	39	2009	Easy	14
county	39	2009	No contact	18
county	39	2009	Very Difficult	23
county	39	2009	Very Easy	9
county	40	2009	Difficult	7
county	40	2009	Easy	16
county	40	2009	No contact	4
county	40	2009	Very Difficult	8
county	40	2009	Very Easy	5
county	28	2009	Difficult	4
county	28	2009	Easy	10
county	28	2009	Very Easy	2
county	14	2009	Difficult	6
county	14	2009	Easy	12
county	14	2009	No contact	13
county	14	2009	Very Difficult	2
county	14	2009	Very Easy	7
county	7	2009	Difficult	2
county	7	2009	Easy	14
county	7	2009	No contact	8
county	7	2009	Very Difficult	2
county	7	2009	Very Easy	6
county	43	2009	Difficult	18
county	43	2009	Easy	14
county	43	2009	No contact	15
county	43	2009	Very Difficult	6
county	43	2009	Very Easy	3
county	11	2009	Easy	3
county	11	2009	No contact	2
county	11	2009	Very Difficult	2
county	11	2009	Very Easy	1
county	34	2009	Difficult	29
county	34	2009	Easy	9
county	34	2009	No contact	8
county	34	2009	Very Easy	2
county	37	2009	Difficult	20
county	37	2009	Easy	25
county	37	2009	No contact	18
county	37	2009	Very Difficult	17
county	37	2009	Very Easy	16
county	35	2009	Difficult	18
county	35	2009	Easy	16
county	35	2009	No contact	3
county	35	2009	Very Difficult	2
county	35	2009	Very Easy	1
county	22	2009	Difficult	15
county	22	2009	Easy	30
county	22	2009	No contact	43
county	22	2009	Very Difficult	8
county	22	2009	Very Easy	24
county	3	2009	Difficult	13
county	3	2009	Easy	12
county	3	2009	No contact	25
county	3	2009	Very Difficult	7
county	3	2009	Very Easy	7
county	20	2009	Difficult	5
county	20	2009	Easy	8
county	20	2009	No contact	16
county	20	2009	Very Difficult	5
county	20	2009	Very Easy	6
county	45	2009	Difficult	30
county	45	2009	Easy	23
county	45	2009	No contact	8
county	45	2009	Very Difficult	8
county	45	2009	Very Easy	3
county	42	2009	Difficult	19
county	42	2009	Easy	13
county	42	2009	No contact	16
county	42	2009	Very Difficult	4
county	42	2009	Very Easy	4
county	15	2009	Difficult	7
county	15	2009	Easy	15
county	15	2009	No contact	20
county	15	2009	Very Easy	14
county	2	2009	Difficult	3
county	2	2009	Easy	9
county	2	2009	No contact	17
county	2	2009	Very Difficult	6
county	2	2009	Very Easy	5
county	31	2009	Difficult	10
county	31	2009	Easy	2
county	31	2009	No contact	8
county	31	2009	Very Difficult	4
county	5	2009	Difficult	1
county	5	2009	Easy	1
county	5	2009	No contact	3
county	5	2009	Very Easy	3
county	16	2009	Difficult	12
county	16	2009	Easy	15
county	16	2009	No contact	21
county	16	2009	Very Difficult	2
county	16	2009	Very Easy	22
county	17	2009	Difficult	8
county	17	2009	Easy	12
county	17	2009	No contact	21
county	17	2009	Very Difficult	6
county	17	2009	Very Easy	9
county	9	2009	Difficult	1
county	9	2009	Easy	23
county	9	2009	No contact	14
county	9	2009	Very Difficult	2
county	9	2009	Very Easy	8
county	10	2009	Difficult	2
county	10	2009	Easy	4
county	10	2009	No contact	2
county	10	2009	Very Difficult	4
county	10	2009	Very Easy	4
county	12	2009	Difficult	5
county	12	2009	Easy	31
county	12	2009	No contact	25
county	12	2009	Very Difficult	1
county	12	2009	Very Easy	23
county	44	2009	Difficult	17
county	44	2009	Easy	13
county	44	2009	No contact	12
county	44	2009	Very Difficult	3
county	44	2009	Very Easy	3
county	1	2009	Difficult	18
county	1	2009	Easy	11
county	1	2009	No contact	35
county	1	2009	Very Difficult	3
county	1	2009	Very Easy	5
county	21	2009	Difficult	4
county	21	2009	Easy	18
county	21	2009	No contact	16
county	21	2009	Very Difficult	3
county	21	2009	Very Easy	23
county	47	2009	Difficult	36
county	47	2009	Easy	70
county	47	2009	No contact	90
county	47	2009	Very Difficult	32
county	47	2009	Very Easy	20
county	32	2009	Difficult	34
county	32	2009	Easy	31
county	32	2009	No contact	22
county	32	2009	Very Difficult	14
county	32	2009	Very Easy	3
county	29	2009	Difficult	25
county	29	2009	Easy	16
county	29	2009	No contact	4
county	29	2009	Very Easy	3
county	33	2009	Difficult	15
county	33	2009	Easy	14
county	33	2009	No contact	11
county	33	2009	Very Difficult	5
county	33	2009	Very Easy	3
county	46	2009	Difficult	10
county	46	2009	Easy	13
county	46	2009	No contact	12
county	46	2009	Very Difficult	4
county	46	2009	Very Easy	1
county	18	2009	Difficult	7
county	18	2009	Easy	6
county	18	2009	No contact	16
county	18	2009	Very Difficult	3
county	18	2009	Very Easy	8
county	19	2009	Difficult	6
county	19	2009	Easy	13
county	19	2009	No contact	9
county	19	2009	Very Difficult	3
county	19	2009	Very Easy	17
county	25	2009	Difficult	5
county	25	2009	Easy	2
county	25	2009	No contact	1
county	41	2009	Difficult	19
county	41	2009	Easy	15
county	41	2009	No contact	7
county	41	2009	Very Difficult	4
county	41	2009	Very Easy	3
county	6	2009	Difficult	3
county	6	2009	Easy	3
county	6	2009	No contact	6
county	6	2009	Very Easy	4
county	4	2009	Easy	5
county	4	2009	No contact	2
county	4	2009	Very Easy	1
county	13	2009	Difficult	1
county	13	2009	Easy	9
county	13	2009	No contact	5
county	13	2009	Very Easy	9
county	26	2009	Difficult	8
county	26	2009	Easy	10
county	26	2009	No contact	14
county	26	2009	Very Difficult	9
county	26	2009	Very Easy	7
county	23	2009	Difficult	23
county	23	2009	Easy	13
county	23	2009	No contact	2
county	23	2009	Very Difficult	4
county	23	2009	Very Easy	6
county	27	2009	Difficult	21
county	27	2009	Easy	26
county	27	2009	No contact	5
county	27	2009	Very Difficult	1
county	27	2009	Very Easy	3
county	38	2009	Difficult	11
county	38	2009	Easy	2
county	38	2009	No contact	7
county	38	2009	Very Difficult	7
county	38	2009	Very Easy	5
county	8	2009	Difficult	3
county	8	2009	Easy	16
county	8	2009	No contact	5
county	8	2009	Very Difficult	2
county	8	2009	Very Easy	6
county	24	2009	Difficult	6
county	24	2009	Easy	15
county	24	2009	Very Difficult	1
county	24	2009	Very Easy	2
country	KE	2009	Very Easy	320
country	KE	2009	No contact	615
country	KE	2009	Very Difficult	220
country	KE	2009	Easy	701
country	KE	2009	Difficult	541
\.


--
-- Name: difficulty_to_obtain_medical_treatment pk_difficulty_to_obtain_medical_treatment; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_medical_treatment
    ADD CONSTRAINT pk_difficulty_to_obtain_medical_treatment PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_medical_treatment);


--
-- PostgreSQL database dump complete
--


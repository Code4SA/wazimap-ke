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

ALTER TABLE IF EXISTS ONLY public.difficulty_to_obtain_identity_document DROP CONSTRAINT IF EXISTS pk_difficulty_to_obtain_identity_document;
DROP TABLE IF EXISTS public.difficulty_to_obtain_identity_document;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: difficulty_to_obtain_identity_document; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficulty_to_obtain_identity_document (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    difficulty_to_obtain_identity_document character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: difficulty_to_obtain_identity_document; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.difficulty_to_obtain_identity_document (geo_level, geo_code, geo_version, difficulty_to_obtain_identity_document, total) FROM stdin;
county	30	2009	Difficult	12
county	30	2009	Easy	11
county	30	2009	No contact	8
county	30	2009	Very Easy	1
county	36	2009	Difficult	11
county	36	2009	Easy	11
county	36	2009	No contact	12
county	36	2009	Very Difficult	14
county	39	2009	Difficult	8
county	39	2009	Easy	6
county	39	2009	No contact	53
county	39	2009	Very Difficult	9
county	39	2009	Very Easy	4
county	40	2009	Difficult	2
county	40	2009	Easy	6
county	40	2009	No contact	24
county	40	2009	Very Difficult	6
county	40	2009	Very Easy	2
county	28	2009	Difficult	6
county	28	2009	Easy	4
county	28	2009	No contact	4
county	28	2009	Very Difficult	1
county	28	2009	Very Easy	1
county	14	2009	Difficult	2
county	14	2009	Easy	8
county	14	2009	No contact	21
county	14	2009	Very Difficult	6
county	14	2009	Very Easy	3
county	7	2009	Difficult	7
county	7	2009	Easy	7
county	7	2009	No contact	15
county	7	2009	Very Difficult	3
county	43	2009	Difficult	9
county	43	2009	Easy	10
county	43	2009	No contact	29
county	43	2009	Very Difficult	7
county	43	2009	Very Easy	1
county	11	2009	Difficult	2
county	11	2009	No contact	4
county	11	2009	Very Difficult	2
county	34	2009	Difficult	21
county	34	2009	Easy	12
county	34	2009	No contact	12
county	34	2009	Very Difficult	3
county	37	2009	Difficult	10
county	37	2009	Easy	6
county	37	2009	No contact	66
county	37	2009	Very Difficult	13
county	37	2009	Very Easy	1
county	35	2009	Difficult	14
county	35	2009	Easy	7
county	35	2009	No contact	6
county	35	2009	Very Difficult	12
county	35	2009	Very Easy	1
county	22	2009	Difficult	15
county	22	2009	Easy	11
county	22	2009	No contact	68
county	22	2009	Very Difficult	12
county	22	2009	Very Easy	14
county	3	2009	Difficult	16
county	3	2009	Easy	4
county	3	2009	No contact	28
county	3	2009	Very Difficult	16
county	20	2009	Difficult	4
county	20	2009	Easy	4
county	20	2009	No contact	19
county	20	2009	Very Difficult	9
county	20	2009	Very Easy	4
county	45	2009	Difficult	17
county	45	2009	Easy	12
county	45	2009	No contact	31
county	45	2009	Very Difficult	8
county	45	2009	Very Easy	4
county	42	2009	Difficult	8
county	42	2009	Easy	12
county	42	2009	No contact	25
county	42	2009	Very Difficult	9
county	42	2009	Very Easy	2
county	15	2009	Difficult	1
county	15	2009	Easy	12
county	15	2009	No contact	38
county	15	2009	Very Difficult	1
county	15	2009	Very Easy	4
county	2	2009	Difficult	10
county	2	2009	Easy	2
county	2	2009	No contact	21
county	2	2009	Very Difficult	5
county	2	2009	Very Easy	2
county	31	2009	Difficult	5
county	31	2009	Easy	2
county	31	2009	No contact	11
county	31	2009	Very Difficult	6
county	5	2009	Difficult	1
county	5	2009	Easy	2
county	5	2009	No contact	4
county	5	2009	Very Easy	1
county	16	2009	Difficult	5
county	16	2009	Easy	11
county	16	2009	No contact	46
county	16	2009	Very Difficult	5
county	16	2009	Very Easy	5
county	17	2009	Difficult	6
county	17	2009	Easy	4
county	17	2009	No contact	29
county	17	2009	Very Difficult	12
county	17	2009	Very Easy	5
county	9	2009	Difficult	5
county	9	2009	Easy	10
county	9	2009	No contact	19
county	9	2009	Very Difficult	14
county	10	2009	Difficult	2
county	10	2009	No contact	8
county	10	2009	Very Difficult	6
county	12	2009	Difficult	14
county	12	2009	Easy	7
county	12	2009	No contact	55
county	12	2009	Very Difficult	4
county	12	2009	Very Easy	5
county	44	2009	Difficult	7
county	44	2009	Easy	9
county	44	2009	No contact	25
county	44	2009	Very Difficult	5
county	44	2009	Very Easy	2
county	1	2009	Difficult	22
county	1	2009	Easy	5
county	1	2009	No contact	34
county	1	2009	Very Difficult	9
county	1	2009	Very Easy	2
county	21	2009	Difficult	5
county	21	2009	Easy	3
county	21	2009	No contact	49
county	21	2009	Very Difficult	4
county	21	2009	Very Easy	3
county	47	2009	Difficult	41
county	47	2009	Easy	37
county	47	2009	No contact	111
county	47	2009	Very Difficult	51
county	47	2009	Very Easy	8
county	32	2009	Difficult	25
county	32	2009	Easy	12
county	32	2009	No contact	38
county	32	2009	Very Difficult	29
county	29	2009	Difficult	25
county	29	2009	Easy	9
county	29	2009	No contact	8
county	29	2009	Very Difficult	4
county	29	2009	Very Easy	2
county	33	2009	Difficult	14
county	33	2009	Easy	4
county	33	2009	No contact	17
county	33	2009	Very Difficult	13
county	46	2009	Difficult	6
county	46	2009	Easy	8
county	46	2009	No contact	21
county	46	2009	Very Difficult	4
county	46	2009	Very Easy	1
county	18	2009	Difficult	5
county	18	2009	Easy	5
county	18	2009	No contact	25
county	18	2009	Very Difficult	2
county	18	2009	Very Easy	3
county	19	2009	Difficult	6
county	19	2009	Easy	10
county	19	2009	No contact	24
county	19	2009	Very Difficult	5
county	19	2009	Very Easy	3
county	25	2009	Difficult	2
county	25	2009	Easy	3
county	25	2009	No contact	3
county	41	2009	Difficult	8
county	41	2009	Easy	9
county	41	2009	No contact	20
county	41	2009	Very Difficult	5
county	41	2009	Very Easy	6
county	6	2009	Difficult	1
county	6	2009	Easy	2
county	6	2009	No contact	9
county	6	2009	Very Difficult	2
county	6	2009	Very Easy	2
county	4	2009	Difficult	1
county	4	2009	Easy	2
county	4	2009	No contact	4
county	4	2009	Very Difficult	1
county	13	2009	Difficult	4
county	13	2009	Easy	2
county	13	2009	No contact	12
county	13	2009	Very Difficult	2
county	13	2009	Very Easy	4
county	26	2009	Difficult	8
county	26	2009	Easy	1
county	26	2009	No contact	32
county	26	2009	Very Difficult	2
county	26	2009	Very Easy	5
county	23	2009	Difficult	27
county	23	2009	Easy	10
county	23	2009	No contact	4
county	23	2009	Very Difficult	3
county	23	2009	Very Easy	4
county	27	2009	Difficult	18
county	27	2009	Easy	22
county	27	2009	No contact	12
county	27	2009	Very Difficult	2
county	27	2009	Very Easy	2
county	38	2009	Difficult	3
county	38	2009	Easy	1
county	38	2009	No contact	15
county	38	2009	Very Difficult	7
county	38	2009	Very Easy	6
county	8	2009	Difficult	4
county	8	2009	Easy	6
county	8	2009	No contact	14
county	8	2009	Very Difficult	8
county	24	2009	Difficult	12
county	24	2009	Easy	6
county	24	2009	No contact	4
county	24	2009	Very Difficult	1
county	24	2009	Very Easy	1
country	KE	2009	Very Easy	114
country	KE	2009	No contact	1137
country	KE	2009	Very Difficult	342
country	KE	2009	Easy	347
country	KE	2009	Difficult	457
\.


--
-- Name: difficulty_to_obtain_identity_document pk_difficulty_to_obtain_identity_document; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficulty_to_obtain_identity_document
    ADD CONSTRAINT pk_difficulty_to_obtain_identity_document PRIMARY KEY (geo_level, geo_code, geo_version, difficulty_to_obtain_identity_document);


--
-- PostgreSQL database dump complete
--


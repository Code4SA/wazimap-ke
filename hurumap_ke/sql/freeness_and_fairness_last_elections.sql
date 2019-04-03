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

ALTER TABLE IF EXISTS ONLY public.freeness_and_fairness_last_elections DROP CONSTRAINT IF EXISTS pk_freeness_and_fairness_last_elections;
DROP TABLE IF EXISTS public.freeness_and_fairness_last_elections;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: freeness_and_fairness_last_elections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.freeness_and_fairness_last_elections (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    freeness_and_fairness_last_elections character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: freeness_and_fairness_last_elections; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.freeness_and_fairness_last_elections (geo_level, geo_code, geo_version, freeness_and_fairness_last_elections, total) FROM stdin;
county	30	2009	Completely free and fair	27
county	30	2009	Don't know	1
county	30	2009	Free and fair, but with minor problems	4
county	36	2009	Completely free and fair	23
county	36	2009	Don't know	1
county	36	2009	Free and fair, but with minor problems	20
county	36	2009	Free and fair, with major problems	2
county	36	2009	Not free and fair	2
county	39	2009	Completely free and fair	35
county	39	2009	Don't know	5
county	39	2009	Free and fair, but with minor problems	15
county	39	2009	Free and fair, with major problems	13
county	39	2009	Not free and fair	12
county	40	2009	Completely free and fair	6
county	40	2009	Don't know	6
county	40	2009	Free and fair, but with minor problems	6
county	40	2009	Free and fair, with major problems	13
county	40	2009	Not free and fair	9
county	28	2009	Completely free and fair	9
county	28	2009	Don't know	1
county	28	2009	Free and fair, but with minor problems	6
county	14	2009	Completely free and fair	14
county	14	2009	Don't know	1
county	14	2009	Free and fair, but with minor problems	18
county	14	2009	Free and fair, with major problems	2
county	14	2009	Not free and fair	5
county	7	2009	Completely free and fair	15
county	7	2009	Don't know	6
county	7	2009	Free and fair, but with minor problems	8
county	7	2009	Free and fair, with major problems	2
county	7	2009	Not free and fair	1
county	43	2009	Completely free and fair	1
county	43	2009	Free and fair, but with minor problems	10
county	43	2009	Free and fair, with major problems	27
county	43	2009	Not free and fair	18
county	11	2009	Completely free and fair	1
county	11	2009	Don't know	1
county	11	2009	Free and fair, but with minor problems	3
county	11	2009	Free and fair, with major problems	1
county	11	2009	Not free and fair	2
county	34	2009	Completely free and fair	20
county	34	2009	Do not understand the question	1
county	34	2009	Free and fair, but with minor problems	15
county	34	2009	Free and fair, with major problems	5
county	34	2009	Not free and fair	7
county	37	2009	Completely free and fair	23
county	37	2009	Do not understand the question	2
county	37	2009	Don't know	3
county	37	2009	Free and fair, but with minor problems	14
county	37	2009	Free and fair, with major problems	18
county	37	2009	Not free and fair	36
county	35	2009	Completely free and fair	15
county	35	2009	Free and fair, but with minor problems	13
county	35	2009	Free and fair, with major problems	6
county	35	2009	Not free and fair	6
county	22	2009	Completely free and fair	63
county	22	2009	Don't know	3
county	22	2009	Free and fair, but with minor problems	39
county	22	2009	Free and fair, with major problems	9
county	22	2009	Not free and fair	6
county	3	2009	Completely free and fair	4
county	3	2009	Do not understand the question	1
county	3	2009	Don't know	8
county	3	2009	Free and fair, but with minor problems	2
county	3	2009	Free and fair, with major problems	14
county	3	2009	Not free and fair	35
county	20	2009	Completely free and fair	20
county	20	2009	Do not understand the question	1
county	20	2009	Free and fair, but with minor problems	15
county	20	2009	Free and fair, with major problems	3
county	20	2009	Not free and fair	1
county	45	2009	Completely free and fair	10
county	45	2009	Don't know	1
county	45	2009	Free and fair, but with minor problems	29
county	45	2009	Free and fair, with major problems	22
county	45	2009	Not free and fair	10
county	42	2009	Completely free and fair	4
county	42	2009	Free and fair, but with minor problems	11
county	42	2009	Free and fair, with major problems	20
county	42	2009	Not free and fair	21
county	15	2009	Completely free and fair	7
county	15	2009	Don't know	1
county	15	2009	Free and fair, but with minor problems	18
county	15	2009	Free and fair, with major problems	7
county	15	2009	Not free and fair	23
county	2	2009	Completely free and fair	6
county	2	2009	Don't know	3
county	2	2009	Free and fair, but with minor problems	7
county	2	2009	Free and fair, with major problems	9
county	2	2009	Not free and fair	15
county	31	2009	Completely free and fair	11
county	31	2009	Don't know	3
county	31	2009	Free and fair, but with minor problems	6
county	31	2009	Free and fair, with major problems	4
county	5	2009	Completely free and fair	6
county	5	2009	Free and fair, with major problems	1
county	5	2009	Not free and fair	1
county	16	2009	Completely free and fair	13
county	16	2009	Don't know	1
county	16	2009	Free and fair, but with minor problems	26
county	16	2009	Free and fair, with major problems	12
county	16	2009	Not free and fair	20
county	17	2009	Completely free and fair	5
county	17	2009	Do not understand the question	1
county	17	2009	Don't know	6
county	38	2009	Not free and fair	8
county	17	2009	Free and fair, but with minor problems	12
county	17	2009	Free and fair, with major problems	11
county	17	2009	Not free and fair	21
county	9	2009	Completely free and fair	10
county	9	2009	Don't know	7
county	9	2009	Free and fair, but with minor problems	24
county	9	2009	Free and fair, with major problems	2
county	9	2009	Not free and fair	5
county	10	2009	Completely free and fair	1
county	10	2009	Don't know	5
county	10	2009	Free and fair, but with minor problems	4
county	10	2009	Free and fair, with major problems	2
county	10	2009	Not free and fair	4
county	12	2009	Completely free and fair	37
county	12	2009	Don't know	4
county	12	2009	Free and fair, but with minor problems	26
county	12	2009	Free and fair, with major problems	14
county	12	2009	Not free and fair	4
county	44	2009	Completely free and fair	6
county	44	2009	Don't know	1
county	44	2009	Free and fair, but with minor problems	12
county	44	2009	Free and fair, with major problems	17
county	44	2009	Not free and fair	12
county	1	2009	Completely free and fair	11
county	1	2009	Don't know	3
county	1	2009	Free and fair, but with minor problems	7
county	1	2009	Free and fair, with major problems	21
county	1	2009	Missing	1
county	1	2009	Not free and fair	29
county	21	2009	Completely free and fair	47
county	21	2009	Free and fair, but with minor problems	15
county	21	2009	Free and fair, with major problems	1
county	21	2009	Not free and fair	1
county	47	2009	Completely free and fair	74
county	47	2009	Do not understand the question	1
county	47	2009	Don't know	9
county	47	2009	Free and fair, but with minor problems	74
county	47	2009	Free and fair, with major problems	39
county	47	2009	Not free and fair	51
county	32	2009	Completely free and fair	53
county	32	2009	Don't know	1
county	32	2009	Free and fair, but with minor problems	28
county	32	2009	Free and fair, with major problems	12
county	32	2009	Not free and fair	10
county	29	2009	Completely free and fair	36
county	29	2009	Free and fair, but with minor problems	8
county	29	2009	Free and fair, with major problems	4
county	33	2009	Completely free and fair	26
county	33	2009	Don't know	1
county	33	2009	Free and fair, but with minor problems	16
county	33	2009	Free and fair, with major problems	4
county	33	2009	Not free and fair	1
county	46	2009	Completely free and fair	5
county	46	2009	Don't know	1
county	46	2009	Free and fair, but with minor problems	22
county	46	2009	Free and fair, with major problems	7
county	46	2009	Not free and fair	5
county	18	2009	Completely free and fair	20
county	18	2009	Free and fair, but with minor problems	16
county	18	2009	Free and fair, with major problems	3
county	18	2009	Not free and fair	1
county	19	2009	Completely free and fair	27
county	19	2009	Don't know	1
county	19	2009	Free and fair, but with minor problems	11
county	19	2009	Free and fair, with major problems	7
county	19	2009	Not free and fair	2
county	25	2009	Completely free and fair	5
county	25	2009	Don't know	2
county	25	2009	Free and fair, with major problems	1
county	41	2009	Completely free and fair	1
county	41	2009	Free and fair, but with minor problems	7
county	41	2009	Free and fair, with major problems	17
county	41	2009	Not free and fair	23
county	6	2009	Completely free and fair	3
county	6	2009	Don't know	2
county	6	2009	Free and fair, but with minor problems	4
county	6	2009	Free and fair, with major problems	4
county	6	2009	Not free and fair	3
county	4	2009	Completely free and fair	3
county	4	2009	Don't know	2
county	4	2009	Free and fair, but with minor problems	2
county	4	2009	Free and fair, with major problems	1
county	13	2009	Completely free and fair	8
county	13	2009	Don't know	1
county	13	2009	Free and fair, but with minor problems	10
county	13	2009	Free and fair, with major problems	2
county	13	2009	Not free and fair	3
county	26	2009	Completely free and fair	16
county	26	2009	Don't know	4
county	26	2009	Free and fair, but with minor problems	17
county	26	2009	Free and fair, with major problems	3
county	26	2009	Not free and fair	8
county	23	2009	Completely free and fair	15
county	23	2009	Do not understand the question	1
county	23	2009	Free and fair, but with minor problems	22
county	23	2009	Free and fair, with major problems	7
county	23	2009	Not free and fair	3
county	27	2009	Completely free and fair	42
county	27	2009	Don't know	1
county	27	2009	Free and fair, but with minor problems	5
county	27	2009	Free and fair, with major problems	1
county	27	2009	Not free and fair	7
county	38	2009	Completely free and fair	4
county	38	2009	Don't know	3
county	38	2009	Free and fair, but with minor problems	4
county	38	2009	Free and fair, with major problems	13
county	8	2009	Completely free and fair	16
county	8	2009	Don't know	10
county	8	2009	Free and fair, but with minor problems	5
county	8	2009	Not free and fair	1
county	24	2009	Completely free and fair	19
county	24	2009	Free and fair, but with minor problems	4
county	24	2009	Not free and fair	1
country	KE	2009	Free and fair, with major problems	383
country	KE	2009	Free and fair, but with minor problems	640
country	KE	2009	Missing	1
country	KE	2009	Don't know	109
country	KE	2009	Do not understand the question	8
country	KE	2009	Not free and fair	433
country	KE	2009	Completely free and fair	823
\.


--
-- Name: freeness_and_fairness_last_elections pk_freeness_and_fairness_last_elections; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.freeness_and_fairness_last_elections
    ADD CONSTRAINT pk_freeness_and_fairness_last_elections PRIMARY KEY (geo_level, geo_code, geo_version, freeness_and_fairness_last_elections);


--
-- PostgreSQL database dump complete
--


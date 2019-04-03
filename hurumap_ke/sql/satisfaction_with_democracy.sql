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

ALTER TABLE IF EXISTS ONLY public.satisfaction_with_democracy DROP CONSTRAINT IF EXISTS pk_satisfaction_with_democracy;
DROP TABLE IF EXISTS public.satisfaction_with_democracy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: satisfaction_with_democracy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.satisfaction_with_democracy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    satisfaction_with_democracy character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: satisfaction_with_democracy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.satisfaction_with_democracy (geo_level, geo_code, geo_version, satisfaction_with_democracy, total) FROM stdin;
county	30	2009	Do not know	4
county	30	2009	Fairly satisfied	11
county	30	2009	Not very satisfied	5
county	30	2009	Very satisfied	12
county	36	2009	Do not know	3
county	36	2009	Fairly satisfied	21
county	36	2009	Not at all satisfied	3
county	36	2009	Not very satisfied	15
county	36	2009	Very satisfied	6
county	39	2009	Do not know	11
county	39	2009	Fairly satisfied	24
county	39	2009	Not at all satisfied	9
county	39	2009	Not very satisfied	24
county	39	2009	The country is not a democracy	1
county	39	2009	Very satisfied	11
county	40	2009	Do not know	3
county	40	2009	Fairly satisfied	9
county	40	2009	Not at all satisfied	9
county	40	2009	Not very satisfied	16
county	40	2009	Very satisfied	3
county	28	2009	Do not know	4
county	28	2009	Fairly satisfied	6
county	28	2009	Not very satisfied	2
county	28	2009	Very satisfied	4
county	14	2009	Do not know	8
county	14	2009	Fairly satisfied	16
county	14	2009	Not very satisfied	1
county	14	2009	Very satisfied	15
county	7	2009	Do not know	15
county	7	2009	Fairly satisfied	8
county	7	2009	Not at all satisfied	1
county	7	2009	Not very satisfied	6
county	7	2009	Very satisfied	2
county	43	2009	Do not know	12
county	43	2009	Fairly satisfied	19
county	43	2009	Not at all satisfied	3
county	43	2009	Not very satisfied	20
county	43	2009	Very satisfied	2
county	11	2009	Do not know	5
county	11	2009	Fairly satisfied	1
county	11	2009	Not very satisfied	2
county	34	2009	Do not know	7
county	34	2009	Fairly satisfied	24
county	34	2009	Not at all satisfied	3
county	34	2009	Not very satisfied	6
county	34	2009	Very satisfied	8
county	37	2009	Do not know	7
county	37	2009	Fairly satisfied	26
county	37	2009	Not at all satisfied	26
county	37	2009	Not very satisfied	27
county	37	2009	The country is not a democracy	1
county	37	2009	Very satisfied	9
county	35	2009	Do not know	1
county	35	2009	Fairly satisfied	12
county	35	2009	Not at all satisfied	7
county	35	2009	Not very satisfied	16
county	35	2009	The country is not a democracy	1
county	35	2009	Very satisfied	3
county	22	2009	Do not know	2
county	22	2009	Fairly satisfied	61
county	22	2009	Not at all satisfied	9
county	22	2009	Not very satisfied	37
county	22	2009	Very satisfied	11
county	3	2009	Do not know	26
county	3	2009	Fairly satisfied	12
county	3	2009	Not at all satisfied	6
county	3	2009	Not very satisfied	17
county	3	2009	The country is not a democracy	3
county	20	2009	Do not know	5
county	20	2009	Fairly satisfied	17
county	20	2009	Not at all satisfied	3
county	20	2009	Not very satisfied	8
county	20	2009	Very satisfied	7
county	45	2009	Do not know	24
county	45	2009	Fairly satisfied	28
county	45	2009	Not at all satisfied	3
county	45	2009	Not very satisfied	16
county	45	2009	Very satisfied	1
county	42	2009	Do not know	13
county	42	2009	Fairly satisfied	14
county	42	2009	Not at all satisfied	4
county	42	2009	Not very satisfied	25
county	15	2009	Do not know	18
county	15	2009	Fairly satisfied	16
county	15	2009	Not at all satisfied	4
county	15	2009	Not very satisfied	12
county	15	2009	Very satisfied	6
county	2	2009	Do not know	12
county	2	2009	Fairly satisfied	12
county	2	2009	Not at all satisfied	4
county	2	2009	Not very satisfied	10
county	2	2009	The country is not a democracy	2
county	31	2009	Do not know	6
county	31	2009	Fairly satisfied	6
county	31	2009	Not very satisfied	5
county	31	2009	The country is not a democracy	1
county	31	2009	Very satisfied	6
county	5	2009	Do not know	3
county	5	2009	Not very satisfied	3
county	5	2009	Very satisfied	2
county	16	2009	Do not know	20
county	16	2009	Fairly satisfied	29
county	16	2009	Not at all satisfied	1
county	16	2009	Not very satisfied	11
county	16	2009	Very satisfied	11
county	17	2009	Do not know	16
county	17	2009	Fairly satisfied	21
county	17	2009	Not at all satisfied	4
county	17	2009	Not very satisfied	12
county	17	2009	The country is not a democracy	2
county	17	2009	Very satisfied	1
county	9	2009	Do not know	20
county	9	2009	Fairly satisfied	13
county	9	2009	Not very satisfied	14
county	9	2009	Very satisfied	1
county	10	2009	Do not know	6
county	10	2009	Fairly satisfied	3
county	10	2009	Not at all satisfied	4
county	10	2009	Not very satisfied	2
county	10	2009	The country is not a democracy	1
county	12	2009	Do not know	13
county	12	2009	Fairly satisfied	31
county	12	2009	Not at all satisfied	3
county	12	2009	Not very satisfied	15
county	12	2009	The country is not a democracy	2
county	12	2009	Very satisfied	21
county	44	2009	Do not know	11
county	44	2009	Fairly satisfied	15
county	44	2009	Not at all satisfied	2
county	44	2009	Not very satisfied	16
county	44	2009	Very satisfied	4
county	1	2009	Do not know	16
county	1	2009	Fairly satisfied	24
county	1	2009	Not at all satisfied	3
county	1	2009	Not very satisfied	27
county	1	2009	The country is not a democracy	2
county	21	2009	Do not know	3
county	21	2009	Fairly satisfied	29
county	21	2009	Not at all satisfied	6
county	21	2009	Not very satisfied	11
county	21	2009	Very satisfied	15
county	47	2009	Do not know	21
county	47	2009	Fairly satisfied	101
county	47	2009	Not at all satisfied	26
county	47	2009	Not very satisfied	70
county	47	2009	The country is not a democracy	2
county	47	2009	Very satisfied	28
county	32	2009	Do not know	16
county	32	2009	Fairly satisfied	32
county	32	2009	Not at all satisfied	11
county	32	2009	Not very satisfied	27
county	32	2009	Very satisfied	18
county	29	2009	Do not know	8
county	29	2009	Fairly satisfied	20
county	29	2009	Not at all satisfied	2
county	29	2009	Not very satisfied	3
county	29	2009	Very satisfied	15
county	33	2009	Do not know	10
county	33	2009	Fairly satisfied	15
county	33	2009	Not at all satisfied	3
county	33	2009	Not very satisfied	13
county	33	2009	Very satisfied	7
county	46	2009	Do not know	11
county	46	2009	Fairly satisfied	15
county	46	2009	Not at all satisfied	1
county	46	2009	Not very satisfied	10
county	46	2009	Very satisfied	3
county	18	2009	Do not know	1
county	18	2009	Fairly satisfied	20
county	18	2009	Missing	1
county	18	2009	Not at all satisfied	2
county	18	2009	Not very satisfied	13
county	18	2009	Very satisfied	3
county	19	2009	Do not know	4
county	19	2009	Fairly satisfied	25
county	19	2009	Not at all satisfied	3
county	19	2009	Not very satisfied	10
county	19	2009	Very satisfied	6
county	25	2009	Do not know	2
county	25	2009	Fairly satisfied	1
county	25	2009	Not at all satisfied	1
county	25	2009	Not very satisfied	1
county	25	2009	Very satisfied	3
county	41	2009	Do not know	16
county	41	2009	Fairly satisfied	11
county	41	2009	Not at all satisfied	3
county	41	2009	Not very satisfied	14
county	41	2009	The country is not a democracy	1
county	41	2009	Very satisfied	3
county	6	2009	Do not know	6
county	6	2009	Fairly satisfied	7
county	6	2009	Not very satisfied	3
county	4	2009	Do not know	7
county	4	2009	Fairly satisfied	1
county	13	2009	Do not know	2
county	13	2009	Fairly satisfied	13
county	13	2009	Not at all satisfied	1
county	13	2009	Not very satisfied	4
county	13	2009	Very satisfied	4
county	26	2009	Do not know	9
county	26	2009	Fairly satisfied	15
county	26	2009	Not at all satisfied	7
county	26	2009	Not very satisfied	14
county	26	2009	Very satisfied	3
county	23	2009	Do not know	33
county	23	2009	Fairly satisfied	4
county	23	2009	Not at all satisfied	3
county	23	2009	Not very satisfied	5
county	23	2009	Very satisfied	3
county	27	2009	Do not know	11
county	27	2009	Fairly satisfied	22
county	27	2009	Not very satisfied	2
county	27	2009	Very satisfied	21
county	38	2009	Do not know	3
county	38	2009	Fairly satisfied	6
county	38	2009	Not at all satisfied	7
county	38	2009	Not very satisfied	13
county	38	2009	Very satisfied	3
county	8	2009	Do not know	17
county	8	2009	Fairly satisfied	8
county	8	2009	Not at all satisfied	2
county	8	2009	Not very satisfied	3
county	8	2009	Very satisfied	2
county	24	2009	Do not know	12
county	24	2009	Fairly satisfied	6
county	24	2009	Not at all satisfied	2
county	24	2009	Very satisfied	4
country	KE	2009	The country is not a democracy	19
country	KE	2009	Missing	1
country	KE	2009	Not very satisfied	586
country	KE	2009	Do not know	483
country	KE	2009	Fairly satisfied	830
country	KE	2009	Not at all satisfied	191
country	KE	2009	Very satisfied	287
\.


--
-- Name: satisfaction_with_democracy pk_satisfaction_with_democracy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.satisfaction_with_democracy
    ADD CONSTRAINT pk_satisfaction_with_democracy PRIMARY KEY (geo_level, geo_code, geo_version, satisfaction_with_democracy);


--
-- PostgreSQL database dump complete
--


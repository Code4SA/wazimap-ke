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

ALTER TABLE IF EXISTS ONLY public.extent_of_democracy DROP CONSTRAINT IF EXISTS pk_extent_of_democracy;
DROP TABLE IF EXISTS public.extent_of_democracy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: extent_of_democracy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.extent_of_democracy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    extent_of_democracy character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: extent_of_democracy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.extent_of_democracy (geo_level, geo_code, geo_version, extent_of_democracy, total) FROM stdin;
county	30	2009	A democracy, but with minor problems	14
county	30	2009	A democracy, with major problems	4
county	30	2009	A full democracy	9
county	30	2009	Do not understand question / democracy	1
county	30	2009	Don't know	3
county	30	2009	Not a democracy	1
county	36	2009	A democracy, but with minor problems	22
county	36	2009	A democracy, with major problems	10
county	36	2009	A full democracy	11
county	36	2009	Do not understand question / democracy	2
county	36	2009	Don't know	1
county	36	2009	Not a democracy	2
county	39	2009	A democracy, but with minor problems	23
county	39	2009	A democracy, with major problems	33
county	39	2009	A full democracy	9
county	39	2009	Do not understand question / democracy	3
county	39	2009	Don't know	7
county	39	2009	Not a democracy	5
county	40	2009	A democracy, but with minor problems	8
county	40	2009	A democracy, with major problems	23
county	40	2009	A full democracy	1
county	40	2009	Don't know	3
county	40	2009	Not a democracy	5
county	28	2009	A democracy, but with minor problems	6
county	28	2009	A democracy, with major problems	2
county	28	2009	A full democracy	4
county	28	2009	Don't know	4
county	14	2009	A democracy, but with minor problems	17
county	14	2009	A democracy, with major problems	1
county	14	2009	A full democracy	14
county	14	2009	Do not understand question / democracy	2
county	14	2009	Don't know	6
county	7	2009	A democracy, but with minor problems	7
county	7	2009	A democracy, with major problems	7
county	7	2009	A full democracy	3
county	7	2009	Do not understand question / democracy	4
county	7	2009	Don't know	11
county	43	2009	A democracy, but with minor problems	13
county	43	2009	A democracy, with major problems	27
county	43	2009	Do not understand question / democracy	9
county	43	2009	Don't know	3
county	43	2009	Not a democracy	4
county	11	2009	A democracy, but with minor problems	1
county	11	2009	A democracy, with major problems	2
county	11	2009	Do not understand question / democracy	3
county	11	2009	Don't know	2
county	34	2009	A democracy, but with minor problems	25
county	34	2009	A democracy, with major problems	4
county	34	2009	A full democracy	9
county	34	2009	Don't know	7
county	34	2009	Not a democracy	3
county	37	2009	A democracy, but with minor problems	24
county	37	2009	A democracy, with major problems	39
county	37	2009	A full democracy	6
county	37	2009	Do not understand question / democracy	4
county	37	2009	Don't know	5
county	37	2009	Not a democracy	18
county	35	2009	A democracy, but with minor problems	18
county	35	2009	A democracy, with major problems	15
county	35	2009	A full democracy	3
county	35	2009	Don't know	1
county	35	2009	Not a democracy	3
county	22	2009	A democracy, but with minor problems	70
county	22	2009	A democracy, with major problems	29
county	22	2009	A full democracy	14
county	22	2009	Do not understand question / democracy	2
county	22	2009	Don't know	1
county	22	2009	Not a democracy	4
county	3	2009	A democracy, but with minor problems	10
county	3	2009	A democracy, with major problems	21
county	3	2009	Do not understand question / democracy	3
county	3	2009	Don't know	26
county	3	2009	Not a democracy	4
county	20	2009	A democracy, but with minor problems	22
county	20	2009	A democracy, with major problems	7
county	20	2009	A full democracy	4
county	20	2009	Do not understand question / democracy	3
county	20	2009	Don't know	3
county	20	2009	Not a democracy	1
county	45	2009	A democracy, but with minor problems	28
county	45	2009	A democracy, with major problems	18
county	45	2009	Do not understand question / democracy	22
county	45	2009	Don't know	3
county	45	2009	Not a democracy	1
county	42	2009	A democracy, but with minor problems	11
county	42	2009	A democracy, with major problems	23
county	42	2009	A full democracy	1
county	42	2009	Do not understand question / democracy	9
county	42	2009	Don't know	4
county	42	2009	Not a democracy	8
county	15	2009	A democracy, but with minor problems	16
county	15	2009	A democracy, with major problems	10
county	15	2009	A full democracy	9
county	15	2009	Do not understand question / democracy	3
county	15	2009	Don't know	16
county	15	2009	Not a democracy	2
county	2	2009	A democracy, but with minor problems	8
county	2	2009	A democracy, with major problems	14
county	2	2009	Do not understand question / democracy	2
county	2	2009	Don't know	12
county	2	2009	Not a democracy	4
county	31	2009	A democracy, but with minor problems	9
county	31	2009	A democracy, with major problems	4
county	31	2009	A full democracy	4
county	31	2009	Do not understand question / democracy	4
county	31	2009	Don't know	3
county	5	2009	A democracy, but with minor problems	1
county	5	2009	A democracy, with major problems	2
county	5	2009	A full democracy	1
county	5	2009	Don't know	3
county	5	2009	Not a democracy	1
county	16	2009	A democracy, but with minor problems	30
county	16	2009	A democracy, with major problems	7
county	16	2009	A full democracy	13
county	16	2009	Do not understand question / democracy	6
county	16	2009	Don't know	15
county	16	2009	Not a democracy	1
county	17	2009	A democracy, but with minor problems	20
county	17	2009	A democracy, with major problems	15
county	17	2009	A full democracy	3
county	17	2009	Do not understand question / democracy	5
county	17	2009	Don't know	12
county	17	2009	Not a democracy	1
county	9	2009	A democracy, but with minor problems	17
county	9	2009	A democracy, with major problems	9
county	9	2009	A full democracy	2
county	9	2009	Do not understand question / democracy	5
county	9	2009	Don't know	15
county	10	2009	A democracy, but with minor problems	3
county	10	2009	A democracy, with major problems	2
county	10	2009	A full democracy	1
county	10	2009	Do not understand question / democracy	1
county	10	2009	Don't know	5
county	10	2009	Not a democracy	4
county	12	2009	A democracy, but with minor problems	33
county	12	2009	A democracy, with major problems	9
county	12	2009	A full democracy	29
county	12	2009	Do not understand question / democracy	4
county	12	2009	Don't know	6
county	12	2009	Not a democracy	4
county	44	2009	A democracy, but with minor problems	7
county	44	2009	A democracy, with major problems	26
county	44	2009	A full democracy	1
county	44	2009	Do not understand question / democracy	11
county	44	2009	Not a democracy	3
county	1	2009	A democracy, but with minor problems	21
county	1	2009	A democracy, with major problems	29
county	1	2009	A full democracy	1
county	1	2009	Do not understand question / democracy	3
county	1	2009	Don't know	15
county	1	2009	Not a democracy	3
county	21	2009	A democracy, but with minor problems	33
county	21	2009	A democracy, with major problems	11
county	21	2009	A full democracy	12
county	21	2009	Do not understand question / democracy	3
county	21	2009	Don't know	2
county	21	2009	Not a democracy	3
county	47	2009	A democracy, but with minor problems	90
county	47	2009	A democracy, with major problems	93
county	47	2009	A full democracy	30
county	47	2009	Do not understand question / democracy	7
county	47	2009	Don't know	19
county	47	2009	Not a democracy	9
county	32	2009	A democracy, but with minor problems	45
county	32	2009	A democracy, with major problems	19
county	32	2009	A full democracy	18
county	32	2009	Do not understand question / democracy	9
county	32	2009	Don't know	7
county	32	2009	Not a democracy	6
county	29	2009	A democracy, but with minor problems	15
county	29	2009	A democracy, with major problems	6
county	29	2009	A full democracy	14
county	29	2009	Do not understand question / democracy	1
county	29	2009	Don't know	10
county	29	2009	Not a democracy	2
county	33	2009	A democracy, but with minor problems	18
county	33	2009	A democracy, with major problems	8
county	33	2009	A full democracy	10
county	33	2009	Do not understand question / democracy	3
county	33	2009	Don't know	7
county	33	2009	Not a democracy	2
county	46	2009	A democracy, but with minor problems	20
county	46	2009	A democracy, with major problems	7
county	46	2009	A full democracy	2
county	46	2009	Do not understand question / democracy	11
county	18	2009	A democracy, but with minor problems	22
county	18	2009	A democracy, with major problems	9
county	18	2009	A full democracy	6
county	18	2009	Do not understand question / democracy	1
county	18	2009	Don't know	1
county	18	2009	Missing	1
county	19	2009	A democracy, but with minor problems	25
county	19	2009	A democracy, with major problems	13
county	19	2009	A full democracy	4
county	19	2009	Do not understand question / democracy	2
county	19	2009	Don't know	3
county	19	2009	Not a democracy	1
county	25	2009	A democracy, but with minor problems	3
county	25	2009	A democracy, with major problems	2
county	25	2009	A full democracy	2
county	25	2009	Don't know	1
county	41	2009	A democracy, but with minor problems	9
county	41	2009	A democracy, with major problems	19
county	41	2009	A full democracy	2
county	41	2009	Do not understand question / democracy	9
county	41	2009	Don't know	9
county	6	2009	A democracy, but with minor problems	2
county	6	2009	A democracy, with major problems	6
county	6	2009	A full democracy	1
county	6	2009	Don't know	7
county	4	2009	A democracy, but with minor problems	1
county	4	2009	Do not understand question / democracy	2
county	4	2009	Don't know	5
county	13	2009	A democracy, but with minor problems	13
county	13	2009	A democracy, with major problems	2
county	13	2009	A full democracy	6
county	13	2009	Do not understand question / democracy	1
county	13	2009	Not a democracy	2
county	26	2009	A democracy, but with minor problems	17
county	26	2009	A democracy, with major problems	14
county	26	2009	A full democracy	3
county	26	2009	Do not understand question / democracy	2
county	26	2009	Don't know	7
county	26	2009	Not a democracy	5
county	23	2009	A democracy, but with minor problems	5
county	23	2009	A democracy, with major problems	2
county	23	2009	A full democracy	4
county	23	2009	Do not understand question / democracy	7
county	23	2009	Don't know	29
county	23	2009	Not a democracy	1
county	27	2009	A democracy, but with minor problems	24
county	27	2009	A democracy, with major problems	1
county	27	2009	A full democracy	16
county	27	2009	Do not understand question / democracy	3
county	27	2009	Don't know	11
county	27	2009	Not a democracy	1
county	38	2009	A democracy, but with minor problems	7
county	38	2009	A democracy, with major problems	15
county	38	2009	A full democracy	1
county	38	2009	Do not understand question / democracy	1
county	38	2009	Don't know	3
county	38	2009	Not a democracy	5
county	8	2009	A democracy, but with minor problems	5
county	8	2009	A democracy, with major problems	7
county	8	2009	A full democracy	3
county	8	2009	Do not understand question / democracy	2
county	8	2009	Don't know	15
county	24	2009	A democracy, but with minor problems	6
county	24	2009	A democracy, with major problems	1
county	24	2009	A full democracy	4
county	24	2009	Do not understand question / democracy	4
county	24	2009	Don't know	9
country	KE	2009	A democracy, but with minor problems	844
country	KE	2009	Missing	1
country	KE	2009	Not a democracy	119
country	KE	2009	Do not understand question / democracy	179
country	KE	2009	A democracy, with major problems	627
country	KE	2009	Don't know	337
country	KE	2009	A full democracy	290
\.


--
-- Name: extent_of_democracy pk_extent_of_democracy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.extent_of_democracy
    ADD CONSTRAINT pk_extent_of_democracy PRIMARY KEY (geo_level, geo_code, geo_version, extent_of_democracy);


--
-- PostgreSQL database dump complete
--


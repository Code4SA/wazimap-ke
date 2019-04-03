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

ALTER TABLE IF EXISTS ONLY public.corruption_police DROP CONSTRAINT IF EXISTS pk_corruption_police;
DROP TABLE IF EXISTS public.corruption_police;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_police; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_police (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_police character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_police; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_police (geo_level, geo_code, geo_version, corruption_police, total) FROM stdin;
county	30	2009	All of them	12
county	30	2009	Most of them	16
county	30	2009	Some of them	4
county	36	2009	All of them	10
county	36	2009	Most of them	17
county	36	2009	None	2
county	36	2009	Some of them	19
county	39	2009	All of them	34
county	39	2009	Most of them	32
county	39	2009	None	1
county	39	2009	Some of them	13
county	40	2009	All of them	14
county	40	2009	Most of them	18
county	40	2009	None	2
county	40	2009	Some of them	6
county	28	2009	All of them	8
county	28	2009	Most of them	4
county	28	2009	None	1
county	28	2009	Some of them	3
county	14	2009	All of them	14
county	14	2009	Don't know/ Haven't heard enough	3
county	14	2009	Most of them	13
county	14	2009	Some of them	10
county	7	2009	All of them	5
county	7	2009	Don't know/ Haven't heard enough	3
county	7	2009	Most of them	15
county	7	2009	Some of them	9
county	43	2009	All of them	15
county	43	2009	Most of them	33
county	43	2009	Some of them	8
county	11	2009	All of them	3
county	11	2009	Don't know/ Haven't heard enough	1
county	11	2009	Most of them	2
county	11	2009	Some of them	2
county	34	2009	All of them	18
county	34	2009	Most of them	18
county	34	2009	Some of them	12
county	37	2009	All of them	33
county	37	2009	Most of them	39
county	37	2009	None	4
county	37	2009	Some of them	20
county	35	2009	All of them	9
county	35	2009	Most of them	21
county	35	2009	Some of them	10
county	22	2009	All of them	41
county	22	2009	Don't know/ Haven't heard enough	1
county	22	2009	Most of them	50
county	22	2009	None	3
county	22	2009	Some of them	25
county	3	2009	All of them	37
county	3	2009	Don't know/ Haven't heard enough	1
county	3	2009	Most of them	15
county	3	2009	Some of them	11
county	20	2009	All of them	12
county	20	2009	Don't know/ Haven't heard enough	2
county	20	2009	Most of them	12
county	20	2009	Some of them	14
county	45	2009	All of them	24
county	45	2009	Don't know/ Haven't heard enough	4
county	45	2009	Most of them	37
county	45	2009	None	2
county	45	2009	Some of them	5
county	42	2009	All of them	20
county	42	2009	Don't know/ Haven't heard enough	1
county	42	2009	Most of them	30
county	42	2009	None	1
county	42	2009	Some of them	4
county	15	2009	All of them	20
county	15	2009	Don't know/ Haven't heard enough	1
county	15	2009	Most of them	18
county	15	2009	None	1
county	15	2009	Some of them	16
county	2	2009	All of them	10
county	2	2009	Most of them	17
county	2	2009	None	1
county	2	2009	Some of them	12
county	31	2009	All of them	7
county	31	2009	Don't know/ Haven't heard enough	1
county	31	2009	Most of them	9
county	31	2009	None	1
county	31	2009	Some of them	6
county	5	2009	All of them	3
county	5	2009	Most of them	3
county	5	2009	Some of them	2
county	16	2009	All of them	27
county	16	2009	Don't know/ Haven't heard enough	2
county	16	2009	Most of them	26
county	16	2009	None	2
county	16	2009	Some of them	15
county	17	2009	All of them	18
county	17	2009	Don't know/ Haven't heard enough	1
county	17	2009	Most of them	19
county	17	2009	None	2
county	17	2009	Some of them	16
county	9	2009	All of them	6
county	9	2009	Don't know/ Haven't heard enough	4
county	9	2009	Most of them	31
county	9	2009	None	1
county	9	2009	Some of them	6
county	10	2009	All of them	8
county	10	2009	Don't know/ Haven't heard enough	3
county	10	2009	Most of them	1
county	10	2009	Some of them	4
county	12	2009	All of them	22
county	12	2009	Most of them	42
county	12	2009	None	2
county	12	2009	Some of them	19
county	44	2009	All of them	18
county	44	2009	Don't know/ Haven't heard enough	1
county	44	2009	Most of them	20
county	44	2009	None	2
county	44	2009	Some of them	7
county	1	2009	All of them	35
county	1	2009	Most of them	28
county	1	2009	Some of them	9
county	21	2009	All of them	15
county	21	2009	Don't know/ Haven't heard enough	3
county	21	2009	Most of them	19
county	21	2009	None	2
county	21	2009	Some of them	25
county	47	2009	All of them	97
county	47	2009	Don't know/ Haven't heard enough	6
county	47	2009	Most of them	93
county	47	2009	None	4
county	47	2009	Some of them	48
county	32	2009	All of them	26
county	32	2009	Most of them	46
county	32	2009	None	6
county	32	2009	Some of them	26
county	29	2009	All of them	21
county	29	2009	Most of them	16
county	29	2009	None	4
county	29	2009	Some of them	7
county	33	2009	All of them	18
county	33	2009	Most of them	14
county	33	2009	None	6
county	33	2009	Some of them	10
county	46	2009	All of them	17
county	46	2009	Most of them	17
county	46	2009	None	1
county	46	2009	Some of them	5
county	18	2009	All of them	18
county	18	2009	Most of them	11
county	18	2009	Some of them	11
county	19	2009	All of them	13
county	19	2009	Most of them	16
county	19	2009	None	3
county	19	2009	Some of them	16
county	25	2009	All of them	3
county	25	2009	Most of them	3
county	25	2009	Some of them	2
county	41	2009	All of them	13
county	41	2009	Don't know/ Haven't heard enough	2
county	41	2009	Most of them	30
county	41	2009	Some of them	3
county	6	2009	All of them	5
county	6	2009	Don't know/ Haven't heard enough	1
county	6	2009	Most of them	6
county	6	2009	None	1
county	6	2009	Some of them	3
county	4	2009	All of them	1
county	4	2009	Don't know/ Haven't heard enough	4
county	4	2009	Most of them	1
county	4	2009	Some of them	2
county	13	2009	All of them	5
county	13	2009	Most of them	14
county	13	2009	Some of them	5
county	26	2009	All of them	21
county	26	2009	Most of them	14
county	26	2009	None	7
county	26	2009	Some of them	6
county	23	2009	All of them	9
county	23	2009	Don't know/ Haven't heard enough	2
county	23	2009	Most of them	25
county	23	2009	None	4
county	23	2009	Some of them	8
county	27	2009	All of them	23
county	27	2009	Don't know/ Haven't heard enough	1
county	27	2009	Most of them	23
county	27	2009	None	1
county	27	2009	Some of them	8
county	38	2009	All of them	15
county	38	2009	Don't know/ Haven't heard enough	1
county	38	2009	Most of them	11
county	38	2009	Some of them	5
county	8	2009	All of them	8
county	8	2009	Don't know/ Haven't heard enough	6
county	8	2009	Most of them	13
county	8	2009	Some of them	5
county	24	2009	All of them	5
county	24	2009	Don't know/ Haven't heard enough	1
county	24	2009	Most of them	13
county	24	2009	None	1
county	24	2009	Some of them	4
country	KE	2009	None	68
country	KE	2009	All of them	816
country	KE	2009	Most of them	971
country	KE	2009	Don't know/ Haven't heard enough	56
country	KE	2009	Some of them	486
\.


--
-- Name: corruption_police pk_corruption_police; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_police
    ADD CONSTRAINT pk_corruption_police PRIMARY KEY (geo_level, geo_code, geo_version, corruption_police);


--
-- PostgreSQL database dump complete
--


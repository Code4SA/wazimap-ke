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

ALTER TABLE IF EXISTS ONLY public.corruption_traditional_leaders DROP CONSTRAINT IF EXISTS pk_corruption_traditional_leaders;
DROP TABLE IF EXISTS public.corruption_traditional_leaders;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_traditional_leaders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_traditional_leaders (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_traditional_leaders character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_traditional_leaders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_traditional_leaders (geo_level, geo_code, geo_version, corruption_traditional_leaders, total) FROM stdin;
county	30	2009	Don't know/ Haven't heard enough	3
county	30	2009	Most of them	1
county	30	2009	None	15
county	30	2009	Some of them	13
county	36	2009	All of them	1
county	36	2009	Don't know/ Haven't heard enough	1
county	36	2009	Most of them	1
county	36	2009	None	13
county	36	2009	Some of them	32
county	39	2009	All of them	11
county	39	2009	Don't know/ Haven't heard enough	3
county	39	2009	Most of them	8
county	39	2009	None	20
county	39	2009	Some of them	38
county	40	2009	All of them	4
county	40	2009	Don't know/ Haven't heard enough	2
county	40	2009	Most of them	4
county	40	2009	None	12
county	40	2009	Some of them	18
county	28	2009	Most of them	2
county	28	2009	None	10
county	28	2009	Some of them	4
county	14	2009	Don't know/ Haven't heard enough	4
county	14	2009	Most of them	4
county	14	2009	None	3
county	14	2009	Some of them	29
county	7	2009	Don't know/ Haven't heard enough	9
county	7	2009	None	1
county	7	2009	Some of them	22
county	43	2009	All of them	1
county	43	2009	Don't know/ Haven't heard enough	1
county	43	2009	Most of them	6
county	43	2009	None	5
county	43	2009	Some of them	43
county	11	2009	Don't know/ Haven't heard enough	1
county	11	2009	None	3
county	11	2009	Some of them	4
county	34	2009	All of them	1
county	34	2009	Don't know/ Haven't heard enough	5
county	34	2009	Most of them	1
county	34	2009	None	13
county	34	2009	Some of them	28
county	37	2009	All of them	9
county	37	2009	Don't know/ Haven't heard enough	5
county	37	2009	Most of them	16
county	37	2009	None	20
county	37	2009	Some of them	46
county	35	2009	Don't know/ Haven't heard enough	1
county	35	2009	Most of them	3
county	35	2009	None	9
county	35	2009	Some of them	27
county	22	2009	All of them	3
county	22	2009	Don't know/ Haven't heard enough	10
county	22	2009	Most of them	9
county	22	2009	None	23
county	22	2009	Some of them	75
county	3	2009	Don't know/ Haven't heard enough	4
county	3	2009	Most of them	3
county	3	2009	None	15
county	3	2009	Some of them	42
county	20	2009	Don't know/ Haven't heard enough	4
county	20	2009	Most of them	5
county	20	2009	None	10
county	20	2009	Some of them	21
county	45	2009	All of them	1
county	45	2009	Don't know/ Haven't heard enough	2
county	45	2009	Most of them	11
county	45	2009	None	10
county	45	2009	Some of them	48
county	42	2009	All of them	1
county	42	2009	Don't know/ Haven't heard enough	2
county	42	2009	Most of them	6
county	42	2009	None	6
county	42	2009	Some of them	41
county	15	2009	All of them	3
county	15	2009	Don't know/ Haven't heard enough	6
county	15	2009	Missing	1
county	15	2009	Most of them	10
county	15	2009	None	4
county	15	2009	Some of them	32
county	2	2009	All of them	1
county	2	2009	Don't know/ Haven't heard enough	3
county	2	2009	Most of them	2
county	2	2009	None	15
county	2	2009	Some of them	19
county	31	2009	All of them	1
county	31	2009	Don't know/ Haven't heard enough	2
county	31	2009	Most of them	1
county	31	2009	None	7
county	31	2009	Some of them	13
county	5	2009	Some of them	8
county	16	2009	All of them	4
county	16	2009	Don't know/ Haven't heard enough	13
county	16	2009	Missing	1
county	16	2009	Most of them	10
county	16	2009	None	9
county	16	2009	Some of them	35
county	17	2009	All of them	2
county	17	2009	Don't know/ Haven't heard enough	11
county	17	2009	Most of them	3
county	17	2009	None	5
county	17	2009	Some of them	35
county	9	2009	All of them	2
county	9	2009	Don't know/ Haven't heard enough	8
county	9	2009	Most of them	2
county	9	2009	None	5
county	9	2009	Some of them	31
county	10	2009	All of them	1
county	10	2009	Don't know/ Haven't heard enough	2
county	10	2009	Most of them	1
county	10	2009	None	2
county	10	2009	Some of them	10
county	12	2009	All of them	2
county	12	2009	Don't know/ Haven't heard enough	8
county	12	2009	Most of them	14
county	12	2009	None	8
county	12	2009	Some of them	53
county	44	2009	All of them	3
county	44	2009	Most of them	6
county	44	2009	None	8
county	44	2009	Some of them	31
county	1	2009	All of them	2
county	1	2009	Don't know/ Haven't heard enough	5
county	1	2009	Most of them	4
county	1	2009	None	12
county	1	2009	Some of them	49
county	21	2009	All of them	1
county	21	2009	Don't know/ Haven't heard enough	5
county	21	2009	Most of them	4
county	21	2009	None	17
county	21	2009	Some of them	37
county	47	2009	All of them	9
county	47	2009	Don't know/ Haven't heard enough	46
county	47	2009	Most of them	25
county	47	2009	None	39
county	47	2009	Some of them	129
county	32	2009	Don't know/ Haven't heard enough	6
county	32	2009	Most of them	2
county	32	2009	None	27
county	32	2009	Some of them	69
county	29	2009	All of them	1
county	29	2009	Most of them	4
county	29	2009	None	19
county	29	2009	Some of them	24
county	33	2009	Don't know/ Haven't heard enough	2
county	33	2009	Most of them	1
county	33	2009	None	22
county	33	2009	Some of them	23
county	46	2009	Most of them	5
county	46	2009	None	8
county	46	2009	Some of them	27
county	18	2009	All of them	2
county	18	2009	Most of them	8
county	18	2009	None	6
county	18	2009	Some of them	24
county	19	2009	All of them	1
county	19	2009	Don't know/ Haven't heard enough	4
county	19	2009	Most of them	2
county	19	2009	None	12
county	19	2009	Some of them	29
county	25	2009	Most of them	1
county	25	2009	None	4
county	25	2009	Some of them	3
county	41	2009	Don't know/ Haven't heard enough	3
county	41	2009	Most of them	6
county	41	2009	None	9
county	41	2009	Some of them	30
county	6	2009	Don't know/ Haven't heard enough	4
county	6	2009	None	3
county	6	2009	Some of them	9
county	4	2009	Don't know/ Haven't heard enough	5
county	4	2009	None	3
county	13	2009	All of them	1
county	13	2009	Don't know/ Haven't heard enough	4
county	13	2009	Most of them	1
county	13	2009	None	6
county	13	2009	Some of them	12
county	26	2009	All of them	4
county	26	2009	Don't know/ Haven't heard enough	2
county	26	2009	Most of them	7
county	26	2009	None	13
county	26	2009	Some of them	22
county	23	2009	All of them	1
county	23	2009	Don't know/ Haven't heard enough	5
county	23	2009	Most of them	4
county	23	2009	None	24
county	23	2009	Some of them	14
county	27	2009	All of them	2
county	27	2009	Don't know/ Haven't heard enough	4
county	27	2009	Most of them	8
county	27	2009	None	15
county	27	2009	Some of them	27
county	38	2009	Most of them	11
county	38	2009	None	6
county	38	2009	Some of them	15
county	8	2009	Don't know/ Haven't heard enough	6
county	8	2009	None	7
county	8	2009	Some of them	19
county	24	2009	All of them	1
county	24	2009	Don't know/ Haven't heard enough	1
county	24	2009	Most of them	1
county	24	2009	None	12
county	24	2009	Some of them	9
country	KE	2009	None	515
country	KE	2009	Missing	2
country	KE	2009	Don't know/ Haven't heard enough	212
country	KE	2009	Some of them	1369
country	KE	2009	All of them	76
country	KE	2009	Most of them	223
\.


--
-- Name: corruption_traditional_leaders pk_corruption_traditional_leaders; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_traditional_leaders
    ADD CONSTRAINT pk_corruption_traditional_leaders PRIMARY KEY (geo_level, geo_code, geo_version, corruption_traditional_leaders);


--
-- PostgreSQL database dump complete
--


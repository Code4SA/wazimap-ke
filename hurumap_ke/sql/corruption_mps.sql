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

ALTER TABLE IF EXISTS ONLY public.corruption_mps DROP CONSTRAINT IF EXISTS pk_corruption_mps;
DROP TABLE IF EXISTS public.corruption_mps;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_mps; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_mps (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_mps character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_mps; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_mps (geo_level, geo_code, geo_version, corruption_mps, total) FROM stdin;
county	30	2009	All of them	2
county	30	2009	Most of them	12
county	30	2009	None	1
county	30	2009	Some of them	17
county	36	2009	All of them	5
county	36	2009	Don't know/ Haven't heard enough	2
county	36	2009	Most of them	15
county	36	2009	None	5
county	36	2009	Some of them	21
county	39	2009	All of them	14
county	39	2009	Don't know/ Haven't heard enough	4
county	39	2009	Most of them	21
county	39	2009	None	9
county	39	2009	Some of them	32
county	40	2009	All of them	6
county	40	2009	Don't know/ Haven't heard enough	2
county	40	2009	Most of them	9
county	40	2009	None	1
county	40	2009	Some of them	22
county	28	2009	All of them	3
county	28	2009	Most of them	4
county	28	2009	None	1
county	28	2009	Some of them	8
county	14	2009	All of them	8
county	14	2009	Don't know/ Haven't heard enough	5
county	14	2009	Most of them	12
county	14	2009	None	1
county	14	2009	Some of them	14
county	7	2009	All of them	2
county	7	2009	Don't know/ Haven't heard enough	8
county	7	2009	Most of them	4
county	7	2009	Some of them	18
county	43	2009	Most of them	28
county	43	2009	None	2
county	43	2009	Some of them	26
county	11	2009	All of them	2
county	11	2009	Don't know/ Haven't heard enough	3
county	11	2009	Most of them	1
county	11	2009	Some of them	2
county	34	2009	All of them	4
county	34	2009	Most of them	17
county	34	2009	None	3
county	34	2009	Some of them	24
county	37	2009	All of them	11
county	37	2009	Don't know/ Haven't heard enough	3
county	37	2009	Most of them	41
county	37	2009	None	5
county	37	2009	Some of them	36
county	35	2009	All of them	1
county	35	2009	Most of them	16
county	35	2009	Some of them	23
county	22	2009	All of them	12
county	22	2009	Don't know/ Haven't heard enough	3
county	22	2009	Most of them	47
county	22	2009	None	4
county	22	2009	Some of them	54
county	3	2009	All of them	11
county	3	2009	Don't know/ Haven't heard enough	1
county	3	2009	Most of them	32
county	3	2009	None	1
county	3	2009	Some of them	19
county	20	2009	All of them	1
county	20	2009	Don't know/ Haven't heard enough	2
county	20	2009	Most of them	13
county	20	2009	None	3
county	20	2009	Some of them	21
county	45	2009	All of them	4
county	45	2009	Most of them	36
county	45	2009	None	5
county	45	2009	Some of them	27
county	42	2009	All of them	4
county	42	2009	Don't know/ Haven't heard enough	2
county	42	2009	Most of them	27
county	42	2009	None	1
county	42	2009	Some of them	22
county	15	2009	All of them	7
county	15	2009	Don't know/ Haven't heard enough	3
county	15	2009	Most of them	17
county	15	2009	Some of them	29
county	2	2009	All of them	3
county	2	2009	Don't know/ Haven't heard enough	2
county	2	2009	Most of them	14
county	2	2009	None	1
county	2	2009	Some of them	20
county	31	2009	All of them	3
county	31	2009	Don't know/ Haven't heard enough	5
county	31	2009	Most of them	3
county	31	2009	None	1
county	31	2009	Some of them	12
county	5	2009	All of them	1
county	5	2009	Some of them	7
county	16	2009	All of them	9
county	16	2009	Don't know/ Haven't heard enough	8
county	16	2009	Missing	1
county	16	2009	Most of them	29
county	16	2009	Some of them	25
county	17	2009	All of them	6
county	17	2009	Don't know/ Haven't heard enough	1
county	17	2009	Most of them	21
county	17	2009	None	1
county	17	2009	Some of them	27
county	9	2009	All of them	4
county	9	2009	Don't know/ Haven't heard enough	7
county	9	2009	Most of them	7
county	9	2009	None	4
county	9	2009	Some of them	26
county	10	2009	All of them	6
county	10	2009	Don't know/ Haven't heard enough	5
county	10	2009	Most of them	1
county	10	2009	Some of them	4
county	12	2009	All of them	8
county	12	2009	Don't know/ Haven't heard enough	9
county	12	2009	Most of them	23
county	12	2009	None	1
county	12	2009	Some of them	44
county	44	2009	All of them	1
county	44	2009	Don't know/ Haven't heard enough	2
county	44	2009	Most of them	21
county	44	2009	None	1
county	44	2009	Some of them	23
county	1	2009	All of them	20
county	1	2009	Most of them	28
county	1	2009	Some of them	24
county	21	2009	All of them	1
county	21	2009	Don't know/ Haven't heard enough	3
county	21	2009	Most of them	16
county	21	2009	None	3
county	21	2009	Some of them	41
county	47	2009	All of them	41
county	47	2009	Don't know/ Haven't heard enough	5
county	47	2009	Most of them	80
county	47	2009	None	3
county	47	2009	Some of them	119
county	32	2009	All of them	3
county	32	2009	Don't know/ Haven't heard enough	4
county	32	2009	Most of them	34
county	32	2009	None	8
county	32	2009	Some of them	55
county	29	2009	All of them	4
county	29	2009	Don't know/ Haven't heard enough	2
county	29	2009	Most of them	16
county	29	2009	None	4
county	29	2009	Some of them	22
county	33	2009	All of them	4
county	33	2009	Don't know/ Haven't heard enough	3
county	33	2009	Most of them	19
county	33	2009	None	1
county	33	2009	Some of them	21
county	46	2009	All of them	1
county	46	2009	Most of them	24
county	46	2009	None	1
county	46	2009	Some of them	14
county	18	2009	All of them	3
county	18	2009	Most of them	16
county	18	2009	Some of them	21
county	19	2009	All of them	4
county	19	2009	Most of them	10
county	19	2009	None	5
county	19	2009	Some of them	29
county	25	2009	All of them	1
county	25	2009	Most of them	3
county	25	2009	Some of them	4
county	41	2009	All of them	4
county	41	2009	Don't know/ Haven't heard enough	1
county	41	2009	Most of them	19
county	41	2009	None	1
county	41	2009	Some of them	23
county	6	2009	Don't know/ Haven't heard enough	3
county	6	2009	Most of them	9
county	6	2009	None	1
county	6	2009	Some of them	3
county	4	2009	Don't know/ Haven't heard enough	6
county	4	2009	Some of them	2
county	13	2009	All of them	3
county	13	2009	Don't know/ Haven't heard enough	3
county	13	2009	Missing	2
county	13	2009	Most of them	4
county	13	2009	None	1
county	13	2009	Some of them	11
county	26	2009	All of them	6
county	26	2009	Don't know/ Haven't heard enough	1
county	26	2009	Most of them	19
county	26	2009	None	8
county	26	2009	Some of them	14
county	23	2009	All of them	1
county	23	2009	Don't know/ Haven't heard enough	5
county	23	2009	Most of them	17
county	23	2009	None	4
county	23	2009	Some of them	21
county	27	2009	All of them	7
county	27	2009	Don't know/ Haven't heard enough	3
county	27	2009	Most of them	19
county	27	2009	Some of them	27
county	38	2009	All of them	8
county	38	2009	Don't know/ Haven't heard enough	1
county	38	2009	Most of them	13
county	38	2009	Some of them	10
county	8	2009	All of them	4
county	8	2009	Don't know/ Haven't heard enough	9
county	8	2009	Most of them	3
county	8	2009	Some of them	16
county	24	2009	Don't know/ Haven't heard enough	2
county	24	2009	Most of them	8
county	24	2009	None	2
county	24	2009	Some of them	12
country	KE	2009	None	93
country	KE	2009	Missing	3
country	KE	2009	Don't know/ Haven't heard enough	128
country	KE	2009	Some of them	1092
country	KE	2009	All of them	253
country	KE	2009	Most of them	828
\.


--
-- Name: corruption_mps pk_corruption_mps; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_mps
    ADD CONSTRAINT pk_corruption_mps PRIMARY KEY (geo_level, geo_code, geo_version, corruption_mps);


--
-- PostgreSQL database dump complete
--


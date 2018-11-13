--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.corruption_local_government_councilors DROP CONSTRAINT IF EXISTS pk_corruption_local_government_councilors;
DROP TABLE IF EXISTS public.corruption_local_government_councilors;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_local_government_councilors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_local_government_councilors (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_local_government_councilors character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_local_government_councilors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_local_government_councilors (geo_level, geo_code, geo_version, corruption_local_government_councilors, total) FROM stdin;
county	30	2009	All of them	4
county	36	2009	All of them	1
county	39	2009	All of them	13
county	40	2009	All of them	4
county	28	2009	All of them	3
county	14	2009	All of them	6
county	11	2009	All of them	1
county	34	2009	All of them	5
county	37	2009	All of them	11
county	22	2009	All of them	13
county	3	2009	All of them	15
county	20	2009	All of them	3
county	45	2009	All of them	2
county	15	2009	All of them	12
county	2	2009	All of them	7
county	31	2009	All of them	2
county	5	2009	All of them	2
county	16	2009	All of them	11
county	17	2009	All of them	9
county	9	2009	All of them	3
county	10	2009	All of them	4
county	12	2009	All of them	14
county	44	2009	All of them	2
county	1	2009	All of them	16
county	21	2009	All of them	3
county	47	2009	All of them	27
county	32	2009	All of them	1
county	29	2009	All of them	6
county	18	2009	All of them	1
county	19	2009	All of them	4
county	25	2009	All of them	1
county	41	2009	All of them	1
county	6	2009	All of them	2
county	13	2009	All of them	5
county	26	2009	All of them	6
county	23	2009	All of them	1
county	27	2009	All of them	5
county	38	2009	All of them	6
county	8	2009	All of them	2
county	24	2009	All of them	1
county	36	2009	Don't know/ Haven't heard enough	3
county	39	2009	Don't know/ Haven't heard enough	4
county	40	2009	Don't know/ Haven't heard enough	5
county	7	2009	Don't know/ Haven't heard enough	10
county	43	2009	Don't know/ Haven't heard enough	1
county	11	2009	Don't know/ Haven't heard enough	3
county	37	2009	Don't know/ Haven't heard enough	5
county	22	2009	Don't know/ Haven't heard enough	6
county	20	2009	Don't know/ Haven't heard enough	2
county	45	2009	Don't know/ Haven't heard enough	2
county	42	2009	Don't know/ Haven't heard enough	1
county	15	2009	Don't know/ Haven't heard enough	2
county	31	2009	Don't know/ Haven't heard enough	4
county	16	2009	Don't know/ Haven't heard enough	3
county	17	2009	Don't know/ Haven't heard enough	2
county	9	2009	Don't know/ Haven't heard enough	9
county	10	2009	Don't know/ Haven't heard enough	3
county	12	2009	Don't know/ Haven't heard enough	8
county	21	2009	Don't know/ Haven't heard enough	2
county	47	2009	Don't know/ Haven't heard enough	16
county	32	2009	Don't know/ Haven't heard enough	6
county	29	2009	Don't know/ Haven't heard enough	1
county	33	2009	Don't know/ Haven't heard enough	2
county	46	2009	Don't know/ Haven't heard enough	1
county	18	2009	Don't know/ Haven't heard enough	2
county	19	2009	Don't know/ Haven't heard enough	2
county	41	2009	Don't know/ Haven't heard enough	3
county	6	2009	Don't know/ Haven't heard enough	1
county	4	2009	Don't know/ Haven't heard enough	7
county	13	2009	Don't know/ Haven't heard enough	3
county	26	2009	Don't know/ Haven't heard enough	3
county	23	2009	Don't know/ Haven't heard enough	2
county	27	2009	Don't know/ Haven't heard enough	1
county	38	2009	Don't know/ Haven't heard enough	2
county	8	2009	Don't know/ Haven't heard enough	12
county	24	2009	Don't know/ Haven't heard enough	1
county	16	2009	Missing	1
county	13	2009	Missing	1
county	8	2009	Missing	1
county	30	2009	Most of them	10
county	36	2009	Most of them	6
county	39	2009	Most of them	19
county	40	2009	Most of them	11
county	28	2009	Most of them	5
county	14	2009	Most of them	15
county	7	2009	Most of them	2
county	43	2009	Most of them	20
county	11	2009	Most of them	1
county	34	2009	Most of them	12
county	37	2009	Most of them	33
county	35	2009	Most of them	8
county	22	2009	Most of them	42
county	3	2009	Most of them	13
county	20	2009	Most of them	13
county	45	2009	Most of them	27
county	42	2009	Most of them	21
county	15	2009	Most of them	18
county	2	2009	Most of them	5
county	31	2009	Most of them	5
county	5	2009	Most of them	3
county	16	2009	Most of them	21
county	17	2009	Most of them	17
county	9	2009	Most of them	7
county	10	2009	Most of them	5
county	12	2009	Most of them	23
county	44	2009	Most of them	9
county	1	2009	Most of them	18
county	21	2009	Most of them	13
county	47	2009	Most of them	68
county	32	2009	Most of them	25
county	29	2009	Most of them	11
county	33	2009	Most of them	6
county	46	2009	Most of them	19
county	18	2009	Most of them	16
county	19	2009	Most of them	9
county	25	2009	Most of them	1
county	41	2009	Most of them	10
county	6	2009	Most of them	2
county	13	2009	Most of them	3
county	26	2009	Most of them	11
county	23	2009	Most of them	12
county	27	2009	Most of them	20
county	38	2009	Most of them	12
county	8	2009	Most of them	3
county	24	2009	Most of them	3
county	30	2009	None	2
county	36	2009	None	8
county	39	2009	None	10
county	40	2009	None	3
county	28	2009	None	2
county	14	2009	None	1
county	7	2009	None	1
county	43	2009	None	8
county	34	2009	None	2
county	37	2009	None	9
county	35	2009	None	4
county	22	2009	None	7
county	20	2009	None	1
county	45	2009	None	4
county	42	2009	None	3
county	2	2009	None	2
county	31	2009	None	1
county	16	2009	None	7
county	17	2009	None	1
county	9	2009	None	2
county	12	2009	None	1
county	44	2009	None	6
county	1	2009	None	1
county	21	2009	None	5
county	47	2009	None	8
county	32	2009	None	8
county	29	2009	None	5
county	33	2009	None	3
county	46	2009	None	3
county	18	2009	None	1
county	19	2009	None	5
county	41	2009	None	4
county	6	2009	None	1
county	26	2009	None	10
county	23	2009	None	8
county	27	2009	None	3
county	8	2009	None	1
county	24	2009	None	4
county	14	2009	Refused	1
county	30	2009	Some of them	16
county	36	2009	Some of them	30
county	39	2009	Some of them	34
county	40	2009	Some of them	17
county	28	2009	Some of them	6
county	14	2009	Some of them	17
county	7	2009	Some of them	19
county	43	2009	Some of them	27
county	11	2009	Some of them	3
county	34	2009	Some of them	29
county	37	2009	Some of them	38
county	35	2009	Some of them	28
county	22	2009	Some of them	52
county	3	2009	Some of them	36
county	20	2009	Some of them	21
county	45	2009	Some of them	37
county	42	2009	Some of them	31
county	15	2009	Some of them	24
county	2	2009	Some of them	26
county	31	2009	Some of them	12
county	5	2009	Some of them	3
county	16	2009	Some of them	29
county	17	2009	Some of them	27
county	9	2009	Some of them	27
county	10	2009	Some of them	4
county	12	2009	Some of them	39
county	44	2009	Some of them	31
county	1	2009	Some of them	37
county	21	2009	Some of them	41
county	47	2009	Some of them	129
county	32	2009	Some of them	64
county	29	2009	Some of them	25
county	33	2009	Some of them	37
county	46	2009	Some of them	17
county	18	2009	Some of them	20
county	19	2009	Some of them	28
county	25	2009	Some of them	6
county	41	2009	Some of them	30
county	6	2009	Some of them	10
county	4	2009	Some of them	1
county	13	2009	Some of them	12
county	26	2009	Some of them	18
county	23	2009	Some of them	25
county	27	2009	Some of them	27
county	38	2009	Some of them	12
county	8	2009	Some of them	13
county	24	2009	Some of them	15
\.


--
-- Name: corruption_local_government_councilors pk_corruption_local_government_councilors; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_local_government_councilors
    ADD CONSTRAINT pk_corruption_local_government_councilors PRIMARY KEY (geo_level, geo_code, geo_version, corruption_local_government_councilors);


--
-- PostgreSQL database dump complete
--


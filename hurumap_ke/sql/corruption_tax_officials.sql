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

ALTER TABLE IF EXISTS ONLY public.corruption_tax_officials DROP CONSTRAINT IF EXISTS pk_corruption_tax_officials;
DROP TABLE IF EXISTS public.corruption_tax_officials;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: corruption_tax_officials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corruption_tax_officials (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    corruption_tax_officials character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: corruption_tax_officials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.corruption_tax_officials (geo_level, geo_code, geo_version, corruption_tax_officials, total) FROM stdin;
county	30	2009	All of them	5
county	30	2009	Don't know/ Haven't heard enough	1
county	30	2009	Most of them	14
county	30	2009	None	5
county	30	2009	Some of them	7
county	36	2009	All of them	1
county	36	2009	Don't know/ Haven't heard enough	4
county	36	2009	Most of them	14
county	36	2009	None	8
county	36	2009	Some of them	21
county	39	2009	All of them	15
county	39	2009	Don't know/ Haven't heard enough	12
county	39	2009	Most of them	17
county	39	2009	None	9
county	39	2009	Some of them	27
county	40	2009	All of them	8
county	40	2009	Don't know/ Haven't heard enough	12
county	40	2009	Most of them	6
county	40	2009	None	1
county	40	2009	Some of them	13
county	28	2009	All of them	5
county	28	2009	Don't know/ Haven't heard enough	1
county	28	2009	Most of them	3
county	28	2009	None	3
county	28	2009	Some of them	4
county	14	2009	All of them	3
county	14	2009	Don't know/ Haven't heard enough	15
county	14	2009	Most of them	4
county	14	2009	Some of them	18
county	7	2009	Don't know/ Haven't heard enough	14
county	7	2009	Most of them	3
county	7	2009	Some of them	15
county	43	2009	All of them	2
county	43	2009	Don't know/ Haven't heard enough	4
county	43	2009	Most of them	14
county	43	2009	None	3
county	43	2009	Some of them	33
county	11	2009	Don't know/ Haven't heard enough	4
county	11	2009	Most of them	2
county	11	2009	Some of them	2
county	34	2009	All of them	8
county	34	2009	Don't know/ Haven't heard enough	4
county	34	2009	Most of them	13
county	34	2009	None	7
county	34	2009	Some of them	16
county	37	2009	All of them	18
county	37	2009	Don't know/ Haven't heard enough	17
county	37	2009	Most of them	23
county	37	2009	None	7
county	37	2009	Some of them	31
county	35	2009	All of them	1
county	35	2009	Don't know/ Haven't heard enough	6
county	35	2009	Most of them	8
county	35	2009	None	4
county	35	2009	Some of them	21
county	22	2009	All of them	9
county	22	2009	Don't know/ Haven't heard enough	5
county	22	2009	Most of them	22
county	22	2009	None	14
county	22	2009	Some of them	70
county	3	2009	All of them	6
county	3	2009	Don't know/ Haven't heard enough	7
county	3	2009	Most of them	17
county	3	2009	Some of them	34
county	20	2009	All of them	1
county	20	2009	Don't know/ Haven't heard enough	4
county	20	2009	Most of them	6
county	20	2009	None	5
county	20	2009	Some of them	24
county	45	2009	All of them	5
county	45	2009	Don't know/ Haven't heard enough	10
county	45	2009	Most of them	28
county	45	2009	None	3
county	45	2009	Some of them	26
county	42	2009	All of them	2
county	42	2009	Don't know/ Haven't heard enough	4
county	42	2009	Most of them	16
county	42	2009	None	4
county	42	2009	Some of them	30
county	15	2009	All of them	3
county	15	2009	Don't know/ Haven't heard enough	22
county	15	2009	Most of them	13
county	15	2009	Some of them	18
county	2	2009	All of them	2
county	2	2009	Don't know/ Haven't heard enough	5
county	2	2009	Most of them	11
county	2	2009	None	1
county	2	2009	Some of them	21
county	31	2009	All of them	1
county	31	2009	Don't know/ Haven't heard enough	6
county	31	2009	Most of them	8
county	31	2009	None	2
county	31	2009	Some of them	7
county	5	2009	Don't know/ Haven't heard enough	2
county	5	2009	Most of them	2
county	5	2009	Some of them	4
county	16	2009	All of them	10
county	16	2009	Don't know/ Haven't heard enough	30
county	16	2009	Missing	1
county	16	2009	Most of them	13
county	16	2009	Some of them	18
county	17	2009	All of them	6
county	17	2009	Don't know/ Haven't heard enough	14
county	17	2009	Most of them	10
county	17	2009	None	2
county	17	2009	Some of them	24
county	9	2009	All of them	4
county	9	2009	Don't know/ Haven't heard enough	20
county	9	2009	Most of them	14
county	9	2009	None	1
county	9	2009	Some of them	9
county	10	2009	All of them	1
county	10	2009	Don't know/ Haven't heard enough	8
county	10	2009	Most of them	2
county	10	2009	Some of them	5
county	12	2009	All of them	5
county	12	2009	Don't know/ Haven't heard enough	28
county	12	2009	Most of them	22
county	12	2009	None	1
county	12	2009	Some of them	29
county	44	2009	Don't know/ Haven't heard enough	2
county	44	2009	Most of them	13
county	44	2009	None	4
county	44	2009	Some of them	29
county	1	2009	All of them	9
county	1	2009	Don't know/ Haven't heard enough	2
county	1	2009	Most of them	20
county	1	2009	None	1
county	1	2009	Some of them	40
county	21	2009	Don't know/ Haven't heard enough	6
county	21	2009	Most of them	8
county	21	2009	None	8
county	21	2009	Some of them	42
county	47	2009	All of them	45
county	47	2009	Don't know/ Haven't heard enough	24
county	47	2009	Most of them	56
county	47	2009	None	12
county	47	2009	Some of them	111
county	32	2009	Don't know/ Haven't heard enough	10
county	32	2009	Missing	1
county	32	2009	Most of them	20
county	32	2009	None	12
county	32	2009	Some of them	61
county	29	2009	All of them	6
county	29	2009	Don't know/ Haven't heard enough	5
county	29	2009	Most of them	20
county	29	2009	None	5
county	29	2009	Some of them	12
county	33	2009	Don't know/ Haven't heard enough	7
county	33	2009	Most of them	9
county	33	2009	None	9
county	33	2009	Some of them	23
county	46	2009	All of them	3
county	46	2009	Don't know/ Haven't heard enough	3
county	46	2009	Most of them	14
county	46	2009	None	1
county	46	2009	Some of them	19
county	18	2009	All of them	4
county	18	2009	Don't know/ Haven't heard enough	1
county	18	2009	Most of them	12
county	18	2009	None	1
county	18	2009	Some of them	22
county	19	2009	All of them	3
county	19	2009	Most of them	12
county	19	2009	None	7
county	19	2009	Some of them	26
county	25	2009	All of them	1
county	25	2009	Don't know/ Haven't heard enough	5
county	25	2009	Most of them	1
county	25	2009	None	1
county	41	2009	All of them	1
county	41	2009	Don't know/ Haven't heard enough	15
county	41	2009	Most of them	7
county	41	2009	Some of them	25
county	6	2009	Don't know/ Haven't heard enough	5
county	6	2009	Most of them	3
county	6	2009	Some of them	8
county	4	2009	Don't know/ Haven't heard enough	6
county	4	2009	None	1
county	4	2009	Some of them	1
county	13	2009	All of them	1
county	13	2009	Don't know/ Haven't heard enough	4
county	13	2009	Most of them	5
county	13	2009	None	1
county	13	2009	Some of them	13
county	26	2009	All of them	9
county	26	2009	Don't know/ Haven't heard enough	9
county	26	2009	Most of them	8
county	26	2009	None	11
county	26	2009	Some of them	11
county	23	2009	All of them	4
county	23	2009	Don't know/ Haven't heard enough	17
county	23	2009	Most of them	12
county	23	2009	None	7
county	23	2009	Some of them	8
county	27	2009	All of them	12
county	27	2009	Don't know/ Haven't heard enough	3
county	27	2009	Most of them	15
county	27	2009	None	6
county	27	2009	Some of them	20
county	38	2009	All of them	8
county	38	2009	Don't know/ Haven't heard enough	5
county	38	2009	Most of them	8
county	38	2009	None	2
county	38	2009	Some of them	9
county	8	2009	All of them	2
county	8	2009	Don't know/ Haven't heard enough	12
county	8	2009	Most of them	6
county	8	2009	None	1
county	8	2009	Some of them	11
county	24	2009	All of them	1
county	24	2009	Don't know/ Haven't heard enough	6
county	24	2009	Most of them	9
county	24	2009	None	2
county	24	2009	Some of them	6
country	KE	2009	None	172
country	KE	2009	Missing	2
country	KE	2009	Don't know/ Haven't heard enough	406
country	KE	2009	Some of them	1024
country	KE	2009	All of them	230
country	KE	2009	Most of them	563
\.


--
-- Name: corruption_tax_officials pk_corruption_tax_officials; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corruption_tax_officials
    ADD CONSTRAINT pk_corruption_tax_officials PRIMARY KEY (geo_level, geo_code, geo_version, corruption_tax_officials);


--
-- PostgreSQL database dump complete
--


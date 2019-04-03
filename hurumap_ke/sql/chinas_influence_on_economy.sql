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

ALTER TABLE IF EXISTS ONLY public.chinas_influence_on_economy DROP CONSTRAINT IF EXISTS pk_chinas_influence_on_economy;
DROP TABLE IF EXISTS public.chinas_influence_on_economy;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chinas_influence_on_economy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chinas_influence_on_economy (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    chinas_influence_on_economy character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: chinas_influence_on_economy; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chinas_influence_on_economy (geo_level, geo_code, geo_version, chinas_influence_on_economy, total) FROM stdin;
county	30	2009	A little	3
county	30	2009	A lot	9
county	30	2009	Don't know / Haven't heard enough	2
county	30	2009	None	1
county	30	2009	Some	17
county	36	2009	A little	5
county	36	2009	A lot	20
county	36	2009	Don't know / Haven't heard enough	2
county	36	2009	Some	21
county	39	2009	A little	12
county	39	2009	A lot	36
county	39	2009	Don't know / Haven't heard enough	10
county	39	2009	None	4
county	39	2009	Some	18
county	40	2009	A little	7
county	40	2009	A lot	11
county	40	2009	Don't know / Haven't heard enough	3
county	40	2009	None	3
county	40	2009	Some	16
county	28	2009	A little	3
county	28	2009	A lot	4
county	28	2009	Don't know / Haven't heard enough	4
county	28	2009	None	1
county	28	2009	Some	4
county	14	2009	A little	5
county	14	2009	A lot	21
county	14	2009	Don't know / Haven't heard enough	2
county	14	2009	Some	12
county	7	2009	A little	1
county	7	2009	A lot	3
county	7	2009	Don't know / Haven't heard enough	12
county	7	2009	Some	16
county	43	2009	A little	7
county	43	2009	A lot	13
county	43	2009	Don't know / Haven't heard enough	6
county	43	2009	None	6
county	43	2009	Some	24
county	11	2009	A lot	2
county	11	2009	Don't know / Haven't heard enough	3
county	11	2009	Some	3
county	34	2009	A little	10
county	34	2009	A lot	13
county	34	2009	Don't know / Haven't heard enough	2
county	34	2009	Some	23
county	37	2009	A little	12
county	37	2009	A lot	28
county	37	2009	Don't know / Haven't heard enough	11
county	37	2009	None	16
county	37	2009	Some	29
county	35	2009	A little	6
county	35	2009	A lot	11
county	35	2009	Don't know / Haven't heard enough	1
county	35	2009	Some	22
county	22	2009	A little	10
county	22	2009	A lot	63
county	22	2009	Don't know / Haven't heard enough	2
county	22	2009	None	1
county	22	2009	Some	44
county	3	2009	A little	7
county	3	2009	A lot	27
county	3	2009	Don't know / Haven't heard enough	8
county	3	2009	Some	22
county	20	2009	A little	4
county	20	2009	A lot	24
county	20	2009	None	1
county	20	2009	Some	11
county	45	2009	A little	19
county	45	2009	A lot	15
county	45	2009	Don't know / Haven't heard enough	17
county	45	2009	None	5
county	45	2009	Some	16
county	42	2009	A little	9
county	42	2009	A lot	15
county	42	2009	Don't know / Haven't heard enough	5
county	42	2009	None	2
county	42	2009	Some	25
county	15	2009	A little	6
county	15	2009	A lot	20
county	15	2009	Don't know / Haven't heard enough	9
county	15	2009	Some	21
county	2	2009	A little	2
county	2	2009	A lot	20
county	2	2009	Don't know / Haven't heard enough	4
county	2	2009	Some	14
county	31	2009	A little	1
county	31	2009	A lot	6
county	31	2009	Don't know / Haven't heard enough	7
county	31	2009	Some	10
county	5	2009	A lot	7
county	5	2009	Some	1
county	16	2009	A little	5
county	16	2009	A lot	29
county	16	2009	Don't know / Haven't heard enough	12
county	16	2009	Some	26
county	17	2009	A little	5
county	17	2009	A lot	28
county	17	2009	Don't know / Haven't heard enough	7
county	17	2009	Some	16
county	9	2009	A little	8
county	9	2009	A lot	15
county	9	2009	Don't know / Haven't heard enough	10
county	9	2009	None	1
county	9	2009	Some	14
county	10	2009	A little	3
county	10	2009	A lot	6
county	10	2009	Don't know / Haven't heard enough	3
county	10	2009	Some	4
county	12	2009	A little	8
county	12	2009	A lot	41
county	12	2009	Don't know / Haven't heard enough	2
county	12	2009	Some	34
county	44	2009	A little	11
county	44	2009	A lot	13
county	44	2009	Don't know / Haven't heard enough	7
county	44	2009	None	5
county	44	2009	Some	12
county	1	2009	A little	5
county	1	2009	A lot	39
county	1	2009	None	2
county	1	2009	Some	26
county	21	2009	A little	2
county	21	2009	A lot	45
county	21	2009	Don't know / Haven't heard enough	1
county	21	2009	Some	16
county	47	2009	A little	30
county	47	2009	A lot	124
county	47	2009	Don't know / Haven't heard enough	11
county	47	2009	None	6
county	47	2009	Some	77
county	32	2009	A little	7
county	32	2009	A lot	40
county	32	2009	Don't know / Haven't heard enough	7
county	32	2009	Some	50
county	29	2009	A little	10
county	29	2009	A lot	19
county	29	2009	Don't know / Haven't heard enough	3
county	29	2009	Some	16
county	33	2009	A little	8
county	33	2009	A lot	13
county	33	2009	Don't know / Haven't heard enough	4
county	33	2009	None	1
county	33	2009	Some	22
county	46	2009	A little	10
county	46	2009	A lot	4
county	46	2009	Don't know / Haven't heard enough	6
county	46	2009	None	7
county	46	2009	Some	13
county	18	2009	A little	1
county	18	2009	A lot	31
county	18	2009	Some	8
county	19	2009	A little	3
county	19	2009	A lot	29
county	19	2009	Don't know / Haven't heard enough	2
county	19	2009	Some	14
county	25	2009	A little	2
county	25	2009	A lot	1
county	25	2009	Don't know / Haven't heard enough	2
county	25	2009	Some	3
county	41	2009	A little	8
county	41	2009	A lot	12
county	41	2009	Don't know / Haven't heard enough	7
county	41	2009	None	1
county	41	2009	Some	20
county	6	2009	A little	3
county	6	2009	A lot	4
county	6	2009	Some	9
county	4	2009	Don't know / Haven't heard enough	7
county	4	2009	Some	1
county	13	2009	A little	1
county	13	2009	A lot	11
county	13	2009	Don't know / Haven't heard enough	2
county	13	2009	None	2
county	13	2009	Some	8
county	26	2009	A little	7
county	26	2009	A lot	16
county	26	2009	Don't know / Haven't heard enough	5
county	26	2009	None	2
county	26	2009	Some	18
county	23	2009	A little	15
county	23	2009	A lot	8
county	23	2009	Don't know / Haven't heard enough	7
county	23	2009	None	2
county	23	2009	Some	16
county	27	2009	A little	6
county	27	2009	A lot	19
county	27	2009	Don't know / Haven't heard enough	3
county	27	2009	None	5
county	27	2009	Some	23
county	38	2009	A little	8
county	38	2009	A lot	10
county	38	2009	Don't know / Haven't heard enough	2
county	38	2009	None	5
county	38	2009	Some	7
county	8	2009	A little	2
county	8	2009	A lot	8
county	8	2009	Don't know / Haven't heard enough	12
county	8	2009	Some	10
county	24	2009	A little	6
county	24	2009	A lot	8
county	24	2009	Don't know / Haven't heard enough	3
county	24	2009	None	1
county	24	2009	Some	6
country	KE	2009	A lot	941
country	KE	2009	Don't know / Haven't heard enough	235
country	KE	2009	Some	838
country	KE	2009	None	80
country	KE	2009	A little	303
\.


--
-- Name: chinas_influence_on_economy pk_chinas_influence_on_economy; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_influence_on_economy
    ADD CONSTRAINT pk_chinas_influence_on_economy PRIMARY KEY (geo_level, geo_code, geo_version, chinas_influence_on_economy);


--
-- PostgreSQL database dump complete
--


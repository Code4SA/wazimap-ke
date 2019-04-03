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

ALTER TABLE IF EXISTS ONLY public.chinas_influence_positive_or_negative DROP CONSTRAINT IF EXISTS pk_chinas_influence_positive_or_negative;
DROP TABLE IF EXISTS public.chinas_influence_positive_or_negative;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chinas_influence_positive_or_negative; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chinas_influence_positive_or_negative (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    chinas_influence_positive_or_negative character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: chinas_influence_positive_or_negative; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chinas_influence_positive_or_negative (geo_level, geo_code, geo_version, chinas_influence_positive_or_negative, total) FROM stdin;
county	30	2009	Don't know / Haven't heard enough	2
county	30	2009	Neither positive nor negative	2
county	30	2009	Somewhat negative	1
county	30	2009	Somewhat positive	17
county	30	2009	Very negative	1
county	30	2009	Very positive	9
county	36	2009	Don't know / Haven't heard enough	3
county	36	2009	Somewhat negative	3
county	36	2009	Somewhat positive	24
county	36	2009	Very positive	18
county	39	2009	Don't know / Haven't heard enough	7
county	39	2009	Neither positive nor negative	3
county	39	2009	Somewhat negative	5
county	39	2009	Somewhat positive	31
county	39	2009	Very negative	3
county	39	2009	Very positive	31
county	40	2009	Don't know / Haven't heard enough	3
county	40	2009	Neither positive nor negative	2
county	40	2009	Somewhat negative	3
county	40	2009	Somewhat positive	18
county	40	2009	Very negative	3
county	40	2009	Very positive	11
county	28	2009	Don't know / Haven't heard enough	4
county	28	2009	Neither positive nor negative	1
county	28	2009	Somewhat positive	7
county	28	2009	Very positive	4
county	14	2009	Don't know / Haven't heard enough	1
county	14	2009	Neither positive nor negative	5
county	14	2009	Somewhat positive	14
county	14	2009	Very negative	1
county	14	2009	Very positive	19
county	7	2009	Don't know / Haven't heard enough	11
county	7	2009	Neither positive nor negative	2
county	7	2009	Somewhat positive	12
county	7	2009	Very positive	7
county	43	2009	Don't know / Haven't heard enough	9
county	43	2009	Neither positive nor negative	7
county	43	2009	Somewhat negative	6
county	43	2009	Somewhat positive	24
county	43	2009	Very negative	3
county	43	2009	Very positive	7
county	11	2009	Don't know / Haven't heard enough	4
county	11	2009	Somewhat positive	3
county	11	2009	Very positive	1
county	34	2009	Don't know / Haven't heard enough	3
county	34	2009	Neither positive nor negative	6
county	34	2009	Somewhat negative	1
county	34	2009	Somewhat positive	25
county	34	2009	Very negative	1
county	34	2009	Very positive	12
county	37	2009	Don't know / Haven't heard enough	11
county	37	2009	Neither positive nor negative	5
county	37	2009	Somewhat negative	6
county	37	2009	Somewhat positive	46
county	37	2009	Very negative	7
county	37	2009	Very positive	21
county	35	2009	Don't know / Haven't heard enough	1
county	35	2009	Neither positive nor negative	1
county	35	2009	Somewhat negative	5
county	35	2009	Somewhat positive	23
county	35	2009	Very negative	1
county	35	2009	Very positive	9
county	22	2009	Don't know / Haven't heard enough	4
county	22	2009	Neither positive nor negative	4
county	22	2009	Somewhat negative	4
county	22	2009	Somewhat positive	68
county	22	2009	Very positive	40
county	3	2009	Don't know / Haven't heard enough	9
county	3	2009	Neither positive nor negative	1
county	3	2009	Somewhat negative	1
county	3	2009	Somewhat positive	38
county	3	2009	Very positive	15
county	20	2009	Don't know / Haven't heard enough	1
county	20	2009	Neither positive nor negative	1
county	20	2009	Somewhat negative	3
county	20	2009	Somewhat positive	15
county	20	2009	Very positive	20
county	45	2009	Don't know / Haven't heard enough	18
county	45	2009	Neither positive nor negative	8
county	45	2009	Somewhat negative	11
county	45	2009	Somewhat positive	23
county	45	2009	Very negative	4
county	45	2009	Very positive	8
county	42	2009	Don't know / Haven't heard enough	5
county	42	2009	Neither positive nor negative	4
county	42	2009	Somewhat negative	7
county	42	2009	Somewhat positive	31
county	42	2009	Very negative	3
county	42	2009	Very positive	6
county	15	2009	Don't know / Haven't heard enough	7
county	15	2009	Neither positive nor negative	5
county	15	2009	Somewhat negative	2
county	15	2009	Somewhat positive	23
county	15	2009	Very positive	19
county	2	2009	Don't know / Haven't heard enough	4
county	2	2009	Neither positive nor negative	1
county	2	2009	Somewhat negative	2
county	2	2009	Somewhat positive	19
county	2	2009	Very positive	14
county	31	2009	Don't know / Haven't heard enough	7
county	31	2009	Somewhat negative	1
county	31	2009	Somewhat positive	12
county	31	2009	Very positive	4
county	5	2009	Somewhat negative	1
county	5	2009	Somewhat positive	2
county	5	2009	Very positive	5
county	16	2009	Don't know / Haven't heard enough	8
county	16	2009	Neither positive nor negative	6
county	16	2009	Somewhat negative	2
county	16	2009	Somewhat positive	34
county	16	2009	Very positive	22
county	17	2009	Don't know / Haven't heard enough	8
county	17	2009	Neither positive nor negative	2
county	17	2009	Somewhat negative	1
county	17	2009	Somewhat positive	28
county	17	2009	Very negative	1
county	17	2009	Very positive	16
county	9	2009	Don't know / Haven't heard enough	12
county	9	2009	Neither positive nor negative	5
county	9	2009	Somewhat negative	2
county	9	2009	Somewhat positive	18
county	9	2009	Very negative	1
county	9	2009	Very positive	10
county	10	2009	Don't know / Haven't heard enough	4
county	10	2009	Somewhat positive	6
county	10	2009	Very negative	1
county	10	2009	Very positive	5
county	12	2009	Don't know / Haven't heard enough	2
county	12	2009	Neither positive nor negative	4
county	12	2009	Somewhat negative	2
county	12	2009	Somewhat positive	33
county	12	2009	Very positive	44
county	44	2009	Don't know / Haven't heard enough	8
county	44	2009	Neither positive nor negative	6
county	44	2009	Somewhat negative	9
county	44	2009	Somewhat positive	15
county	44	2009	Very negative	4
county	44	2009	Very positive	6
county	1	2009	Don't know / Haven't heard enough	2
county	1	2009	Neither positive nor negative	2
county	1	2009	Somewhat positive	36
county	1	2009	Very negative	1
county	1	2009	Very positive	31
county	21	2009	Don't know / Haven't heard enough	1
county	21	2009	Neither positive nor negative	2
county	21	2009	Somewhat negative	3
county	21	2009	Somewhat positive	28
county	21	2009	Very positive	30
county	47	2009	Don't know / Haven't heard enough	11
county	47	2009	Neither positive nor negative	18
county	47	2009	Somewhat negative	19
county	47	2009	Somewhat positive	96
county	47	2009	Very negative	12
county	47	2009	Very positive	92
county	32	2009	Don't know / Haven't heard enough	6
county	32	2009	Neither positive nor negative	2
county	32	2009	Somewhat negative	7
county	32	2009	Somewhat positive	61
county	32	2009	Very negative	1
county	32	2009	Very positive	27
county	29	2009	Don't know / Haven't heard enough	3
county	29	2009	Neither positive nor negative	4
county	29	2009	Somewhat positive	23
county	29	2009	Very positive	18
county	33	2009	Don't know / Haven't heard enough	3
county	33	2009	Somewhat negative	5
county	33	2009	Somewhat positive	24
county	33	2009	Very negative	3
county	33	2009	Very positive	13
county	46	2009	Don't know / Haven't heard enough	7
county	46	2009	Neither positive nor negative	4
county	46	2009	Somewhat negative	10
county	46	2009	Somewhat positive	13
county	46	2009	Very negative	4
county	46	2009	Very positive	2
county	18	2009	Neither positive nor negative	1
county	18	2009	Somewhat negative	1
county	18	2009	Somewhat positive	17
county	18	2009	Very positive	21
county	19	2009	Don't know / Haven't heard enough	2
county	19	2009	Neither positive nor negative	3
county	19	2009	Somewhat negative	3
county	19	2009	Somewhat positive	15
county	19	2009	Very negative	1
county	19	2009	Very positive	24
county	25	2009	Don't know / Haven't heard enough	2
county	25	2009	Neither positive nor negative	3
county	25	2009	Somewhat positive	2
county	25	2009	Very positive	1
county	41	2009	Don't know / Haven't heard enough	9
county	41	2009	Neither positive nor negative	7
county	41	2009	Somewhat negative	5
county	41	2009	Somewhat positive	25
county	41	2009	Very negative	1
county	41	2009	Very positive	1
county	6	2009	Don't know / Haven't heard enough	1
county	6	2009	Somewhat positive	10
county	6	2009	Very positive	5
county	4	2009	Don't know / Haven't heard enough	6
county	4	2009	Somewhat positive	2
county	13	2009	Don't know / Haven't heard enough	2
county	13	2009	Neither positive nor negative	1
county	13	2009	Somewhat negative	1
county	13	2009	Somewhat positive	9
county	13	2009	Very positive	11
county	26	2009	Don't know / Haven't heard enough	5
county	26	2009	Neither positive nor negative	1
county	26	2009	Somewhat negative	5
county	26	2009	Somewhat positive	24
county	26	2009	Very negative	1
county	26	2009	Very positive	12
county	23	2009	Don't know / Haven't heard enough	9
county	23	2009	Neither positive nor negative	8
county	23	2009	Somewhat positive	23
county	23	2009	Very positive	8
county	27	2009	Don't know / Haven't heard enough	2
county	27	2009	Neither positive nor negative	1
county	27	2009	Somewhat negative	6
county	27	2009	Somewhat positive	21
county	27	2009	Very negative	3
county	27	2009	Very positive	23
county	38	2009	Don't know / Haven't heard enough	4
county	38	2009	Neither positive nor negative	7
county	38	2009	Somewhat negative	4
county	38	2009	Somewhat positive	10
county	38	2009	Very positive	7
county	8	2009	Don't know / Haven't heard enough	12
county	8	2009	Neither positive nor negative	1
county	8	2009	Somewhat negative	1
county	8	2009	Somewhat positive	10
county	8	2009	Very positive	8
county	24	2009	Don't know / Haven't heard enough	3
county	24	2009	Neither positive nor negative	2
county	24	2009	Somewhat positive	10
county	24	2009	Very positive	9
country	KE	2009	Don't know / Haven't heard enough	246
country	KE	2009	Somewhat positive	1068
country	KE	2009	Somewhat negative	148
country	KE	2009	Neither positive nor negative	148
country	KE	2009	Very negative	61
country	KE	2009	Very positive	726
\.


--
-- Name: chinas_influence_positive_or_negative pk_chinas_influence_positive_or_negative; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_influence_positive_or_negative
    ADD CONSTRAINT pk_chinas_influence_positive_or_negative PRIMARY KEY (geo_level, geo_code, geo_version, chinas_influence_positive_or_negative);


--
-- PostgreSQL database dump complete
--


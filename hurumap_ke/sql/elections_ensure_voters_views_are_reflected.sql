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

ALTER TABLE IF EXISTS ONLY public.elections_ensure_voters_views_are_reflected DROP CONSTRAINT IF EXISTS pk_elections_ensure_voters_views_are_reflected;
DROP TABLE IF EXISTS public.elections_ensure_voters_views_are_reflected;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: elections_ensure_voters_views_are_reflected; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elections_ensure_voters_views_are_reflected (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    elections_ensure_voters_views_are_reflected character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: elections_ensure_voters_views_are_reflected; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.elections_ensure_voters_views_are_reflected (geo_level, geo_code, geo_version, elections_ensure_voters_views_are_reflected, total) FROM stdin;
county	30	2009	Not very well	13
county	30	2009	Very well	4
county	30	2009	Well	15
county	36	2009	Don't know	1
county	36	2009	Not very well	17
county	36	2009	Very well	4
county	36	2009	Well	26
county	39	2009	Don't know	3
county	39	2009	Not at all well	9
county	39	2009	Not very well	31
county	39	2009	Very well	14
county	39	2009	Well	23
county	40	2009	Don't know	2
county	40	2009	Not at all well	3
county	40	2009	Not very well	17
county	40	2009	Very well	7
county	40	2009	Well	11
county	28	2009	Don't know	1
county	28	2009	Not very well	8
county	28	2009	Very well	3
county	28	2009	Well	4
county	14	2009	Don't know	2
county	14	2009	Not at all well	2
county	14	2009	Not very well	12
county	14	2009	Very well	10
county	14	2009	Well	14
county	7	2009	Don't know	4
county	7	2009	Not very well	11
county	7	2009	Very well	4
county	7	2009	Well	13
county	43	2009	Don't know	3
county	43	2009	Not at all well	10
county	43	2009	Not very well	26
county	43	2009	Very well	1
county	43	2009	Well	16
county	11	2009	Don't know	2
county	11	2009	Not very well	3
county	11	2009	Very well	1
county	11	2009	Well	2
county	34	2009	Don't know	4
county	34	2009	Not at all well	1
county	34	2009	Not very well	28
county	34	2009	Very well	6
county	34	2009	Well	9
county	37	2009	Don't know	4
county	37	2009	Not at all well	6
county	37	2009	Not very well	33
county	37	2009	Very well	21
county	37	2009	Well	32
county	35	2009	Not at all well	4
county	35	2009	Not very well	14
county	35	2009	Very well	6
county	35	2009	Well	16
county	22	2009	Don't know	2
county	22	2009	Not at all well	11
county	22	2009	Not very well	37
county	22	2009	Very well	27
county	22	2009	Well	43
county	3	2009	Don't know	7
county	3	2009	Not at all well	6
county	3	2009	Not very well	33
county	3	2009	Very well	7
county	3	2009	Well	11
county	20	2009	Not at all well	2
county	20	2009	Not very well	13
county	20	2009	Very well	9
county	20	2009	Well	16
county	45	2009	Don't know	1
county	45	2009	Not at all well	19
county	45	2009	Not very well	36
county	45	2009	Well	16
county	42	2009	Don't know	3
county	42	2009	Not at all well	10
county	42	2009	Not very well	29
county	42	2009	Very well	3
county	42	2009	Well	11
county	15	2009	Not at all well	4
county	15	2009	Not very well	15
county	15	2009	Very well	8
county	15	2009	Well	29
county	2	2009	Don't know	6
county	2	2009	Not at all well	1
county	2	2009	Not very well	19
county	2	2009	Very well	6
county	2	2009	Well	8
county	31	2009	Don't know	5
county	31	2009	Not at all well	3
county	31	2009	Not very well	4
county	31	2009	Very well	2
county	31	2009	Well	10
county	5	2009	Not very well	1
county	5	2009	Very well	4
county	5	2009	Well	3
county	16	2009	Don't know	6
county	16	2009	Not at all well	5
county	16	2009	Not very well	21
county	16	2009	Very well	12
county	16	2009	Well	28
county	17	2009	Don't know	3
county	17	2009	Not very well	26
county	17	2009	Very well	15
county	17	2009	Well	12
county	9	2009	Don't know	6
county	9	2009	Missing	1
county	9	2009	Not at all well	1
county	9	2009	Not very well	13
county	9	2009	Very well	8
county	9	2009	Well	19
county	10	2009	Not at all well	8
county	10	2009	Not very well	3
county	10	2009	Very well	1
county	10	2009	Well	4
county	12	2009	Don't know	2
county	12	2009	Not at all well	5
county	12	2009	Not very well	30
county	12	2009	Very well	11
county	12	2009	Well	37
county	44	2009	Don't know	1
county	44	2009	Not at all well	14
county	44	2009	Not very well	23
county	44	2009	Very well	1
county	44	2009	Well	9
county	1	2009	Don't know	3
county	1	2009	Not at all well	5
county	1	2009	Not very well	38
county	1	2009	Very well	9
county	1	2009	Well	17
county	21	2009	Not at all well	2
county	21	2009	Not very well	20
county	21	2009	Very well	18
county	21	2009	Well	24
county	47	2009	Don't know	11
county	47	2009	Not at all well	22
county	47	2009	Not very well	111
county	47	2009	Very well	31
county	47	2009	Well	73
county	32	2009	Don't know	4
county	32	2009	Not at all well	3
county	32	2009	Not very well	34
county	32	2009	Very well	19
county	32	2009	Well	44
county	29	2009	Don't know	1
county	29	2009	Not at all well	3
county	29	2009	Not very well	21
county	29	2009	Very well	6
county	29	2009	Well	17
county	33	2009	Not at all well	5
county	33	2009	Not very well	17
county	33	2009	Very well	5
county	33	2009	Well	21
county	46	2009	Not at all well	13
county	46	2009	Not very well	16
county	46	2009	Well	11
county	18	2009	Not at all well	1
county	18	2009	Not very well	16
county	18	2009	Very well	6
county	18	2009	Well	17
county	19	2009	Not at all well	2
county	19	2009	Not very well	18
county	19	2009	Very well	10
county	19	2009	Well	18
county	25	2009	Don't know	1
county	25	2009	Not at all well	1
county	25	2009	Not very well	4
county	25	2009	Very well	1
county	25	2009	Well	1
county	41	2009	Don't know	4
county	41	2009	Not at all well	9
county	41	2009	Not very well	32
county	41	2009	Well	3
county	6	2009	Don't know	3
county	6	2009	Not very well	6
county	6	2009	Very well	4
county	6	2009	Well	3
county	4	2009	Don't know	3
county	4	2009	Not at all well	1
county	4	2009	Not very well	2
county	4	2009	Well	2
county	13	2009	Don't know	1
county	13	2009	Not very well	10
county	13	2009	Very well	7
county	13	2009	Well	6
county	26	2009	Don't know	1
county	26	2009	Not at all well	3
county	26	2009	Not very well	14
county	26	2009	Very well	12
county	26	2009	Well	18
county	23	2009	Don't know	3
county	23	2009	Not at all well	1
county	23	2009	Not very well	17
county	23	2009	Very well	3
county	23	2009	Well	24
county	27	2009	Don't know	2
county	27	2009	Not at all well	2
county	27	2009	Not very well	22
county	27	2009	Very well	7
county	27	2009	Well	23
county	38	2009	Not at all well	3
county	38	2009	Not very well	13
county	38	2009	Very well	8
county	38	2009	Well	8
county	8	2009	Don't know	15
county	8	2009	Not at all well	1
county	8	2009	Not very well	7
county	8	2009	Very well	1
county	8	2009	Well	8
county	24	2009	Don't know	1
county	24	2009	Not very well	9
county	24	2009	Very well	6
county	24	2009	Well	8
country	KE	2009	Missing	1
country	KE	2009	Well	783
country	KE	2009	Very well	348
country	KE	2009	Not at all well	201
country	KE	2009	Don't know	121
country	KE	2009	Not very well	943
\.


--
-- Name: elections_ensure_voters_views_are_reflected pk_elections_ensure_voters_views_are_reflected; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elections_ensure_voters_views_are_reflected
    ADD CONSTRAINT pk_elections_ensure_voters_views_are_reflected PRIMARY KEY (geo_level, geo_code, geo_version, elections_ensure_voters_views_are_reflected);


--
-- PostgreSQL database dump complete
--


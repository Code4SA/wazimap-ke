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

ALTER TABLE IF EXISTS ONLY public.elections_to_remove_leaders_from_office DROP CONSTRAINT IF EXISTS pk_elections_to_remove_leaders_from_office;
DROP TABLE IF EXISTS public.elections_to_remove_leaders_from_office;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: elections_to_remove_leaders_from_office; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.elections_to_remove_leaders_from_office (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    elections_to_remove_leaders_from_office character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: elections_to_remove_leaders_from_office; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.elections_to_remove_leaders_from_office (geo_level, geo_code, geo_version, elections_to_remove_leaders_from_office, total) FROM stdin;
county	30	2009	Not at all well	5
county	30	2009	Not very well	11
county	30	2009	Very well	4
county	30	2009	Well	12
county	36	2009	Not at all well	3
county	36	2009	Not very well	14
county	36	2009	Very well	9
county	36	2009	Well	22
county	39	2009	Don't know	1
county	39	2009	Not at all well	6
county	39	2009	Not very well	24
county	39	2009	Very well	19
county	39	2009	Well	30
county	40	2009	Not at all well	5
county	40	2009	Not very well	19
county	40	2009	Very well	9
county	40	2009	Well	7
county	28	2009	Don't know	1
county	28	2009	Not at all well	1
county	28	2009	Not very well	7
county	28	2009	Very well	3
county	28	2009	Well	4
county	14	2009	Not at all well	2
county	14	2009	Not very well	6
county	14	2009	Very well	14
county	14	2009	Well	18
county	7	2009	Don't know	4
county	7	2009	Not very well	12
county	7	2009	Very well	5
county	7	2009	Well	11
county	43	2009	Not at all well	13
county	43	2009	Not very well	26
county	43	2009	Very well	3
county	43	2009	Well	14
county	11	2009	Don't know	1
county	11	2009	Not very well	3
county	11	2009	Very well	2
county	11	2009	Well	2
county	34	2009	Don't know	5
county	34	2009	Not at all well	7
county	34	2009	Not very well	23
county	34	2009	Very well	7
county	34	2009	Well	6
county	37	2009	Don't know	2
county	37	2009	Not at all well	6
county	37	2009	Not very well	34
county	37	2009	Very well	25
county	37	2009	Well	29
county	35	2009	Not at all well	3
county	35	2009	Not very well	7
county	35	2009	Very well	11
county	35	2009	Well	19
county	22	2009	Don't know	2
county	22	2009	Not at all well	13
county	22	2009	Not very well	33
county	22	2009	Very well	39
county	22	2009	Well	33
county	3	2009	Don't know	6
county	3	2009	Not at all well	9
county	3	2009	Not very well	23
county	3	2009	Very well	10
county	3	2009	Well	16
county	20	2009	Not at all well	2
county	20	2009	Not very well	12
county	20	2009	Very well	13
county	20	2009	Well	13
county	45	2009	Not at all well	32
county	45	2009	Not very well	27
county	45	2009	Well	13
county	42	2009	Don't know	1
county	42	2009	Not at all well	16
county	42	2009	Not very well	31
county	42	2009	Very well	3
county	42	2009	Well	5
county	15	2009	Missing	1
county	15	2009	Not at all well	4
county	15	2009	Not very well	8
county	15	2009	Very well	12
county	15	2009	Well	31
county	2	2009	Don't know	5
county	2	2009	Not at all well	3
county	2	2009	Not very well	14
county	2	2009	Very well	10
county	2	2009	Well	8
county	31	2009	Don't know	4
county	31	2009	Not at all well	1
county	31	2009	Not very well	3
county	31	2009	Very well	3
county	31	2009	Well	13
county	5	2009	Not very well	3
county	5	2009	Very well	4
county	5	2009	Well	1
county	16	2009	Don't know	2
county	16	2009	Not at all well	2
county	16	2009	Not very well	13
county	16	2009	Very well	21
county	16	2009	Well	34
county	17	2009	Don't know	3
county	17	2009	Not at all well	2
county	17	2009	Not very well	26
county	17	2009	Very well	17
county	17	2009	Well	8
county	9	2009	Don't know	6
county	9	2009	Missing	1
county	9	2009	Not at all well	1
county	9	2009	Not very well	20
county	9	2009	Very well	10
county	9	2009	Well	10
county	10	2009	Not at all well	5
county	10	2009	Not very well	3
county	10	2009	Very well	1
county	10	2009	Well	7
county	12	2009	Not at all well	4
county	12	2009	Not very well	20
county	12	2009	Very well	16
county	12	2009	Well	45
county	44	2009	Not at all well	16
county	44	2009	Not very well	22
county	44	2009	Very well	2
county	44	2009	Well	8
county	1	2009	Don't know	3
county	1	2009	Not at all well	5
county	1	2009	Not very well	37
county	1	2009	Very well	10
county	1	2009	Well	17
county	21	2009	Not at all well	6
county	21	2009	Not very well	17
county	21	2009	Very well	20
county	21	2009	Well	21
county	47	2009	Don't know	10
county	47	2009	Missing	1
county	47	2009	Not at all well	27
county	47	2009	Not very well	94
county	47	2009	Very well	48
county	47	2009	Well	68
county	32	2009	Don't know	2
county	32	2009	Not at all well	5
county	32	2009	Not very well	29
county	32	2009	Very well	29
county	32	2009	Well	39
county	29	2009	Don't know	1
county	29	2009	Not at all well	4
county	29	2009	Not very well	25
county	29	2009	Very well	8
county	29	2009	Well	10
county	33	2009	Not very well	15
county	33	2009	Very well	11
county	33	2009	Well	22
county	46	2009	Not at all well	13
county	46	2009	Not very well	19
county	46	2009	Very well	2
county	46	2009	Well	6
county	18	2009	Not at all well	3
county	18	2009	Not very well	9
county	18	2009	Very well	11
county	18	2009	Well	17
county	19	2009	Not at all well	5
county	19	2009	Not very well	17
county	19	2009	Very well	11
county	19	2009	Well	15
county	25	2009	Don't know	1
county	25	2009	Not at all well	2
county	25	2009	Not very well	3
county	25	2009	Very well	2
county	41	2009	Don't know	2
county	41	2009	Not at all well	8
county	41	2009	Not very well	32
county	41	2009	Well	6
county	6	2009	Don't know	2
county	6	2009	Not at all well	1
county	6	2009	Not very well	7
county	6	2009	Very well	5
county	6	2009	Well	1
county	4	2009	Don't know	3
county	4	2009	Not at all well	1
county	4	2009	Not very well	3
county	4	2009	Well	1
county	13	2009	Not at all well	3
county	13	2009	Not very well	8
county	13	2009	Very well	5
county	13	2009	Well	8
county	26	2009	Don't know	1
county	26	2009	Not at all well	2
county	26	2009	Not very well	11
county	26	2009	Very well	16
county	26	2009	Well	18
county	23	2009	Don't know	5
county	23	2009	Not at all well	4
county	23	2009	Not very well	23
county	23	2009	Very well	5
county	23	2009	Well	11
county	27	2009	Don't know	2
county	27	2009	Not at all well	7
county	27	2009	Not very well	21
county	27	2009	Very well	6
county	27	2009	Well	20
county	38	2009	Not at all well	1
county	38	2009	Not very well	18
county	38	2009	Very well	10
county	38	2009	Well	3
county	8	2009	Don't know	14
county	8	2009	Not at all well	1
county	8	2009	Not very well	7
county	8	2009	Very well	1
county	8	2009	Well	9
county	24	2009	Don't know	2
county	24	2009	Not very well	9
county	24	2009	Very well	3
county	24	2009	Well	10
country	KE	2009	Missing	3
country	KE	2009	Well	721
country	KE	2009	Very well	475
country	KE	2009	Not at all well	259
country	KE	2009	Don't know	91
country	KE	2009	Not very well	848
\.


--
-- Name: elections_to_remove_leaders_from_office pk_elections_to_remove_leaders_from_office; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.elections_to_remove_leaders_from_office
    ADD CONSTRAINT pk_elections_to_remove_leaders_from_office PRIMARY KEY (geo_level, geo_code, geo_version, elections_to_remove_leaders_from_office);


--
-- PostgreSQL database dump complete
--


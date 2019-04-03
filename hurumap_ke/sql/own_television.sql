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

ALTER TABLE IF EXISTS ONLY public.own_television DROP CONSTRAINT IF EXISTS pk_own_television;
DROP TABLE IF EXISTS public.own_television;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: own_television; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.own_television (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    own_television character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: own_television; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.own_television (geo_level, geo_code, geo_version, own_television, total) FROM stdin;
county	30	2009	No, don't own	20
county	30	2009	Yes, do own	12
county	36	2009	No, don't own	40
county	36	2009	Yes, do own	8
county	39	2009	No, don't own	70
county	39	2009	Yes, do own	10
county	40	2009	No, don't own	29
county	40	2009	Yes, do own	11
county	28	2009	No, don't own	15
county	28	2009	Yes, do own	1
county	14	2009	No, don't own	18
county	14	2009	Yes, do own	22
county	7	2009	No, don't own	24
county	7	2009	Yes, do own	8
county	43	2009	No, don't own	48
county	43	2009	Yes, do own	8
county	11	2009	No, don't own	8
county	34	2009	No, don't own	23
county	34	2009	Yes, do own	25
county	37	2009	No, don't own	77
county	37	2009	Yes, do own	19
county	35	2009	No, don't own	24
county	35	2009	Yes, do own	16
county	22	2009	No, don't own	25
county	22	2009	Yes, do own	95
county	3	2009	Missing	1
county	3	2009	No, don't own	44
county	3	2009	Yes, do own	19
county	20	2009	No, don't own	15
county	20	2009	Yes, do own	25
county	45	2009	No, don't own	52
county	45	2009	Yes, do own	20
county	42	2009	No, don't own	39
county	42	2009	Yes, do own	17
county	15	2009	No, don't own	42
county	15	2009	Yes, do own	14
county	2	2009	No, don't own	27
county	2	2009	Yes, do own	13
county	31	2009	No, don't own	18
county	31	2009	Yes, do own	6
county	5	2009	No, don't own	7
county	5	2009	Yes, do own	1
county	16	2009	No, don't own	43
county	16	2009	Yes, do own	29
county	17	2009	No, don't own	42
county	17	2009	Yes, do own	14
county	9	2009	No, don't own	39
county	9	2009	Yes, do own	9
county	10	2009	No, don't own	15
county	10	2009	Yes, do own	1
county	12	2009	No, don't own	39
county	12	2009	Yes, do own	46
county	44	2009	No, don't own	39
county	44	2009	Yes, do own	9
county	1	2009	No, don't own	32
county	1	2009	Yes, do own	40
county	21	2009	No, don't own	37
county	21	2009	Yes, do own	27
county	47	2009	Missing	1
county	47	2009	No, don't own	75
county	47	2009	Yes, do own	172
county	32	2009	No, don't own	59
county	32	2009	Yes, do own	45
county	29	2009	No, don't own	28
county	29	2009	Yes, do own	20
county	33	2009	No, don't own	39
county	33	2009	Yes, do own	9
county	46	2009	No, don't own	28
county	46	2009	Yes, do own	12
county	18	2009	No, don't own	11
county	18	2009	Yes, do own	29
county	19	2009	No, don't own	15
county	19	2009	Yes, do own	33
county	25	2009	No, don't own	8
county	41	2009	No, don't own	38
county	41	2009	Yes, do own	10
county	6	2009	No, don't own	9
county	6	2009	Yes, do own	7
county	4	2009	No, don't own	8
county	13	2009	No, don't own	11
county	13	2009	Yes, do own	13
county	26	2009	No, don't own	35
county	26	2009	Yes, do own	13
county	23	2009	No, don't own	46
county	23	2009	Yes, do own	2
county	27	2009	No, don't own	26
county	27	2009	Yes, do own	30
county	38	2009	No, don't own	31
county	38	2009	Yes, do own	1
county	8	2009	No, don't own	31
county	8	2009	Yes, do own	1
county	24	2009	No, don't own	24
country	KE	2009	Yes, do own	922
country	KE	2009	No, don't own	1473
country	KE	2009	Missing	2
\.


--
-- Name: own_television pk_own_television; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_television
    ADD CONSTRAINT pk_own_television PRIMARY KEY (geo_level, geo_code, geo_version, own_television);


--
-- PostgreSQL database dump complete
--


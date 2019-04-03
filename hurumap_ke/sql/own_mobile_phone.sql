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

ALTER TABLE IF EXISTS ONLY public.own_mobile_phone DROP CONSTRAINT IF EXISTS pk_own_mobile_phone;
DROP TABLE IF EXISTS public.own_mobile_phone;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: own_mobile_phone; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.own_mobile_phone (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    own_mobile_phone character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: own_mobile_phone; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.own_mobile_phone (geo_level, geo_code, geo_version, own_mobile_phone, total) FROM stdin;
county	30	2009	No, don't own	2
county	30	2009	Yes, do own	30
county	36	2009	No, don't own	4
county	36	2009	Yes, do own	44
county	39	2009	No, don't own	9
county	39	2009	Yes, do own	71
county	40	2009	No, don't own	9
county	40	2009	Yes, do own	31
county	28	2009	No, don't own	4
county	28	2009	Yes, do own	12
county	14	2009	No, don't own	1
county	14	2009	Yes, do own	39
county	7	2009	No, don't own	12
county	7	2009	Yes, do own	20
county	43	2009	No, don't own	10
county	43	2009	Yes, do own	46
county	11	2009	No, don't own	3
county	11	2009	Yes, do own	5
county	34	2009	No, don't own	4
county	34	2009	Yes, do own	44
county	37	2009	No, don't own	14
county	37	2009	Yes, do own	82
county	35	2009	No, don't own	2
county	35	2009	Yes, do own	38
county	22	2009	No, don't own	5
county	22	2009	Yes, do own	115
county	3	2009	No, don't own	13
county	3	2009	Yes, do own	51
county	20	2009	No, don't own	4
county	20	2009	Yes, do own	36
county	45	2009	No, don't own	8
county	45	2009	Yes, do own	64
county	42	2009	No, don't own	11
county	42	2009	Yes, do own	45
county	15	2009	No, don't own	9
county	15	2009	Yes, do own	47
county	2	2009	No, don't own	7
county	2	2009	Yes, do own	33
county	31	2009	No, don't own	5
county	31	2009	Yes, do own	19
county	5	2009	No, don't own	1
county	5	2009	Yes, do own	7
county	16	2009	No, don't own	6
county	16	2009	Yes, do own	66
county	17	2009	No, don't own	10
county	17	2009	Yes, do own	46
county	9	2009	No, don't own	15
county	9	2009	Yes, do own	33
county	10	2009	No, don't own	7
county	10	2009	Yes, do own	9
county	12	2009	No, don't own	7
county	12	2009	Yes, do own	78
county	44	2009	No, don't own	14
county	44	2009	Yes, do own	34
county	1	2009	No, don't own	4
county	1	2009	Yes, do own	68
county	21	2009	No, don't own	5
county	21	2009	Yes, do own	59
county	47	2009	No, don't own	17
county	47	2009	Yes, do own	231
county	32	2009	No, don't own	15
county	32	2009	Yes, do own	89
county	29	2009	No, don't own	10
county	29	2009	Yes, do own	38
county	33	2009	No, don't own	8
county	33	2009	Yes, do own	40
county	46	2009	No, don't own	8
county	46	2009	Yes, do own	32
county	18	2009	No, don't own	2
county	18	2009	Yes, do own	38
county	19	2009	No, don't own	1
county	19	2009	Yes, do own	47
county	25	2009	No, don't own	5
county	25	2009	Yes, do own	3
county	41	2009	No, don't own	8
county	41	2009	Yes, do own	40
county	6	2009	No, don't own	7
county	6	2009	Yes, do own	9
county	4	2009	No, don't own	4
county	4	2009	Yes, do own	4
county	13	2009	Don't know	1
county	13	2009	No, don't own	1
county	13	2009	Yes, do own	22
county	26	2009	No, don't own	11
county	26	2009	Yes, do own	37
county	23	2009	No, don't own	22
county	23	2009	Yes, do own	26
county	27	2009	No, don't own	4
county	27	2009	Yes, do own	52
county	38	2009	No, don't own	6
county	38	2009	Yes, do own	26
county	8	2009	No, don't own	14
county	8	2009	Yes, do own	18
county	24	2009	No, don't own	6
county	24	2009	Yes, do own	18
country	KE	2009	Yes, do own	2042
country	KE	2009	No, don't own	354
country	KE	2009	Don't know	1
\.


--
-- Name: own_mobile_phone pk_own_mobile_phone; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_mobile_phone
    ADD CONSTRAINT pk_own_mobile_phone PRIMARY KEY (geo_level, geo_code, geo_version, own_mobile_phone);


--
-- PostgreSQL database dump complete
--


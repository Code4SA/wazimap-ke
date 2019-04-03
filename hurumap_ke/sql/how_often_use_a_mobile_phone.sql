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

ALTER TABLE IF EXISTS ONLY public.how_often_use_a_mobile_phone DROP CONSTRAINT IF EXISTS pk_how_often_use_a_mobile_phone;
DROP TABLE IF EXISTS public.how_often_use_a_mobile_phone;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: how_often_use_a_mobile_phone; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.how_often_use_a_mobile_phone (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    how_often_use_a_mobile_phone character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: how_often_use_a_mobile_phone; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.how_often_use_a_mobile_phone (geo_level, geo_code, geo_version, how_often_use_a_mobile_phone, total) FROM stdin;
county	30	2009	A few times a week	2
county	30	2009	Everyday	29
county	30	2009	Never	1
county	36	2009	A few times a week	5
county	36	2009	Everyday	42
county	36	2009	Never	1
county	39	2009	A few times a month	2
county	39	2009	A few times a week	3
county	39	2009	Everyday	69
county	39	2009	Less than once a month	1
county	39	2009	Never	5
county	40	2009	A few times a week	6
county	40	2009	Everyday	27
county	40	2009	Never	7
county	28	2009	A few times a week	1
county	28	2009	Everyday	10
county	28	2009	Never	5
county	14	2009	A few times a week	4
county	14	2009	Everyday	36
county	7	2009	A few times a week	4
county	7	2009	Everyday	21
county	7	2009	Less than once a month	5
county	7	2009	Never	2
county	43	2009	A few times a month	2
county	43	2009	A few times a week	10
county	43	2009	Everyday	39
county	43	2009	Never	5
county	11	2009	A few times a month	2
county	11	2009	A few times a week	2
county	11	2009	Everyday	4
county	34	2009	A few times a week	10
county	34	2009	Everyday	33
county	34	2009	Never	5
county	37	2009	A few times a week	4
county	37	2009	Everyday	82
county	37	2009	Never	10
county	35	2009	A few times a month	1
county	35	2009	A few times a week	2
county	35	2009	Everyday	37
county	22	2009	A few times a month	2
county	22	2009	A few times a week	3
county	22	2009	Everyday	113
county	22	2009	Less than once a month	1
county	22	2009	Never	1
county	3	2009	A few times a month	1
county	3	2009	A few times a week	11
county	3	2009	Everyday	46
county	3	2009	Less than once a month	1
county	3	2009	Never	5
county	20	2009	A few times a week	3
county	20	2009	Everyday	36
county	20	2009	Never	1
county	45	2009	A few times a month	2
county	45	2009	A few times a week	17
county	45	2009	Everyday	49
county	45	2009	Never	4
county	42	2009	A few times a month	6
county	42	2009	A few times a week	5
county	42	2009	Everyday	44
county	42	2009	Less than once a month	1
county	15	2009	A few times a month	3
county	15	2009	A few times a week	4
county	15	2009	Everyday	45
county	15	2009	Never	4
county	2	2009	A few times a week	5
county	2	2009	Everyday	34
county	2	2009	Never	1
county	31	2009	A few times a month	1
county	31	2009	A few times a week	2
county	31	2009	Everyday	17
county	31	2009	Less than once a month	1
county	31	2009	Never	3
county	5	2009	Everyday	8
county	16	2009	A few times a month	2
county	16	2009	A few times a week	2
county	16	2009	Everyday	67
county	16	2009	Never	1
county	17	2009	A few times a month	1
county	17	2009	A few times a week	2
county	17	2009	Everyday	51
county	17	2009	Never	2
county	9	2009	A few times a month	1
county	9	2009	A few times a week	5
county	9	2009	Everyday	34
county	9	2009	Less than once a month	2
county	9	2009	Never	6
county	10	2009	A few times a month	4
county	10	2009	A few times a week	3
county	10	2009	Everyday	6
county	10	2009	Never	3
county	12	2009	A few times a month	3
county	12	2009	A few times a week	7
county	12	2009	Everyday	73
county	12	2009	Less than once a month	1
county	12	2009	Never	1
county	44	2009	A few times a month	2
county	44	2009	A few times a week	6
county	44	2009	Everyday	31
county	44	2009	Never	9
county	1	2009	A few times a month	1
county	1	2009	Everyday	69
county	1	2009	Never	2
county	21	2009	A few times a week	2
county	21	2009	Everyday	58
county	21	2009	Never	4
county	47	2009	A few times a week	5
county	47	2009	Everyday	233
county	47	2009	Less than once a month	1
county	47	2009	Never	9
county	32	2009	A few times a month	2
county	32	2009	A few times a week	5
county	32	2009	Everyday	90
county	32	2009	Never	7
county	29	2009	A few times a month	1
county	29	2009	A few times a week	1
county	29	2009	Everyday	39
county	29	2009	Never	7
county	33	2009	A few times a week	6
county	33	2009	Everyday	39
county	33	2009	Never	3
county	46	2009	A few times a month	4
county	46	2009	A few times a week	8
county	46	2009	Everyday	25
county	46	2009	Never	3
county	18	2009	Everyday	38
county	18	2009	Less than once a month	1
county	18	2009	Never	1
county	19	2009	Everyday	47
county	19	2009	Never	1
county	25	2009	A few times a month	2
county	25	2009	A few times a week	1
county	25	2009	Never	5
county	41	2009	A few times a month	1
county	41	2009	A few times a week	7
county	41	2009	Everyday	36
county	41	2009	Never	4
county	6	2009	Everyday	10
county	6	2009	Less than once a month	1
county	6	2009	Never	5
county	4	2009	A few times a week	1
county	4	2009	Everyday	3
county	4	2009	Never	4
county	13	2009	A few times a month	2
county	13	2009	A few times a week	1
county	13	2009	Everyday	20
county	13	2009	Never	1
county	26	2009	A few times a month	2
county	26	2009	A few times a week	7
county	26	2009	Everyday	34
county	26	2009	Never	5
county	23	2009	A few times a month	1
county	23	2009	A few times a week	5
county	23	2009	Everyday	21
county	23	2009	Less than once a month	1
county	23	2009	Never	20
county	27	2009	Everyday	53
county	27	2009	Never	3
county	38	2009	A few times a month	2
county	38	2009	A few times a week	2
county	38	2009	Everyday	24
county	38	2009	Never	4
county	8	2009	A few times a month	3
county	8	2009	A few times a week	4
county	8	2009	Everyday	17
county	8	2009	Less than once a month	1
county	8	2009	Never	7
county	24	2009	A few times a week	3
county	24	2009	Everyday	18
county	24	2009	Never	3
country	KE	2009	A few times a week	186
country	KE	2009	Never	180
country	KE	2009	A few times a month	56
country	KE	2009	Less than once a month	18
country	KE	2009	Everyday	1957
\.


--
-- Name: how_often_use_a_mobile_phone pk_how_often_use_a_mobile_phone; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.how_often_use_a_mobile_phone
    ADD CONSTRAINT pk_how_often_use_a_mobile_phone PRIMARY KEY (geo_level, geo_code, geo_version, how_often_use_a_mobile_phone);


--
-- PostgreSQL database dump complete
--


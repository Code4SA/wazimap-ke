--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.employment_status DROP CONSTRAINT IF EXISTS pk_employment_status;
DROP TABLE IF EXISTS public.employment_status;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: employment_status; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employment_status (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    employment_status character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: employment_status; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.employment_status (geo_level, geo_code, geo_version, employment_status, total) FROM stdin;
county	30	2009	No (looking)	8
county	30	2009	No (not looking)	9
county	30	2009	Yes, full time	12
county	30	2009	Yes, part time	3
county	36	2009	No (looking)	15
county	36	2009	No (not looking)	5
county	36	2009	Yes, full time	23
county	36	2009	Yes, part time	5
county	39	2009	No (looking)	25
county	39	2009	No (not looking)	20
county	39	2009	Yes, full time	26
county	39	2009	Yes, part time	9
county	40	2009	No (looking)	4
county	40	2009	No (not looking)	17
county	40	2009	Yes, full time	15
county	40	2009	Yes, part time	4
county	28	2009	No (looking)	8
county	28	2009	No (not looking)	2
county	28	2009	Yes, full time	1
county	28	2009	Yes, part time	5
county	14	2009	No (looking)	2
county	14	2009	No (not looking)	6
county	14	2009	Yes, full time	25
county	14	2009	Yes, part time	7
county	7	2009	No (looking)	3
county	7	2009	No (not looking)	8
county	7	2009	Yes, full time	17
county	7	2009	Yes, part time	4
county	43	2009	No (looking)	9
county	43	2009	No (not looking)	9
county	43	2009	Yes, full time	14
county	43	2009	Yes, part time	24
county	11	2009	No (looking)	1
county	11	2009	No (not looking)	4
county	11	2009	Yes, full time	2
county	11	2009	Yes, part time	1
county	34	2009	No (looking)	11
county	34	2009	No (not looking)	9
county	34	2009	Yes, full time	16
county	34	2009	Yes, part time	12
county	37	2009	No (looking)	22
county	37	2009	No (not looking)	25
county	37	2009	Yes, full time	38
county	37	2009	Yes, part time	11
county	35	2009	No (looking)	8
county	35	2009	No (not looking)	8
county	35	2009	Yes, full time	21
county	35	2009	Yes, part time	3
county	22	2009	No (looking)	22
county	22	2009	No (not looking)	13
county	22	2009	Yes, full time	69
county	22	2009	Yes, part time	16
county	3	2009	No (looking)	16
county	3	2009	No (not looking)	10
county	3	2009	Yes, full time	18
county	3	2009	Yes, part time	20
county	20	2009	No (looking)	11
county	20	2009	No (not looking)	1
county	20	2009	Yes, full time	22
county	20	2009	Yes, part time	6
county	45	2009	No (looking)	9
county	45	2009	No (not looking)	14
county	45	2009	Yes, full time	19
county	45	2009	Yes, part time	30
county	42	2009	No (looking)	2
county	42	2009	No (not looking)	9
county	42	2009	Yes, full time	23
county	42	2009	Yes, part time	22
county	15	2009	No (looking)	11
county	15	2009	No (not looking)	13
county	15	2009	Yes, full time	16
county	15	2009	Yes, part time	16
county	2	2009	No (looking)	14
county	2	2009	No (not looking)	3
county	2	2009	Yes, full time	16
county	2	2009	Yes, part time	7
county	31	2009	No (looking)	2
county	31	2009	No (not looking)	7
county	31	2009	Yes, full time	13
county	31	2009	Yes, part time	2
county	5	2009	No (looking)	1
county	5	2009	No (not looking)	5
county	5	2009	Yes, part time	2
county	16	2009	No (looking)	18
county	16	2009	No (not looking)	12
county	16	2009	Yes, full time	32
county	16	2009	Yes, part time	10
county	17	2009	No (looking)	12
county	17	2009	No (not looking)	9
county	17	2009	Yes, full time	28
county	17	2009	Yes, part time	7
county	9	2009	No (looking)	9
county	9	2009	No (not looking)	16
county	9	2009	Yes, full time	15
county	9	2009	Yes, part time	8
county	10	2009	No (looking)	2
county	10	2009	No (not looking)	6
county	10	2009	Yes, full time	6
county	10	2009	Yes, part time	2
county	12	2009	No (looking)	18
county	12	2009	No (not looking)	9
county	12	2009	Yes, full time	40
county	12	2009	Yes, part time	18
county	44	2009	No (looking)	4
county	44	2009	No (not looking)	7
county	44	2009	Yes, full time	17
county	44	2009	Yes, part time	20
county	1	2009	No (looking)	22
county	1	2009	No (not looking)	5
county	1	2009	Yes, full time	40
county	1	2009	Yes, part time	5
county	21	2009	No (looking)	10
county	21	2009	No (not looking)	5
county	21	2009	Yes, full time	37
county	21	2009	Yes, part time	12
county	47	2009	No (looking)	63
county	47	2009	No (not looking)	30
county	47	2009	Yes, full time	118
county	47	2009	Yes, part time	37
county	32	2009	No (looking)	24
county	32	2009	No (not looking)	17
county	32	2009	Yes, full time	45
county	32	2009	Yes, part time	18
county	29	2009	No (looking)	9
county	29	2009	No (not looking)	8
county	29	2009	Yes, full time	15
county	29	2009	Yes, part time	16
county	33	2009	No (looking)	7
county	33	2009	No (not looking)	14
county	33	2009	Yes, full time	16
county	33	2009	Yes, part time	11
county	46	2009	No (looking)	2
county	46	2009	No (not looking)	4
county	46	2009	Yes, full time	18
county	46	2009	Yes, part time	16
county	18	2009	No (looking)	7
county	18	2009	No (not looking)	3
county	18	2009	Yes, full time	21
county	18	2009	Yes, part time	9
county	19	2009	No (looking)	13
county	19	2009	No (not looking)	2
county	19	2009	Yes, full time	30
county	19	2009	Yes, part time	3
county	25	2009	No (looking)	1
county	25	2009	No (not looking)	5
county	25	2009	Yes, full time	1
county	25	2009	Yes, part time	1
county	41	2009	No (looking)	13
county	41	2009	No (not looking)	9
county	41	2009	Yes, full time	11
county	41	2009	Yes, part time	15
county	6	2009	No (looking)	5
county	6	2009	No (not looking)	2
county	6	2009	Yes, full time	8
county	6	2009	Yes, part time	1
county	4	2009	No (looking)	3
county	4	2009	No (not looking)	4
county	4	2009	Yes, full time	1
county	13	2009	No (looking)	3
county	13	2009	No (not looking)	5
county	13	2009	Yes, full time	10
county	13	2009	Yes, part time	6
county	26	2009	Don't know	1
county	26	2009	No (looking)	13
county	26	2009	No (not looking)	16
county	26	2009	Yes, full time	12
county	26	2009	Yes, part time	6
county	23	2009	No (looking)	10
county	23	2009	No (not looking)	10
county	23	2009	Yes, full time	7
county	23	2009	Yes, part time	21
county	27	2009	Missing	2
county	27	2009	No (looking)	13
county	27	2009	No (not looking)	5
county	27	2009	Yes, full time	22
county	27	2009	Yes, part time	14
county	38	2009	No (looking)	8
county	38	2009	No (not looking)	9
county	38	2009	Yes, full time	8
county	38	2009	Yes, part time	7
county	8	2009	No (looking)	7
county	8	2009	No (not looking)	13
county	8	2009	Yes, full time	9
county	8	2009	Yes, part time	3
county	24	2009	No (looking)	6
county	24	2009	No (not looking)	8
county	24	2009	Yes, full time	5
county	24	2009	Yes, part time	5
country	KE	2009	No (looking)	506
country	KE	2009	Missing	2
country	KE	2009	No (not looking)	430
country	KE	2009	Yes, full time	978
country	KE	2009	Yes, part time	480
country	KE	2009	Don't know	1
\.


--
-- Name: employment_status pk_employment_status; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employment_status
    ADD CONSTRAINT pk_employment_status PRIMARY KEY (geo_level, geo_code, geo_version, employment_status);


--
-- PostgreSQL database dump complete
--


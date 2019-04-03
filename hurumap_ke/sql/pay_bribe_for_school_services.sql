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

ALTER TABLE IF EXISTS ONLY public.pay_bribe_for_school_services DROP CONSTRAINT IF EXISTS pk_pay_bribe_for_school_services;
DROP TABLE IF EXISTS public.pay_bribe_for_school_services;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pay_bribe_for_school_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pay_bribe_for_school_services (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    pay_bribe_for_school_services character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: pay_bribe_for_school_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pay_bribe_for_school_services (geo_level, geo_code, geo_version, pay_bribe_for_school_services, total) FROM stdin;
county	30	2009	Missing	1
county	30	2009	Never	22
county	30	2009	No contact	9
county	36	2009	A Few times	2
county	36	2009	Missing	1
county	36	2009	Never	30
county	36	2009	No contact	8
county	36	2009	Once or Twice	7
county	39	2009	Missing	3
county	39	2009	Never	45
county	39	2009	No contact	29
county	39	2009	Once or Twice	3
county	40	2009	A Few times	1
county	40	2009	Never	21
county	40	2009	No contact	17
county	40	2009	Once or Twice	1
county	28	2009	Never	13
county	28	2009	No contact	2
county	28	2009	Once or Twice	1
county	14	2009	Never	23
county	14	2009	No contact	16
county	14	2009	Once or Twice	1
county	7	2009	Never	20
county	7	2009	No contact	12
county	43	2009	Missing	1
county	43	2009	Never	34
county	43	2009	No contact	17
county	43	2009	Once or Twice	4
county	11	2009	Never	5
county	11	2009	No contact	3
county	34	2009	Missing	1
county	34	2009	Never	25
county	34	2009	No contact	17
county	34	2009	Often	1
county	34	2009	Once or Twice	4
county	37	2009	Missing	4
county	37	2009	Never	52
county	37	2009	No contact	38
county	37	2009	Once or Twice	2
county	35	2009	A Few times	2
county	35	2009	Never	29
county	35	2009	No contact	9
county	22	2009	A Few times	1
county	22	2009	Missing	1
county	22	2009	Never	40
county	22	2009	No contact	73
county	22	2009	Once or Twice	5
county	3	2009	A Few times	1
county	3	2009	Never	30
county	3	2009	No contact	29
county	3	2009	Often	1
county	3	2009	Once or Twice	3
county	20	2009	A Few times	1
county	20	2009	Never	14
county	20	2009	No contact	24
county	20	2009	Often	1
county	45	2009	A Few times	2
county	45	2009	Never	47
county	45	2009	No contact	18
county	45	2009	Once or Twice	5
county	42	2009	Missing	1
county	42	2009	Never	32
county	42	2009	No contact	22
county	42	2009	Once or Twice	1
county	15	2009	Never	33
county	15	2009	No contact	22
county	15	2009	Once or Twice	1
county	2	2009	Missing	1
county	2	2009	Never	22
county	2	2009	No contact	13
county	2	2009	Often	1
county	2	2009	Once or Twice	3
county	31	2009	Never	14
county	31	2009	No contact	8
county	31	2009	Once or Twice	2
county	5	2009	Never	4
county	5	2009	No contact	4
county	16	2009	Missing	2
county	16	2009	Never	30
county	16	2009	No contact	39
county	16	2009	Once or Twice	1
county	17	2009	Missing	1
county	17	2009	Never	29
county	17	2009	No contact	24
county	17	2009	Often	1
county	17	2009	Once or Twice	1
county	9	2009	Missing	3
county	9	2009	Never	33
county	9	2009	No contact	12
county	10	2009	Never	13
county	10	2009	No contact	3
county	12	2009	Never	46
county	12	2009	No contact	36
county	12	2009	Often	1
county	12	2009	Once or Twice	2
county	44	2009	Missing	1
county	44	2009	Never	33
county	44	2009	No contact	13
county	44	2009	Often	1
county	1	2009	Never	23
county	1	2009	No contact	44
county	1	2009	Often	3
county	1	2009	Once or Twice	2
county	21	2009	Never	29
county	21	2009	No contact	35
county	47	2009	A Few times	6
county	47	2009	Missing	6
county	47	2009	Never	87
county	47	2009	No contact	133
county	47	2009	Often	3
county	47	2009	Once or Twice	13
county	32	2009	A Few times	3
county	32	2009	Missing	1
county	32	2009	Never	58
county	32	2009	No contact	37
county	32	2009	Often	1
county	32	2009	Once or Twice	4
county	29	2009	Never	39
county	29	2009	No contact	8
county	29	2009	Once or Twice	1
county	33	2009	A Few times	1
county	33	2009	Missing	4
county	33	2009	Never	25
county	33	2009	No contact	16
county	33	2009	Once or Twice	2
county	46	2009	A Few times	1
county	46	2009	Never	21
county	46	2009	No contact	15
county	46	2009	Once or Twice	3
county	18	2009	Missing	1
county	18	2009	Never	12
county	18	2009	No contact	26
county	18	2009	Once or Twice	1
county	19	2009	Never	31
county	19	2009	No contact	15
county	19	2009	Once or Twice	2
county	25	2009	Never	3
county	25	2009	No contact	3
county	25	2009	Once or Twice	2
county	41	2009	A Few times	1
county	41	2009	Never	28
county	41	2009	No contact	18
county	41	2009	Once or Twice	1
county	6	2009	Missing	1
county	6	2009	Never	5
county	6	2009	No contact	10
county	4	2009	Never	3
county	4	2009	No contact	4
county	4	2009	Once or Twice	1
county	13	2009	A Few times	2
county	13	2009	Never	11
county	13	2009	No contact	9
county	13	2009	Often	2
county	26	2009	A Few times	1
county	26	2009	Never	16
county	26	2009	No contact	31
county	23	2009	Never	42
county	23	2009	No contact	4
county	23	2009	Often	1
county	23	2009	Once or Twice	1
county	27	2009	Never	40
county	27	2009	No contact	15
county	27	2009	Once or Twice	1
county	38	2009	A Few times	1
county	38	2009	Never	12
county	38	2009	No contact	19
county	8	2009	Never	23
county	8	2009	No contact	9
county	24	2009	Never	21
county	24	2009	No contact	3
country	KE	2009	Often	17
country	KE	2009	Missing	34
country	KE	2009	Never	1268
country	KE	2009	A Few times	26
country	KE	2009	Once or Twice	81
country	KE	2009	No contact	971
\.


--
-- Name: pay_bribe_for_school_services pk_pay_bribe_for_school_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_school_services
    ADD CONSTRAINT pk_pay_bribe_for_school_services PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_school_services);


--
-- PostgreSQL database dump complete
--


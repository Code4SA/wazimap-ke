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

ALTER TABLE IF EXISTS ONLY public.pay_bribe_for_household_services DROP CONSTRAINT IF EXISTS pk_pay_bribe_for_household_services;
DROP TABLE IF EXISTS public.pay_bribe_for_household_services;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pay_bribe_for_household_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pay_bribe_for_household_services (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    pay_bribe_for_household_services character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: pay_bribe_for_household_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pay_bribe_for_household_services (geo_level, geo_code, geo_version, pay_bribe_for_household_services, total) FROM stdin;
county	30	2009	A Few times	1
county	30	2009	Never	11
county	30	2009	No contact	16
county	30	2009	Once or Twice	4
county	36	2009	A Few times	1
county	36	2009	Missing	1
county	36	2009	Never	6
county	36	2009	No contact	38
county	36	2009	Once or Twice	2
county	39	2009	Never	3
county	39	2009	No contact	77
county	40	2009	Never	1
county	40	2009	No contact	39
county	28	2009	Never	3
county	28	2009	No contact	10
county	28	2009	Once or Twice	3
county	14	2009	A Few times	1
county	14	2009	Never	6
county	14	2009	No contact	32
county	14	2009	Once or Twice	1
county	7	2009	Missing	1
county	7	2009	Never	8
county	7	2009	No contact	23
county	43	2009	Never	4
county	43	2009	No contact	52
county	11	2009	Never	1
county	11	2009	No contact	7
county	34	2009	A Few times	2
county	34	2009	Missing	2
county	34	2009	Never	13
county	34	2009	No contact	23
county	34	2009	Often	1
county	34	2009	Once or Twice	7
county	37	2009	Never	3
county	37	2009	No contact	93
county	35	2009	Never	17
county	35	2009	No contact	18
county	35	2009	Often	1
county	35	2009	Once or Twice	4
county	22	2009	Never	21
county	22	2009	No contact	96
county	22	2009	Once or Twice	3
county	3	2009	Never	4
county	3	2009	No contact	60
county	20	2009	A Few times	2
county	20	2009	Never	6
county	20	2009	No contact	31
county	20	2009	Once or Twice	1
county	45	2009	Missing	1
county	45	2009	Never	4
county	45	2009	No contact	64
county	45	2009	Once or Twice	3
county	42	2009	Never	2
county	42	2009	No contact	51
county	42	2009	Once or Twice	3
county	15	2009	Never	10
county	15	2009	No contact	46
county	2	2009	Never	4
county	2	2009	No contact	36
county	31	2009	Never	3
county	31	2009	No contact	21
county	5	2009	No contact	8
county	16	2009	Missing	1
county	16	2009	Never	19
county	16	2009	No contact	51
county	16	2009	Once or Twice	1
county	17	2009	Never	10
county	17	2009	No contact	44
county	17	2009	Often	1
county	17	2009	Once or Twice	1
county	9	2009	Never	11
county	9	2009	No contact	37
county	10	2009	Never	3
county	10	2009	No contact	13
county	12	2009	A Few times	2
county	12	2009	Missing	1
county	12	2009	Never	11
county	12	2009	No contact	67
county	12	2009	Once or Twice	4
county	44	2009	Never	4
county	44	2009	No contact	43
county	44	2009	Once or Twice	1
county	1	2009	Never	2
county	1	2009	No contact	69
county	1	2009	Once or Twice	1
county	21	2009	Never	10
county	21	2009	No contact	52
county	21	2009	Once or Twice	2
county	47	2009	A Few times	2
county	47	2009	Missing	1
county	47	2009	Never	76
county	47	2009	No contact	164
county	47	2009	Often	1
county	47	2009	Once or Twice	4
county	32	2009	A Few times	2
county	32	2009	Never	19
county	32	2009	No contact	79
county	32	2009	Once or Twice	4
county	29	2009	Never	13
county	29	2009	No contact	31
county	29	2009	Once or Twice	4
county	33	2009	A Few times	1
county	33	2009	Never	4
county	33	2009	No contact	42
county	33	2009	Once or Twice	1
county	46	2009	No contact	40
county	18	2009	A Few times	1
county	18	2009	Never	3
county	18	2009	No contact	32
county	18	2009	Once or Twice	4
county	19	2009	Never	11
county	19	2009	No contact	34
county	19	2009	Often	1
county	19	2009	Once or Twice	2
county	25	2009	Never	2
county	25	2009	No contact	6
county	41	2009	Never	3
county	41	2009	No contact	45
county	6	2009	Never	1
county	6	2009	No contact	15
county	4	2009	Never	1
county	4	2009	No contact	7
county	13	2009	A Few times	2
county	13	2009	Don't know	1
county	13	2009	Missing	1
county	13	2009	Never	2
county	13	2009	No contact	15
county	13	2009	Once or Twice	3
county	26	2009	Never	1
county	26	2009	No contact	47
county	23	2009	Never	13
county	23	2009	No contact	33
county	23	2009	Once or Twice	2
county	27	2009	A Few times	2
county	27	2009	Never	22
county	27	2009	No contact	28
county	27	2009	Once or Twice	4
county	38	2009	No contact	32
county	8	2009	Never	6
county	8	2009	No contact	26
county	24	2009	Don't know	1
county	24	2009	Never	2
county	24	2009	No contact	18
county	24	2009	Once or Twice	3
country	KE	2009	Often	5
country	KE	2009	Missing	9
country	KE	2009	Never	379
country	KE	2009	A Few times	19
country	KE	2009	Once or Twice	72
country	KE	2009	No contact	1911
country	KE	2009	Don't know	2
\.


--
-- Name: pay_bribe_for_household_services pk_pay_bribe_for_household_services; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_household_services
    ADD CONSTRAINT pk_pay_bribe_for_household_services PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_household_services);


--
-- PostgreSQL database dump complete
--


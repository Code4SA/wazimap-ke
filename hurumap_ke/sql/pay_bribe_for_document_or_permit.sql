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

ALTER TABLE IF EXISTS ONLY public.pay_bribe_for_document_or_permit DROP CONSTRAINT IF EXISTS pk_pay_bribe_for_document_or_permit;
DROP TABLE IF EXISTS public.pay_bribe_for_document_or_permit;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pay_bribe_for_document_or_permit; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pay_bribe_for_document_or_permit (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    pay_bribe_for_document_or_permit character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: pay_bribe_for_document_or_permit; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pay_bribe_for_document_or_permit (geo_level, geo_code, geo_version, pay_bribe_for_document_or_permit, total) FROM stdin;
county	30	2009	Never	18
county	30	2009	No contact	8
county	30	2009	Once or Twice	6
county	36	2009	A Few times	3
county	36	2009	Never	20
county	36	2009	No contact	12
county	36	2009	Once or Twice	13
county	39	2009	A Few times	2
county	39	2009	Never	21
county	39	2009	No contact	53
county	39	2009	Once or Twice	4
county	40	2009	Never	13
county	40	2009	No contact	24
county	40	2009	Once or Twice	3
county	28	2009	Never	10
county	28	2009	No contact	4
county	28	2009	Once or Twice	2
county	14	2009	A Few times	2
county	14	2009	Never	12
county	14	2009	No contact	21
county	14	2009	Often	1
county	14	2009	Once or Twice	4
county	7	2009	A Few times	1
county	7	2009	Never	4
county	7	2009	No contact	15
county	7	2009	Often	1
county	7	2009	Once or Twice	11
county	43	2009	Never	14
county	43	2009	No contact	29
county	43	2009	Once or Twice	13
county	11	2009	Never	3
county	11	2009	No contact	4
county	11	2009	Often	1
county	34	2009	A Few times	1
county	34	2009	Missing	4
county	34	2009	Never	16
county	34	2009	No contact	12
county	34	2009	Often	1
county	34	2009	Once or Twice	14
county	37	2009	A Few times	3
county	37	2009	Missing	1
county	37	2009	Never	16
county	37	2009	No contact	66
county	37	2009	Often	2
county	37	2009	Once or Twice	8
county	35	2009	A Few times	6
county	35	2009	Never	17
county	35	2009	No contact	6
county	35	2009	Once or Twice	11
county	22	2009	A Few times	2
county	22	2009	Never	40
county	22	2009	No contact	68
county	22	2009	Once or Twice	10
county	3	2009	A Few times	3
county	3	2009	Never	24
county	3	2009	No contact	28
county	3	2009	Once or Twice	9
county	20	2009	A Few times	2
county	20	2009	Never	14
county	20	2009	No contact	19
county	20	2009	Often	1
county	20	2009	Once or Twice	4
county	45	2009	A Few times	4
county	45	2009	Never	19
county	45	2009	No contact	31
county	45	2009	Once or Twice	18
county	42	2009	A Few times	1
county	42	2009	Never	16
county	42	2009	No contact	25
county	42	2009	Once or Twice	14
county	15	2009	Never	16
county	15	2009	No contact	38
county	15	2009	Often	1
county	15	2009	Once or Twice	1
county	2	2009	Never	11
county	2	2009	No contact	21
county	2	2009	Once or Twice	8
county	31	2009	Never	8
county	31	2009	No contact	11
county	31	2009	Once or Twice	5
county	5	2009	Never	3
county	5	2009	No contact	4
county	5	2009	Once or Twice	1
county	16	2009	A Few times	2
county	16	2009	Missing	1
county	16	2009	Never	19
county	16	2009	No contact	46
county	16	2009	Once or Twice	4
county	17	2009	A Few times	1
county	17	2009	Never	13
county	17	2009	No contact	29
county	17	2009	Often	1
county	17	2009	Once or Twice	12
county	9	2009	A Few times	7
county	9	2009	Never	3
county	9	2009	No contact	19
county	9	2009	Once or Twice	19
county	10	2009	Never	7
county	10	2009	No contact	8
county	10	2009	Once or Twice	1
county	12	2009	A Few times	3
county	12	2009	Never	19
county	12	2009	No contact	55
county	12	2009	Once or Twice	8
county	44	2009	A Few times	1
county	44	2009	Missing	1
county	44	2009	Never	13
county	44	2009	No contact	25
county	44	2009	Once or Twice	8
county	1	2009	Missing	1
county	1	2009	Never	27
county	1	2009	No contact	34
county	1	2009	Once or Twice	10
county	21	2009	Never	10
county	21	2009	No contact	49
county	21	2009	Once or Twice	5
county	47	2009	A Few times	9
county	47	2009	Missing	2
county	47	2009	Never	70
county	47	2009	No contact	111
county	47	2009	Often	5
county	47	2009	Once or Twice	51
county	32	2009	A Few times	2
county	32	2009	Missing	1
county	32	2009	Never	37
county	32	2009	No contact	38
county	32	2009	Once or Twice	26
county	29	2009	A Few times	1
county	29	2009	Never	20
county	29	2009	No contact	8
county	29	2009	Once or Twice	19
county	33	2009	A Few times	5
county	33	2009	Missing	1
county	33	2009	Never	11
county	33	2009	No contact	17
county	33	2009	Often	1
county	33	2009	Once or Twice	13
county	46	2009	A Few times	2
county	46	2009	Missing	1
county	46	2009	Never	10
county	46	2009	No contact	21
county	46	2009	Once or Twice	6
county	18	2009	Never	9
county	18	2009	No contact	25
county	18	2009	Often	1
county	18	2009	Once or Twice	5
county	19	2009	Never	19
county	19	2009	No contact	24
county	19	2009	Often	1
county	19	2009	Once or Twice	4
county	25	2009	Never	4
county	25	2009	No contact	3
county	25	2009	Once or Twice	1
county	41	2009	Never	19
county	41	2009	No contact	20
county	41	2009	Once or Twice	9
county	6	2009	Missing	1
county	6	2009	Never	6
county	6	2009	No contact	9
county	4	2009	A Few times	1
county	4	2009	Never	3
county	4	2009	No contact	4
county	13	2009	A Few times	1
county	13	2009	Missing	1
county	13	2009	Never	6
county	13	2009	No contact	12
county	13	2009	Once or Twice	4
county	26	2009	A Few times	1
county	26	2009	Never	12
county	26	2009	No contact	32
county	26	2009	Once or Twice	3
county	23	2009	Never	32
county	23	2009	No contact	4
county	23	2009	Once or Twice	12
county	27	2009	Never	33
county	27	2009	No contact	12
county	27	2009	Once or Twice	11
county	38	2009	A Few times	1
county	38	2009	Never	14
county	38	2009	No contact	15
county	38	2009	Once or Twice	2
county	8	2009	A Few times	1
county	8	2009	Never	8
county	8	2009	No contact	14
county	8	2009	Once or Twice	9
county	24	2009	Never	15
county	24	2009	No contact	4
county	24	2009	Once or Twice	5
country	KE	2009	Often	17
country	KE	2009	Missing	15
country	KE	2009	Never	754
country	KE	2009	A Few times	68
country	KE	2009	Once or Twice	406
country	KE	2009	No contact	1137
\.


--
-- Name: pay_bribe_for_document_or_permit pk_pay_bribe_for_document_or_permit; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_document_or_permit
    ADD CONSTRAINT pk_pay_bribe_for_document_or_permit PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_document_or_permit);


--
-- PostgreSQL database dump complete
--


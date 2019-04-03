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

ALTER TABLE IF EXISTS ONLY public.employer_of_respondent DROP CONSTRAINT IF EXISTS pk_employer_of_respondent;
DROP TABLE IF EXISTS public.employer_of_respondent;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: employer_of_respondent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employer_of_respondent (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    employer_of_respondent character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: employer_of_respondent; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.employer_of_respondent (geo_level, geo_code, geo_version, employer_of_respondent, total) FROM stdin;
county	30	2009	Government	5
county	30	2009	Missing	3
county	30	2009	Non Governmental Organizations/ civil society sector	1
county	30	2009	Not applicable	10
county	30	2009	Private sector	3
county	30	2009	Works for  self	10
county	36	2009	Government	1
county	36	2009	Missing	6
county	36	2009	Non Governmental Organizations/ civil society sector	1
county	36	2009	Not applicable	6
county	36	2009	Private sector	10
county	36	2009	Works for  self	24
county	39	2009	Government	2
county	39	2009	Missing	2
county	39	2009	Non Governmental Organizations/ civil society sector	1
county	39	2009	Not applicable	21
county	39	2009	Private sector	13
county	39	2009	Works for  self	41
county	40	2009	Government	5
county	40	2009	Non Governmental Organizations/ civil society sector	2
county	40	2009	Not applicable	9
county	40	2009	Private sector	7
county	40	2009	Works for  self	17
county	28	2009	Government	1
county	28	2009	Missing	3
county	28	2009	Not applicable	3
county	28	2009	Private sector	1
county	28	2009	Works for  self	8
county	14	2009	Government	4
county	14	2009	Missing	3
county	14	2009	Non Governmental Organizations/ civil society sector	1
county	14	2009	Not applicable	2
county	14	2009	Private sector	9
county	14	2009	Works for  self	21
county	7	2009	Government	2
county	7	2009	Missing	1
county	7	2009	Not applicable	5
county	7	2009	Private sector	1
county	7	2009	Works for  self	23
county	43	2009	Government	4
county	43	2009	Missing	4
county	43	2009	Not applicable	9
county	43	2009	Private sector	3
county	43	2009	Works for  self	36
county	11	2009	Missing	1
county	11	2009	Not applicable	2
county	11	2009	Works for  self	5
county	34	2009	Government	3
county	34	2009	Missing	1
county	34	2009	Non Governmental Organizations/ civil society sector	4
county	34	2009	Not applicable	10
county	34	2009	Private sector	9
county	34	2009	Works for  self	21
county	37	2009	Government	7
county	37	2009	Missing	3
county	37	2009	Non Governmental Organizations/ civil society sector	1
county	37	2009	Not applicable	18
county	37	2009	Private sector	16
county	37	2009	Works for  self	51
county	35	2009	Government	2
county	35	2009	Missing	1
county	35	2009	Non Governmental Organizations/ civil society sector	1
county	35	2009	Not applicable	8
county	35	2009	Private sector	9
county	35	2009	Works for  self	19
county	22	2009	Government	12
county	22	2009	Missing	11
county	22	2009	Non Governmental Organizations/ civil society sector	4
county	22	2009	Not applicable	12
county	22	2009	Private sector	22
county	22	2009	Works for  self	59
county	3	2009	Government	2
county	3	2009	Missing	10
county	3	2009	Not applicable	16
county	3	2009	Private sector	9
county	3	2009	Works for  self	27
county	20	2009	Government	4
county	20	2009	Missing	3
county	20	2009	Non Governmental Organizations/ civil society sector	1
county	20	2009	Not applicable	3
county	20	2009	Private sector	12
county	20	2009	Works for  self	17
county	45	2009	Government	2
county	45	2009	Missing	6
county	45	2009	Non Governmental Organizations/ civil society sector	1
county	45	2009	Not applicable	5
county	45	2009	Private sector	7
county	45	2009	Works for  self	51
county	42	2009	Government	1
county	42	2009	Missing	1
county	42	2009	Non Governmental Organizations/ civil society sector	2
county	42	2009	Not applicable	8
county	42	2009	Private sector	19
county	42	2009	Works for  self	25
county	15	2009	Government	2
county	15	2009	Missing	10
county	15	2009	Non Governmental Organizations/ civil society sector	2
county	15	2009	Not applicable	11
county	15	2009	Private sector	6
county	15	2009	Works for  self	25
county	2	2009	Government	4
county	2	2009	Missing	5
county	2	2009	Non Governmental Organizations/ civil society sector	1
county	2	2009	Not applicable	8
county	2	2009	Private sector	8
county	2	2009	Works for  self	14
county	31	2009	Don't know	1
county	31	2009	Government	1
county	31	2009	Not applicable	3
county	31	2009	Private sector	3
county	31	2009	Works for  self	16
county	5	2009	Missing	2
county	5	2009	Not applicable	1
county	5	2009	Works for  self	5
county	16	2009	Government	2
county	16	2009	Missing	12
county	16	2009	Non Governmental Organizations/ civil society sector	1
county	16	2009	Not applicable	10
county	16	2009	Private sector	8
county	16	2009	Works for  self	39
county	17	2009	Government	1
county	17	2009	Missing	8
county	17	2009	Non Governmental Organizations/ civil society sector	1
county	17	2009	Not applicable	10
county	17	2009	Private sector	13
county	17	2009	Works for  self	23
county	9	2009	Government	2
county	9	2009	Missing	1
county	9	2009	Non Governmental Organizations/ civil society sector	2
county	9	2009	Not applicable	10
county	9	2009	Private sector	2
county	9	2009	Works for  self	31
county	10	2009	Government	1
county	10	2009	Non Governmental Organizations/ civil society sector	1
county	10	2009	Not applicable	4
county	10	2009	Private sector	1
county	10	2009	Works for  self	9
county	12	2009	Don't know	1
county	12	2009	Government	4
county	12	2009	Missing	12
county	12	2009	Non Governmental Organizations/ civil society sector	5
county	12	2009	Not applicable	10
county	12	2009	Private sector	12
county	12	2009	Works for  self	41
county	44	2009	Government	2
county	44	2009	Non Governmental Organizations/ civil society sector	1
county	44	2009	Not applicable	10
county	44	2009	Private sector	3
county	44	2009	Works for  self	32
county	1	2009	Government	4
county	1	2009	Missing	12
county	1	2009	Non Governmental Organizations/ civil society sector	1
county	1	2009	Not applicable	8
county	1	2009	Private sector	23
county	1	2009	Works for  self	24
county	21	2009	Government	4
county	21	2009	Missing	1
county	21	2009	Not applicable	5
county	21	2009	Private sector	16
county	21	2009	Works for  self	38
county	47	2009	Government	14
county	47	2009	Missing	18
county	47	2009	Non Governmental Organizations/ civil society sector	7
county	47	2009	Not applicable	37
county	47	2009	Private sector	81
county	47	2009	Works for  self	91
county	32	2009	Government	1
county	32	2009	Missing	11
county	32	2009	Non Governmental Organizations/ civil society sector	2
county	32	2009	Not applicable	10
county	32	2009	Private sector	18
county	32	2009	Works for  self	62
county	29	2009	Government	8
county	29	2009	Missing	3
county	29	2009	Not applicable	5
county	29	2009	Private sector	8
county	29	2009	Works for  self	24
county	33	2009	Government	1
county	33	2009	Missing	2
county	33	2009	Not applicable	5
county	33	2009	Private sector	4
county	33	2009	Works for  self	36
county	46	2009	Government	2
county	46	2009	Missing	3
county	46	2009	Non Governmental Organizations/ civil society sector	1
county	46	2009	Not applicable	3
county	46	2009	Private sector	2
county	46	2009	Works for  self	29
county	18	2009	Government	1
county	18	2009	Missing	1
county	18	2009	Non Governmental Organizations/ civil society sector	2
county	18	2009	Not applicable	3
county	18	2009	Private sector	8
county	18	2009	Works for  self	25
county	19	2009	Government	2
county	19	2009	Missing	2
county	19	2009	Not applicable	2
county	19	2009	Private sector	9
county	19	2009	Works for  self	33
county	25	2009	Not applicable	5
county	25	2009	Private sector	1
county	25	2009	Works for  self	2
county	41	2009	Missing	8
county	41	2009	Not applicable	6
county	41	2009	Works for  self	34
county	6	2009	Government	2
county	6	2009	Missing	3
county	6	2009	Not applicable	4
county	6	2009	Private sector	4
county	6	2009	Works for  self	3
county	4	2009	Not applicable	2
county	4	2009	Works for  self	6
county	13	2009	Government	2
county	13	2009	Missing	3
county	13	2009	Not applicable	3
county	13	2009	Private sector	6
county	13	2009	Works for  self	10
county	26	2009	Government	1
county	26	2009	Missing	2
county	26	2009	Not applicable	14
county	26	2009	Private sector	7
county	26	2009	Works for  self	24
county	23	2009	Government	3
county	23	2009	Missing	2
county	23	2009	Non Governmental Organizations/ civil society sector	1
county	23	2009	Not applicable	9
county	23	2009	Private sector	2
county	23	2009	Works for  self	31
county	27	2009	Government	4
county	27	2009	Missing	2
county	27	2009	Non Governmental Organizations/ civil society sector	1
county	27	2009	Not applicable	2
county	27	2009	Private sector	13
county	27	2009	Works for  self	34
county	38	2009	Government	2
county	38	2009	Missing	2
county	38	2009	Non Governmental Organizations/ civil society sector	1
county	38	2009	Not applicable	9
county	38	2009	Private sector	5
county	38	2009	Works for  self	13
county	8	2009	Government	3
county	8	2009	Missing	2
county	8	2009	Non Governmental Organizations/ civil society sector	1
county	8	2009	Not applicable	6
county	8	2009	Private sector	1
county	8	2009	Works for  self	19
county	24	2009	Missing	2
county	24	2009	Not applicable	2
county	24	2009	Works for  self	20
country	KE	2009	Missing	188
country	KE	2009	Government	130
country	KE	2009	Private sector	414
country	KE	2009	Works for  self	1248
country	KE	2009	Non Governmental Organizations/ civil society sector	51
country	KE	2009	Not applicable	364
country	KE	2009	Don't know	2
\.


--
-- Name: employer_of_respondent pk_employer_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employer_of_respondent
    ADD CONSTRAINT pk_employer_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, employer_of_respondent);


--
-- PostgreSQL database dump complete
--


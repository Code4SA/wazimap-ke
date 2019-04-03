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

ALTER TABLE IF EXISTS ONLY public.people_must_pay_taxes DROP CONSTRAINT IF EXISTS pk_people_must_pay_taxes;
DROP TABLE IF EXISTS public.people_must_pay_taxes;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: people_must_pay_taxes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.people_must_pay_taxes (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    people_must_pay_taxes character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: people_must_pay_taxes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.people_must_pay_taxes (geo_level, geo_code, geo_version, people_must_pay_taxes, total) FROM stdin;
county	30	2009	Agree	9
county	30	2009	Disagree	2
county	30	2009	Neither Agree Nor Disagree	13
county	30	2009	Strongly Agree	8
county	36	2009	Agree	12
county	36	2009	Disagree	6
county	36	2009	Neither Agree Nor Disagree	3
county	36	2009	Strongly Agree	23
county	36	2009	Strongly Disagree	4
county	39	2009	Agree	39
county	39	2009	Disagree	5
county	39	2009	Don't Know	3
county	39	2009	Missing	1
county	39	2009	Neither Agree Nor Disagree	1
county	39	2009	Strongly Agree	20
county	39	2009	Strongly Disagree	11
county	40	2009	Agree	11
county	40	2009	Disagree	6
county	40	2009	Neither Agree Nor Disagree	2
county	40	2009	Strongly Agree	17
county	40	2009	Strongly Disagree	4
county	28	2009	Agree	3
county	28	2009	Disagree	1
county	28	2009	Don't Know	3
county	28	2009	Neither Agree Nor Disagree	6
county	28	2009	Strongly Agree	3
county	14	2009	Agree	18
county	14	2009	Don't Know	4
county	14	2009	Neither Agree Nor Disagree	2
county	14	2009	Strongly Agree	15
county	14	2009	Strongly Disagree	1
county	7	2009	Agree	15
county	7	2009	Don't Know	10
county	7	2009	Neither Agree Nor Disagree	1
county	7	2009	Strongly Agree	6
county	43	2009	Agree	15
county	43	2009	Disagree	7
county	43	2009	Neither Agree Nor Disagree	10
county	43	2009	Strongly Agree	20
county	43	2009	Strongly Disagree	4
county	11	2009	Agree	3
county	11	2009	Don't Know	2
county	11	2009	Strongly Agree	3
county	34	2009	Agree	19
county	34	2009	Disagree	5
county	34	2009	Neither Agree Nor Disagree	16
county	34	2009	Strongly Agree	8
county	37	2009	Agree	56
county	37	2009	Disagree	6
county	37	2009	Don't Know	2
county	37	2009	Neither Agree Nor Disagree	2
county	37	2009	Strongly Agree	26
county	37	2009	Strongly Disagree	4
county	35	2009	Agree	16
county	35	2009	Disagree	4
county	35	2009	Don't Know	1
county	35	2009	Neither Agree Nor Disagree	3
county	35	2009	Strongly Agree	15
county	35	2009	Strongly Disagree	1
county	22	2009	Agree	56
county	22	2009	Disagree	15
county	22	2009	Don't Know	2
county	22	2009	Neither Agree Nor Disagree	1
county	22	2009	Strongly Agree	43
county	22	2009	Strongly Disagree	3
county	3	2009	Agree	20
county	3	2009	Disagree	4
county	3	2009	Don't Know	3
county	3	2009	Neither Agree Nor Disagree	3
county	3	2009	Strongly Agree	31
county	3	2009	Strongly Disagree	3
county	20	2009	Agree	18
county	20	2009	Disagree	2
county	20	2009	Neither Agree Nor Disagree	1
county	20	2009	Strongly Agree	16
county	20	2009	Strongly Disagree	3
county	45	2009	Agree	13
county	45	2009	Disagree	18
county	45	2009	Don't Know	1
county	45	2009	Neither Agree Nor Disagree	12
county	45	2009	Strongly Agree	16
county	45	2009	Strongly Disagree	12
county	42	2009	Agree	23
county	42	2009	Disagree	6
county	42	2009	Neither Agree Nor Disagree	6
county	42	2009	Strongly Agree	16
county	42	2009	Strongly Disagree	5
county	15	2009	Agree	29
county	15	2009	Disagree	6
county	15	2009	Don't Know	9
county	15	2009	Neither Agree Nor Disagree	3
county	15	2009	Strongly Agree	8
county	15	2009	Strongly Disagree	1
county	2	2009	Agree	11
county	2	2009	Disagree	1
county	2	2009	Don't Know	2
county	2	2009	Neither Agree Nor Disagree	3
county	2	2009	Strongly Agree	22
county	2	2009	Strongly Disagree	1
county	31	2009	Agree	6
county	31	2009	Don't Know	3
county	31	2009	Strongly Agree	15
county	5	2009	Agree	5
county	5	2009	Strongly Agree	3
county	16	2009	Agree	32
county	16	2009	Disagree	1
county	16	2009	Don't Know	11
county	16	2009	Missing	1
county	16	2009	Neither Agree Nor Disagree	10
county	16	2009	Strongly Agree	15
county	16	2009	Strongly Disagree	2
county	17	2009	Agree	18
county	17	2009	Disagree	2
county	17	2009	Don't Know	2
county	17	2009	Neither Agree Nor Disagree	1
county	17	2009	Strongly Agree	26
county	17	2009	Strongly Disagree	7
county	9	2009	Agree	30
county	9	2009	Disagree	2
county	9	2009	Don't Know	4
county	9	2009	Neither Agree Nor Disagree	3
county	9	2009	Strongly Agree	9
county	10	2009	Agree	7
county	10	2009	Don't Know	4
county	10	2009	Neither Agree Nor Disagree	1
county	10	2009	Strongly Agree	4
county	12	2009	Agree	36
county	12	2009	Disagree	2
county	12	2009	Don't Know	5
county	12	2009	Neither Agree Nor Disagree	4
county	12	2009	Strongly Agree	37
county	12	2009	Strongly Disagree	1
county	44	2009	Agree	16
county	44	2009	Disagree	10
county	44	2009	Neither Agree Nor Disagree	5
county	44	2009	Strongly Agree	11
county	44	2009	Strongly Disagree	6
county	1	2009	Agree	18
county	1	2009	Neither Agree Nor Disagree	5
county	1	2009	Strongly Agree	49
county	21	2009	Agree	27
county	21	2009	Disagree	5
county	21	2009	Neither Agree Nor Disagree	1
county	21	2009	Strongly Agree	21
county	21	2009	Strongly Disagree	10
county	47	2009	Agree	102
county	47	2009	Disagree	25
county	47	2009	Don't Know	2
county	47	2009	Neither Agree Nor Disagree	24
county	47	2009	Strongly Agree	82
county	47	2009	Strongly Disagree	13
county	32	2009	Agree	42
county	32	2009	Disagree	5
county	32	2009	Don't Know	1
county	32	2009	Strongly Agree	56
county	29	2009	Agree	17
county	29	2009	Disagree	1
county	29	2009	Don't Know	2
county	29	2009	Neither Agree Nor Disagree	14
county	29	2009	Strongly Agree	13
county	29	2009	Strongly Disagree	1
county	33	2009	Agree	25
county	33	2009	Disagree	1
county	33	2009	Neither Agree Nor Disagree	2
county	33	2009	Strongly Agree	19
county	33	2009	Strongly Disagree	1
county	46	2009	Agree	10
county	46	2009	Disagree	10
county	46	2009	Neither Agree Nor Disagree	3
county	46	2009	Strongly Agree	9
county	46	2009	Strongly Disagree	8
county	18	2009	Agree	17
county	18	2009	Disagree	7
county	18	2009	Neither Agree Nor Disagree	1
county	18	2009	Strongly Agree	14
county	18	2009	Strongly Disagree	1
county	19	2009	Agree	24
county	19	2009	Disagree	4
county	19	2009	Strongly Agree	19
county	19	2009	Strongly Disagree	1
county	25	2009	Agree	5
county	25	2009	Neither Agree Nor Disagree	3
county	41	2009	Agree	23
county	41	2009	Disagree	1
county	41	2009	Don't Know	2
county	41	2009	Neither Agree Nor Disagree	9
county	41	2009	Strongly Agree	13
county	6	2009	Agree	5
county	6	2009	Disagree	2
county	6	2009	Neither Agree Nor Disagree	1
county	6	2009	Strongly Agree	6
county	6	2009	Strongly Disagree	2
county	4	2009	Agree	3
county	4	2009	Disagree	1
county	4	2009	Don't Know	4
county	13	2009	Agree	13
county	13	2009	Disagree	2
county	13	2009	Don't Know	2
county	13	2009	Neither Agree Nor Disagree	2
county	13	2009	Strongly Agree	5
county	26	2009	Agree	25
county	26	2009	Disagree	1
county	26	2009	Don't Know	3
county	26	2009	Strongly Agree	11
county	26	2009	Strongly Disagree	8
county	23	2009	Agree	17
county	23	2009	Disagree	4
county	23	2009	Don't Know	9
county	23	2009	Neither Agree Nor Disagree	15
county	23	2009	Strongly Agree	3
county	27	2009	Agree	26
county	27	2009	Disagree	6
county	27	2009	Don't Know	3
county	27	2009	Neither Agree Nor Disagree	15
county	27	2009	Strongly Agree	5
county	27	2009	Strongly Disagree	1
county	38	2009	Agree	13
county	38	2009	Disagree	4
county	38	2009	Neither Agree Nor Disagree	2
county	38	2009	Strongly Agree	11
county	38	2009	Strongly Disagree	2
county	8	2009	Agree	13
county	8	2009	Disagree	5
county	8	2009	Don't Know	8
county	8	2009	Strongly Agree	6
county	24	2009	Agree	10
county	24	2009	Don't Know	4
county	24	2009	Neither Agree Nor Disagree	7
county	24	2009	Strongly Agree	3
country	KE	2009	Neither Agree Nor Disagree	216
country	KE	2009	Missing	2
country	KE	2009	Disagree	195
country	KE	2009	Strongly Agree	781
country	KE	2009	Strongly Disagree	121
country	KE	2009	Agree	971
country	KE	2009	Don't Know	111
\.


--
-- Name: people_must_pay_taxes pk_people_must_pay_taxes; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.people_must_pay_taxes
    ADD CONSTRAINT pk_people_must_pay_taxes PRIMARY KEY (geo_level, geo_code, geo_version, people_must_pay_taxes);


--
-- PostgreSQL database dump complete
--


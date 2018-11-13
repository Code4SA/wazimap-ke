--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.trust_president DROP CONSTRAINT IF EXISTS pk_trust_president;
DROP TABLE IF EXISTS public.trust_president;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: trust_president; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trust_president (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    trust_president character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: trust_president; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.trust_president (geo_level, geo_code, geo_version, trust_president, total) FROM stdin;
county	30	2009	A lot	27
county	36	2009	A lot	28
county	39	2009	A lot	37
county	40	2009	A lot	10
county	28	2009	A lot	11
county	14	2009	A lot	24
county	7	2009	A lot	13
county	43	2009	A lot	3
county	11	2009	A lot	2
county	34	2009	A lot	22
county	37	2009	A lot	24
county	35	2009	A lot	18
county	22	2009	A lot	85
county	3	2009	A lot	4
county	20	2009	A lot	28
county	45	2009	A lot	7
county	42	2009	A lot	4
county	15	2009	A lot	23
county	2	2009	A lot	7
county	31	2009	A lot	13
county	5	2009	A lot	5
county	16	2009	A lot	27
county	17	2009	A lot	14
county	9	2009	A lot	17
county	10	2009	A lot	1
county	12	2009	A lot	52
county	44	2009	A lot	6
county	1	2009	A lot	10
county	21	2009	A lot	58
county	47	2009	A lot	107
county	32	2009	A lot	63
county	29	2009	A lot	37
county	33	2009	A lot	27
county	46	2009	A lot	5
county	18	2009	A lot	31
county	19	2009	A lot	34
county	25	2009	A lot	3
county	41	2009	A lot	2
county	6	2009	A lot	3
county	4	2009	A lot	4
county	13	2009	A lot	11
county	26	2009	A lot	23
county	23	2009	A lot	16
county	27	2009	A lot	38
county	38	2009	A lot	6
county	8	2009	A lot	7
county	24	2009	A lot	17
county	39	2009	Don�t know/ Haven't heard enough	1
county	11	2009	Don�t know/ Haven't heard enough	2
county	37	2009	Don�t know/ Haven't heard enough	1
county	15	2009	Don�t know/ Haven't heard enough	2
county	31	2009	Don�t know/ Haven't heard enough	1
county	16	2009	Don�t know/ Haven't heard enough	2
county	17	2009	Don�t know/ Haven't heard enough	2
county	9	2009	Don�t know/ Haven't heard enough	1
county	10	2009	Don�t know/ Haven't heard enough	1
county	33	2009	Don�t know/ Haven't heard enough	1
county	41	2009	Don�t know/ Haven't heard enough	1
county	38	2009	Don�t know/ Haven't heard enough	1
county	8	2009	Don�t know/ Haven't heard enough	1
county	36	2009	Just a little	4
county	39	2009	Just a little	12
county	40	2009	Just a little	10
county	14	2009	Just a little	3
county	7	2009	Just a little	2
county	43	2009	Just a little	27
county	34	2009	Just a little	5
county	37	2009	Just a little	19
county	35	2009	Just a little	9
county	22	2009	Just a little	13
county	3	2009	Just a little	16
county	20	2009	Just a little	5
county	45	2009	Just a little	24
county	42	2009	Just a little	24
county	15	2009	Just a little	6
county	2	2009	Just a little	16
county	31	2009	Just a little	1
county	5	2009	Just a little	1
county	16	2009	Just a little	11
county	17	2009	Just a little	21
county	9	2009	Just a little	5
county	10	2009	Just a little	2
county	12	2009	Just a little	5
county	44	2009	Just a little	18
county	1	2009	Just a little	16
county	21	2009	Just a little	3
county	47	2009	Just a little	41
county	32	2009	Just a little	6
county	29	2009	Just a little	1
county	33	2009	Just a little	2
county	46	2009	Just a little	15
county	18	2009	Just a little	4
county	19	2009	Just a little	6
county	25	2009	Just a little	1
county	41	2009	Just a little	23
county	6	2009	Just a little	7
county	13	2009	Just a little	3
county	26	2009	Just a little	12
county	23	2009	Just a little	13
county	27	2009	Just a little	3
county	38	2009	Just a little	10
county	8	2009	Just a little	4
county	24	2009	Just a little	1
county	36	2009	Not at all	1
county	39	2009	Not at all	8
county	40	2009	Not at all	7
county	7	2009	Not at all	1
county	43	2009	Not at all	14
county	11	2009	Not at all	2
county	34	2009	Not at all	3
county	37	2009	Not at all	19
county	35	2009	Not at all	2
county	22	2009	Not at all	1
county	3	2009	Not at all	22
county	45	2009	Not at all	9
county	42	2009	Not at all	16
county	15	2009	Not at all	2
county	2	2009	Not at all	3
county	5	2009	Not at all	1
county	16	2009	Not at all	7
county	17	2009	Not at all	5
county	9	2009	Not at all	4
county	10	2009	Not at all	4
county	12	2009	Not at all	1
county	44	2009	Not at all	8
county	1	2009	Not at all	18
county	47	2009	Not at all	37
county	32	2009	Not at all	1
county	29	2009	Not at all	1
county	33	2009	Not at all	5
county	46	2009	Not at all	5
county	19	2009	Not at all	1
county	41	2009	Not at all	15
county	13	2009	Not at all	1
county	26	2009	Not at all	7
county	23	2009	Not at all	4
county	27	2009	Not at all	2
county	38	2009	Not at all	6
county	8	2009	Not at all	1
county	30	2009	Somewhat	5
county	36	2009	Somewhat	15
county	39	2009	Somewhat	22
county	40	2009	Somewhat	13
county	28	2009	Somewhat	5
county	14	2009	Somewhat	13
county	7	2009	Somewhat	16
county	43	2009	Somewhat	12
county	11	2009	Somewhat	2
county	34	2009	Somewhat	18
county	37	2009	Somewhat	33
county	35	2009	Somewhat	11
county	22	2009	Somewhat	21
county	3	2009	Somewhat	22
county	20	2009	Somewhat	7
county	45	2009	Somewhat	32
county	42	2009	Somewhat	12
county	15	2009	Somewhat	23
county	2	2009	Somewhat	14
county	31	2009	Somewhat	9
county	5	2009	Somewhat	1
county	16	2009	Somewhat	25
county	17	2009	Somewhat	14
county	9	2009	Somewhat	21
county	10	2009	Somewhat	8
county	12	2009	Somewhat	27
county	44	2009	Somewhat	16
county	1	2009	Somewhat	28
county	21	2009	Somewhat	3
county	47	2009	Somewhat	63
county	32	2009	Somewhat	34
county	29	2009	Somewhat	9
county	33	2009	Somewhat	13
county	46	2009	Somewhat	15
county	18	2009	Somewhat	5
county	19	2009	Somewhat	7
county	25	2009	Somewhat	4
county	41	2009	Somewhat	7
county	6	2009	Somewhat	6
county	4	2009	Somewhat	4
county	13	2009	Somewhat	9
county	26	2009	Somewhat	6
county	23	2009	Somewhat	15
county	27	2009	Somewhat	13
county	38	2009	Somewhat	9
county	8	2009	Somewhat	19
county	24	2009	Somewhat	6
\.


--
-- Name: trust_president pk_trust_president; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trust_president
    ADD CONSTRAINT pk_trust_president PRIMARY KEY (geo_level, geo_code, geo_version, trust_president);


--
-- PostgreSQL database dump complete
--


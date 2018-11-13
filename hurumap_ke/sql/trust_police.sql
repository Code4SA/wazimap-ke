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

ALTER TABLE IF EXISTS ONLY public.trust_police DROP CONSTRAINT IF EXISTS pk_trust_police;
DROP TABLE IF EXISTS public.trust_police;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: trust_police; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trust_police (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    trust_police character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: trust_police; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.trust_police (geo_level, geo_code, geo_version, trust_police, total) FROM stdin;
county	30	2009	A lot	5
county	36	2009	A lot	10
county	39	2009	A lot	17
county	40	2009	A lot	4
county	28	2009	A lot	1
county	14	2009	A lot	2
county	7	2009	A lot	4
county	43	2009	A lot	6
county	34	2009	A lot	4
county	37	2009	A lot	15
county	35	2009	A lot	3
county	22	2009	A lot	16
county	20	2009	A lot	9
county	45	2009	A lot	4
county	42	2009	A lot	5
county	15	2009	A lot	8
county	2	2009	A lot	4
county	31	2009	A lot	2
county	5	2009	A lot	3
county	16	2009	A lot	7
county	17	2009	A lot	2
county	9	2009	A lot	6
county	10	2009	A lot	2
county	12	2009	A lot	7
county	44	2009	A lot	7
county	1	2009	A lot	4
county	21	2009	A lot	12
county	47	2009	A lot	23
county	32	2009	A lot	13
county	29	2009	A lot	10
county	33	2009	A lot	9
county	46	2009	A lot	3
county	18	2009	A lot	9
county	19	2009	A lot	10
county	41	2009	A lot	4
county	6	2009	A lot	1
county	4	2009	A lot	1
county	26	2009	A lot	14
county	23	2009	A lot	10
county	27	2009	A lot	2
county	38	2009	A lot	3
county	8	2009	A lot	3
county	24	2009	A lot	3
county	39	2009	Don't know/ Haven't heard enough	1
county	7	2009	Don't know/ Haven't heard enough	1
county	34	2009	Don't know/ Haven't heard enough	1
county	37	2009	Don't know/ Haven't heard enough	2
county	45	2009	Don't know/ Haven't heard enough	1
county	31	2009	Don't know/ Haven't heard enough	2
county	16	2009	Don't know/ Haven't heard enough	1
county	44	2009	Don't know/ Haven't heard enough	1
county	47	2009	Don't know/ Haven't heard enough	2
county	33	2009	Don't know/ Haven't heard enough	1
county	41	2009	Don't know/ Haven't heard enough	1
county	6	2009	Don't know/ Haven't heard enough	1
county	4	2009	Don't know/ Haven't heard enough	1
county	13	2009	Don't know/ Haven't heard enough	3
county	30	2009	Just a little	7
county	36	2009	Just a little	21
county	39	2009	Just a little	11
county	40	2009	Just a little	10
county	28	2009	Just a little	4
county	14	2009	Just a little	20
county	7	2009	Just a little	18
county	43	2009	Just a little	29
county	11	2009	Just a little	2
county	34	2009	Just a little	22
county	37	2009	Just a little	23
county	35	2009	Just a little	22
county	22	2009	Just a little	47
county	3	2009	Just a little	19
county	20	2009	Just a little	11
county	45	2009	Just a little	32
county	42	2009	Just a little	22
county	15	2009	Just a little	17
county	2	2009	Just a little	15
county	31	2009	Just a little	13
county	5	2009	Just a little	1
county	16	2009	Just a little	20
county	17	2009	Just a little	17
county	9	2009	Just a little	23
county	10	2009	Just a little	3
county	12	2009	Just a little	27
county	44	2009	Just a little	12
county	1	2009	Just a little	28
county	21	2009	Just a little	22
county	47	2009	Just a little	68
county	32	2009	Just a little	40
county	29	2009	Just a little	17
county	33	2009	Just a little	15
county	46	2009	Just a little	13
county	18	2009	Just a little	14
county	19	2009	Just a little	11
county	25	2009	Just a little	1
county	41	2009	Just a little	22
county	6	2009	Just a little	3
county	4	2009	Just a little	1
county	13	2009	Just a little	4
county	26	2009	Just a little	3
county	23	2009	Just a little	12
county	27	2009	Just a little	18
county	38	2009	Just a little	8
county	8	2009	Just a little	13
county	24	2009	Just a little	10
county	15	2009	Missing	1
county	30	2009	Not at all	4
county	36	2009	Not at all	8
county	39	2009	Not at all	38
county	40	2009	Not at all	18
county	28	2009	Not at all	3
county	14	2009	Not at all	11
county	7	2009	Not at all	3
county	43	2009	Not at all	13
county	11	2009	Not at all	4
county	34	2009	Not at all	7
county	37	2009	Not at all	41
county	35	2009	Not at all	5
county	22	2009	Not at all	35
county	3	2009	Not at all	38
county	20	2009	Not at all	12
county	45	2009	Not at all	24
county	42	2009	Not at all	27
county	15	2009	Not at all	11
county	2	2009	Not at all	14
county	31	2009	Not at all	2
county	5	2009	Not at all	3
county	16	2009	Not at all	27
county	17	2009	Not at all	21
county	9	2009	Not at all	4
county	10	2009	Not at all	6
county	12	2009	Not at all	12
county	44	2009	Not at all	19
county	1	2009	Not at all	24
county	21	2009	Not at all	17
county	47	2009	Not at all	103
county	32	2009	Not at all	27
county	29	2009	Not at all	1
county	33	2009	Not at all	16
county	46	2009	Not at all	17
county	18	2009	Not at all	14
county	19	2009	Not at all	19
county	25	2009	Not at all	2
county	41	2009	Not at all	15
county	6	2009	Not at all	5
county	13	2009	Not at all	10
county	26	2009	Not at all	25
county	23	2009	Not at all	3
county	27	2009	Not at all	10
county	38	2009	Not at all	13
county	8	2009	Not at all	3
county	24	2009	Not at all	3
county	30	2009	Somewhat	16
county	36	2009	Somewhat	9
county	39	2009	Somewhat	13
county	40	2009	Somewhat	8
county	28	2009	Somewhat	8
county	14	2009	Somewhat	7
county	7	2009	Somewhat	6
county	43	2009	Somewhat	8
county	11	2009	Somewhat	2
county	34	2009	Somewhat	14
county	37	2009	Somewhat	15
county	35	2009	Somewhat	10
county	22	2009	Somewhat	22
county	3	2009	Somewhat	7
county	20	2009	Somewhat	8
county	45	2009	Somewhat	11
county	42	2009	Somewhat	2
county	15	2009	Somewhat	19
county	2	2009	Somewhat	7
county	31	2009	Somewhat	5
county	5	2009	Somewhat	1
county	16	2009	Somewhat	17
county	17	2009	Somewhat	16
county	9	2009	Somewhat	15
county	10	2009	Somewhat	5
county	12	2009	Somewhat	39
county	44	2009	Somewhat	9
county	1	2009	Somewhat	16
county	21	2009	Somewhat	13
county	47	2009	Somewhat	52
county	32	2009	Somewhat	24
county	29	2009	Somewhat	20
county	33	2009	Somewhat	7
county	46	2009	Somewhat	7
county	18	2009	Somewhat	3
county	19	2009	Somewhat	8
county	25	2009	Somewhat	5
county	41	2009	Somewhat	6
county	6	2009	Somewhat	6
county	4	2009	Somewhat	5
county	13	2009	Somewhat	7
county	26	2009	Somewhat	6
county	23	2009	Somewhat	23
county	27	2009	Somewhat	26
county	38	2009	Somewhat	8
county	8	2009	Somewhat	13
county	24	2009	Somewhat	8
\.


--
-- Name: trust_police pk_trust_police; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trust_police
    ADD CONSTRAINT pk_trust_police PRIMARY KEY (geo_level, geo_code, geo_version, trust_police);


--
-- PostgreSQL database dump complete
--


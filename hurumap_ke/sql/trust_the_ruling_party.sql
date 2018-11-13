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

ALTER TABLE IF EXISTS ONLY public.trust_the_ruling_party DROP CONSTRAINT IF EXISTS pk_trust_the_ruling_party;
DROP TABLE IF EXISTS public.trust_the_ruling_party;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: trust_the_ruling_party; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trust_the_ruling_party (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    trust_the_ruling_party character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: trust_the_ruling_party; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.trust_the_ruling_party (geo_level, geo_code, geo_version, trust_the_ruling_party, total) FROM stdin;
county	30	2009	A lot	15
county	36	2009	A lot	22
county	39	2009	A lot	26
county	40	2009	A lot	9
county	28	2009	A lot	10
county	14	2009	A lot	14
county	7	2009	A lot	9
county	43	2009	A lot	2
county	11	2009	A lot	1
county	34	2009	A lot	14
county	37	2009	A lot	13
county	35	2009	A lot	12
county	22	2009	A lot	63
county	3	2009	A lot	4
county	20	2009	A lot	23
county	45	2009	A lot	6
county	42	2009	A lot	2
county	15	2009	A lot	13
county	2	2009	A lot	4
county	31	2009	A lot	13
county	5	2009	A lot	5
county	16	2009	A lot	15
county	17	2009	A lot	7
county	9	2009	A lot	11
county	10	2009	A lot	2
county	12	2009	A lot	31
county	44	2009	A lot	4
county	1	2009	A lot	5
county	21	2009	A lot	52
county	47	2009	A lot	65
county	32	2009	A lot	56
county	29	2009	A lot	19
county	33	2009	A lot	20
county	46	2009	A lot	4
county	18	2009	A lot	27
county	19	2009	A lot	28
county	25	2009	A lot	2
county	41	2009	A lot	1
county	6	2009	A lot	2
county	4	2009	A lot	3
county	13	2009	A lot	7
county	26	2009	A lot	20
county	23	2009	A lot	11
county	27	2009	A lot	16
county	38	2009	A lot	5
county	8	2009	A lot	3
county	24	2009	A lot	9
county	39	2009	Don't know/ Haven't heard enough	1
county	14	2009	Don't know/ Haven't heard enough	1
county	7	2009	Don't know/ Haven't heard enough	4
county	43	2009	Don't know/ Haven't heard enough	1
county	11	2009	Don't know/ Haven't heard enough	1
county	37	2009	Don't know/ Haven't heard enough	1
county	22	2009	Don't know/ Haven't heard enough	1
county	45	2009	Don't know/ Haven't heard enough	1
county	15	2009	Don't know/ Haven't heard enough	1
county	31	2009	Don't know/ Haven't heard enough	2
county	17	2009	Don't know/ Haven't heard enough	3
county	9	2009	Don't know/ Haven't heard enough	5
county	12	2009	Don't know/ Haven't heard enough	2
county	44	2009	Don't know/ Haven't heard enough	1
county	47	2009	Don't know/ Haven't heard enough	2
county	32	2009	Don't know/ Haven't heard enough	1
county	46	2009	Don't know/ Haven't heard enough	1
county	4	2009	Don't know/ Haven't heard enough	3
county	23	2009	Don't know/ Haven't heard enough	2
county	27	2009	Don't know/ Haven't heard enough	1
county	38	2009	Don't know/ Haven't heard enough	1
county	8	2009	Don't know/ Haven't heard enough	3
county	30	2009	Just a little	2
county	36	2009	Just a little	3
county	39	2009	Just a little	14
county	40	2009	Just a little	11
county	28	2009	Just a little	2
county	14	2009	Just a little	8
county	7	2009	Just a little	2
county	43	2009	Just a little	18
county	11	2009	Just a little	2
county	34	2009	Just a little	17
county	37	2009	Just a little	26
county	35	2009	Just a little	7
county	22	2009	Just a little	16
county	3	2009	Just a little	24
county	20	2009	Just a little	7
county	45	2009	Just a little	26
county	42	2009	Just a little	25
county	15	2009	Just a little	12
county	2	2009	Just a little	13
county	31	2009	Just a little	1
county	5	2009	Just a little	1
county	16	2009	Just a little	18
county	17	2009	Just a little	15
county	9	2009	Just a little	9
county	10	2009	Just a little	1
county	12	2009	Just a little	6
county	44	2009	Just a little	17
county	1	2009	Just a little	20
county	21	2009	Just a little	3
county	47	2009	Just a little	54
county	32	2009	Just a little	14
county	29	2009	Just a little	5
county	33	2009	Just a little	5
county	46	2009	Just a little	19
county	18	2009	Just a little	7
county	19	2009	Just a little	9
county	41	2009	Just a little	23
county	6	2009	Just a little	4
county	13	2009	Just a little	6
county	26	2009	Just a little	8
county	23	2009	Just a little	16
county	27	2009	Just a little	5
county	38	2009	Just a little	10
county	8	2009	Just a little	4
county	24	2009	Just a little	1
county	15	2009	Missing	1
county	2	2009	Missing	1
county	36	2009	Not at all	2
county	39	2009	Not at all	20
county	40	2009	Not at all	10
county	14	2009	Not at all	3
county	7	2009	Not at all	1
county	43	2009	Not at all	23
county	11	2009	Not at all	2
county	34	2009	Not at all	4
county	37	2009	Not at all	37
county	35	2009	Not at all	5
county	22	2009	Not at all	8
county	3	2009	Not at all	20
county	20	2009	Not at all	3
county	45	2009	Not at all	15
county	42	2009	Not at all	19
county	15	2009	Not at all	8
county	2	2009	Not at all	8
county	5	2009	Not at all	1
county	16	2009	Not at all	11
county	17	2009	Not at all	16
county	9	2009	Not at all	3
county	10	2009	Not at all	7
county	12	2009	Not at all	2
county	44	2009	Not at all	13
county	1	2009	Not at all	17
county	21	2009	Not at all	1
county	47	2009	Not at all	54
county	32	2009	Not at all	4
county	29	2009	Not at all	2
county	33	2009	Not at all	5
county	46	2009	Not at all	7
county	19	2009	Not at all	2
county	41	2009	Not at all	19
county	6	2009	Not at all	4
county	13	2009	Not at all	3
county	26	2009	Not at all	13
county	23	2009	Not at all	8
county	27	2009	Not at all	3
county	38	2009	Not at all	11
county	8	2009	Not at all	2
county	24	2009	Not at all	1
county	30	2009	Somewhat	15
county	36	2009	Somewhat	21
county	39	2009	Somewhat	19
county	40	2009	Somewhat	10
county	28	2009	Somewhat	4
county	14	2009	Somewhat	14
county	7	2009	Somewhat	16
county	43	2009	Somewhat	12
county	11	2009	Somewhat	2
county	34	2009	Somewhat	13
county	37	2009	Somewhat	19
county	35	2009	Somewhat	16
county	22	2009	Somewhat	32
county	3	2009	Somewhat	16
county	20	2009	Somewhat	7
county	45	2009	Somewhat	24
county	42	2009	Somewhat	10
county	15	2009	Somewhat	21
county	2	2009	Somewhat	14
county	31	2009	Somewhat	8
county	5	2009	Somewhat	1
county	16	2009	Somewhat	28
county	17	2009	Somewhat	15
county	9	2009	Somewhat	20
county	10	2009	Somewhat	6
county	12	2009	Somewhat	44
county	44	2009	Somewhat	13
county	1	2009	Somewhat	30
county	21	2009	Somewhat	8
county	47	2009	Somewhat	73
county	32	2009	Somewhat	29
county	29	2009	Somewhat	22
county	33	2009	Somewhat	18
county	46	2009	Somewhat	9
county	18	2009	Somewhat	6
county	19	2009	Somewhat	9
county	25	2009	Somewhat	6
county	41	2009	Somewhat	5
county	6	2009	Somewhat	6
county	4	2009	Somewhat	2
county	13	2009	Somewhat	8
county	26	2009	Somewhat	7
county	23	2009	Somewhat	11
county	27	2009	Somewhat	31
county	38	2009	Somewhat	5
county	8	2009	Somewhat	20
county	24	2009	Somewhat	13
\.


--
-- Name: trust_the_ruling_party pk_trust_the_ruling_party; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trust_the_ruling_party
    ADD CONSTRAINT pk_trust_the_ruling_party PRIMARY KEY (geo_level, geo_code, geo_version, trust_the_ruling_party);


--
-- PostgreSQL database dump complete
--


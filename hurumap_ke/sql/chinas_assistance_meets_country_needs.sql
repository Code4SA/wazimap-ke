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

ALTER TABLE IF EXISTS ONLY public.chinas_assistance_meets_country_needs DROP CONSTRAINT IF EXISTS pk_chinas_assistance_meets_country_needs;
DROP TABLE IF EXISTS public.chinas_assistance_meets_country_needs;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chinas_assistance_meets_country_needs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chinas_assistance_meets_country_needs (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    chinas_assistance_meets_country_needs character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: chinas_assistance_meets_country_needs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.chinas_assistance_meets_country_needs (geo_level, geo_code, geo_version, chinas_assistance_meets_country_needs, total) FROM stdin;
county	30	2009	Don't know / Haven't heard enough	2
county	30	2009	Neither good nor bad job	3
county	30	2009	Somewhat bad job	5
county	30	2009	Somewhat good job	11
county	30	2009	Very bad job	1
county	30	2009	Very good job	10
county	36	2009	Don't know / Haven't heard enough	3
county	36	2009	Neither good nor bad job	2
county	36	2009	Somewhat bad job	3
county	36	2009	Somewhat good job	31
county	36	2009	Very good job	9
county	39	2009	China doesn't give development assistance to the country	1
county	39	2009	Don't know / Haven't heard enough	6
county	39	2009	Neither good nor bad job	13
county	39	2009	Somewhat bad job	17
county	39	2009	Somewhat good job	24
county	39	2009	Very bad job	2
county	39	2009	Very good job	17
county	40	2009	China doesn't give development assistance to the country	1
county	40	2009	Don't know / Haven't heard enough	2
county	40	2009	Neither good nor bad job	5
county	40	2009	Somewhat bad job	6
county	40	2009	Somewhat good job	16
county	40	2009	Very bad job	3
county	40	2009	Very good job	7
county	28	2009	Don't know / Haven't heard enough	5
county	28	2009	Somewhat good job	6
county	28	2009	Very bad job	1
county	28	2009	Very good job	4
county	14	2009	Don't know / Haven't heard enough	1
county	14	2009	Neither good nor bad job	4
county	14	2009	Somewhat bad job	4
county	14	2009	Somewhat good job	13
county	14	2009	Very bad job	2
county	14	2009	Very good job	16
county	7	2009	Don't know / Haven't heard enough	12
county	7	2009	Neither good nor bad job	2
county	7	2009	Somewhat bad job	1
county	7	2009	Somewhat good job	8
county	7	2009	Very good job	9
county	43	2009	China doesn't give development assistance to the country	2
county	43	2009	Don't know / Haven't heard enough	10
county	43	2009	Neither good nor bad job	8
county	43	2009	Somewhat bad job	10
county	43	2009	Somewhat good job	16
county	43	2009	Very bad job	4
county	43	2009	Very good job	6
county	11	2009	Don't know / Haven't heard enough	3
county	11	2009	Somewhat bad job	1
county	11	2009	Somewhat good job	3
county	11	2009	Very good job	1
county	34	2009	Don't know / Haven't heard enough	6
county	34	2009	Neither good nor bad job	10
county	34	2009	Somewhat bad job	3
county	34	2009	Somewhat good job	23
county	34	2009	Very bad job	1
county	34	2009	Very good job	5
county	37	2009	China doesn't give development assistance to the country	1
county	37	2009	Don't know / Haven't heard enough	10
county	37	2009	Neither good nor bad job	9
county	37	2009	Somewhat bad job	20
county	37	2009	Somewhat good job	37
county	37	2009	Very bad job	8
county	37	2009	Very good job	11
county	35	2009	Don't know / Haven't heard enough	1
county	35	2009	Neither good nor bad job	3
county	35	2009	Somewhat bad job	3
county	35	2009	Somewhat good job	28
county	35	2009	Very bad job	1
county	35	2009	Very good job	4
county	22	2009	Don't know / Haven't heard enough	2
county	22	2009	Neither good nor bad job	2
county	22	2009	Somewhat bad job	1
county	22	2009	Somewhat good job	79
county	22	2009	Very bad job	4
county	22	2009	Very good job	32
county	3	2009	Don't know / Haven't heard enough	8
county	3	2009	Neither good nor bad job	1
county	3	2009	Somewhat bad job	1
county	3	2009	Somewhat good job	46
county	3	2009	Very good job	8
county	20	2009	Don't know / Haven't heard enough	1
county	20	2009	Neither good nor bad job	2
county	20	2009	Somewhat bad job	3
county	20	2009	Somewhat good job	21
county	20	2009	Very good job	13
county	45	2009	Don't know / Haven't heard enough	18
county	45	2009	Neither good nor bad job	9
county	45	2009	Somewhat bad job	18
county	45	2009	Somewhat good job	19
county	45	2009	Very bad job	1
county	45	2009	Very good job	7
county	42	2009	Don't know / Haven't heard enough	5
county	42	2009	Neither good nor bad job	4
county	42	2009	Somewhat bad job	12
county	42	2009	Somewhat good job	24
county	42	2009	Very bad job	5
county	42	2009	Very good job	6
county	15	2009	Don't know / Haven't heard enough	7
county	15	2009	Neither good nor bad job	10
county	15	2009	Somewhat bad job	3
county	15	2009	Somewhat good job	16
county	15	2009	Very bad job	2
county	15	2009	Very good job	18
county	2	2009	Don't know / Haven't heard enough	5
county	2	2009	Neither good nor bad job	1
county	2	2009	Somewhat bad job	1
county	2	2009	Somewhat good job	25
county	2	2009	Very good job	8
county	31	2009	China doesn't give development assistance to the country	1
county	31	2009	Don't know / Haven't heard enough	6
county	31	2009	Neither good nor bad job	1
county	31	2009	Somewhat bad job	2
county	31	2009	Somewhat good job	13
county	31	2009	Very good job	1
county	5	2009	Somewhat good job	3
county	5	2009	Very good job	5
county	16	2009	China doesn't give development assistance to the country	1
county	16	2009	Don't know / Haven't heard enough	9
county	16	2009	Neither good nor bad job	8
county	16	2009	Somewhat bad job	5
county	16	2009	Somewhat good job	24
county	16	2009	Very bad job	1
county	16	2009	Very good job	24
county	17	2009	Don't know / Haven't heard enough	8
county	17	2009	Somewhat bad job	6
county	17	2009	Somewhat good job	28
county	17	2009	Very bad job	1
county	17	2009	Very good job	13
county	9	2009	Don't know / Haven't heard enough	13
county	9	2009	Neither good nor bad job	4
county	9	2009	Somewhat bad job	1
county	9	2009	Somewhat good job	20
county	9	2009	Very good job	10
county	10	2009	Don't know / Haven't heard enough	5
county	10	2009	Somewhat bad job	1
county	10	2009	Somewhat good job	8
county	10	2009	Very good job	2
county	12	2009	China doesn't give development assistance to the country	1
county	12	2009	Don't know / Haven't heard enough	4
county	12	2009	Neither good nor bad job	9
county	12	2009	Somewhat bad job	7
county	12	2009	Somewhat good job	26
county	12	2009	Very bad job	4
county	12	2009	Very good job	34
county	44	2009	China doesn't give development assistance to the country	1
county	44	2009	Don't know / Haven't heard enough	7
county	44	2009	Neither good nor bad job	5
county	44	2009	Somewhat bad job	8
county	44	2009	Somewhat good job	14
county	44	2009	Very bad job	9
county	44	2009	Very good job	4
county	1	2009	China doesn't give development assistance to the country	1
county	1	2009	Don't know / Haven't heard enough	2
county	1	2009	Neither good nor bad job	2
county	1	2009	Somewhat bad job	1
county	1	2009	Somewhat good job	53
county	1	2009	Very good job	13
county	21	2009	Don't know / Haven't heard enough	1
county	21	2009	Somewhat good job	40
county	21	2009	Very bad job	1
county	21	2009	Very good job	22
county	47	2009	China doesn't give development assistance to the country	2
county	47	2009	Don't know / Haven't heard enough	20
county	47	2009	Neither good nor bad job	15
county	47	2009	Somewhat bad job	26
county	47	2009	Somewhat good job	101
county	47	2009	Very bad job	10
county	47	2009	Very good job	74
county	32	2009	Don't know / Haven't heard enough	6
county	32	2009	Neither good nor bad job	3
county	32	2009	Somewhat bad job	6
county	32	2009	Somewhat good job	66
county	32	2009	Very bad job	2
county	32	2009	Very good job	21
county	29	2009	Don't know / Haven't heard enough	3
county	29	2009	Neither good nor bad job	4
county	29	2009	Somewhat bad job	7
county	29	2009	Somewhat good job	19
county	29	2009	Very bad job	4
county	29	2009	Very good job	11
county	33	2009	Don't know / Haven't heard enough	4
county	33	2009	Somewhat bad job	7
county	33	2009	Somewhat good job	25
county	33	2009	Very bad job	2
county	33	2009	Very good job	10
county	46	2009	China doesn't give development assistance to the country	1
county	46	2009	Don't know / Haven't heard enough	6
county	46	2009	Neither good nor bad job	6
county	46	2009	Somewhat bad job	10
county	46	2009	Somewhat good job	8
county	46	2009	Very bad job	6
county	46	2009	Very good job	3
county	18	2009	Neither good nor bad job	2
county	18	2009	Somewhat bad job	1
county	18	2009	Somewhat good job	26
county	18	2009	Very bad job	2
county	18	2009	Very good job	9
county	19	2009	Don't know / Haven't heard enough	1
county	19	2009	Neither good nor bad job	1
county	19	2009	Somewhat bad job	2
county	19	2009	Somewhat good job	22
county	19	2009	Very bad job	1
county	19	2009	Very good job	21
county	25	2009	Don't know / Haven't heard enough	2
county	25	2009	Neither good nor bad job	2
county	25	2009	Somewhat good job	3
county	25	2009	Very good job	1
county	41	2009	Don't know / Haven't heard enough	12
county	41	2009	Neither good nor bad job	8
county	41	2009	Somewhat bad job	3
county	41	2009	Somewhat good job	22
county	41	2009	Very bad job	1
county	41	2009	Very good job	2
county	6	2009	Don't know / Haven't heard enough	1
county	6	2009	Somewhat good job	12
county	6	2009	Very good job	3
county	4	2009	China doesn't give development assistance to the country	1
county	4	2009	Don't know / Haven't heard enough	4
county	4	2009	Somewhat good job	3
county	13	2009	Don't know / Haven't heard enough	1
county	13	2009	Neither good nor bad job	6
county	13	2009	Somewhat bad job	2
county	13	2009	Somewhat good job	6
county	13	2009	Very good job	9
county	26	2009	Don't know / Haven't heard enough	6
county	26	2009	Neither good nor bad job	1
county	26	2009	Somewhat bad job	8
county	26	2009	Somewhat good job	24
county	26	2009	Very bad job	1
county	26	2009	Very good job	8
county	23	2009	China doesn't give development assistance to the country	1
county	23	2009	Don't know / Haven't heard enough	8
county	23	2009	Neither good nor bad job	9
county	23	2009	Somewhat bad job	4
county	23	2009	Somewhat good job	22
county	23	2009	Very bad job	2
county	23	2009	Very good job	2
county	27	2009	China doesn't give development assistance to the country	1
county	27	2009	Don't know / Haven't heard enough	4
county	27	2009	Neither good nor bad job	3
county	27	2009	Somewhat bad job	7
county	27	2009	Somewhat good job	23
county	27	2009	Very bad job	5
county	27	2009	Very good job	13
county	38	2009	Don't know / Haven't heard enough	2
county	38	2009	Neither good nor bad job	3
county	38	2009	Somewhat bad job	3
county	38	2009	Somewhat good job	12
county	38	2009	Very bad job	6
county	38	2009	Very good job	6
county	8	2009	Don't know / Haven't heard enough	13
county	8	2009	Neither good nor bad job	1
county	8	2009	Somewhat bad job	1
county	8	2009	Somewhat good job	12
county	8	2009	Very good job	5
county	24	2009	Don't know / Haven't heard enough	3
county	24	2009	Neither good nor bad job	3
county	24	2009	Somewhat good job	8
county	24	2009	Very bad job	2
county	24	2009	Very good job	8
country	KE	2009	Very bad job	95
country	KE	2009	Don't know / Haven't heard enough	258
country	KE	2009	Somewhat bad job	230
country	KE	2009	Very good job	525
country	KE	2009	Somewhat good job	1089
country	KE	2009	Neither good nor bad job	184
country	KE	2009	China doesn't give development assistance to the country	16
\.


--
-- Name: chinas_assistance_meets_country_needs pk_chinas_assistance_meets_country_needs; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chinas_assistance_meets_country_needs
    ADD CONSTRAINT pk_chinas_assistance_meets_country_needs PRIMARY KEY (geo_level, geo_code, geo_version, chinas_assistance_meets_country_needs);


--
-- PostgreSQL database dump complete
--


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

ALTER TABLE IF EXISTS ONLY public.household_heads DROP CONSTRAINT IF EXISTS pk_household_heads;
DROP TABLE IF EXISTS public.household_heads;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: household_heads; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.household_heads (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "Household_Heads" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: household_heads; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.household_heads (geo_level, geo_code, geo_version, "Household_Heads", total) FROM stdin;
county	47	2009	Female Headed Households	233000
county	1	2009	Female Headed Households	59900
county	2	2009	Female Headed Households	40300
county	3	2009	Female Headed Households	65000
county	4	2009	Female Headed Households	14400
county	5	2009	Female Headed Households	5500
county	6	2009	Female Headed Households	23900
county	7	2009	Female Headed Households	25000
county	8	2009	Female Headed Households	16900
county	9	2009	Female Headed Households	23400
county	10	2009	Female Headed Households	21600
county	11	2009	Female Headed Households	12100
county	12	2009	Female Headed Households	91800
county	13	2009	Female Headed Households	28300
county	14	2009	Female Headed Households	43000
county	15	2009	Female Headed Households	92800
county	16	2009	Female Headed Households	96900
county	17	2009	Female Headed Households	77100
county	18	2009	Female Headed Households	49700
county	19	2009	Female Headed Households	71900
county	20	2009	Female Headed Households	46200
county	21	2009	Female Headed Households	95200
county	22	2009	Female Headed Households	132200
county	23	2009	Female Headed Households	45600
county	24	2009	Female Headed Households	32400
county	25	2009	Female Headed Households	22500
county	26	2009	Female Headed Households	50100
county	27	2009	Female Headed Households	58100
county	28	2009	Female Headed Households	24000
county	29	2009	Female Headed Households	43200
county	30	2009	Female Headed Households	38800
county	31	2009	Female Headed Households	37100
county	32	2009	Female Headed Households	128600
county	33	2009	Female Headed Households	58000
county	34	2009	Female Headed Households	54400
county	35	2009	Female Headed Households	42800
county	36	2009	Female Headed Households	44200
county	37	2009	Female Headed Households	122800
county	38	2009	Female Headed Households	49800
county	39	2009	Female Headed Households	83300
county	40	2009	Female Headed Households	58400
county	41	2009	Female Headed Households	90100
county	42	2009	Female Headed Households	82500
county	43	2009	Female Headed Households	90100
county	44	2009	Female Headed Households	69000
county	45	2009	Female Headed Households	84000
county	46	2009	Female Headed Households	43100
country	KE	2009	Female Headed Households	2377000
county	47	2009	Youth Headed Households	3400
county	1	2009	Youth Headed Households	1000
county	2	2009	Youth Headed Households	800
county	3	2009	Youth Headed Households	1200
county	4	2009	Youth Headed Households	400
county	5	2009	Youth Headed Households	100
county	6	2009	Youth Headed Households	400
county	7	2009	Youth Headed Households	300
county	8	2009	Youth Headed Households	200
county	9	2009	Youth Headed Households	200
county	10	2009	Youth Headed Households	400
county	11	2009	Youth Headed Households	300
county	12	2009	Youth Headed Households	1000
county	13	2009	Youth Headed Households	300
county	14	2009	Youth Headed Households	400
county	15	2009	Youth Headed Households	2200
county	16	2009	Youth Headed Households	1500
county	17	2009	Youth Headed Households	1500
county	18	2009	Youth Headed Households	600
county	19	2009	Youth Headed Households	600
county	20	2009	Youth Headed Households	300
county	21	2009	Youth Headed Households	900
county	22	2009	Youth Headed Households	1300
county	23	2009	Youth Headed Households	500
county	24	2009	Youth Headed Households	600
county	25	2009	Youth Headed Households	700
county	26	2009	Youth Headed Households	900
county	27	2009	Youth Headed Households	1000
county	28	2009	Youth Headed Households	500
county	29	2009	Youth Headed Households	500
county	30	2009	Youth Headed Households	900
county	31	2009	Youth Headed Households	600
county	32	2009	Youth Headed Households	2200
county	33	2009	Youth Headed Households	1200
county	34	2009	Youth Headed Households	1000
county	35	2009	Youth Headed Households	600
county	36	2009	Youth Headed Households	500
county	37	2009	Youth Headed Households	1700
county	38	2009	Youth Headed Households	600
county	39	2009	Youth Headed Households	1000
county	40	2009	Youth Headed Households	700
county	41	2009	Youth Headed Households	1100
county	42	2009	Youth Headed Households	1400
county	43	2009	Youth Headed Households	1400
county	44	2009	Youth Headed Households	1000
county	45	2009	Youth Headed Households	1700
county	46	2009	Youth Headed Households	600
country	KE	2009	Youth Headed Households	42200
\.


--
-- Name: household_heads pk_household_heads; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.household_heads
    ADD CONSTRAINT pk_household_heads PRIMARY KEY (geo_level, geo_code, geo_version, "Household_Heads");


--
-- PostgreSQL database dump complete
--


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

ALTER TABLE IF EXISTS ONLY public.contraceptive_method DROP CONSTRAINT IF EXISTS contraceptive_method_pkey;
DROP TABLE IF EXISTS public.contraceptive_method;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contraceptive_method; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contraceptive_method (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    contraceptive_method character varying(128) NOT NULL,
    total double precision NOT NULL
);


--
-- Data for Name: contraceptive_method; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contraceptive_method (geo_level, geo_code, contraceptive_method, total) FROM stdin;
county	1	modern	43.6000000000000014
county	1	traditional	11.4000000000000004
county	2	modern	38.2000000000000028
county	2	traditional	3.29999999999999982
county	3	modern	32.7999999999999972
county	3	traditional	1.30000000000000004
county	4	modern	20.5
county	4	traditional	8.19999999999999929
county	5	modern	39.5
county	5	traditional	2.60000000000000009
county	6	modern	61.2999999999999972
county	6	traditional	6.59999999999999964
county	7	modern	5.5
county	7	traditional	0
county	8	modern	2.29999999999999982
county	8	traditional	0
county	9	modern	1.89999999999999991
county	9	traditional	0
county	10	modern	10.9000000000000004
county	10	traditional	0.800000000000000044
county	11	modern	26.3000000000000007
county	11	traditional	0.699999999999999956
county	12	modern	73.2000000000000028
county	12	traditional	5
county	13	modern	67.2000000000000028
county	13	traditional	6.79999999999999982
county	14	modern	67.2000000000000028
county	14	traditional	3.39999999999999991
county	15	modern	55.1000000000000014
county	15	traditional	2.20000000000000018
county	16	modern	67.5
county	16	traditional	8.30000000000000071
county	17	modern	65
county	17	traditional	15.3000000000000007
county	18	modern	60.3999999999999986
county	18	traditional	5.20000000000000018
county	19	modern	67.0999999999999943
county	19	traditional	6
county	20	modern	75.5999999999999943
county	20	traditional	5.40000000000000036
county	21	modern	63.3999999999999986
county	21	traditional	5.5
county	22	modern	67.7999999999999972
county	22	traditional	6.29999999999999982
county	23	modern	10.0999999999999996
county	23	traditional	0.299999999999999989
county	24	modern	13.3000000000000007
county	24	traditional	0.900000000000000022
county	25	modern	20
county	25	traditional	2.70000000000000018
county	26	modern	56.3999999999999986
county	26	traditional	7.5
county	27	modern	56
county	27	traditional	6.59999999999999964
county	28	modern	43.6000000000000014
county	28	traditional	11.5999999999999996
county	29	modern	59.2000000000000028
county	29	traditional	5.40000000000000036
county	30	modern	33.1000000000000014
county	30	traditional	8.30000000000000071
county	31	modern	51.2999999999999972
county	31	traditional	7.79999999999999982
county	32	modern	53.5
county	32	traditional	3.20000000000000018
county	33	modern	38.1000000000000014
county	33	traditional	9.69999999999999929
county	34	modern	45.2000000000000028
county	34	traditional	9.30000000000000071
county	35	modern	56.8999999999999986
county	35	traditional	6.09999999999999964
county	36	modern	50.3999999999999986
county	36	traditional	4.40000000000000036
county	37	modern	60.2999999999999972
county	37	traditional	1.69999999999999996
county	38	modern	56.6000000000000014
county	38	traditional	2.89999999999999991
county	39	modern	53.8999999999999986
county	39	traditional	1.60000000000000009
county	40	modern	56.5
county	40	traditional	0.900000000000000022
county	41	modern	51
county	41	traditional	4
county	42	modern	59.2999999999999972
county	42	traditional	3.10000000000000009
county	43	modern	45.5
county	43	traditional	1.19999999999999996
county	44	modern	43.8999999999999986
county	44	traditional	0.699999999999999956
county	45	modern	62.7999999999999972
county	45	traditional	3.39999999999999991
county	46	modern	64.2000000000000028
county	46	traditional	3.70000000000000018
county	47	modern	58.2999999999999972
county	47	traditional	4.40000000000000036
country	KE	modern	53.2000000000000028
country	KE	traditional	4.79999999999999982
\.


--
-- Name: contraceptive_method contraceptive_method_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contraceptive_method
    ADD CONSTRAINT contraceptive_method_pkey PRIMARY KEY (geo_level, geo_code, contraceptive_method, total);


--
-- PostgreSQL database dump complete
--


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

ALTER TABLE IF EXISTS ONLY public.weightforheight DROP CONSTRAINT IF EXISTS pk_weightforheight;
DROP TABLE IF EXISTS public.weightforheight;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: weightforheight; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.weightforheight (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "weight for height" character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: weightforheight; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.weightforheight (geo_level, geo_code, "weight for height", total, geo_version) FROM stdin;
county	1	below -3	0	2009
county	1	below -2	4.09999999999999964	2009
county	1	above +2	4.20000000000000018	2009
county	1	mean Z-score	0	2009
county	2	below -3	0.800000000000000044	2009
county	2	below -2	4.40000000000000036	2009
county	2	above +2	3.79999999999999982	2009
county	2	mean Z-score	0	2009
county	3	below -3	0.900000000000000022	2009
county	3	below -2	4.09999999999999964	2009
county	3	above +2	2.79999999999999982	2009
county	3	mean Z-score	-0.100000000000000006	2009
county	4	below -3	0.900000000000000022	2009
county	4	below -2	5.70000000000000018	2009
county	4	above +2	1.30000000000000004	2009
county	4	mean Z-score	-0.299999999999999989	2009
county	5	below -3	0.299999999999999989	2009
county	5	below -2	4.20000000000000018	2009
county	5	above +2	2	2009
county	5	mean Z-score	-0.100000000000000006	2009
county	6	below -3	3.60000000000000009	2009
county	6	below -2	7.20000000000000018	2009
county	6	above +2	4.20000000000000018	2009
county	6	mean Z-score	-0.100000000000000006	2009
county	7	below -3	1.30000000000000004	2009
county	7	below -2	11.4000000000000004	2009
county	7	above +2	2.29999999999999982	2009
county	7	mean Z-score	-0.599999999999999978	2009
county	8	below -3	3.10000000000000009	2009
county	8	below -2	14.1999999999999993	2009
county	8	above +2	0.699999999999999956	2009
county	8	mean Z-score	-0.800000000000000044	2009
county	9	below -3	3.79999999999999982	2009
county	9	below -2	14.8000000000000007	2009
county	9	above +2	5.90000000000000036	2009
county	9	mean Z-score	-0.5	2009
county	10	below -3	5.09999999999999964	2009
county	10	below -2	16.3000000000000007	2009
county	10	above +2	1	2009
county	10	mean Z-score	-0.900000000000000022	2009
county	11	below -3	2.39999999999999991	2009
county	11	below -2	9.09999999999999964	2009
county	11	above +2	1.60000000000000009	2009
county	11	mean Z-score	-0.599999999999999978	2009
county	12	below -3	1	2009
county	12	below -2	2.89999999999999991	2009
county	12	above +2	4.90000000000000036	2009
county	12	mean Z-score	0.100000000000000006	2009
county	13	below -3	0	2009
county	13	below -2	3.29999999999999982	2009
county	13	above +2	3.60000000000000009	2009
county	13	mean Z-score	0	2009
county	14	below -3	0.200000000000000011	2009
county	14	below -2	3	2009
county	14	above +2	3.60000000000000009	2009
county	14	mean Z-score	0.100000000000000006	2009
county	15	below -3	0.400000000000000022	2009
county	15	below -2	3.39999999999999991	2009
county	15	above +2	3.10000000000000009	2009
county	15	mean Z-score	-0.200000000000000011	2009
county	16	below -3	2.5	2009
county	16	below -2	6.5	2009
county	16	above +2	5.5	2009
county	16	mean Z-score	-0.100000000000000006	2009
county	17	below -3	1	2009
county	17	below -2	2.10000000000000009	2009
county	17	above +2	5.29999999999999982	2009
county	17	mean Z-score	0.100000000000000006	2009
county	18	below -3	0.100000000000000006	2009
county	18	below -2	2	2009
county	18	above +2	6.79999999999999982	2009
county	18	mean Z-score	0.299999999999999989	2009
county	19	below -3	0	2009
county	19	below -2	2.39999999999999991	2009
county	19	above +2	5.90000000000000036	2009
county	19	mean Z-score	0.200000000000000011	2009
county	20	below -3	0.800000000000000044	2009
county	20	below -2	3.89999999999999991	2009
county	20	above +2	4.5	2009
county	20	mean Z-score	0	2009
county	21	below -3	0	2009
county	21	below -2	1.39999999999999991	2009
county	21	above +2	3.10000000000000009	2009
county	21	mean Z-score	0.100000000000000006	2009
county	22	below -3	0.299999999999999989	2009
county	22	below -2	2.29999999999999982	2009
county	22	above +2	7.90000000000000036	2009
county	22	mean Z-score	0.400000000000000022	2009
county	23	below -3	4.40000000000000036	2009
county	23	below -2	22.8999999999999986	2009
county	23	above +2	0.200000000000000011	2009
county	23	mean Z-score	-1.30000000000000004	2009
county	24	below -3	2.39999999999999991	2009
county	24	below -2	14.3000000000000007	2009
county	24	above +2	1.39999999999999991	2009
county	24	mean Z-score	-0.800000000000000044	2009
county	25	below -3	2.79999999999999982	2009
county	25	below -2	13.5999999999999996	2009
county	25	above +2	0.599999999999999978	2009
county	25	mean Z-score	-0.900000000000000022	2009
county	26	below -3	2	2009
county	26	below -2	3.89999999999999991	2009
county	26	above +2	2.39999999999999991	2009
county	26	mean Z-score	-0.100000000000000006	2009
county	27	below -3	1.10000000000000009	2009
county	27	below -2	3	2009
county	27	above +2	5.09999999999999964	2009
county	27	mean Z-score	0	2009
county	28	below -3	1.19999999999999996	2009
county	28	below -2	4.29999999999999982	2009
county	28	above +2	4.5	2009
county	28	mean Z-score	-0.200000000000000011	2009
county	29	below -3	1	2009
county	29	below -2	3.89999999999999991	2009
county	29	above +2	3.70000000000000018	2009
county	29	mean Z-score	-0.100000000000000006	2009
county	30	below -3	1.19999999999999996	2009
county	30	below -2	6.90000000000000036	2009
county	30	above +2	2	2009
county	30	mean Z-score	-0.5	2009
county	31	below -3	0.800000000000000044	2009
county	31	below -2	4.40000000000000036	2009
county	31	above +2	3.70000000000000018	2009
county	31	mean Z-score	-0.100000000000000006	2009
county	32	below -3	0.599999999999999978	2009
county	32	below -2	4.5	2009
county	32	above +2	5.70000000000000018	2009
county	32	mean Z-score	0.100000000000000006	2009
county	33	below -3	0.699999999999999956	2009
county	33	below -2	2.39999999999999991	2009
county	33	above +2	3	2009
county	33	mean Z-score	-0.100000000000000006	2009
county	34	below -3	0.800000000000000044	2009
county	34	below -2	3	2009
county	34	above +2	4.29999999999999982	2009
county	34	mean Z-score	0.100000000000000006	2009
county	35	below -3	1.10000000000000009	2009
county	35	below -2	5.59999999999999964	2009
county	35	above +2	6.59999999999999964	2009
county	35	mean Z-score	0.100000000000000006	2009
county	36	below -3	0.400000000000000022	2009
county	36	below -2	1.80000000000000004	2009
county	36	above +2	3.70000000000000018	2009
county	36	mean Z-score	0.100000000000000006	2009
county	37	below -3	0.5	2009
county	37	below -2	1.80000000000000004	2009
county	37	above +2	4.29999999999999982	2009
county	37	mean Z-score	0.200000000000000011	2009
county	38	below -3	0.400000000000000022	2009
county	38	below -2	2.60000000000000009	2009
county	38	above +2	4	2009
county	38	mean Z-score	0.200000000000000011	2009
county	39	below -3	0.200000000000000011	2009
county	39	below -2	1.80000000000000004	2009
county	39	above +2	2.89999999999999991	2009
county	39	mean Z-score	0.100000000000000006	2009
county	40	below -3	0.699999999999999956	2009
county	40	below -2	2.20000000000000018	2009
county	40	above +2	2.39999999999999991	2009
county	40	mean Z-score	0.100000000000000006	2009
county	41	below -3	0	2009
county	41	below -2	0.200000000000000011	2009
county	41	above +2	4.70000000000000018	2009
county	41	mean Z-score	0.200000000000000011	2009
county	42	below -3	0	2009
county	42	below -2	0.800000000000000044	2009
county	42	above +2	5.70000000000000018	2009
county	42	mean Z-score	0.200000000000000011	2009
county	43	below -3	0.900000000000000022	2009
county	43	below -2	2.29999999999999982	2009
county	43	above +2	4.09999999999999964	2009
county	43	mean Z-score	0.200000000000000011	2009
county	44	below -3	0.900000000000000022	2009
county	44	below -2	4	2009
county	44	above +2	4.40000000000000036	2009
county	44	mean Z-score	0.200000000000000011	2009
county	45	below -3	0	2009
county	45	below -2	1.69999999999999996	2009
county	45	above +2	4	2009
county	45	mean Z-score	0.200000000000000011	2009
county	46	below -3	0.900000000000000022	2009
county	46	below -2	4.09999999999999964	2009
county	46	above +2	2.89999999999999991	2009
county	46	mean Z-score	0	2009
county	47	below -3	0.800000000000000044	2009
county	47	below -2	2.5	2009
county	47	above +2	5.29999999999999982	2009
county	47	mean Z-score	0.200000000000000011	2009
country	KE	below -3	0.900000000000000022	2009
country	KE	below -2	4	2009
country	KE	above +2	4.09999999999999964	2009
country	KE	mean Z-score	0	2009
\.


--
-- Name: weightforheight pk_weightforheight; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.weightforheight
    ADD CONSTRAINT pk_weightforheight PRIMARY KEY (geo_level, geo_code, geo_version, "weight for height");


--
-- PostgreSQL database dump complete
--


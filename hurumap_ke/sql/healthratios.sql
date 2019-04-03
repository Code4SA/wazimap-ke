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

ALTER TABLE IF EXISTS ONLY public.healthratios DROP CONSTRAINT IF EXISTS pk_healthratios;
DROP TABLE IF EXISTS public.healthratios;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: healthratios; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.healthratios (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    healthratios character varying(30) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: healthratios; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.healthratios (geo_level, geo_code, healthratios, total, geo_version) FROM stdin;
county	27	doctor ratio	4000	2009
county	19	doctor ratio	5000	2009
county	1	doctor ratio	7000	2009
county	14	doctor ratio	13000	2009
county	42	doctor ratio	15000	2009
county	22	doctor ratio	15000	2009
county	35	doctor ratio	15000	2009
county	21	doctor ratio	17000	2009
county	13	doctor ratio	21000	2009
county	31	doctor ratio	21000	2009
county	18	doctor ratio	22000	2009
county	47	doctor ratio	23000	2009
county	44	doctor ratio	24000	2009
county	25	doctor ratio	25000	2009
county	15	doctor ratio	26000	2009
county	16	doctor ratio	27000	2009
county	20	doctor ratio	29000	2009
county	40	doctor ratio	31000	2009
county	32	doctor ratio	32000	2009
county	10	doctor ratio	32000	2009
county	17	doctor ratio	37000	2009
county	12	doctor ratio	38000	2009
county	33	doctor ratio	41000	2009
county	41	doctor ratio	44000	2009
county	43	doctor ratio	44000	2009
county	39	doctor ratio	45000	2009
county	2	doctor ratio	46000	2009
county	4	doctor ratio	48000	2009
county	3	doctor ratio	48000	2009
county	7	doctor ratio	52000	2009
county	28	doctor ratio	62000	2009
county	37	doctor ratio	69000	2009
county	6	doctor ratio	71000	2009
county	24	doctor ratio	73000	2009
county	34	doctor ratio	76000	2009
county	29	doctor ratio	94000	2009
county	46	doctor ratio	100000	2009
county	36	doctor ratio	103000	2009
county	8	doctor ratio	132000	2009
county	11	doctor ratio	143000	2009
county	38	doctor ratio	185000	2009
county	9	doctor ratio	256000	2009
county	26	doctor ratio	273000	2009
county	30	doctor ratio	278000	2009
county	23	doctor ratio	285000	2009
county	45	doctor ratio	378000	2009
county	5	doctor ratio	0	2009
country	KE	doctor ratio	25000	2009
county	19	nurse ratio	654	2009
county	27	nurse ratio	706	2009
county	25	nurse ratio	1037	2009
county	14	nurse ratio	1060	2009
county	20	nurse ratio	1100	2009
county	18	nurse ratio	1117	2009
county	40	nurse ratio	1148	2009
county	1	nurse ratio	1381	2009
county	42	nurse ratio	1433	2009
county	31	nurse ratio	1446	2009
county	22	nurse ratio	1466	2009
county	44	nurse ratio	1478	2009
county	12	nurse ratio	1609	2009
county	21	nurse ratio	1609	2009
county	16	nurse ratio	1688	2009
county	15	nurse ratio	1770	2009
county	13	nurse ratio	1773	2009
county	41	nurse ratio	1815	2009
county	35	nurse ratio	1832	2009
county	43	nurse ratio	1949	2009
county	10	nurse ratio	1967	2009
county	17	nurse ratio	1970	2009
county	24	nurse ratio	1979	2009
county	32	nurse ratio	2146	2009
county	7	nurse ratio	2316	2009
county	28	nurse ratio	2434	2009
county	46	nurse ratio	2493	2009
county	6	nurse ratio	2612	2009
county	3	nurse ratio	2655	2009
county	47	nurse ratio	2797	2009
county	2	nurse ratio	3080	2009
county	11	nurse ratio	3115	2009
county	37	nurse ratio	3122	2009
county	33	nurse ratio	3128	2009
county	29	nurse ratio	3137	2009
county	39	nurse ratio	3315	2009
county	38	nurse ratio	3990	2009
county	30	nurse ratio	4115	2009
county	8	nurse ratio	4163	2009
county	36	nurse ratio	4210	2009
county	4	nurse ratio	5108	2009
county	45	nurse ratio	5703	2009
county	26	nurse ratio	6110	2009
county	34	nurse ratio	7723	2009
county	9	nurse ratio	14051	2009
county	23	nurse ratio	14748	2009
county	5	nurse ratio	0	2009
country	KE	nurse ratio	3049	2009
\.


--
-- Name: healthratios pk_healthratios; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.healthratios
    ADD CONSTRAINT pk_healthratios PRIMARY KEY (geo_level, geo_code, geo_version, healthratios);


--
-- PostgreSQL database dump complete
--


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

ALTER TABLE IF EXISTS ONLY public.contraceptive_use DROP CONSTRAINT IF EXISTS pk_contraceptive_use;
DROP TABLE IF EXISTS public.contraceptive_use;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contraceptive_use; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contraceptive_use (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    contraceptive_use character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: contraceptive_use; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contraceptive_use (geo_level, geo_code, contraceptive_use, total, geo_version) FROM stdin;
county	1	modern	43.6000000000000014	2009
county	1	traditional	11.4000000000000004	2009
county	2	modern	38.2000000000000028	2009
county	2	traditional	3.29999999999999982	2009
county	3	modern	32.7999999999999972	2009
county	3	traditional	1.30000000000000004	2009
county	4	modern	20.5	2009
county	4	traditional	8.19999999999999929	2009
county	5	modern	39.5	2009
county	5	traditional	2.60000000000000009	2009
county	6	modern	61.2999999999999972	2009
county	6	traditional	6.59999999999999964	2009
county	7	modern	5.5	2009
county	7	traditional	0	2009
county	8	modern	2.29999999999999982	2009
county	8	traditional	0	2009
county	9	modern	1.89999999999999991	2009
county	9	traditional	0	2009
county	10	modern	10.9000000000000004	2009
county	10	traditional	0.800000000000000044	2009
county	11	modern	26.3000000000000007	2009
county	11	traditional	0.699999999999999956	2009
county	12	modern	73.2000000000000028	2009
county	12	traditional	5	2009
county	13	modern	67.2000000000000028	2009
county	13	traditional	6.79999999999999982	2009
county	14	modern	67.2000000000000028	2009
county	14	traditional	3.39999999999999991	2009
county	15	modern	55.1000000000000014	2009
county	15	traditional	2.20000000000000018	2009
county	16	modern	67.5	2009
county	16	traditional	8.30000000000000071	2009
county	17	modern	65	2009
county	17	traditional	15.3000000000000007	2009
county	18	modern	60.3999999999999986	2009
county	18	traditional	5.20000000000000018	2009
county	19	modern	67.0999999999999943	2009
county	19	traditional	6	2009
county	20	modern	75.5999999999999943	2009
county	20	traditional	5.40000000000000036	2009
county	21	modern	63.3999999999999986	2009
county	21	traditional	5.5	2009
county	22	modern	67.7999999999999972	2009
county	22	traditional	6.29999999999999982	2009
county	23	modern	10.0999999999999996	2009
county	23	traditional	0.299999999999999989	2009
county	24	modern	13.3000000000000007	2009
county	24	traditional	0.900000000000000022	2009
county	25	modern	20	2009
county	25	traditional	2.70000000000000018	2009
county	26	modern	56.3999999999999986	2009
county	26	traditional	7.5	2009
county	27	modern	56	2009
county	27	traditional	6.59999999999999964	2009
county	28	modern	43.6000000000000014	2009
county	28	traditional	11.5999999999999996	2009
county	29	modern	59.2000000000000028	2009
county	29	traditional	5.40000000000000036	2009
county	30	modern	33.1000000000000014	2009
county	30	traditional	8.30000000000000071	2009
county	31	modern	51.2999999999999972	2009
county	31	traditional	7.79999999999999982	2009
county	32	modern	53.5	2009
county	32	traditional	3.20000000000000018	2009
county	33	modern	38.1000000000000014	2009
county	33	traditional	9.69999999999999929	2009
county	34	modern	45.2000000000000028	2009
county	34	traditional	9.30000000000000071	2009
county	35	modern	56.8999999999999986	2009
county	35	traditional	6.09999999999999964	2009
county	36	modern	50.3999999999999986	2009
county	36	traditional	4.40000000000000036	2009
county	37	modern	60.2999999999999972	2009
county	37	traditional	1.69999999999999996	2009
county	38	modern	56.6000000000000014	2009
county	38	traditional	2.89999999999999991	2009
county	39	modern	53.8999999999999986	2009
county	39	traditional	1.60000000000000009	2009
county	40	modern	56.5	2009
county	40	traditional	0.900000000000000022	2009
county	41	modern	51	2009
county	41	traditional	4	2009
county	42	modern	59.2999999999999972	2009
county	42	traditional	3.10000000000000009	2009
county	43	modern	45.5	2009
county	43	traditional	1.19999999999999996	2009
county	44	modern	43.8999999999999986	2009
county	44	traditional	0.699999999999999956	2009
county	45	modern	62.7999999999999972	2009
county	45	traditional	3.39999999999999991	2009
county	46	modern	64.2000000000000028	2009
county	46	traditional	3.70000000000000018	2009
county	47	modern	58.2999999999999972	2009
county	47	traditional	4.40000000000000036	2009
country	KE	modern	53.2000000000000028	2009
country	KE	traditional	4.79999999999999982	2009
county	1	not using	45	2009
county	2	not using	58.5	2009
county	3	not using	65.9000000000000057	2009
county	4	not using	71.2999999999999972	2009
county	5	not using	57.7999999999999972	2009
county	6	not using	32	2009
county	7	not using	94.5	2009
county	8	not using	97.7000000000000028	2009
county	9	not using	98.0999999999999943	2009
county	10	not using	88.2999999999999972	2009
county	11	not using	73	2009
county	12	not using	21.8000000000000007	2009
county	13	not using	26	2009
county	14	not using	29.3999999999999986	2009
county	15	not using	42.7000000000000028	2009
county	16	not using	24.1000000000000014	2009
county	17	not using	19.6999999999999993	2009
county	18	not using	34.3999999999999986	2009
county	19	not using	26.8999999999999986	2009
county	20	not using	19	2009
county	21	not using	31.1000000000000014	2009
county	22	not using	26	2009
county	23	not using	89.5999999999999943	2009
county	24	not using	85.7999999999999972	2009
county	25	not using	77.2999999999999972	2009
county	26	not using	36.1000000000000014	2009
county	27	not using	37.3999999999999986	2009
county	28	not using	44.7999999999999972	2009
county	29	not using	35.5	2009
county	30	not using	58.6000000000000014	2009
county	31	not using	40.8999999999999986	2009
county	32	not using	43.2000000000000028	2009
county	33	not using	52.2000000000000028	2009
county	34	not using	45.5	2009
county	35	not using	37.1000000000000014	2009
county	36	not using	45.2000000000000028	2009
county	37	not using	37.8999999999999986	2009
county	38	not using	40.5	2009
county	39	not using	44.5	2009
county	40	not using	42.5	2009
county	41	not using	45	2009
county	42	not using	37.6000000000000014	2009
county	43	not using	53.2999999999999972	2009
county	44	not using	55.3999999999999986	2009
county	45	not using	33.8999999999999986	2009
county	46	not using	32.1000000000000014	2009
county	47	not using	37.3999999999999986	2009
country	KE	not using	42	2009
\.


--
-- Name: contraceptive_use pk_contraceptive_use; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contraceptive_use
    ADD CONSTRAINT pk_contraceptive_use PRIMARY KEY (geo_level, geo_code, geo_version, contraceptive_use);


--
-- PostgreSQL database dump complete
--


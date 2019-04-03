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

ALTER TABLE IF EXISTS ONLY public.householdpossessionofitn DROP CONSTRAINT IF EXISTS pk_householdpossessionofitn;
DROP TABLE IF EXISTS public.householdpossessionofitn;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: householdpossessionofitn; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.householdpossessionofitn (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "household possession of itn" character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: householdpossessionofitn; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.householdpossessionofitn (geo_level, geo_code, "household possession of itn", total, geo_version) FROM stdin;
county	1	households with at least one ITN	56.8999999999999986	2009
county	1	average ITN per household	0.900000000000000022	2009
county	1	Percentage households with ITN for every 2 people in household	38.8999999999999986	2009
county	2	households with at least one ITN	81	2009
county	2	average ITN per household	1.69999999999999996	2009
county	2	Percentage households with ITN for every 2 people in household	47.7999999999999972	2009
county	3	households with at least one ITN	73.0999999999999943	2009
county	3	average ITN per household	1.60000000000000009	2009
county	3	Percentage households with ITN for every 2 people in household	41.5	2009
county	4	households with at least one ITN	65.2999999999999972	2009
county	4	average ITN per household	1.30000000000000004	2009
county	4	Percentage households with ITN for every 2 people in household	33	2009
county	5	households with at least one ITN	71.0999999999999943	2009
county	5	average ITN per household	1.5	2009
county	5	Percentage households with ITN for every 2 people in household	51.2000000000000028	2009
county	6	households with at least one ITN	80.4000000000000057	2009
county	6	average ITN per household	1.60000000000000009	2009
county	6	Percentage households with ITN for every 2 people in household	60.6000000000000014	2009
county	7	households with at least one ITN	61.1000000000000014	2009
county	7	average ITN per household	1.39999999999999991	2009
county	7	Percentage households with ITN for every 2 people in household	34.3999999999999986	2009
county	8	households with at least one ITN	53.6000000000000014	2009
county	8	average ITN per household	1.10000000000000009	2009
county	8	Percentage households with ITN for every 2 people in household	18.1000000000000014	2009
county	9	households with at least one ITN	28.6999999999999993	2009
county	9	average ITN per household	0.5	2009
county	9	Percentage households with ITN for every 2 people in household	10.9000000000000004	2009
county	10	households with at least one ITN	24.6999999999999993	2009
county	10	average ITN per household	0.299999999999999989	2009
county	10	Percentage households with ITN for every 2 people in household	7	2009
county	11	households with at least one ITN	62.7000000000000028	2009
county	11	average ITN per household	1.10000000000000009	2009
county	11	Percentage households with ITN for every 2 people in household	31.5	2009
county	12	households with at least one ITN	53.5	2009
county	12	average ITN per household	1	2009
county	12	Percentage households with ITN for every 2 people in household	30.6000000000000014	2009
county	13	households with at least one ITN	67.2000000000000028	2009
county	13	average ITN per household	1.30000000000000004	2009
county	13	Percentage households with ITN for every 2 people in household	45.7999999999999972	2009
county	14	households with at least one ITN	55.8999999999999986	2009
county	14	average ITN per household	1.10000000000000009	2009
county	14	Percentage households with ITN for every 2 people in household	35.2999999999999972	2009
county	15	households with at least one ITN	61.1000000000000014	2009
county	15	average ITN per household	1.10000000000000009	2009
county	15	Percentage households with ITN for every 2 people in household	29.3000000000000007	2009
county	16	households with at least one ITN	56	2009
county	16	average ITN per household	1.10000000000000009	2009
county	16	Percentage households with ITN for every 2 people in household	31.5	2009
county	17	households with at least one ITN	55.2999999999999972	2009
county	17	average ITN per household	1.10000000000000009	2009
county	17	Percentage households with ITN for every 2 people in household	27.6999999999999993	2009
county	18	households with at least one ITN	12.5	2009
county	18	average ITN per household	0.200000000000000011	2009
county	18	Percentage households with ITN for every 2 people in household	7.09999999999999964	2009
county	19	households with at least one ITN	19.6999999999999993	2009
county	19	average ITN per household	0.299999999999999989	2009
county	19	Percentage households with ITN for every 2 people in household	11.9000000000000004	2009
county	20	households with at least one ITN	68.5	2009
county	20	average ITN per household	1.39999999999999991	2009
county	20	Percentage households with ITN for every 2 people in household	54.2999999999999972	2009
county	21	households with at least one ITN	43.7000000000000028	2009
county	21	average ITN per household	0.800000000000000044	2009
county	21	Percentage households with ITN for every 2 people in household	27.1000000000000014	2009
county	22	households with at least one ITN	39.8999999999999986	2009
county	22	average ITN per household	0.699999999999999956	2009
county	22	Percentage households with ITN for every 2 people in household	25.1999999999999993	2009
county	23	households with at least one ITN	46.2000000000000028	2009
county	23	average ITN per household	0.699999999999999956	2009
county	23	Percentage households with ITN for every 2 people in household	16.3000000000000007	2009
county	24	households with at least one ITN	60.2000000000000028	2009
county	24	average ITN per household	1.10000000000000009	2009
county	24	Percentage households with ITN for every 2 people in household	21.1999999999999993	2009
county	25	households with at least one ITN	18.8000000000000007	2009
county	25	average ITN per household	0.299999999999999989	2009
county	25	Percentage households with ITN for every 2 people in household	8.69999999999999929	2009
county	26	households with at least one ITN	70.5999999999999943	2009
county	26	average ITN per household	1.5	2009
county	26	Percentage households with ITN for every 2 people in household	38.3999999999999986	2009
county	27	households with at least one ITN	72	2009
county	27	average ITN per household	1.5	2009
county	27	Percentage households with ITN for every 2 people in household	49.7000000000000028	2009
county	28	households with at least one ITN	21.8999999999999986	2009
county	28	average ITN per household	0.299999999999999989	2009
county	28	Percentage households with ITN for every 2 people in household	10.0999999999999996	2009
county	29	households with at least one ITN	78.7999999999999972	2009
county	29	average ITN per household	1.60000000000000009	2009
county	29	Percentage households with ITN for every 2 people in household	41.8999999999999986	2009
county	30	households with at least one ITN	59.7999999999999972	2009
county	30	average ITN per household	1.10000000000000009	2009
county	30	Percentage households with ITN for every 2 people in household	32.7999999999999972	2009
county	31	households with at least one ITN	17.5	2009
county	31	average ITN per household	0.299999999999999989	2009
county	31	Percentage households with ITN for every 2 people in household	10.5999999999999996	2009
county	32	households with at least one ITN	37.7000000000000028	2009
county	32	average ITN per household	0.599999999999999978	2009
county	32	Percentage households with ITN for every 2 people in household	22.6999999999999993	2009
county	33	households with at least one ITN	52.2000000000000028	2009
county	33	average ITN per household	1	2009
county	33	Percentage households with ITN for every 2 people in household	25.3999999999999986	2009
county	34	households with at least one ITN	49.7999999999999972	2009
county	34	average ITN per household	0.900000000000000022	2009
county	34	Percentage households with ITN for every 2 people in household	33.2999999999999972	2009
county	35	households with at least one ITN	79.5	2009
county	35	average ITN per household	1.60000000000000009	2009
county	35	Percentage households with ITN for every 2 people in household	45.3999999999999986	2009
county	36	households with at least one ITN	77.5999999999999943	2009
county	36	average ITN per household	1.80000000000000004	2009
county	36	Percentage households with ITN for every 2 people in household	46.7999999999999972	2009
county	37	households with at least one ITN	78.7999999999999972	2009
county	37	average ITN per household	1.69999999999999996	2009
county	37	Percentage households with ITN for every 2 people in household	47	2009
county	38	households with at least one ITN	82.9000000000000057	2009
county	38	average ITN per household	1.69999999999999996	2009
county	38	Percentage households with ITN for every 2 people in household	44.8999999999999986	2009
county	39	households with at least one ITN	82.9000000000000057	2009
county	39	average ITN per household	1.80000000000000004	2009
county	39	Percentage households with ITN for every 2 people in household	41.7000000000000028	2009
county	40	households with at least one ITN	83.9000000000000057	2009
county	40	average ITN per household	1.89999999999999991	2009
county	40	Percentage households with ITN for every 2 people in household	48.7999999999999972	2009
county	41	households with at least one ITN	78.7999999999999972	2009
county	41	average ITN per household	1.5	2009
county	41	Percentage households with ITN for every 2 people in household	41.6000000000000014	2009
county	42	households with at least one ITN	87.5999999999999943	2009
county	42	average ITN per household	1.69999999999999996	2009
county	42	Percentage households with ITN for every 2 people in household	52.6000000000000014	2009
county	43	households with at least one ITN	74.2999999999999972	2009
county	43	average ITN per household	1.5	2009
county	43	Percentage households with ITN for every 2 people in household	37.5	2009
county	44	households with at least one ITN	74.5999999999999943	2009
county	44	average ITN per household	1.39999999999999991	2009
county	44	Percentage households with ITN for every 2 people in household	30.3000000000000007	2009
county	45	households with at least one ITN	86.0999999999999943	2009
county	45	average ITN per household	1.89999999999999991	2009
county	45	Percentage households with ITN for every 2 people in household	54.3999999999999986	2009
county	46	households with at least one ITN	84.5	2009
county	46	average ITN per household	1.69999999999999996	2009
county	46	Percentage households with ITN for every 2 people in household	57.1000000000000014	2009
county	47	households with at least one ITN	43.2999999999999972	2009
county	47	average ITN per household	0.699999999999999956	2009
county	47	Percentage households with ITN for every 2 people in household	28.5	2009
country	KE	households with at least one ITN	58.7000000000000028	2009
country	KE	average ITN per household	1.10000000000000009	2009
country	KE	Percentage households with ITN for every 2 people in household	34.2999999999999972	2009
\.


--
-- Name: householdpossessionofitn pk_householdpossessionofitn; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.householdpossessionofitn
    ADD CONSTRAINT pk_householdpossessionofitn PRIMARY KEY (geo_level, geo_code, geo_version, "household possession of itn");


--
-- PostgreSQL database dump complete
--


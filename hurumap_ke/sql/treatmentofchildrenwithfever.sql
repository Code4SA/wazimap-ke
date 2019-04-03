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

ALTER TABLE IF EXISTS ONLY public.treatmentofchildrenwithfever DROP CONSTRAINT IF EXISTS pk_treatmentofchildrenwithfever;
DROP TABLE IF EXISTS public.treatmentofchildrenwithfever;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: treatmentofchildrenwithfever; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.treatmentofchildrenwithfever (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "treatment of children with fever" character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: treatmentofchildrenwithfever; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.treatmentofchildrenwithfever (geo_level, geo_code, "treatment of children with fever", total, geo_version) FROM stdin;
county	1	had fever	22.5	2009
county	1	sort advice or treatment	91.0999999999999943	2009
county	1	blood drawn for testing	46.7000000000000028	2009
county	1	took any anti-malarial drug	14.9000000000000004	2009
county	1	took any ACT	13.5	2009
county	1	took any ACT on same or next day	3	2009
county	2	had fever	25.6999999999999993	2009
county	2	sort advice or treatment	69.5	2009
county	2	blood drawn for testing	42.7999999999999972	2009
county	2	took any anti-malarial drug	33.2000000000000028	2009
county	2	took any ACT	30	2009
county	2	took any ACT on same or next day	11.8000000000000007	2009
county	3	had fever	31.3000000000000007	2009
county	3	sort advice or treatment	78.5999999999999943	2009
county	3	blood drawn for testing	31	2009
county	3	took any anti-malarial drug	2.10000000000000009	2009
county	3	took any ACT	1	2009
county	3	took any ACT on same or next day	0	2009
county	4	had fever	26.8000000000000007	2009
county	4	sort advice or treatment	81.0999999999999943	2009
county	4	blood drawn for testing	22.6000000000000014	2009
county	4	took any anti-malarial drug	12.3000000000000007	2009
county	4	took any ACT	9.5	2009
county	4	took any ACT on same or next day	5.79999999999999982	2009
county	5	had fever	22.1999999999999993	2009
county	5	sort advice or treatment	61.5	2009
county	5	blood drawn for testing	11.8000000000000007	2009
county	5	took any anti-malarial drug	5.70000000000000018	2009
county	5	took any ACT	1.19999999999999996	2009
county	5	took any ACT on same or next day	0	2009
county	6	had fever	29.5	2009
county	6	sort advice or treatment	58.6000000000000014	2009
county	6	blood drawn for testing	21.6999999999999993	2009
county	6	took any anti-malarial drug	1.30000000000000004	2009
county	6	took any ACT	1.30000000000000004	2009
county	6	took any ACT on same or next day	1.30000000000000004	2009
county	7	had fever	7	2009
county	7	sort advice or treatment	44	2009
county	7	blood drawn for testing	52.3999999999999986	2009
county	7	took any anti-malarial drug	5.59999999999999964	2009
county	7	took any ACT	5.59999999999999964	2009
county	7	took any ACT on same or next day	5.59999999999999964	2009
county	8	had fever	12.5	2009
county	8	sort advice or treatment	65.2999999999999972	2009
county	8	blood drawn for testing	19.8999999999999986	2009
county	8	took any anti-malarial drug	4.29999999999999982	2009
county	8	took any ACT	0.400000000000000022	2009
county	8	took any ACT on same or next day	0	2009
county	9	had fever	4.79999999999999982	2009
county	9	sort advice or treatment	0	2009
county	9	blood drawn for testing	0	2009
county	9	took any anti-malarial drug	0	2009
county	9	took any ACT	0	2009
county	9	took any ACT on same or next day	0	2009
county	10	had fever	19.3000000000000007	2009
county	10	sort advice or treatment	63.1000000000000014	2009
county	10	blood drawn for testing	22.3000000000000007	2009
county	10	took any anti-malarial drug	10.5999999999999996	2009
county	10	took any ACT	10.0999999999999996	2009
county	10	took any ACT on same or next day	1.80000000000000004	2009
county	11	had fever	13.1999999999999993	2009
county	11	sort advice or treatment	78.7000000000000028	2009
county	11	blood drawn for testing	60.7000000000000028	2009
county	11	took any anti-malarial drug	51.1000000000000014	2009
county	11	took any ACT	43.3999999999999986	2009
county	11	took any ACT on same or next day	43.3999999999999986	2009
county	12	had fever	26	2009
county	12	sort advice or treatment	73.2999999999999972	2009
county	12	blood drawn for testing	54	2009
county	12	took any anti-malarial drug	23.1000000000000014	2009
county	12	took any ACT	14.9000000000000004	2009
county	12	took any ACT on same or next day	7.79999999999999982	2009
county	13	had fever	28.1000000000000014	2009
county	13	sort advice or treatment	78.9000000000000057	2009
county	13	blood drawn for testing	41.8999999999999986	2009
county	13	took any anti-malarial drug	27.1999999999999993	2009
county	13	took any ACT	9.80000000000000071	2009
county	13	took any ACT on same or next day	6.29999999999999982	2009
county	14	had fever	13.8000000000000007	2009
county	14	sort advice or treatment	72.4000000000000057	2009
county	14	blood drawn for testing	38.3999999999999986	2009
county	14	took any anti-malarial drug	21.6999999999999993	2009
county	14	took any ACT	21.6999999999999993	2009
county	14	took any ACT on same or next day	10.9000000000000004	2009
county	15	had fever	17	2009
county	15	sort advice or treatment	72.0999999999999943	2009
county	15	blood drawn for testing	9.09999999999999964	2009
county	15	took any anti-malarial drug	7.40000000000000036	2009
county	15	took any ACT	3.5	2009
county	15	took any ACT on same or next day	2.5	2009
county	16	had fever	13.5999999999999996	2009
county	16	sort advice or treatment	81.5999999999999943	2009
county	16	blood drawn for testing	18.3999999999999986	2009
county	16	took any anti-malarial drug	12.8000000000000007	2009
county	16	took any ACT	10.8000000000000007	2009
county	16	took any ACT on same or next day	6.20000000000000018	2009
county	17	had fever	14.0999999999999996	2009
county	17	sort advice or treatment	89.7000000000000028	2009
county	17	blood drawn for testing	21.6999999999999993	2009
county	17	took any anti-malarial drug	13.6999999999999993	2009
county	17	took any ACT	7.79999999999999982	2009
county	17	took any ACT on same or next day	0	2009
county	18	had fever	17.1999999999999993	2009
county	18	sort advice or treatment	70.7999999999999972	2009
county	18	blood drawn for testing	22.6000000000000014	2009
county	18	took any anti-malarial drug	6.70000000000000018	2009
county	18	took any ACT	5.29999999999999982	2009
county	18	took any ACT on same or next day	2.79999999999999982	2009
county	19	had fever	14.0999999999999996	2009
county	19	sort advice or treatment	67.2000000000000028	2009
county	19	blood drawn for testing	17.5	2009
county	19	took any anti-malarial drug	0	2009
county	19	took any ACT	0	2009
county	19	took any ACT on same or next day	0	2009
county	20	had fever	21.1999999999999993	2009
county	20	sort advice or treatment	82.4000000000000057	2009
county	20	blood drawn for testing	28.6000000000000014	2009
county	20	took any anti-malarial drug	18.6000000000000014	2009
county	20	took any ACT	18.6000000000000014	2009
county	20	took any ACT on same or next day	16.1999999999999993	2009
county	21	had fever	17.6999999999999993	2009
county	21	sort advice or treatment	85.0999999999999943	2009
county	21	blood drawn for testing	3.70000000000000018	2009
county	21	took any anti-malarial drug	0	2009
county	21	took any ACT	0	2009
county	21	took any ACT on same or next day	0	2009
county	22	had fever	18.5	2009
county	22	sort advice or treatment	64.7999999999999972	2009
county	22	blood drawn for testing	33.6000000000000014	2009
county	22	took any anti-malarial drug	3.20000000000000018	2009
county	22	took any ACT	1.19999999999999996	2009
county	22	took any ACT on same or next day	1.19999999999999996	2009
county	23	had fever	11.4000000000000004	2009
county	23	sort advice or treatment	63.3999999999999986	2009
county	23	blood drawn for testing	49.5	2009
county	23	took any anti-malarial drug	29.8999999999999986	2009
county	23	took any ACT	21.6999999999999993	2009
county	23	took any ACT on same or next day	18.5	2009
county	24	had fever	9.40000000000000036	2009
county	24	sort advice or treatment	80.4000000000000057	2009
county	24	blood drawn for testing	20.6000000000000014	2009
county	24	took any anti-malarial drug	32.2000000000000028	2009
county	24	took any ACT	16.1000000000000014	2009
county	24	took any ACT on same or next day	16.1000000000000014	2009
county	25	had fever	19.1000000000000014	2009
county	25	sort advice or treatment	54.5	2009
county	25	blood drawn for testing	16.6000000000000014	2009
county	25	took any anti-malarial drug	6.79999999999999982	2009
county	25	took any ACT	5	2009
county	25	took any ACT on same or next day	2.5	2009
county	26	had fever	21.8999999999999986	2009
county	26	sort advice or treatment	65.9000000000000057	2009
county	26	blood drawn for testing	45.2000000000000028	2009
county	26	took any anti-malarial drug	12.4000000000000004	2009
county	26	took any ACT	10.9000000000000004	2009
county	26	took any ACT on same or next day	4.09999999999999964	2009
county	27	had fever	19.3000000000000007	2009
county	27	sort advice or treatment	62.7999999999999972	2009
county	27	blood drawn for testing	17	2009
county	27	took any anti-malarial drug	5.79999999999999982	2009
county	27	took any ACT	4.70000000000000018	2009
county	27	took any ACT on same or next day	1.80000000000000004	2009
county	28	had fever	29.6999999999999993	2009
county	28	sort advice or treatment	67.0999999999999943	2009
county	28	blood drawn for testing	13.5	2009
county	28	took any anti-malarial drug	2	2009
county	28	took any ACT	1.5	2009
county	28	took any ACT on same or next day	1.5	2009
county	29	had fever	19.6999999999999993	2009
county	29	sort advice or treatment	52.7999999999999972	2009
county	29	blood drawn for testing	12.1999999999999993	2009
county	29	took any anti-malarial drug	8.80000000000000071	2009
county	29	took any ACT	8.80000000000000071	2009
county	29	took any ACT on same or next day	5.29999999999999982	2009
county	30	had fever	22.8999999999999986	2009
county	30	sort advice or treatment	71.5999999999999943	2009
county	30	blood drawn for testing	39.1000000000000014	2009
county	30	took any anti-malarial drug	27.6999999999999993	2009
county	30	took any ACT	22.8999999999999986	2009
county	30	took any ACT on same or next day	11.4000000000000004	2009
county	31	had fever	21.6000000000000014	2009
county	31	sort advice or treatment	74.9000000000000057	2009
county	31	blood drawn for testing	26	2009
county	31	took any anti-malarial drug	16.8000000000000007	2009
county	31	took any ACT	6.20000000000000018	2009
county	31	took any ACT on same or next day	6.20000000000000018	2009
county	32	had fever	15.5	2009
county	32	sort advice or treatment	67.9000000000000057	2009
county	32	blood drawn for testing	27.6000000000000014	2009
county	32	took any anti-malarial drug	11.5999999999999996	2009
county	32	took any ACT	11	2009
county	32	took any ACT on same or next day	6.79999999999999982	2009
county	33	had fever	30.6999999999999993	2009
county	33	sort advice or treatment	78	2009
county	33	blood drawn for testing	20.3999999999999986	2009
county	33	took any anti-malarial drug	13.3000000000000007	2009
county	33	took any ACT	9.69999999999999929	2009
county	33	took any ACT on same or next day	3.60000000000000009	2009
county	34	had fever	25.6999999999999993	2009
county	34	sort advice or treatment	64.7000000000000028	2009
county	34	blood drawn for testing	21.8000000000000007	2009
county	34	took any anti-malarial drug	1.39999999999999991	2009
county	34	took any ACT	0	2009
county	34	took any ACT on same or next day	0	2009
county	35	had fever	25.6000000000000014	2009
county	35	sort advice or treatment	70.7000000000000028	2009
county	35	blood drawn for testing	37.8999999999999986	2009
county	35	took any anti-malarial drug	19.3999999999999986	2009
county	35	took any ACT	14.4000000000000004	2009
county	35	took any ACT on same or next day	6.90000000000000036	2009
county	36	had fever	20.8000000000000007	2009
county	36	sort advice or treatment	73.9000000000000057	2009
county	36	blood drawn for testing	14.9000000000000004	2009
county	36	took any anti-malarial drug	21	2009
county	36	took any ACT	12.9000000000000004	2009
county	36	took any ACT on same or next day	8.09999999999999964	2009
county	37	had fever	28.8999999999999986	2009
county	37	sort advice or treatment	56	2009
county	37	blood drawn for testing	34.8999999999999986	2009
county	37	took any anti-malarial drug	38.7000000000000028	2009
county	37	took any ACT	38.3999999999999986	2009
county	37	took any ACT on same or next day	19.6000000000000014	2009
county	38	had fever	49.2000000000000028	2009
county	38	sort advice or treatment	69.0999999999999943	2009
county	38	blood drawn for testing	34.3999999999999986	2009
county	38	took any anti-malarial drug	40.7000000000000028	2009
county	38	took any ACT	39.5	2009
county	38	took any ACT on same or next day	18	2009
county	39	had fever	35.7999999999999972	2009
county	39	sort advice or treatment	74.5999999999999943	2009
county	39	blood drawn for testing	41.6000000000000014	2009
county	39	took any anti-malarial drug	58.7000000000000028	2009
county	39	took any ACT	55.1000000000000014	2009
county	39	took any ACT on same or next day	33.5	2009
county	40	had fever	42.7000000000000028	2009
county	40	sort advice or treatment	67.9000000000000057	2009
county	40	blood drawn for testing	37.2000000000000028	2009
county	40	took any anti-malarial drug	62.8999999999999986	2009
county	40	took any ACT	59.6000000000000014	2009
county	40	took any ACT on same or next day	36.5	2009
county	41	had fever	44.8999999999999986	2009
county	41	sort advice or treatment	80.7000000000000028	2009
county	41	blood drawn for testing	61.1000000000000014	2009
county	41	took any anti-malarial drug	59.3999999999999986	2009
county	41	took any ACT	59.2000000000000028	2009
county	41	took any ACT on same or next day	38.3999999999999986	2009
county	42	had fever	30.8999999999999986	2009
county	42	sort advice or treatment	74.9000000000000057	2009
county	42	blood drawn for testing	48.7999999999999972	2009
county	42	took any anti-malarial drug	46	2009
county	42	took any ACT	39.5	2009
county	42	took any ACT on same or next day	18.8000000000000007	2009
county	43	had fever	45.6000000000000014	2009
county	43	sort advice or treatment	67.5	2009
county	43	blood drawn for testing	50.7000000000000028	2009
county	43	took any anti-malarial drug	51.7000000000000028	2009
county	43	took any ACT	46.5	2009
county	43	took any ACT on same or next day	29.8999999999999986	2009
county	44	had fever	48.2000000000000028	2009
county	44	sort advice or treatment	80.4000000000000057	2009
county	44	blood drawn for testing	42.6000000000000014	2009
county	44	took any anti-malarial drug	42.3999999999999986	2009
county	44	took any ACT	37.2000000000000028	2009
county	44	took any ACT on same or next day	21	2009
county	45	had fever	28.1000000000000014	2009
county	45	sort advice or treatment	80.2000000000000028	2009
county	45	blood drawn for testing	27.1000000000000014	2009
county	45	took any anti-malarial drug	46.8999999999999986	2009
county	45	took any ACT	27.1999999999999993	2009
county	45	took any ACT on same or next day	13.4000000000000004	2009
county	46	had fever	5.70000000000000018	2009
county	46	sort advice or treatment	0	2009
county	46	blood drawn for testing	0	2009
county	46	took any anti-malarial drug	0	2009
county	46	took any ACT	0	2009
county	46	took any ACT on same or next day	0	2009
county	47	had fever	18.6999999999999993	2009
county	47	sort advice or treatment	67.4000000000000057	2009
county	47	blood drawn for testing	36	2009
county	47	took any anti-malarial drug	10.5999999999999996	2009
county	47	took any ACT	6.90000000000000036	2009
county	47	took any ACT on same or next day	3.79999999999999982	2009
country	KE	had fever	24.3999999999999986	2009
country	KE	sort advice or treatment	71.7000000000000028	2009
country	KE	blood drawn for testing	34.8999999999999986	2009
country	KE	took any anti-malarial drug	27	2009
country	KE	took any ACT	23.1000000000000014	2009
country	KE	took any ACT on same or next day	13.0999999999999996	2009
\.


--
-- Name: treatmentofchildrenwithfever pk_treatmentofchildrenwithfever; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.treatmentofchildrenwithfever
    ADD CONSTRAINT pk_treatmentofchildrenwithfever PRIMARY KEY (geo_level, geo_code, geo_version, "treatment of children with fever");


--
-- PostgreSQL database dump complete
--


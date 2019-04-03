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

ALTER TABLE IF EXISTS ONLY public.contraceptive_modern_method DROP CONSTRAINT IF EXISTS pk_contraceptive_modern_method;
DROP TABLE IF EXISTS public.contraceptive_modern_method;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: contraceptive_modern_method; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contraceptive_modern_method (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    contraceptive_modern_method character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: contraceptive_modern_method; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contraceptive_modern_method (geo_level, geo_code, contraceptive_modern_method, total, geo_version) FROM stdin;
county	1	female sterilisation	0.200000000000000011	2009
county	1	male sterilisation	0	2009
county	1	IUD	3.20000000000000018	2009
county	1	implants	12.5999999999999996	2009
county	1	injectables	17.6999999999999993	2009
county	1	pill	6.5	2009
county	1	male condom	2.89999999999999991	2009
county	1	female condom	0	2009
county	1	LAM	0.400000000000000022	2009
county	1	other	0	2009
county	37	LAM	0	2009
county	2	female sterilisation	3	2009
county	2	male sterilisation	0	2009
county	2	IUD	1.60000000000000009	2009
county	2	implants	6.79999999999999982	2009
county	2	injectables	21.6000000000000014	2009
county	2	pill	4.29999999999999982	2009
county	2	male condom	0.800000000000000044	2009
county	2	female condom	0	2009
county	2	LAM	0	2009
county	2	other	0	2009
county	3	female sterilisation	2.79999999999999982	2009
county	3	male sterilisation	0	2009
county	3	IUD	1.10000000000000009	2009
county	3	implants	10	2009
county	3	injectables	15.9000000000000004	2009
county	3	pill	2.70000000000000018	2009
county	3	male condom	0.299999999999999989	2009
county	3	female condom	0	2009
county	3	LAM	0	2009
county	3	other	0	2009
county	4	female sterilisation	0.200000000000000011	2009
county	4	male sterilisation	0	2009
county	4	IUD	0.400000000000000022	2009
county	4	implants	2.70000000000000018	2009
county	4	injectables	13.0999999999999996	2009
county	4	pill	1.10000000000000009	2009
county	4	male condom	3	2009
county	4	female condom	0	2009
county	4	LAM	0	2009
county	4	other	0	2009
county	5	female sterilisation	1.19999999999999996	2009
county	5	male sterilisation	0	2009
county	5	IUD	1	2009
county	5	implants	6.40000000000000036	2009
county	5	injectables	19	2009
county	5	pill	10.1999999999999993	2009
county	5	male condom	1.19999999999999996	2009
county	5	female condom	0	2009
county	5	LAM	0.5	2009
county	5	other	0	2009
county	6	female sterilisation	0.400000000000000022	2009
county	6	male sterilisation	0	2009
county	6	IUD	6.90000000000000036	2009
county	6	implants	8.59999999999999964	2009
county	6	injectables	34.1000000000000014	2009
county	6	pill	10	2009
county	6	male condom	1.5	2009
county	6	female condom	0	2009
county	6	LAM	0	2009
county	6	other	0	2009
county	7	female sterilisation	0	2009
county	7	male sterilisation	0	2009
county	7	IUD	0.200000000000000011	2009
county	7	implants	1.5	2009
county	7	injectables	2.39999999999999991	2009
county	7	pill	1.10000000000000009	2009
county	7	male condom	0.100000000000000006	2009
county	7	female condom	0	2009
county	7	LAM	0.100000000000000006	2009
county	7	other	0	2009
county	8	female sterilisation	0	2009
county	8	male sterilisation	0	2009
county	8	IUD	0	2009
county	8	implants	0.200000000000000011	2009
county	8	injectables	1.60000000000000009	2009
county	8	pill	0.200000000000000011	2009
county	8	male condom	0.100000000000000006	2009
county	8	female condom	0	2009
county	8	LAM	0.200000000000000011	2009
county	8	other	0	2009
county	9	female sterilisation	0	2009
county	9	male sterilisation	0	2009
county	9	IUD	0	2009
county	9	implants	0	2009
county	9	injectables	1.5	2009
county	9	pill	0.400000000000000022	2009
county	9	male condom	0	2009
county	9	female condom	0	2009
county	9	LAM	0	2009
county	9	other	0	2009
county	10	female sterilisation	0.400000000000000022	2009
county	10	male sterilisation	0	2009
county	10	IUD	0.299999999999999989	2009
county	10	implants	2.70000000000000018	2009
county	10	injectables	6.29999999999999982	2009
county	10	pill	1.10000000000000009	2009
county	10	male condom	0	2009
county	10	female condom	0	2009
county	10	LAM	0	2009
county	10	other	0	2009
county	11	female sterilisation	0.800000000000000044	2009
county	11	male sterilisation	0	2009
county	11	IUD	1.39999999999999991	2009
county	11	implants	3.29999999999999982	2009
county	11	injectables	13.1999999999999993	2009
county	11	pill	7.20000000000000018	2009
county	11	male condom	0.400000000000000022	2009
county	11	female condom	0	2009
county	11	LAM	0	2009
county	11	other	0	2009
county	12	female sterilisation	4.29999999999999982	2009
county	12	male sterilisation	0	2009
county	12	IUD	5.40000000000000036	2009
county	12	implants	3.5	2009
county	12	injectables	44.7999999999999972	2009
county	12	pill	12.3000000000000007	2009
county	12	male condom	2.79999999999999982	2009
county	12	female condom	0	2009
county	12	LAM	0	2009
county	12	other	0	2009
county	13	female sterilisation	1.80000000000000004	2009
county	13	male sterilisation	0	2009
county	13	IUD	7.20000000000000018	2009
county	13	implants	5.5	2009
county	13	injectables	44.1000000000000014	2009
county	13	pill	7	2009
county	13	male condom	1.30000000000000004	2009
county	13	female condom	0.200000000000000011	2009
county	13	LAM	0	2009
county	13	other	0	2009
county	14	female sterilisation	3.79999999999999982	2009
county	14	male sterilisation	0	2009
county	14	IUD	4.59999999999999964	2009
county	14	implants	11	2009
county	14	injectables	31.1999999999999993	2009
county	14	pill	15.1999999999999993	2009
county	14	male condom	1.5	2009
county	14	female condom	0	2009
county	14	LAM	0	2009
county	14	other	0	2009
county	15	female sterilisation	3	2009
county	15	male sterilisation	0	2009
county	15	IUD	1.10000000000000009	2009
county	15	implants	9.5	2009
county	15	injectables	36.8999999999999986	2009
county	15	pill	4.5	2009
county	15	male condom	0	2009
county	15	female condom	0	2009
county	15	LAM	0	2009
county	15	other	0	2009
county	16	female sterilisation	5.5	2009
county	16	male sterilisation	0	2009
county	16	IUD	0.5	2009
county	16	implants	10.4000000000000004	2009
county	16	injectables	41.6000000000000014	2009
county	16	pill	9.09999999999999964	2009
county	16	male condom	0.5	2009
county	16	female condom	0	2009
county	16	LAM	0	2009
county	16	other	0	2009
county	17	female sterilisation	10.1999999999999993	2009
county	17	male sterilisation	0	2009
county	17	IUD	1.80000000000000004	2009
county	17	implants	10.3000000000000007	2009
county	17	injectables	33.7999999999999972	2009
county	17	pill	5.90000000000000036	2009
county	17	male condom	2.89999999999999991	2009
county	17	female condom	0	2009
county	17	LAM	0	2009
county	17	other	0	2009
county	18	female sterilisation	2.79999999999999982	2009
county	18	male sterilisation	0	2009
county	18	IUD	8	2009
county	18	implants	10.8000000000000007	2009
county	18	injectables	22.8999999999999986	2009
county	18	pill	13.8000000000000007	2009
county	18	male condom	0.900000000000000022	2009
county	18	female condom	0	2009
county	18	LAM	1.30000000000000004	2009
county	18	other	0	2009
county	19	female sterilisation	7.29999999999999982	2009
county	19	male sterilisation	0	2009
county	19	IUD	10	2009
county	19	implants	9.19999999999999929	2009
county	19	injectables	22.3000000000000007	2009
county	19	pill	16.6999999999999993	2009
county	19	male condom	1.60000000000000009	2009
county	19	female condom	0	2009
county	19	LAM	0	2009
county	19	other	0	2009
county	20	female sterilisation	0.900000000000000022	2009
county	20	male sterilisation	0	2009
county	20	IUD	13.1999999999999993	2009
county	20	implants	13	2009
county	20	injectables	20.3999999999999986	2009
county	20	pill	26	2009
county	20	male condom	2	2009
county	20	female condom	0	2009
county	20	LAM	0	2009
county	20	other	0	2009
county	21	female sterilisation	4	2009
county	21	male sterilisation	0	2009
county	21	IUD	6.29999999999999982	2009
county	21	implants	7.79999999999999982	2009
county	21	injectables	20.6000000000000014	2009
county	21	pill	22.1000000000000014	2009
county	21	male condom	2.5	2009
county	21	female condom	0	2009
county	21	LAM	0	2009
county	21	other	0	2009
county	22	female sterilisation	2.70000000000000018	2009
county	22	male sterilisation	0	2009
county	22	IUD	8.90000000000000036	2009
county	22	implants	12	2009
county	22	injectables	21.8999999999999986	2009
county	22	pill	19.1999999999999993	2009
county	22	male condom	3.10000000000000009	2009
county	22	female condom	0	2009
county	22	LAM	0	2009
county	22	other	0	2009
county	23	female sterilisation	0	2009
county	23	male sterilisation	0	2009
county	23	IUD	0.5	2009
county	23	implants	3	2009
county	23	injectables	5.70000000000000018	2009
county	23	pill	0.5	2009
county	23	male condom	0.400000000000000022	2009
county	23	female condom	0	2009
county	23	LAM	0	2009
county	23	other	0	2009
county	24	female sterilisation	0.400000000000000022	2009
county	24	male sterilisation	0	2009
county	24	IUD	0.200000000000000011	2009
county	24	implants	3.10000000000000009	2009
county	24	injectables	9	2009
county	24	pill	0.699999999999999956	2009
county	24	male condom	0	2009
county	24	female condom	0	2009
county	24	LAM	0	2009
county	24	other	0	2009
county	25	female sterilisation	0.5	2009
county	25	male sterilisation	0	2009
county	25	IUD	0.599999999999999978	2009
county	25	implants	4.40000000000000036	2009
county	25	injectables	10.9000000000000004	2009
county	25	pill	2.89999999999999991	2009
county	25	male condom	0.800000000000000044	2009
county	25	female condom	0	2009
county	25	LAM	0	2009
county	25	other	0	2009
county	26	female sterilisation	4	2009
county	26	male sterilisation	0	2009
county	26	IUD	0.699999999999999956	2009
county	26	implants	4.59999999999999964	2009
county	26	injectables	38.7000000000000028	2009
county	26	pill	4.90000000000000036	2009
county	26	male condom	3.20000000000000018	2009
county	26	female condom	0.100000000000000006	2009
county	26	LAM	0.200000000000000011	2009
county	26	other	0	2009
county	27	female sterilisation	1.80000000000000004	2009
county	27	male sterilisation	0	2009
county	27	IUD	2.70000000000000018	2009
county	27	implants	12.9000000000000004	2009
county	27	injectables	28.6999999999999993	2009
county	27	pill	7.40000000000000036	2009
county	27	male condom	2.39999999999999991	2009
county	27	female condom	0	2009
county	27	LAM	0	2009
county	27	other	0	2009
county	28	female sterilisation	1.10000000000000009	2009
county	28	male sterilisation	0	2009
county	28	IUD	1.30000000000000004	2009
county	28	implants	8.69999999999999929	2009
county	28	injectables	28.5	2009
county	28	pill	1.60000000000000009	2009
county	28	male condom	2.10000000000000009	2009
county	28	female condom	0.299999999999999989	2009
county	28	LAM	0	2009
county	28	other	0	2009
county	29	female sterilisation	1.80000000000000004	2009
county	29	male sterilisation	0	2009
county	29	IUD	0.900000000000000022	2009
county	29	implants	9.09999999999999964	2009
county	29	injectables	40.2999999999999972	2009
county	29	pill	5.5	2009
county	29	male condom	1.60000000000000009	2009
county	29	female condom	0	2009
county	29	LAM	0	2009
county	29	other	0	2009
county	30	female sterilisation	0.699999999999999956	2009
county	30	male sterilisation	0	2009
county	30	IUD	3.20000000000000018	2009
county	30	implants	5.5	2009
county	30	injectables	16.1999999999999993	2009
county	30	pill	4.59999999999999964	2009
county	30	male condom	2.29999999999999982	2009
county	30	female condom	0	2009
county	30	LAM	0.599999999999999978	2009
county	30	other	0	2009
county	31	female sterilisation	5	2009
county	31	male sterilisation	0	2009
county	31	IUD	5.09999999999999964	2009
county	31	implants	4.5	2009
county	31	injectables	20.8000000000000007	2009
county	31	pill	12.5	2009
county	31	male condom	3.10000000000000009	2009
county	31	female condom	0	2009
county	31	LAM	0	2009
county	31	other	0.400000000000000022	2009
county	32	female sterilisation	1.39999999999999991	2009
county	32	male sterilisation	0.200000000000000011	2009
county	32	IUD	6.70000000000000018	2009
county	32	implants	7.59999999999999964	2009
county	32	injectables	25.3999999999999986	2009
county	32	pill	10.4000000000000004	2009
county	32	male condom	1.39999999999999991	2009
county	32	female condom	0	2009
county	32	LAM	0.400000000000000022	2009
county	32	other	0	2009
county	33	female sterilisation	1.89999999999999991	2009
county	33	male sterilisation	0	2009
county	33	IUD	1.10000000000000009	2009
county	33	implants	3.79999999999999982	2009
county	33	injectables	25.3000000000000007	2009
county	33	pill	3.70000000000000018	2009
county	33	male condom	2.20000000000000018	2009
county	33	female condom	0	2009
county	33	LAM	0	2009
county	33	other	0.100000000000000006	2009
county	34	female sterilisation	1.5	2009
county	34	male sterilisation	0	2009
county	34	IUD	5.90000000000000036	2009
county	34	implants	8.90000000000000036	2009
county	34	injectables	20	2009
county	34	pill	6.5	2009
county	34	male condom	2.20000000000000018	2009
county	34	female condom	0	2009
county	34	LAM	0.200000000000000011	2009
county	34	other	0	2009
county	35	female sterilisation	3.5	2009
county	35	male sterilisation	0	2009
county	35	IUD	2.10000000000000009	2009
county	35	implants	9.90000000000000036	2009
county	35	injectables	35.7999999999999972	2009
county	35	pill	3.20000000000000018	2009
county	35	male condom	1.89999999999999991	2009
county	35	female condom	0	2009
county	35	LAM	0.299999999999999989	2009
county	35	other	0.200000000000000011	2009
county	36	female sterilisation	4.90000000000000036	2009
county	36	male sterilisation	0	2009
county	36	IUD	1.69999999999999996	2009
county	36	implants	7.5	2009
county	36	injectables	33.8999999999999986	2009
county	36	pill	0.400000000000000022	2009
county	36	male condom	2	2009
county	36	female condom	0	2009
county	36	LAM	0	2009
county	36	other	0	2009
county	37	female sterilisation	6.90000000000000036	2009
county	37	male sterilisation	0	2009
county	37	IUD	1	2009
county	37	implants	14.0999999999999996	2009
county	37	injectables	30.3999999999999986	2009
county	37	pill	5.40000000000000036	2009
county	37	male condom	2.60000000000000009	2009
county	37	female condom	0	2009
county	37	other	0	2009
county	38	female sterilisation	3.89999999999999991	2009
county	38	male sterilisation	0	2009
county	38	IUD	3.29999999999999982	2009
county	38	implants	16.1999999999999993	2009
county	38	injectables	25.3000000000000007	2009
county	38	pill	4.79999999999999982	2009
county	38	male condom	3.10000000000000009	2009
county	38	female condom	0	2009
county	38	LAM	0	2009
county	38	other	0	2009
county	39	female sterilisation	5.09999999999999964	2009
county	39	male sterilisation	0	2009
county	39	IUD	0.800000000000000044	2009
county	39	implants	11.8000000000000007	2009
county	39	injectables	29	2009
county	39	pill	4.40000000000000036	2009
county	39	male condom	2.89999999999999991	2009
county	39	female condom	0	2009
county	39	LAM	0	2009
county	39	other	0	2009
county	40	female sterilisation	6.5	2009
county	40	male sterilisation	0	2009
county	40	IUD	1.80000000000000004	2009
county	40	implants	23.6000000000000014	2009
county	40	injectables	20.1999999999999993	2009
county	40	pill	3.5	2009
county	40	male condom	1	2009
county	40	female condom	0	2009
county	40	LAM	0	2009
county	40	other	0	2009
county	41	female sterilisation	3.20000000000000018	2009
county	41	male sterilisation	0	2009
county	41	IUD	1.80000000000000004	2009
county	41	implants	15.3000000000000007	2009
county	41	injectables	19.3000000000000007	2009
county	41	pill	5.79999999999999982	2009
county	41	male condom	5.70000000000000018	2009
county	41	female condom	0	2009
county	41	LAM	0	2009
county	41	other	0	2009
county	42	female sterilisation	5.20000000000000018	2009
county	42	male sterilisation	0	2009
county	42	IUD	1.5	2009
county	42	implants	21.1000000000000014	2009
county	42	injectables	24.3000000000000007	2009
county	42	pill	3.70000000000000018	2009
county	42	male condom	3.5	2009
county	42	female condom	0	2009
county	42	LAM	0	2009
county	42	other	0	2009
county	43	female sterilisation	3.79999999999999982	2009
county	43	male sterilisation	0	2009
county	43	IUD	1.10000000000000009	2009
county	43	implants	8.59999999999999964	2009
county	43	injectables	26.1000000000000014	2009
county	43	pill	2.10000000000000009	2009
county	43	male condom	3.5	2009
county	43	female condom	0	2009
county	43	LAM	0	2009
county	43	other	0.299999999999999989	2009
county	44	female sterilisation	1.89999999999999991	2009
county	44	male sterilisation	0	2009
county	44	IUD	1.10000000000000009	2009
county	44	implants	10.5999999999999996	2009
county	44	injectables	24.6000000000000014	2009
county	44	pill	2.29999999999999982	2009
county	44	male condom	3.10000000000000009	2009
county	44	female condom	0.299999999999999989	2009
county	44	LAM	0	2009
county	44	other	0	2009
county	45	female sterilisation	3.20000000000000018	2009
county	45	male sterilisation	0	2009
county	45	IUD	3.5	2009
county	45	implants	9.19999999999999929	2009
county	45	injectables	41.7999999999999972	2009
county	45	pill	4	2009
county	45	male condom	0.800000000000000044	2009
county	45	female condom	0	2009
county	45	LAM	0.299999999999999989	2009
county	45	other	0	2009
county	46	female sterilisation	4.20000000000000018	2009
county	46	male sterilisation	0	2009
county	46	IUD	3.89999999999999991	2009
county	46	implants	8.19999999999999929	2009
county	46	injectables	42.6000000000000014	2009
county	46	pill	3.5	2009
county	46	male condom	1.19999999999999996	2009
county	46	female condom	0	2009
county	46	LAM	0.299999999999999989	2009
county	46	other	0.299999999999999989	2009
county	47	female sterilisation	2	2009
county	47	male sterilisation	0.100000000000000006	2009
county	47	IUD	4.5	2009
county	47	implants	12.0999999999999996	2009
county	47	injectables	23.6000000000000014	2009
county	47	pill	12.5	2009
county	47	male condom	3.29999999999999982	2009
county	47	female condom	0	2009
county	47	LAM	0	2009
county	47	other	0	2009
country	KE	female sterilisation	3.20000000000000018	2009
country	KE	male sterilisation	0	2009
country	KE	IUD	3.39999999999999991	2009
country	KE	implants	9.90000000000000036	2009
country	KE	injectables	26.3999999999999986	2009
country	KE	pill	8	2009
country	KE	male condom	2.20000000000000018	2009
country	KE	female condom	0	2009
country	KE	LAM	0.100000000000000006	2009
country	KE	other	0	2009
\.


--
-- Name: contraceptive_modern_method pk_contraceptive_modern_method; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contraceptive_modern_method
    ADD CONSTRAINT pk_contraceptive_modern_method PRIMARY KEY (geo_level, geo_code, geo_version, contraceptive_modern_method);


--
-- PostgreSQL database dump complete
--


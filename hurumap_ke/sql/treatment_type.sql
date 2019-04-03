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

ALTER TABLE IF EXISTS ONLY public.treatment_type DROP CONSTRAINT IF EXISTS pk_treatment_type;
DROP TABLE IF EXISTS public.treatment_type;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: treatment_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.treatment_type (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    type character varying(128) NOT NULL,
    treatment character varying(128) NOT NULL,
    total double precision,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: treatment_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.treatment_type (geo_level, geo_code, type, treatment, total, geo_version) FROM stdin;
county	1	ARI	sought treatment from health facility or provider	0	2009
county	1	fever	sought treatment from health facility or provider	75.0999999999999943	2009
county	1	diarrhoea	sought treatment from health facility or provider	63.2999999999999972	2009
county	1	diarrhoea	ORT	88.4000000000000057	2009
county	1	diarrhoea	fluid from ORS packet	76.5999999999999943	2009
county	1	diarrhoea	zinc	30.6000000000000014	2009
county	1	diarrhoea	ORS and zinc	30.6000000000000014	2009
county	2	ARI	sought treatment from health facility or provider	62.3999999999999986	2009
county	2	fever	sought treatment from health facility or provider	64.7000000000000028	2009
county	2	diarrhoea	sought treatment from health facility or provider	62.2000000000000028	2009
county	2	diarrhoea	ORT	73.9000000000000057	2009
county	2	diarrhoea	fluid from ORS packet	70.2000000000000028	2009
county	2	diarrhoea	zinc	26.8999999999999986	2009
county	2	diarrhoea	ORS and zinc	25.6999999999999993	2009
county	3	ARI	sought treatment from health facility or provider	60.5	2009
county	3	fever	sought treatment from health facility or provider	69.7000000000000028	2009
county	3	diarrhoea	sought treatment from health facility or provider	71.5	2009
county	3	diarrhoea	ORT	80.4000000000000057	2009
county	3	diarrhoea	fluid from ORS packet	74.5999999999999943	2009
county	3	diarrhoea	zinc	0.699999999999999956	2009
county	3	diarrhoea	ORS and zinc	0.699999999999999956	2009
county	4	ARI	sought treatment from health facility or provider	73.2000000000000028	2009
county	4	fever	sought treatment from health facility or provider	64.5	2009
county	4	diarrhoea	sought treatment from health facility or provider	47.7999999999999972	2009
county	4	diarrhoea	ORT	59.8999999999999986	2009
county	4	diarrhoea	fluid from ORS packet	53.7000000000000028	2009
county	4	diarrhoea	zinc	15.9000000000000004	2009
county	4	diarrhoea	ORS and zinc	15.5999999999999996	2009
county	5	ARI	sought treatment from health facility or provider	68.5999999999999943	2009
county	5	fever	sought treatment from health facility or provider	45.2999999999999972	2009
county	5	diarrhoea	sought treatment from health facility or provider	63.7000000000000028	2009
county	5	diarrhoea	ORT	79	2009
county	5	diarrhoea	fluid from ORS packet	54.7000000000000028	2009
county	5	diarrhoea	zinc	11.5	2009
county	5	diarrhoea	ORS and zinc	8.30000000000000071	2009
county	6	ARI	sought treatment from health facility or provider	79.9000000000000057	2009
county	6	fever	sought treatment from health facility or provider	56.2999999999999972	2009
county	6	diarrhoea	sought treatment from health facility or provider	50.7999999999999972	2009
county	6	diarrhoea	ORT	69.2000000000000028	2009
county	6	diarrhoea	fluid from ORS packet	62	2009
county	6	diarrhoea	zinc	7.29999999999999982	2009
county	6	diarrhoea	ORS and zinc	6.09999999999999964	2009
county	7	ARI	sought treatment from health facility or provider	0	2009
county	7	fever	sought treatment from health facility or provider	41.3999999999999986	2009
county	7	diarrhoea	sought treatment from health facility or provider	29.3999999999999986	2009
county	7	diarrhoea	ORT	68.2999999999999972	2009
county	7	diarrhoea	fluid from ORS packet	80.5	2009
county	7	diarrhoea	zinc	10.8000000000000007	2009
county	7	diarrhoea	ORS and zinc	10.8000000000000007	2009
county	8	ARI	sought treatment from health facility or provider	33.6000000000000014	2009
county	8	fever	sought treatment from health facility or provider	55.1000000000000014	2009
county	8	diarrhoea	sought treatment from health facility or provider	57.2000000000000028	2009
county	8	diarrhoea	ORT	69.7999999999999972	2009
county	8	diarrhoea	fluid from ORS packet	72.2000000000000028	2009
county	8	diarrhoea	zinc	8.40000000000000036	2009
county	8	diarrhoea	ORS and zinc	6.70000000000000018	2009
county	9	ARI	sought treatment from health facility or provider	0	2009
county	9	fever	sought treatment from health facility or provider	0	2009
county	9	diarrhoea	sought treatment from health facility or provider	0	2009
county	9	diarrhoea	ORT	0	2009
county	9	diarrhoea	fluid from ORS packet	0	2009
county	9	diarrhoea	zinc	0	2009
county	9	diarrhoea	ORS and zinc	0	2009
county	10	ARI	sought treatment from health facility or provider	66.7999999999999972	2009
county	10	fever	sought treatment from health facility or provider	63.1000000000000014	2009
county	10	diarrhoea	sought treatment from health facility or provider	65.9000000000000057	2009
county	10	diarrhoea	ORT	71.2000000000000028	2009
county	10	diarrhoea	fluid from ORS packet	64.4000000000000057	2009
county	10	diarrhoea	zinc	5	2009
county	10	diarrhoea	ORS and zinc	3.29999999999999982	2009
county	11	ARI	sought treatment from health facility or provider	63.8999999999999986	2009
county	11	fever	sought treatment from health facility or provider	75.5999999999999943	2009
county	11	diarrhoea	sought treatment from health facility or provider	56.8999999999999986	2009
county	11	diarrhoea	ORT	81.7999999999999972	2009
county	11	diarrhoea	fluid from ORS packet	74.7999999999999972	2009
county	11	diarrhoea	zinc	4.59999999999999964	2009
county	11	diarrhoea	ORS and zinc	4.59999999999999964	2009
county	12	ARI	sought treatment from health facility or provider	0	2009
county	12	fever	sought treatment from health facility or provider	72	2009
county	12	diarrhoea	sought treatment from health facility or provider	69.7999999999999972	2009
county	12	diarrhoea	ORT	65.2999999999999972	2009
county	12	diarrhoea	fluid from ORS packet	52.2000000000000028	2009
county	12	diarrhoea	zinc	1.60000000000000009	2009
county	12	diarrhoea	ORS and zinc	0	2009
county	13	ARI	sought treatment from health facility or provider	67.0999999999999943	2009
county	13	fever	sought treatment from health facility or provider	75.2000000000000028	2009
county	13	diarrhoea	sought treatment from health facility or provider	67.5	2009
county	13	diarrhoea	ORT	75.4000000000000057	2009
county	13	diarrhoea	fluid from ORS packet	53.2999999999999972	2009
county	13	diarrhoea	zinc	5.09999999999999964	2009
county	13	diarrhoea	ORS and zinc	5.09999999999999964	2009
county	14	ARI	sought treatment from health facility or provider	0	2009
county	14	fever	sought treatment from health facility or provider	72.4000000000000057	2009
county	14	diarrhoea	sought treatment from health facility or provider	46.7000000000000028	2009
county	14	diarrhoea	ORT	74.7999999999999972	2009
county	14	diarrhoea	fluid from ORS packet	73.2999999999999972	2009
county	14	diarrhoea	zinc	7.59999999999999964	2009
county	14	diarrhoea	ORS and zinc	7.59999999999999964	2009
county	15	ARI	sought treatment from health facility or provider	57.3999999999999986	2009
county	15	fever	sought treatment from health facility or provider	60.7999999999999972	2009
county	15	diarrhoea	sought treatment from health facility or provider	54.3999999999999986	2009
county	15	diarrhoea	ORT	83.7000000000000028	2009
county	15	diarrhoea	fluid from ORS packet	67.2000000000000028	2009
county	15	diarrhoea	zinc	2	2009
county	15	diarrhoea	ORS and zinc	2	2009
county	16	ARI	sought treatment from health facility or provider	54.5	2009
county	16	fever	sought treatment from health facility or provider	61.3999999999999986	2009
county	16	diarrhoea	sought treatment from health facility or provider	51	2009
county	16	diarrhoea	ORT	70.7000000000000028	2009
county	16	diarrhoea	fluid from ORS packet	60.2000000000000028	2009
county	16	diarrhoea	zinc	5.5	2009
county	16	diarrhoea	ORS and zinc	5.5	2009
county	17	ARI	sought treatment from health facility or provider	64.5	2009
county	17	fever	sought treatment from health facility or provider	74.7999999999999972	2009
county	17	diarrhoea	sought treatment from health facility or provider	52.1000000000000014	2009
county	17	diarrhoea	ORT	75	2009
county	17	diarrhoea	fluid from ORS packet	60.8999999999999986	2009
county	17	diarrhoea	zinc	1.19999999999999996	2009
county	17	diarrhoea	ORS and zinc	1.19999999999999996	2009
county	18	ARI	sought treatment from health facility or provider	0	2009
county	18	fever	sought treatment from health facility or provider	67	2009
county	18	diarrhoea	sought treatment from health facility or provider	46	2009
county	18	diarrhoea	ORT	81.9000000000000057	2009
county	18	diarrhoea	fluid from ORS packet	65	2009
county	18	diarrhoea	zinc	1.10000000000000009	2009
county	18	diarrhoea	ORS and zinc	1.10000000000000009	2009
county	19	ARI	sought treatment from health facility or provider	72.9000000000000057	2009
county	19	fever	sought treatment from health facility or provider	65.5999999999999943	2009
county	19	diarrhoea	sought treatment from health facility or provider	0	2009
county	19	diarrhoea	ORT	0	2009
county	19	diarrhoea	fluid from ORS packet	0	2009
county	19	diarrhoea	zinc	0	2009
county	19	diarrhoea	ORS and zinc	0	2009
county	20	ARI	sought treatment from health facility or provider	0	2009
county	20	fever	sought treatment from health facility or provider	74.7999999999999972	2009
county	20	diarrhoea	sought treatment from health facility or provider	73.5999999999999943	2009
county	20	diarrhoea	ORT	64.4000000000000057	2009
county	20	diarrhoea	fluid from ORS packet	57.6000000000000014	2009
county	20	diarrhoea	zinc	5.79999999999999982	2009
county	20	diarrhoea	ORS and zinc	5.79999999999999982	2009
county	21	ARI	sought treatment from health facility or provider	77.9000000000000057	2009
county	21	fever	sought treatment from health facility or provider	83.2999999999999972	2009
county	21	diarrhoea	sought treatment from health facility or provider	59.7999999999999972	2009
county	21	diarrhoea	ORT	62.2000000000000028	2009
county	21	diarrhoea	fluid from ORS packet	58.3999999999999986	2009
county	21	diarrhoea	zinc	8.90000000000000036	2009
county	21	diarrhoea	ORS and zinc	8.90000000000000036	2009
county	22	ARI	sought treatment from health facility or provider	0	2009
county	22	fever	sought treatment from health facility or provider	61.7999999999999972	2009
county	22	diarrhoea	sought treatment from health facility or provider	69.9000000000000057	2009
county	22	diarrhoea	ORT	80.5999999999999943	2009
county	22	diarrhoea	fluid from ORS packet	72.2000000000000028	2009
county	22	diarrhoea	zinc	11.8000000000000007	2009
county	22	diarrhoea	ORS and zinc	11.8000000000000007	2009
county	23	ARI	sought treatment from health facility or provider	0	2009
county	23	fever	sought treatment from health facility or provider	63.3999999999999986	2009
county	23	diarrhoea	sought treatment from health facility or provider	76.5	2009
county	23	diarrhoea	ORT	44.7999999999999972	2009
county	23	diarrhoea	fluid from ORS packet	45.6000000000000014	2009
county	23	diarrhoea	zinc	13.6999999999999993	2009
county	23	diarrhoea	ORS and zinc	4	2009
county	24	ARI	sought treatment from health facility or provider	77.5	2009
county	24	fever	sought treatment from health facility or provider	76.9000000000000057	2009
county	24	diarrhoea	sought treatment from health facility or provider	63.2999999999999972	2009
county	24	diarrhoea	ORT	23	2009
county	24	diarrhoea	fluid from ORS packet	23.3999999999999986	2009
county	24	diarrhoea	zinc	1.5	2009
county	24	diarrhoea	ORS and zinc	1.5	2009
county	25	ARI	sought treatment from health facility or provider	0	2009
county	25	fever	sought treatment from health facility or provider	54.5	2009
county	25	diarrhoea	sought treatment from health facility or provider	48.8999999999999986	2009
county	25	diarrhoea	ORT	62.1000000000000014	2009
county	25	diarrhoea	fluid from ORS packet	58.3999999999999986	2009
county	25	diarrhoea	zinc	2.60000000000000009	2009
county	25	diarrhoea	ORS and zinc	2.60000000000000009	2009
county	26	ARI	sought treatment from health facility or provider	70.2999999999999972	2009
county	26	fever	sought treatment from health facility or provider	56.2000000000000028	2009
county	26	diarrhoea	sought treatment from health facility or provider	45.7000000000000028	2009
county	26	diarrhoea	ORT	51.1000000000000014	2009
county	26	diarrhoea	fluid from ORS packet	64.4000000000000057	2009
county	26	diarrhoea	zinc	3.20000000000000018	2009
county	26	diarrhoea	ORS and zinc	3.20000000000000018	2009
county	27	ARI	sought treatment from health facility or provider	54.8999999999999986	2009
county	27	fever	sought treatment from health facility or provider	53.2000000000000028	2009
county	27	diarrhoea	sought treatment from health facility or provider	55.7000000000000028	2009
county	27	diarrhoea	ORT	57.3999999999999986	2009
county	27	diarrhoea	fluid from ORS packet	62.2999999999999972	2009
county	27	diarrhoea	zinc	2.29999999999999982	2009
county	27	diarrhoea	ORS and zinc	2.29999999999999982	2009
county	28	ARI	sought treatment from health facility or provider	93.7000000000000028	2009
county	28	fever	sought treatment from health facility or provider	63.8999999999999986	2009
county	28	diarrhoea	sought treatment from health facility or provider	77	2009
county	28	diarrhoea	ORT	88.4000000000000057	2009
county	28	diarrhoea	fluid from ORS packet	73.2000000000000028	2009
county	28	diarrhoea	zinc	0	2009
county	28	diarrhoea	ORS and zinc	0	2009
county	29	ARI	sought treatment from health facility or provider	65.7000000000000028	2009
county	29	fever	sought treatment from health facility or provider	50.8999999999999986	2009
county	29	diarrhoea	sought treatment from health facility or provider	48.8999999999999986	2009
county	29	diarrhoea	ORT	74.5	2009
county	29	diarrhoea	fluid from ORS packet	59.7999999999999972	2009
county	29	diarrhoea	zinc	7.79999999999999982	2009
county	29	diarrhoea	ORS and zinc	5.5	2009
county	30	ARI	sought treatment from health facility or provider	65	2009
county	30	fever	sought treatment from health facility or provider	71.5999999999999943	2009
county	30	diarrhoea	sought treatment from health facility or provider	67.4000000000000057	2009
county	30	diarrhoea	ORT	90.7999999999999972	2009
county	30	diarrhoea	fluid from ORS packet	71.5999999999999943	2009
county	30	diarrhoea	zinc	1.69999999999999996	2009
county	30	diarrhoea	ORS and zinc	1.69999999999999996	2009
county	31	ARI	sought treatment from health facility or provider	73.0999999999999943	2009
county	31	fever	sought treatment from health facility or provider	73.5999999999999943	2009
county	31	diarrhoea	sought treatment from health facility or provider	60	2009
county	31	diarrhoea	ORT	74.7000000000000028	2009
county	31	diarrhoea	fluid from ORS packet	58.3999999999999986	2009
county	31	diarrhoea	zinc	1.60000000000000009	2009
county	31	diarrhoea	ORS and zinc	1.60000000000000009	2009
county	32	ARI	sought treatment from health facility or provider	76.2000000000000028	2009
county	32	fever	sought treatment from health facility or provider	67.0999999999999943	2009
county	32	diarrhoea	sought treatment from health facility or provider	53.2999999999999972	2009
county	32	diarrhoea	ORT	82.9000000000000057	2009
county	32	diarrhoea	fluid from ORS packet	69.5999999999999943	2009
county	32	diarrhoea	zinc	0	2009
county	32	diarrhoea	ORS and zinc	0	2009
county	33	ARI	sought treatment from health facility or provider	68.5	2009
county	33	fever	sought treatment from health facility or provider	61.7000000000000028	2009
county	33	diarrhoea	sought treatment from health facility or provider	67.7000000000000028	2009
county	33	diarrhoea	ORT	91.7999999999999972	2009
county	33	diarrhoea	fluid from ORS packet	77.7999999999999972	2009
county	33	diarrhoea	zinc	9.30000000000000071	2009
county	33	diarrhoea	ORS and zinc	8	2009
county	34	ARI	sought treatment from health facility or provider	61.3999999999999986	2009
county	34	fever	sought treatment from health facility or provider	53.3999999999999986	2009
county	34	diarrhoea	sought treatment from health facility or provider	69.9000000000000057	2009
county	34	diarrhoea	ORT	70.7000000000000028	2009
county	34	diarrhoea	fluid from ORS packet	81.2000000000000028	2009
county	34	diarrhoea	zinc	1.69999999999999996	2009
county	34	diarrhoea	ORS and zinc	1.69999999999999996	2009
county	35	ARI	sought treatment from health facility or provider	64.7000000000000028	2009
county	35	fever	sought treatment from health facility or provider	65.2999999999999972	2009
county	35	diarrhoea	sought treatment from health facility or provider	55.7999999999999972	2009
county	35	diarrhoea	ORT	83.5	2009
county	35	diarrhoea	fluid from ORS packet	68	2009
county	35	diarrhoea	zinc	2.39999999999999991	2009
county	35	diarrhoea	ORS and zinc	0	2009
county	36	ARI	sought treatment from health facility or provider	61.7999999999999972	2009
county	36	fever	sought treatment from health facility or provider	68.9000000000000057	2009
county	36	diarrhoea	sought treatment from health facility or provider	56.7000000000000028	2009
county	36	diarrhoea	ORT	68.9000000000000057	2009
county	36	diarrhoea	fluid from ORS packet	65.4000000000000057	2009
county	36	diarrhoea	zinc	7.20000000000000018	2009
county	36	diarrhoea	ORS and zinc	7.20000000000000018	2009
county	37	ARI	sought treatment from health facility or provider	57.7999999999999972	2009
county	37	fever	sought treatment from health facility or provider	43.6000000000000014	2009
county	37	diarrhoea	sought treatment from health facility or provider	50	2009
county	37	diarrhoea	ORT	76	2009
county	37	diarrhoea	fluid from ORS packet	59.2999999999999972	2009
county	37	diarrhoea	zinc	4.40000000000000036	2009
county	37	diarrhoea	ORS and zinc	4.40000000000000036	2009
county	38	ARI	sought treatment from health facility or provider	61.6000000000000014	2009
county	38	fever	sought treatment from health facility or provider	53.5	2009
county	38	diarrhoea	sought treatment from health facility or provider	50.1000000000000014	2009
county	38	diarrhoea	ORT	68.4000000000000057	2009
county	38	diarrhoea	fluid from ORS packet	65.5999999999999943	2009
county	38	diarrhoea	zinc	9.90000000000000036	2009
county	38	diarrhoea	ORS and zinc	9.19999999999999929	2009
county	39	ARI	sought treatment from health facility or provider	49.1000000000000014	2009
county	39	fever	sought treatment from health facility or provider	52.6000000000000014	2009
county	39	diarrhoea	sought treatment from health facility or provider	40.5	2009
county	39	diarrhoea	ORT	69	2009
county	39	diarrhoea	fluid from ORS packet	59.5	2009
county	39	diarrhoea	zinc	5.40000000000000036	2009
county	39	diarrhoea	ORS and zinc	4.90000000000000036	2009
county	40	ARI	sought treatment from health facility or provider	83.9000000000000057	2009
county	40	fever	sought treatment from health facility or provider	61.3999999999999986	2009
county	40	diarrhoea	sought treatment from health facility or provider	55.8999999999999986	2009
county	40	diarrhoea	ORT	56.7000000000000028	2009
county	40	diarrhoea	fluid from ORS packet	56.8999999999999986	2009
county	40	diarrhoea	zinc	2.5	2009
county	40	diarrhoea	ORS and zinc	2.5	2009
county	41	ARI	sought treatment from health facility or provider	79.2000000000000028	2009
county	41	fever	sought treatment from health facility or provider	75.7000000000000028	2009
county	41	diarrhoea	sought treatment from health facility or provider	65.5999999999999943	2009
county	41	diarrhoea	ORT	68.0999999999999943	2009
county	41	diarrhoea	fluid from ORS packet	51.2999999999999972	2009
county	41	diarrhoea	zinc	17	2009
county	41	diarrhoea	ORS and zinc	17	2009
county	42	ARI	sought treatment from health facility or provider	0	2009
county	42	fever	sought treatment from health facility or provider	62.5	2009
county	42	diarrhoea	sought treatment from health facility or provider	59.5	2009
county	42	diarrhoea	ORT	62.6000000000000014	2009
county	42	diarrhoea	fluid from ORS packet	51.6000000000000014	2009
county	42	diarrhoea	zinc	14.6999999999999993	2009
county	42	diarrhoea	ORS and zinc	14.6999999999999993	2009
county	43	ARI	sought treatment from health facility or provider	67.2999999999999972	2009
county	43	fever	sought treatment from health facility or provider	64.7000000000000028	2009
county	43	diarrhoea	sought treatment from health facility or provider	70.5999999999999943	2009
county	43	diarrhoea	ORT	90.0999999999999943	2009
county	43	diarrhoea	fluid from ORS packet	73.9000000000000057	2009
county	43	diarrhoea	zinc	20.1999999999999993	2009
county	43	diarrhoea	ORS and zinc	18.8999999999999986	2009
county	44	ARI	sought treatment from health facility or provider	75.2000000000000028	2009
county	44	fever	sought treatment from health facility or provider	62.2000000000000028	2009
county	44	diarrhoea	sought treatment from health facility or provider	55.3999999999999986	2009
county	44	diarrhoea	ORT	59.1000000000000014	2009
county	44	diarrhoea	fluid from ORS packet	51.5	2009
county	44	diarrhoea	zinc	3.5	2009
county	44	diarrhoea	ORS and zinc	2.60000000000000009	2009
county	45	ARI	sought treatment from health facility or provider	64.2000000000000028	2009
county	45	fever	sought treatment from health facility or provider	71.0999999999999943	2009
county	45	diarrhoea	sought treatment from health facility or provider	45.5	2009
county	45	diarrhoea	ORT	82	2009
county	45	diarrhoea	fluid from ORS packet	63.2999999999999972	2009
county	45	diarrhoea	zinc	11.9000000000000004	2009
county	45	diarrhoea	ORS and zinc	9.40000000000000036	2009
county	46	ARI	sought treatment from health facility or provider	0	2009
county	46	fever	sought treatment from health facility or provider	0	2009
county	46	diarrhoea	sought treatment from health facility or provider	0	2009
county	46	diarrhoea	ORT	0	2009
county	46	diarrhoea	fluid from ORS packet	0	2009
county	46	diarrhoea	zinc	0	2009
county	46	diarrhoea	ORS and zinc	0	2009
county	47	ARI	sought treatment from health facility or provider	65.2000000000000028	2009
county	47	fever	sought treatment from health facility or provider	64.2999999999999972	2009
county	47	diarrhoea	sought treatment from health facility or provider	57.3999999999999986	2009
county	47	diarrhoea	ORT	80.7999999999999972	2009
county	47	diarrhoea	fluid from ORS packet	70.5999999999999943	2009
county	47	diarrhoea	zinc	12.8000000000000007	2009
county	47	diarrhoea	ORS and zinc	12.8000000000000007	2009
country	KE	ARI	sought treatment from health facility or provider	65.9000000000000057	2009
country	KE	fever	sought treatment from health facility or provider	62.8999999999999986	2009
country	KE	diarrhoea	sought treatment from health facility or provider	58	2009
country	KE	diarrhoea	ORT	73.7999999999999972	2009
country	KE	diarrhoea	fluid from ORS packet	64.5999999999999943	2009
country	KE	diarrhoea	zinc	8.09999999999999964	2009
country	KE	diarrhoea	ORS and zinc	7.5	2009
\.


--
-- Name: treatment_type pk_treatment_type; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.treatment_type
    ADD CONSTRAINT pk_treatment_type PRIMARY KEY (geo_level, geo_code, geo_version, type, treatment);


--
-- PostgreSQL database dump complete
--


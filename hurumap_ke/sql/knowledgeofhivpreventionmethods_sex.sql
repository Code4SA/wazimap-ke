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

ALTER TABLE IF EXISTS ONLY public.knowledgeofhivpreventionmethods_sex DROP CONSTRAINT IF EXISTS pk_knowledgeofhivpreventionmethods_sex;
DROP TABLE IF EXISTS public.knowledgeofhivpreventionmethods_sex;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: knowledgeofhivpreventionmethods_sex; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.knowledgeofhivpreventionmethods_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "knowledge of hiv prevention methods" character varying(128) NOT NULL,
    sex character varying(15) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: knowledgeofhivpreventionmethods_sex; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.knowledgeofhivpreventionmethods_sex (geo_level, geo_code, "knowledge of hiv prevention methods", sex, total, geo_version) FROM stdin;
county	1	using condoms	female	85.4000000000000057	2009
county	1	using condoms	male	96.9000000000000057	2009
county	1	being faithful	female	94.2000000000000028	2009
county	1	being faithful	male	98.9000000000000057	2009
county	1	both	female	82.5	2009
county	1	both	male	96.4000000000000057	2009
county	2	using condoms	female	62.1000000000000014	2009
county	2	using condoms	male	70.9000000000000057	2009
county	2	being faithful	female	65.2999999999999972	2009
county	2	being faithful	male	89.5	2009
county	2	both	female	56	2009
county	2	both	male	67.2000000000000028	2009
county	3	using condoms	female	75.9000000000000057	2009
county	3	using condoms	male	54.1000000000000014	2009
county	3	being faithful	female	93.0999999999999943	2009
county	3	being faithful	male	75.0999999999999943	2009
county	3	both	female	73	2009
county	3	both	male	43.7999999999999972	2009
county	4	using condoms	female	60	2009
county	4	using condoms	male	73.7999999999999972	2009
county	4	being faithful	female	85	2009
county	4	being faithful	male	92.0999999999999943	2009
county	4	both	female	57.8999999999999986	2009
county	4	both	male	70.5	2009
county	5	using condoms	female	70.2000000000000028	2009
county	5	using condoms	male	88	2009
county	5	being faithful	female	92.5	2009
county	5	being faithful	male	94.7000000000000028	2009
county	5	both	female	67.5999999999999943	2009
county	5	both	male	84	2009
county	6	using condoms	female	84.0999999999999943	2009
county	6	using condoms	male	88.2000000000000028	2009
county	6	being faithful	female	95.7999999999999972	2009
county	6	being faithful	male	93.7000000000000028	2009
county	6	both	female	82.5999999999999943	2009
county	6	both	male	85.0999999999999943	2009
county	7	using condoms	female	42.8999999999999986	2009
county	7	using condoms	male	69.5999999999999943	2009
county	7	being faithful	female	59.7000000000000028	2009
county	7	being faithful	male	94.0999999999999943	2009
county	7	both	female	31.1999999999999993	2009
county	7	both	male	68.7000000000000028	2009
county	8	using condoms	female	18.5	2009
county	8	using condoms	male	38	2009
county	8	being faithful	female	52.2999999999999972	2009
county	8	being faithful	male	33.6000000000000014	2009
county	8	both	female	15.0999999999999996	2009
county	8	both	male	11.4000000000000004	2009
county	9	using condoms	female	14.0999999999999996	2009
county	9	using condoms	male	60.1000000000000014	2009
county	9	being faithful	female	53.7000000000000028	2009
county	9	being faithful	male	68.7000000000000028	2009
county	9	both	female	13	2009
county	9	both	male	58.1000000000000014	2009
county	10	using condoms	female	54.2000000000000028	2009
county	10	using condoms	male	97.2999999999999972	2009
county	10	being faithful	female	63.5	2009
county	10	being faithful	male	96.2999999999999972	2009
county	10	both	female	45.2999999999999972	2009
county	10	both	male	95	2009
county	11	using condoms	female	76.2000000000000028	2009
county	11	using condoms	male	70.7999999999999972	2009
county	11	being faithful	female	90.9000000000000057	2009
county	11	being faithful	male	97.5999999999999943	2009
county	11	both	female	73.9000000000000057	2009
county	11	both	male	70.7999999999999972	2009
county	12	using condoms	female	81.2000000000000028	2009
county	12	using condoms	male	87.2999999999999972	2009
county	12	being faithful	female	95.2999999999999972	2009
county	12	being faithful	male	99.0999999999999943	2009
county	12	both	female	78.5	2009
county	12	both	male	86.4000000000000057	2009
county	13	using condoms	female	76.0999999999999943	2009
county	13	using condoms	male	82.0999999999999943	2009
county	13	being faithful	female	94.0999999999999943	2009
county	13	being faithful	male	98.0999999999999943	2009
county	13	both	female	74.2000000000000028	2009
county	13	both	male	81.2999999999999972	2009
county	14	using condoms	female	80.4000000000000057	2009
county	14	using condoms	male	71.7000000000000028	2009
county	14	being faithful	female	95.2000000000000028	2009
county	14	being faithful	male	81.7999999999999972	2009
county	14	both	female	78.2000000000000028	2009
county	14	both	male	62.8999999999999986	2009
county	15	using condoms	female	51.5	2009
county	15	using condoms	male	82.5999999999999943	2009
county	15	being faithful	female	93.5	2009
county	15	being faithful	male	98.2999999999999972	2009
county	15	both	female	50.2000000000000028	2009
county	15	both	male	81.7000000000000028	2009
county	16	using condoms	female	76.5	2009
county	16	using condoms	male	88.0999999999999943	2009
county	16	being faithful	female	96.7999999999999972	2009
county	16	being faithful	male	91.4000000000000057	2009
county	16	both	female	74.9000000000000057	2009
county	16	both	male	83.2000000000000028	2009
county	17	using condoms	female	78.9000000000000057	2009
county	17	using condoms	male	93	2009
county	17	being faithful	female	95.5	2009
county	17	being faithful	male	98.4000000000000057	2009
county	17	both	female	76.5999999999999943	2009
county	17	both	male	92.2000000000000028	2009
county	18	using condoms	female	83.2000000000000028	2009
county	18	using condoms	male	91.5999999999999943	2009
county	18	being faithful	female	91.2000000000000028	2009
county	18	being faithful	male	90.7000000000000028	2009
county	18	both	female	80.2999999999999972	2009
county	18	both	male	85.2000000000000028	2009
county	19	using condoms	female	81	2009
county	19	using condoms	male	86.0999999999999943	2009
county	19	being faithful	female	92.5	2009
county	19	being faithful	male	97.2999999999999972	2009
county	19	both	female	76.7999999999999972	2009
county	19	both	male	85	2009
county	20	using condoms	female	91.9000000000000057	2009
county	20	using condoms	male	87.5999999999999943	2009
county	20	being faithful	female	97.7999999999999972	2009
county	20	being faithful	male	97	2009
county	20	both	female	90.5999999999999943	2009
county	20	both	male	86.0999999999999943	2009
county	21	using condoms	female	56.2999999999999972	2009
county	21	using condoms	male	80.2999999999999972	2009
county	21	being faithful	female	74.4000000000000057	2009
county	21	being faithful	male	97.9000000000000057	2009
county	21	both	female	53.7000000000000028	2009
county	21	both	male	78.2000000000000028	2009
county	22	using condoms	female	80.5999999999999943	2009
county	22	using condoms	male	95	2009
county	22	being faithful	female	92.4000000000000057	2009
county	22	being faithful	male	97.5	2009
county	22	both	female	75.9000000000000057	2009
county	22	both	male	93.5999999999999943	2009
county	23	using condoms	female	50.5	2009
county	23	using condoms	male	7.70000000000000018	2009
county	23	being faithful	female	91.2000000000000028	2009
county	23	being faithful	male	30.6999999999999993	2009
county	23	both	female	49.2000000000000028	2009
county	23	both	male	2.39999999999999991	2009
county	24	using condoms	female	53.7999999999999972	2009
county	24	using condoms	male	79.2999999999999972	2009
county	24	being faithful	female	76.9000000000000057	2009
county	24	being faithful	male	95	2009
county	24	both	female	47.7999999999999972	2009
county	24	both	male	76.7999999999999972	2009
county	25	using condoms	female	78.4000000000000057	2009
county	25	using condoms	male	82.5999999999999943	2009
county	25	being faithful	female	96.7999999999999972	2009
county	25	being faithful	male	95.7999999999999972	2009
county	25	both	female	78.0999999999999943	2009
county	25	both	male	79.2999999999999972	2009
county	26	using condoms	female	86.2999999999999972	2009
county	26	using condoms	male	84.9000000000000057	2009
county	26	being faithful	female	97.0999999999999943	2009
county	26	being faithful	male	92.2000000000000028	2009
county	26	both	female	84.5999999999999943	2009
county	26	both	male	79.7000000000000028	2009
county	27	using condoms	female	85.7000000000000028	2009
county	27	using condoms	male	86.9000000000000057	2009
county	27	being faithful	female	94.7999999999999972	2009
county	27	being faithful	male	92.7000000000000028	2009
county	27	both	female	82.7999999999999972	2009
county	27	both	male	82.7999999999999972	2009
county	28	using condoms	female	85.5999999999999943	2009
county	28	using condoms	male	97.0999999999999943	2009
county	28	being faithful	female	97.5	2009
county	28	being faithful	male	99.2000000000000028	2009
county	28	both	female	84.7000000000000028	2009
county	28	both	male	97.0999999999999943	2009
county	29	using condoms	female	92	2009
county	29	using condoms	male	98.9000000000000057	2009
county	29	being faithful	female	97.0999999999999943	2009
county	29	being faithful	male	98.7999999999999972	2009
county	29	both	female	90.7000000000000028	2009
county	29	both	male	98.4000000000000057	2009
county	30	using condoms	female	74.7000000000000028	2009
county	30	using condoms	male	91.7000000000000028	2009
county	30	being faithful	female	89.5999999999999943	2009
county	30	being faithful	male	96.2999999999999972	2009
county	30	both	female	72.5999999999999943	2009
county	30	both	male	89.9000000000000057	2009
county	31	using condoms	female	86.2999999999999972	2009
county	31	using condoms	male	77.5999999999999943	2009
county	31	being faithful	female	96.9000000000000057	2009
county	31	being faithful	male	89.5	2009
county	31	both	female	84.7999999999999972	2009
county	31	both	male	72.2999999999999972	2009
county	32	using condoms	female	84.2000000000000028	2009
county	32	using condoms	male	92.7999999999999972	2009
county	32	being faithful	female	94.4000000000000057	2009
county	32	being faithful	male	96.5999999999999943	2009
county	32	both	female	80.9000000000000057	2009
county	32	both	male	91.4000000000000057	2009
county	33	using condoms	female	67.9000000000000057	2009
county	33	using condoms	male	81.2000000000000028	2009
county	33	being faithful	female	85.2999999999999972	2009
county	33	being faithful	male	92.7999999999999972	2009
county	33	both	female	62.3999999999999986	2009
county	33	both	male	78.4000000000000057	2009
county	34	using condoms	female	78.2000000000000028	2009
county	34	using condoms	male	87.4000000000000057	2009
county	34	being faithful	female	92.2000000000000028	2009
county	34	being faithful	male	96.5	2009
county	34	both	female	76.2999999999999972	2009
county	34	both	male	85.2000000000000028	2009
county	35	using condoms	female	76.5	2009
county	35	using condoms	male	94	2009
county	35	being faithful	female	87.4000000000000057	2009
county	35	being faithful	male	94.9000000000000057	2009
county	35	both	female	72.5	2009
county	35	both	male	90.2999999999999972	2009
county	36	using condoms	female	87.9000000000000057	2009
county	36	using condoms	male	92.2000000000000028	2009
county	36	being faithful	female	95.9000000000000057	2009
county	36	being faithful	male	96.5	2009
county	36	both	female	85.5	2009
county	36	both	male	90.0999999999999943	2009
county	37	using condoms	female	86.4000000000000057	2009
county	37	using condoms	male	87.2999999999999972	2009
county	37	being faithful	female	92.2000000000000028	2009
county	37	being faithful	male	93.4000000000000057	2009
county	37	both	female	81.9000000000000057	2009
county	37	both	male	83.0999999999999943	2009
county	38	using condoms	female	81.4000000000000057	2009
county	38	using condoms	male	83	2009
county	38	being faithful	female	91	2009
county	38	being faithful	male	83.4000000000000057	2009
county	38	both	female	77.9000000000000057	2009
county	38	both	male	72	2009
county	39	using condoms	female	88.7000000000000028	2009
county	39	using condoms	male	91.7000000000000028	2009
county	39	being faithful	female	91.2999999999999972	2009
county	39	being faithful	male	99.7000000000000028	2009
county	39	both	female	84.2000000000000028	2009
county	39	both	male	91.7000000000000028	2009
county	40	using condoms	female	81.7999999999999972	2009
county	40	using condoms	male	96.2999999999999972	2009
county	40	being faithful	female	90	2009
county	40	being faithful	male	99.0999999999999943	2009
county	40	both	female	75.5	2009
county	40	both	male	95.4000000000000057	2009
county	41	using condoms	female	88.5	2009
county	41	using condoms	male	96.5999999999999943	2009
county	41	being faithful	female	96.5999999999999943	2009
county	41	being faithful	male	98.7999999999999972	2009
county	41	both	female	86.5	2009
county	41	both	male	95.5999999999999943	2009
county	42	using condoms	female	88.9000000000000057	2009
county	42	using condoms	male	99.0999999999999943	2009
county	42	being faithful	female	92.5	2009
county	42	being faithful	male	98.7000000000000028	2009
county	42	both	female	84.4000000000000057	2009
county	42	both	male	98.2000000000000028	2009
county	43	using condoms	female	91.5	2009
county	43	using condoms	male	97.4000000000000057	2009
county	43	being faithful	female	93.7999999999999972	2009
county	43	being faithful	male	98.5999999999999943	2009
county	43	both	female	88.2999999999999972	2009
county	43	both	male	96.7000000000000028	2009
county	44	using condoms	female	84.7999999999999972	2009
county	44	using condoms	male	86.7000000000000028	2009
county	44	being faithful	female	90	2009
county	44	being faithful	male	89.7000000000000028	2009
county	44	both	female	79.7999999999999972	2009
county	44	both	male	80.2999999999999972	2009
county	45	using condoms	female	81.7000000000000028	2009
county	45	using condoms	male	89.7999999999999972	2009
county	45	being faithful	female	96.5	2009
county	45	being faithful	male	97.4000000000000057	2009
county	45	both	female	80.0999999999999943	2009
county	45	both	male	88.5	2009
county	46	using condoms	female	98.2000000000000028	2009
county	46	using condoms	male	98.2999999999999972	2009
county	46	being faithful	female	99.7999999999999972	2009
county	46	being faithful	male	98.5	2009
county	46	both	female	97.9000000000000057	2009
county	46	both	male	98.2999999999999972	2009
county	47	using condoms	female	86.7999999999999972	2009
county	47	using condoms	male	93.0999999999999943	2009
county	47	being faithful	female	94.7000000000000028	2009
county	47	being faithful	male	95.9000000000000057	2009
county	47	both	female	83.5	2009
county	47	both	male	89.9000000000000057	2009
country	KE	using condoms	female	79.7999999999999972	2009
country	KE	using condoms	male	87.5999999999999943	2009
country	KE	being faithful	female	91.5999999999999943	2009
country	KE	being faithful	male	94.2000000000000028	2009
country	KE	both	female	76.5999999999999943	2009
country	KE	both	male	84.7999999999999972	2009
\.


--
-- Name: knowledgeofhivpreventionmethods_sex pk_knowledgeofhivpreventionmethods_sex; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.knowledgeofhivpreventionmethods_sex
    ADD CONSTRAINT pk_knowledgeofhivpreventionmethods_sex PRIMARY KEY (geo_level, geo_code, geo_version, "knowledge of hiv prevention methods", sex);


--
-- PostgreSQL database dump complete
--


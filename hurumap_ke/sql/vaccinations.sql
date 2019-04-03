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

ALTER TABLE IF EXISTS ONLY public.vaccinations DROP CONSTRAINT IF EXISTS pk_vaccinations;
DROP TABLE IF EXISTS public.vaccinations;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: vaccinations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.vaccinations (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    vaccinations character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: vaccinations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.vaccinations (geo_level, geo_code, vaccinations, total, geo_version) FROM stdin;
county	1	BCG	100	2009
county	9	BCG	71.7999999999999972	2009
county	1	Pentavalent 1	100	2009
county	1	Pentavalent 2	98.2999999999999972	2009
county	1	Pentavalent 3	95.5999999999999943	2009
county	1	Polio 0	95.7000000000000028	2009
county	1	Polio 1	98.2999999999999972	2009
county	1	Polio 2	97	2009
county	1	Polio 3	80	2009
county	1	Measles	89.0999999999999943	2009
county	1	All basic vaccinations	72.2999999999999972	2009
county	1	Pneumococcal 1	96.7000000000000028	2009
county	1	Pneumococcal 2	93.7000000000000028	2009
county	1	Pneumococcal 3	92.2999999999999972	2009
county	1	fully vaccinated	67.7000000000000028	2009
county	1	not vaccinated	0	2009
county	1	percentage with vaccination card	66.4000000000000057	2009
county	2	BCG	98.5999999999999943	2009
county	2	Pentavalent 1	96.7000000000000028	2009
county	2	Pentavalent 2	96.7000000000000028	2009
county	2	Pentavalent 3	95.0999999999999943	2009
county	2	Polio 0	78.0999999999999943	2009
county	2	Polio 1	97.7999999999999972	2009
county	2	Polio 2	95.9000000000000057	2009
county	2	Polio 3	91.5999999999999943	2009
county	2	Measles	90.7000000000000028	2009
county	2	All basic vaccinations	82.9000000000000057	2009
county	2	Pneumococcal 1	96.0999999999999943	2009
county	2	Pneumococcal 2	96.0999999999999943	2009
county	2	Pneumococcal 3	93.5999999999999943	2009
county	2	fully vaccinated	82	2009
county	2	not vaccinated	0	2009
county	2	percentage with vaccination card	92.2999999999999972	2009
county	3	BCG	94.2999999999999972	2009
county	3	Pentavalent 1	95.2999999999999972	2009
county	3	Pentavalent 2	95.2999999999999972	2009
county	3	Pentavalent 3	87.5	2009
county	3	Polio 0	88.2999999999999972	2009
county	3	Polio 1	96.2000000000000028	2009
county	3	Polio 2	93.5999999999999943	2009
county	3	Polio 3	84.7000000000000028	2009
county	3	Measles	83.7000000000000028	2009
county	3	All basic vaccinations	72.0999999999999943	2009
county	3	Pneumococcal 1	95.2999999999999972	2009
county	3	Pneumococcal 2	92.9000000000000057	2009
county	3	Pneumococcal 3	87.4000000000000057	2009
county	3	fully vaccinated	71.5	2009
county	3	not vaccinated	3	2009
county	3	percentage with vaccination card	80.9000000000000057	2009
county	4	BCG	97.0999999999999943	2009
county	4	Pentavalent 1	97.0999999999999943	2009
county	4	Pentavalent 2	95	2009
county	4	Pentavalent 3	89.9000000000000057	2009
county	4	Polio 0	50.7999999999999972	2009
county	4	Polio 1	97.0999999999999943	2009
county	4	Polio 2	93.7999999999999972	2009
county	4	Polio 3	80.5	2009
county	4	Measles	77.5999999999999943	2009
county	4	All basic vaccinations	64.2999999999999972	2009
county	4	Pneumococcal 1	94.2999999999999972	2009
county	4	Pneumococcal 2	92.7999999999999972	2009
county	4	Pneumococcal 3	85.2000000000000028	2009
county	4	fully vaccinated	61.2999999999999972	2009
county	4	not vaccinated	2.5	2009
county	4	percentage with vaccination card	72.0999999999999943	2009
county	5	BCG	94.2000000000000028	2009
county	5	Pentavalent 1	99.2999999999999972	2009
county	5	Pentavalent 2	97	2009
county	5	Pentavalent 3	84.7000000000000028	2009
county	5	Polio 0	65.5	2009
county	5	Polio 1	100	2009
county	5	Polio 2	97.7000000000000028	2009
county	5	Polio 3	90.7000000000000028	2009
county	5	Measles	83.2000000000000028	2009
county	5	All basic vaccinations	66.4000000000000057	2009
county	5	Pneumococcal 1	91.9000000000000057	2009
county	5	Pneumococcal 2	90.4000000000000057	2009
county	5	Pneumococcal 3	79.2999999999999972	2009
county	5	fully vaccinated	63.8999999999999986	2009
county	5	not vaccinated	0	2009
county	5	percentage with vaccination card	72.2999999999999972	2009
county	6	BCG	98.4000000000000057	2009
county	6	Pentavalent 1	98.4000000000000057	2009
county	6	Pentavalent 2	98.4000000000000057	2009
county	6	Pentavalent 3	97.5	2009
county	6	Polio 0	92.7999999999999972	2009
county	6	Polio 1	100	2009
county	6	Polio 2	100	2009
county	6	Polio 3	91.7000000000000028	2009
county	6	Measles	93	2009
county	6	All basic vaccinations	87.2999999999999972	2009
county	6	Pneumococcal 1	95.5999999999999943	2009
county	6	Pneumococcal 2	95.5999999999999943	2009
county	6	Pneumococcal 3	90.4000000000000057	2009
county	6	fully vaccinated	83.0999999999999943	2009
county	6	not vaccinated	0	2009
county	6	percentage with vaccination card	71.5	2009
county	7	BCG	80.2999999999999972	2009
county	7	Pentavalent 1	94.4000000000000057	2009
county	7	Pentavalent 2	93.9000000000000057	2009
county	7	Pentavalent 3	91.5999999999999943	2009
county	7	Polio 0	63.7999999999999972	2009
county	7	Polio 1	91.4000000000000057	2009
county	7	Polio 2	85.4000000000000057	2009
county	7	Polio 3	75.9000000000000057	2009
county	7	Measles	81.2000000000000028	2009
county	7	All basic vaccinations	54.3999999999999986	2009
county	7	Pneumococcal 1	94.4000000000000057	2009
county	7	Pneumococcal 2	91.2999999999999972	2009
county	7	Pneumococcal 3	84.7000000000000028	2009
county	7	fully vaccinated	54.3999999999999986	2009
county	7	not vaccinated	5.59999999999999964	2009
county	7	percentage with vaccination card	61.2000000000000028	2009
county	8	BCG	91	2009
county	8	Pentavalent 1	90.7999999999999972	2009
county	8	Pentavalent 2	86.2000000000000028	2009
county	8	Pentavalent 3	79.0999999999999943	2009
county	8	Polio 0	53.2999999999999972	2009
county	8	Polio 1	90.2000000000000028	2009
county	8	Polio 2	87	2009
county	8	Polio 3	64.7999999999999972	2009
county	8	Measles	64.5	2009
county	8	All basic vaccinations	43.7000000000000028	2009
county	8	Pneumococcal 1	83.7999999999999972	2009
county	8	Pneumococcal 2	82.4000000000000057	2009
county	8	Pneumococcal 3	74.0999999999999943	2009
county	8	fully vaccinated	37.8999999999999986	2009
county	8	not vaccinated	6.59999999999999964	2009
county	8	percentage with vaccination card	58.6000000000000014	2009
county	9	Pentavalent 1	68.2999999999999972	2009
county	9	Pentavalent 2	56.5	2009
county	9	Pentavalent 3	48.7999999999999972	2009
county	9	Polio 0	49.5	2009
county	9	Polio 1	71.7999999999999972	2009
county	9	Polio 2	58	2009
county	9	Polio 3	36.2000000000000028	2009
county	9	Measles	61.7000000000000028	2009
county	9	All basic vaccinations	27.6999999999999993	2009
county	9	Pneumococcal 1	70.2999999999999972	2009
county	9	Pneumococcal 2	57.8999999999999986	2009
county	9	Pneumococcal 3	48.7000000000000028	2009
county	9	fully vaccinated	27.6999999999999993	2009
county	9	not vaccinated	28.1999999999999993	2009
county	9	percentage with vaccination card	16.5	2009
county	10	BCG	92.5999999999999943	2009
county	10	Pentavalent 1	96.4000000000000057	2009
county	10	Pentavalent 2	93.4000000000000057	2009
county	10	Pentavalent 3	85.7000000000000028	2009
county	10	Polio 0	43.1000000000000014	2009
county	10	Polio 1	99	2009
county	10	Polio 2	95.5999999999999943	2009
county	10	Polio 3	86.4000000000000057	2009
county	10	Measles	76.7999999999999972	2009
county	10	All basic vaccinations	69.9000000000000057	2009
county	10	Pneumococcal 1	94.7000000000000028	2009
county	10	Pneumococcal 2	92.2000000000000028	2009
county	10	Pneumococcal 3	84.5999999999999943	2009
county	10	fully vaccinated	66.5999999999999943	2009
county	10	not vaccinated	1	2009
county	10	percentage with vaccination card	80.5	2009
county	11	BCG	96.4000000000000057	2009
county	11	Pentavalent 1	98.5999999999999943	2009
county	11	Pentavalent 2	96.5	2009
county	11	Pentavalent 3	94.4000000000000057	2009
county	11	Polio 0	77.4000000000000057	2009
county	11	Polio 1	98.5999999999999943	2009
county	11	Polio 2	95.9000000000000057	2009
county	11	Polio 3	88.2999999999999972	2009
county	11	Measles	86.5	2009
county	11	All basic vaccinations	80	2009
county	11	Pneumococcal 1	94.9000000000000057	2009
county	11	Pneumococcal 2	93.7999999999999972	2009
county	11	Pneumococcal 3	92	2009
county	11	fully vaccinated	79	2009
county	11	not vaccinated	1.39999999999999991	2009
county	11	percentage with vaccination card	89	2009
county	12	BCG	99.2000000000000028	2009
county	12	Pentavalent 1	100	2009
county	12	Pentavalent 2	100	2009
county	12	Pentavalent 3	93.5999999999999943	2009
county	12	Polio 0	78.9000000000000057	2009
county	12	Polio 1	100	2009
county	12	Polio 2	96.5999999999999943	2009
county	12	Polio 3	85.9000000000000057	2009
county	12	Measles	91.2999999999999972	2009
county	12	All basic vaccinations	81.9000000000000057	2009
county	12	Pneumococcal 1	97.2000000000000028	2009
county	12	Pneumococcal 2	97.2000000000000028	2009
county	12	Pneumococcal 3	89.0999999999999943	2009
county	12	fully vaccinated	78.2999999999999972	2009
county	12	not vaccinated	0	2009
county	12	percentage with vaccination card	89.9000000000000057	2009
county	13	BCG	100	2009
county	13	Pentavalent 1	98.2999999999999972	2009
county	13	Pentavalent 2	98.2999999999999972	2009
county	13	Pentavalent 3	96.7999999999999972	2009
county	13	Polio 0	100	2009
county	13	Polio 1	100	2009
county	13	Polio 2	100	2009
county	13	Polio 3	93.5999999999999943	2009
county	13	Measles	98.5	2009
county	13	All basic vaccinations	90.5999999999999943	2009
county	13	Pneumococcal 1	100	2009
county	13	Pneumococcal 2	100	2009
county	13	Pneumococcal 3	100	2009
county	13	fully vaccinated	90.5999999999999943	2009
county	13	not vaccinated	0	2009
county	13	percentage with vaccination card	92.2000000000000028	2009
county	14	BCG	100	2009
county	14	Pentavalent 1	100	2009
county	14	Pentavalent 2	100	2009
county	14	Pentavalent 3	99.2000000000000028	2009
county	14	Polio 0	97.9000000000000057	2009
county	14	Polio 1	100	2009
county	14	Polio 2	94.7000000000000028	2009
county	14	Polio 3	89.9000000000000057	2009
county	14	Measles	92.7999999999999972	2009
county	14	All basic vaccinations	82.7000000000000028	2009
county	14	Pneumococcal 1	100	2009
county	14	Pneumococcal 2	100	2009
county	14	Pneumococcal 3	99.2000000000000028	2009
county	14	fully vaccinated	82.7000000000000028	2009
county	14	not vaccinated	0	2009
county	14	percentage with vaccination card	83.4000000000000057	2009
county	15	BCG	96.0999999999999943	2009
county	15	Pentavalent 1	96.0999999999999943	2009
county	15	Pentavalent 2	93.0999999999999943	2009
county	15	Pentavalent 3	81.5	2009
county	15	Polio 0	52.7999999999999972	2009
county	15	Polio 1	97.7000000000000028	2009
county	15	Polio 2	88.5	2009
county	15	Polio 3	76.4000000000000057	2009
county	15	Measles	84.9000000000000057	2009
county	15	All basic vaccinations	65.2000000000000028	2009
county	15	Pneumococcal 1	81	2009
county	15	Pneumococcal 2	78.0999999999999943	2009
county	15	Pneumococcal 3	69.2000000000000028	2009
county	15	fully vaccinated	52.7000000000000028	2009
county	15	not vaccinated	2.29999999999999982	2009
county	15	percentage with vaccination card	85.2999999999999972	2009
county	16	BCG	100	2009
county	16	Pentavalent 1	100	2009
county	16	Pentavalent 2	100	2009
county	16	Pentavalent 3	97.7999999999999972	2009
county	16	Polio 0	91.5	2009
county	16	Polio 1	98.4000000000000057	2009
county	16	Polio 2	97.5999999999999943	2009
county	16	Polio 3	91.5	2009
county	16	Measles	97.2000000000000028	2009
county	16	All basic vaccinations	88.7000000000000028	2009
county	16	Pneumococcal 1	98	2009
county	16	Pneumococcal 2	97.2000000000000028	2009
county	16	Pneumococcal 3	95.9000000000000057	2009
county	16	fully vaccinated	86.7000000000000028	2009
county	16	not vaccinated	0	2009
county	16	percentage with vaccination card	72.7000000000000028	2009
county	17	BCG	100	2009
county	17	Pentavalent 1	100	2009
county	17	Pentavalent 2	100	2009
county	17	Pentavalent 3	99.0999999999999943	2009
county	17	Polio 0	80.7999999999999972	2009
county	17	Polio 1	96.2000000000000028	2009
county	17	Polio 2	96.2000000000000028	2009
county	17	Polio 3	93.7999999999999972	2009
county	17	Measles	96.7999999999999972	2009
county	17	All basic vaccinations	90.5999999999999943	2009
county	17	Pneumococcal 1	96.2000000000000028	2009
county	17	Pneumococcal 2	95.2999999999999972	2009
county	17	Pneumococcal 3	95.2999999999999972	2009
county	17	fully vaccinated	89.7000000000000028	2009
county	17	not vaccinated	0	2009
county	17	percentage with vaccination card	93.0999999999999943	2009
county	18	BCG	100	2009
county	18	Pentavalent 1	100	2009
county	18	Pentavalent 2	98.0999999999999943	2009
county	18	Pentavalent 3	90.7999999999999972	2009
county	18	Polio 0	88.5	2009
county	18	Polio 1	100	2009
county	18	Polio 2	98.0999999999999943	2009
county	18	Polio 3	91	2009
county	18	Measles	95.0999999999999943	2009
county	18	All basic vaccinations	82.5999999999999943	2009
county	18	Pneumococcal 1	98	2009
county	18	Pneumococcal 2	89.7000000000000028	2009
county	18	Pneumococcal 3	84.9000000000000057	2009
county	18	fully vaccinated	77.7999999999999972	2009
county	18	not vaccinated	0	2009
county	18	percentage with vaccination card	81.2999999999999972	2009
county	19	BCG	98.7000000000000028	2009
county	19	Pentavalent 1	97.2000000000000028	2009
county	19	Pentavalent 2	97.2000000000000028	2009
county	19	Pentavalent 3	94.9000000000000057	2009
county	19	Polio 0	94.5999999999999943	2009
county	19	Polio 1	100	2009
county	19	Polio 2	99	2009
county	19	Polio 3	85.7999999999999972	2009
county	19	Measles	92.7000000000000028	2009
county	19	All basic vaccinations	79.5	2009
county	19	Pneumococcal 1	94.4000000000000057	2009
county	19	Pneumococcal 2	93.0999999999999943	2009
county	19	Pneumococcal 3	89.0999999999999943	2009
county	19	fully vaccinated	77.7999999999999972	2009
county	19	not vaccinated	0	2009
county	19	percentage with vaccination card	82.2000000000000028	2009
county	20	BCG	100	2009
county	20	Pentavalent 1	100	2009
county	20	Pentavalent 2	100	2009
county	20	Pentavalent 3	100	2009
county	20	Polio 0	97.5999999999999943	2009
county	20	Polio 1	100	2009
county	20	Polio 2	100	2009
county	20	Polio 3	62.7000000000000028	2009
county	20	Measles	100	2009
county	20	All basic vaccinations	62.7000000000000028	2009
county	20	Pneumococcal 1	92.2999999999999972	2009
county	20	Pneumococcal 2	92.2999999999999972	2009
county	20	Pneumococcal 3	92.2999999999999972	2009
county	20	fully vaccinated	54.8999999999999986	2009
county	20	not vaccinated	0	2009
county	20	percentage with vaccination card	60.2999999999999972	2009
county	21	BCG	99	2009
county	21	Pentavalent 1	99	2009
county	21	Pentavalent 2	95.7000000000000028	2009
county	21	Pentavalent 3	89.9000000000000057	2009
county	21	Polio 0	91.9000000000000057	2009
county	21	Polio 1	99	2009
county	21	Polio 2	93.7999999999999972	2009
county	21	Polio 3	77.9000000000000057	2009
county	21	Measles	97.2999999999999972	2009
county	21	All basic vaccinations	77.9000000000000057	2009
county	21	Pneumococcal 1	97.2999999999999972	2009
county	21	Pneumococcal 2	92	2009
county	21	Pneumococcal 3	89.9000000000000057	2009
county	21	fully vaccinated	76.0999999999999943	2009
county	21	not vaccinated	1	2009
county	21	percentage with vaccination card	74.2999999999999972	2009
county	22	BCG	100	2009
county	22	Pentavalent 1	100	2009
county	22	Pentavalent 2	100	2009
county	22	Pentavalent 3	99	2009
county	22	Polio 0	97.9000000000000057	2009
county	22	Polio 1	100	2009
county	22	Polio 2	100	2009
county	22	Polio 3	82.7999999999999972	2009
county	22	Measles	99	2009
county	22	All basic vaccinations	82.7999999999999972	2009
county	22	Pneumococcal 1	100	2009
county	22	Pneumococcal 2	100	2009
county	22	Pneumococcal 3	97.2000000000000028	2009
county	22	fully vaccinated	82.7999999999999972	2009
county	22	not vaccinated	0	2009
county	22	percentage with vaccination card	76.0999999999999943	2009
county	23	BCG	94.5	2009
county	23	Pentavalent 1	94.4000000000000057	2009
county	23	Pentavalent 2	91.5	2009
county	23	Pentavalent 3	86.2000000000000028	2009
county	23	Polio 0	73.4000000000000057	2009
county	23	Polio 1	94.4000000000000057	2009
county	23	Polio 2	88.9000000000000057	2009
county	23	Polio 3	76.0999999999999943	2009
county	23	Measles	71.9000000000000057	2009
county	23	All basic vaccinations	57.3999999999999986	2009
county	23	Pneumococcal 1	93.7999999999999972	2009
county	23	Pneumococcal 2	89.7999999999999972	2009
county	23	Pneumococcal 3	83.2000000000000028	2009
county	23	fully vaccinated	56.7000000000000028	2009
county	23	not vaccinated	3.70000000000000018	2009
county	23	percentage with vaccination card	87.0999999999999943	2009
county	24	BCG	78.9000000000000057	2009
county	24	Pentavalent 1	86.4000000000000057	2009
county	24	Pentavalent 2	80.5999999999999943	2009
county	24	Pentavalent 3	68.2999999999999972	2009
county	24	Polio 0	42.8999999999999986	2009
county	24	Polio 1	84.0999999999999943	2009
county	24	Polio 2	76.2000000000000028	2009
county	24	Polio 3	58.5	2009
county	24	Measles	58.2000000000000028	2009
county	24	All basic vaccinations	34.2999999999999972	2009
county	24	Pneumococcal 1	78.7000000000000028	2009
county	24	Pneumococcal 2	73.0999999999999943	2009
county	24	Pneumococcal 3	58.7000000000000028	2009
county	24	fully vaccinated	30.5	2009
county	24	not vaccinated	11.1999999999999993	2009
county	24	percentage with vaccination card	60.7999999999999972	2009
county	25	BCG	96.7999999999999972	2009
county	25	Pentavalent 1	93.2000000000000028	2009
county	25	Pentavalent 2	89.7000000000000028	2009
county	25	Pentavalent 3	86.9000000000000057	2009
county	25	Polio 0	54.2000000000000028	2009
county	25	Polio 1	96.0999999999999943	2009
county	25	Polio 2	91.0999999999999943	2009
county	25	Polio 3	84	2009
county	25	Measles	71.7000000000000028	2009
county	25	All basic vaccinations	63.2999999999999972	2009
county	25	Pneumococcal 1	94.5	2009
county	25	Pneumococcal 2	89.5999999999999943	2009
county	25	Pneumococcal 3	84.7999999999999972	2009
county	25	fully vaccinated	62.7999999999999972	2009
county	25	not vaccinated	1.39999999999999991	2009
county	25	percentage with vaccination card	79.4000000000000057	2009
county	26	BCG	100	2009
county	26	Pentavalent 1	100	2009
county	26	Pentavalent 2	98.0999999999999943	2009
county	26	Pentavalent 3	77.7999999999999972	2009
county	26	Polio 0	65.0999999999999943	2009
county	26	Polio 1	99.0999999999999943	2009
county	26	Polio 2	97.4000000000000057	2009
county	26	Polio 3	83.2000000000000028	2009
county	26	Measles	84.7999999999999972	2009
county	26	All basic vaccinations	64.9000000000000057	2009
county	26	Pneumococcal 1	93.2999999999999972	2009
county	26	Pneumococcal 2	91.2999999999999972	2009
county	26	Pneumococcal 3	73	2009
county	26	fully vaccinated	58.3999999999999986	2009
county	26	not vaccinated	0	2009
county	26	percentage with vaccination card	64.7000000000000028	2009
county	27	BCG	95.9000000000000057	2009
county	27	Pentavalent 1	97.2999999999999972	2009
county	27	Pentavalent 2	95.9000000000000057	2009
county	27	Pentavalent 3	91.5	2009
county	27	Polio 0	70.7000000000000028	2009
county	27	Polio 1	95.9000000000000057	2009
county	27	Polio 2	93.7000000000000028	2009
county	27	Polio 3	74.5999999999999943	2009
county	27	Measles	91.2999999999999972	2009
county	27	All basic vaccinations	70	2009
county	27	Pneumococcal 1	83.4000000000000057	2009
county	27	Pneumococcal 2	82.2999999999999972	2009
county	27	Pneumococcal 3	75.7999999999999972	2009
county	27	fully vaccinated	57.5	2009
county	27	not vaccinated	2.70000000000000018	2009
county	27	percentage with vaccination card	73.7000000000000028	2009
county	28	BCG	100	2009
county	28	Pentavalent 1	100	2009
county	28	Pentavalent 2	97.9000000000000057	2009
county	28	Pentavalent 3	97.9000000000000057	2009
county	28	Polio 0	82	2009
county	28	Polio 1	99.4000000000000057	2009
county	28	Polio 2	97.9000000000000057	2009
county	28	Polio 3	91.7000000000000028	2009
county	28	Measles	86.5999999999999943	2009
county	28	All basic vaccinations	85.0999999999999943	2009
county	28	Pneumococcal 1	99.4000000000000057	2009
county	28	Pneumococcal 2	97.9000000000000057	2009
county	28	Pneumococcal 3	97	2009
county	28	fully vaccinated	84.4000000000000057	2009
county	28	not vaccinated	0	2009
county	28	percentage with vaccination card	91.2000000000000028	2009
county	29	BCG	99.4000000000000057	2009
county	29	Pentavalent 1	100	2009
county	29	Pentavalent 2	100	2009
county	29	Pentavalent 3	99.4000000000000057	2009
county	29	Polio 0	71.5999999999999943	2009
county	29	Polio 1	100	2009
county	29	Polio 2	100	2009
county	29	Polio 3	96.9000000000000057	2009
county	29	Measles	97.5	2009
county	29	All basic vaccinations	93.9000000000000057	2009
county	29	Pneumococcal 1	99.4000000000000057	2009
county	29	Pneumococcal 2	99.4000000000000057	2009
county	29	Pneumococcal 3	99.4000000000000057	2009
county	29	fully vaccinated	93.9000000000000057	2009
county	29	not vaccinated	0	2009
county	29	percentage with vaccination card	92.0999999999999943	2009
county	30	BCG	100	2009
county	30	Pentavalent 1	100	2009
county	30	Pentavalent 2	98.2999999999999972	2009
county	30	Pentavalent 3	94.5	2009
county	30	Polio 0	69	2009
county	30	Polio 1	100	2009
county	30	Polio 2	97.5999999999999943	2009
county	30	Polio 3	86.9000000000000057	2009
county	30	Measles	82.5	2009
county	30	All basic vaccinations	71.0999999999999943	2009
county	30	Pneumococcal 1	92.5999999999999943	2009
county	30	Pneumococcal 2	90.9000000000000057	2009
county	30	Pneumococcal 3	85.0999999999999943	2009
county	30	fully vaccinated	63.2000000000000028	2009
county	30	not vaccinated	0	2009
county	30	percentage with vaccination card	81.7999999999999972	2009
county	31	BCG	98.7000000000000028	2009
county	31	Pentavalent 1	98.7000000000000028	2009
county	31	Pentavalent 2	98.7000000000000028	2009
county	31	Pentavalent 3	89.7000000000000028	2009
county	31	Polio 0	77.9000000000000057	2009
county	31	Polio 1	98.7000000000000028	2009
county	31	Polio 2	91.0999999999999943	2009
county	31	Polio 3	90.2999999999999972	2009
county	31	Measles	92.2999999999999972	2009
county	31	All basic vaccinations	82.5	2009
county	31	Pneumococcal 1	96.5999999999999943	2009
county	31	Pneumococcal 2	96.5999999999999943	2009
county	31	Pneumococcal 3	90.9000000000000057	2009
county	31	fully vaccinated	78.5999999999999943	2009
county	31	not vaccinated	1.30000000000000004	2009
county	31	percentage with vaccination card	79.9000000000000057	2009
county	32	BCG	97.2000000000000028	2009
county	32	Pentavalent 1	97.9000000000000057	2009
county	32	Pentavalent 2	96.0999999999999943	2009
county	32	Pentavalent 3	90.9000000000000057	2009
county	32	Polio 0	81	2009
county	32	Polio 1	97.9000000000000057	2009
county	32	Polio 2	92.4000000000000057	2009
county	32	Polio 3	86.5999999999999943	2009
county	32	Measles	86.4000000000000057	2009
county	32	All basic vaccinations	75.4000000000000057	2009
county	32	Pneumococcal 1	94.7999999999999972	2009
county	32	Pneumococcal 2	93	2009
county	32	Pneumococcal 3	86.5	2009
county	32	fully vaccinated	72	2009
county	32	not vaccinated	2.10000000000000009	2009
county	32	percentage with vaccination card	81.7999999999999972	2009
county	33	BCG	95	2009
county	33	Pentavalent 1	96.2999999999999972	2009
county	33	Pentavalent 2	91.2000000000000028	2009
county	33	Pentavalent 3	83	2009
county	33	Polio 0	47.2999999999999972	2009
county	33	Polio 1	96.4000000000000057	2009
county	33	Polio 2	94.2000000000000028	2009
county	33	Polio 3	75.2000000000000028	2009
county	33	Measles	74.5	2009
county	33	All basic vaccinations	59.5	2009
county	33	Pneumococcal 1	90.7999999999999972	2009
county	33	Pneumococcal 2	86.2999999999999972	2009
county	33	Pneumococcal 3	74.7999999999999972	2009
county	33	fully vaccinated	53.6000000000000014	2009
county	33	not vaccinated	1.60000000000000009	2009
county	33	percentage with vaccination card	79.0999999999999943	2009
county	34	BCG	97.7000000000000028	2009
county	34	Pentavalent 1	97	2009
county	34	Pentavalent 2	92.4000000000000057	2009
county	34	Pentavalent 3	79.0999999999999943	2009
county	34	Polio 0	70	2009
county	34	Polio 1	91.0999999999999943	2009
county	34	Polio 2	82	2009
county	34	Polio 3	61	2009
county	34	Measles	80.9000000000000057	2009
county	34	All basic vaccinations	51.1000000000000014	2009
county	34	Pneumococcal 1	90.2999999999999972	2009
county	34	Pneumococcal 2	83.2999999999999972	2009
county	34	Pneumococcal 3	71.9000000000000057	2009
county	34	fully vaccinated	48.8999999999999986	2009
county	34	not vaccinated	1.10000000000000009	2009
county	34	percentage with vaccination card	57.2000000000000028	2009
county	35	BCG	100	2009
county	35	Pentavalent 1	100	2009
county	35	Pentavalent 2	100	2009
county	35	Pentavalent 3	95.7000000000000028	2009
county	35	Polio 0	87.9000000000000057	2009
county	35	Polio 1	100	2009
county	35	Polio 2	98.7000000000000028	2009
county	35	Polio 3	87.4000000000000057	2009
county	35	Measles	82.9000000000000057	2009
county	35	All basic vaccinations	70.7999999999999972	2009
county	35	Pneumococcal 1	94.2000000000000028	2009
county	35	Pneumococcal 2	92.9000000000000057	2009
county	35	Pneumococcal 3	88.2999999999999972	2009
county	35	fully vaccinated	66.2999999999999972	2009
county	35	not vaccinated	0	2009
county	35	percentage with vaccination card	84.5	2009
county	36	BCG	100	2009
county	36	Pentavalent 1	100	2009
county	36	Pentavalent 2	99.2000000000000028	2009
county	36	Pentavalent 3	98	2009
county	36	Polio 0	62.3999999999999986	2009
county	36	Polio 1	100	2009
county	36	Polio 2	100	2009
county	36	Polio 3	95.5999999999999943	2009
county	36	Measles	92.0999999999999943	2009
county	36	All basic vaccinations	87	2009
county	36	Pneumococcal 1	96.0999999999999943	2009
county	36	Pneumococcal 2	95.2999999999999972	2009
county	36	Pneumococcal 3	92.7999999999999972	2009
county	36	fully vaccinated	81.2999999999999972	2009
county	36	not vaccinated	0	2009
county	36	percentage with vaccination card	84.7000000000000028	2009
county	37	BCG	94.9000000000000057	2009
county	37	Pentavalent 1	98.9000000000000057	2009
county	37	Pentavalent 2	94.9000000000000057	2009
county	37	Pentavalent 3	89.5	2009
county	37	Polio 0	57.2000000000000028	2009
county	37	Polio 1	98.9000000000000057	2009
county	37	Polio 2	94.9000000000000057	2009
county	37	Polio 3	75.7000000000000028	2009
county	37	Measles	80.0999999999999943	2009
county	37	All basic vaccinations	63.5	2009
county	37	Pneumococcal 1	97.5999999999999943	2009
county	37	Pneumococcal 2	94.5999999999999943	2009
county	37	Pneumococcal 3	86.2000000000000028	2009
county	37	fully vaccinated	62.2000000000000028	2009
county	37	not vaccinated	1.10000000000000009	2009
county	37	percentage with vaccination card	77	2009
county	38	BCG	98.2999999999999972	2009
county	38	Pentavalent 1	98.2999999999999972	2009
county	38	Pentavalent 2	98.2999999999999972	2009
county	38	Pentavalent 3	97	2009
county	38	Polio 0	80.7000000000000028	2009
county	38	Polio 1	98.2999999999999972	2009
county	38	Polio 2	96.0999999999999943	2009
county	38	Polio 3	90.9000000000000057	2009
county	38	Measles	98.2999999999999972	2009
county	38	All basic vaccinations	90.9000000000000057	2009
county	38	Pneumococcal 1	98.2999999999999972	2009
county	38	Pneumococcal 2	98.2999999999999972	2009
county	38	Pneumococcal 3	97	2009
county	38	fully vaccinated	90.9000000000000057	2009
county	38	not vaccinated	1.69999999999999996	2009
county	38	percentage with vaccination card	72.9000000000000057	2009
county	39	BCG	95.2999999999999972	2009
county	39	Pentavalent 1	95	2009
county	39	Pentavalent 2	95	2009
county	39	Pentavalent 3	88.9000000000000057	2009
county	39	Polio 0	57.2000000000000028	2009
county	39	Polio 1	95.7000000000000028	2009
county	39	Polio 2	94.7999999999999972	2009
county	39	Polio 3	86	2009
county	39	Measles	84.2999999999999972	2009
county	39	All basic vaccinations	76.2999999999999972	2009
county	39	Pneumococcal 1	89.0999999999999943	2009
county	39	Pneumococcal 2	88.2000000000000028	2009
county	39	Pneumococcal 3	83.7000000000000028	2009
county	39	fully vaccinated	72.5	2009
county	39	not vaccinated	3.79999999999999982	2009
county	39	percentage with vaccination card	71.7000000000000028	2009
county	40	BCG	98	2009
county	40	Pentavalent 1	96.9000000000000057	2009
county	40	Pentavalent 2	95.2999999999999972	2009
county	40	Pentavalent 3	90.4000000000000057	2009
county	40	Polio 0	65.2999999999999972	2009
county	40	Polio 1	100	2009
county	40	Polio 2	94.0999999999999943	2009
county	40	Polio 3	87.2000000000000028	2009
county	40	Measles	92.2000000000000028	2009
county	40	All basic vaccinations	76.2999999999999972	2009
county	40	Pneumococcal 1	98.9000000000000057	2009
county	40	Pneumococcal 2	95.5	2009
county	40	Pneumococcal 3	92.7000000000000028	2009
county	40	fully vaccinated	75	2009
county	40	not vaccinated	0	2009
county	40	percentage with vaccination card	80	2009
county	41	BCG	98.4000000000000057	2009
county	41	Pentavalent 1	100	2009
county	41	Pentavalent 2	100	2009
county	41	Pentavalent 3	93.9000000000000057	2009
county	41	Polio 0	95.5	2009
county	41	Polio 1	100	2009
county	41	Polio 2	93.2000000000000028	2009
county	41	Polio 3	81.7999999999999972	2009
county	41	Measles	84.7999999999999972	2009
county	41	All basic vaccinations	73.2999999999999972	2009
county	41	Pneumococcal 1	99.5	2009
county	41	Pneumococcal 2	99.5	2009
county	41	Pneumococcal 3	91.2999999999999972	2009
county	41	fully vaccinated	72.5	2009
county	41	not vaccinated	0	2009
county	41	percentage with vaccination card	78.0999999999999943	2009
county	42	BCG	97.2000000000000028	2009
county	42	Pentavalent 1	97.5999999999999943	2009
county	42	Pentavalent 2	97.5999999999999943	2009
county	42	Pentavalent 3	87	2009
county	42	Polio 0	86.7000000000000028	2009
county	42	Polio 1	96.4000000000000057	2009
county	42	Polio 2	93	2009
county	42	Polio 3	81.9000000000000057	2009
county	42	Measles	89.5	2009
county	42	All basic vaccinations	73.0999999999999943	2009
county	42	Pneumococcal 1	96.7999999999999972	2009
county	42	Pneumococcal 2	95.0999999999999943	2009
county	42	Pneumococcal 3	84.7000000000000028	2009
county	42	fully vaccinated	73.0999999999999943	2009
county	42	not vaccinated	2.39999999999999991	2009
county	42	percentage with vaccination card	51.5	2009
county	43	BCG	94.5	2009
county	43	Pentavalent 1	97.9000000000000057	2009
county	43	Pentavalent 2	97.2000000000000028	2009
county	43	Pentavalent 3	82.2999999999999972	2009
county	43	Polio 0	83	2009
county	43	Polio 1	96	2009
county	43	Polio 2	90.7999999999999972	2009
county	43	Polio 3	72.9000000000000057	2009
county	43	Measles	80.2999999999999972	2009
county	43	All basic vaccinations	57.2000000000000028	2009
county	43	Pneumococcal 1	90.9000000000000057	2009
county	43	Pneumococcal 2	84.5999999999999943	2009
county	43	Pneumococcal 3	74.7000000000000028	2009
county	43	fully vaccinated	53.7000000000000028	2009
county	43	not vaccinated	2.10000000000000009	2009
county	43	percentage with vaccination card	73.9000000000000057	2009
county	44	BCG	87.5999999999999943	2009
county	44	Pentavalent 1	99.5999999999999943	2009
county	44	Pentavalent 2	97.7000000000000028	2009
county	44	Pentavalent 3	89.9000000000000057	2009
county	44	Polio 0	69	2009
county	44	Polio 1	98.2999999999999972	2009
county	44	Polio 2	94.7000000000000028	2009
county	44	Polio 3	66.2000000000000028	2009
county	44	Measles	82	2009
county	44	All basic vaccinations	46.8999999999999986	2009
county	44	Pneumococcal 1	87.4000000000000057	2009
county	44	Pneumococcal 2	82.0999999999999943	2009
county	44	Pneumococcal 3	71.2000000000000028	2009
county	44	fully vaccinated	36.8999999999999986	2009
county	44	not vaccinated	0.400000000000000022	2009
county	44	percentage with vaccination card	69	2009
county	45	BCG	100	2009
county	45	Pentavalent 1	97.7999999999999972	2009
county	45	Pentavalent 2	97.7999999999999972	2009
county	45	Pentavalent 3	95.2999999999999972	2009
county	45	Polio 0	95.7999999999999972	2009
county	45	Polio 1	99.0999999999999943	2009
county	45	Polio 2	99.0999999999999943	2009
county	45	Polio 3	91.7999999999999972	2009
county	45	Measles	86.5	2009
county	45	All basic vaccinations	80.5	2009
county	45	Pneumococcal 1	94.4000000000000057	2009
county	45	Pneumococcal 2	94.4000000000000057	2009
county	45	Pneumococcal 3	91.9000000000000057	2009
county	45	fully vaccinated	78.0999999999999943	2009
county	45	not vaccinated	0	2009
county	45	percentage with vaccination card	87.2000000000000028	2009
county	46	BCG	99	2009
county	46	Pentavalent 1	99	2009
county	46	Pentavalent 2	99	2009
county	46	Pentavalent 3	97.5999999999999943	2009
county	46	Polio 0	94.7999999999999972	2009
county	46	Polio 1	100	2009
county	46	Polio 2	98.5	2009
county	46	Polio 3	91.7999999999999972	2009
county	46	Measles	98	2009
county	46	All basic vaccinations	89.7999999999999972	2009
county	46	Pneumococcal 1	96.0999999999999943	2009
county	46	Pneumococcal 2	94.5999999999999943	2009
county	46	Pneumococcal 3	94.5999999999999943	2009
county	46	fully vaccinated	86.7999999999999972	2009
county	46	not vaccinated	0	2009
county	46	percentage with vaccination card	78	2009
county	47	BCG	97.5999999999999943	2009
county	47	Pentavalent 1	97.2999999999999972	2009
county	47	Pentavalent 2	93.5999999999999943	2009
county	47	Pentavalent 3	88	2009
county	47	Polio 0	90.4000000000000057	2009
county	47	Polio 1	97.5999999999999943	2009
county	47	Polio 2	94.7999999999999972	2009
county	47	Polio 3	75.0999999999999943	2009
county	47	Measles	92.5	2009
county	47	All basic vaccinations	65.7999999999999972	2009
county	47	Pneumococcal 1	93.5999999999999943	2009
county	47	Pneumococcal 2	85.9000000000000057	2009
county	47	Pneumococcal 3	83.2999999999999972	2009
county	47	fully vaccinated	60.3999999999999986	2009
county	47	not vaccinated	1.69999999999999996	2009
county	47	percentage with vaccination card	61.7000000000000028	2009
country	KE	BCG	96.7000000000000028	2009
country	KE	Pentavalent 1	97.5	2009
country	KE	Pentavalent 2	95.7999999999999972	2009
country	KE	Pentavalent 3	89.9000000000000057	2009
country	KE	Polio 0	77.5999999999999943	2009
country	KE	Polio 1	97.2999999999999972	2009
country	KE	Polio 2	94.2000000000000028	2009
country	KE	Polio 3	81.2000000000000028	2009
country	KE	Measles	87.0999999999999943	2009
country	KE	All basic vaccinations	71.0999999999999943	2009
country	KE	Pneumococcal 1	93.7000000000000028	2009
country	KE	Pneumococcal 2	90.7999999999999972	2009
country	KE	Pneumococcal 3	85.0999999999999943	2009
country	KE	fully vaccinated	67.5	2009
country	KE	not vaccinated	1.60000000000000009	2009
country	KE	percentage with vaccination card	74.7000000000000028	2009
\.


--
-- Name: vaccinations pk_vaccinations; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vaccinations
    ADD CONSTRAINT pk_vaccinations PRIMARY KEY (geo_level, geo_code, geo_version, vaccinations);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = pesayetu, public, pg_catalog;

ALTER TABLE IF EXISTS ONLY pesayetu.breakdown_condition_fund_dp2015 DROP CONSTRAINT IF EXISTS pk_breakdown_condition_fund_dp2015;
DROP TABLE IF EXISTS pesayetu.breakdown_condition_fund_dp2015;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: breakdown_condition_fund_dp2015; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.breakdown_condition_fund_dp2015 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    project_type character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: breakdown_condition_fund_dp2015; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.breakdown_condition_fund_dp2015 (geo_level, geo_code, geo_version, project_type, year, total) FROM stdin;
country	KE	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	422355000
county	1	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	3150000
county	5	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	3820000
county	11	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	3985000
county	4	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	4645000
county	25	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	5495000
county	26	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	5665000
county	31	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	5765000
county	23	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6035000
county	24	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6090000
county	13	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6165000
county	20	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6385000
county	40	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6495000
county	2	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6810000
county	14	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	6875000
county	38	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7085000
county	9	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7310000
county	39	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7375000
county	6	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7405000
county	10	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7675000
county	3	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	7765000
county	42	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8290000
county	27	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8660000
county	36	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8810000
county	34	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8945000
county	33	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8945000
county	7	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	8970000
county	29	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	9155000
county	18	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	9430000
county	22	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	9600000
county	35	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	9965000
county	8	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	10045000
county	44	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	10220000
county	12	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	10295000
county	28	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	10400000
county	19	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	11465000
county	45	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	11475000
county	37	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	11750000
county	46	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	11960000
county	17	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12065000
county	43	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12385000
county	21	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12405000
county	32	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12630000
county	30	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	12985000
county	16	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	13350000
county	41	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	13765000
county	47	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	13900000
county	5	2009	World Bank grant to supplement financing for county health facilities	2015/2016	14528378
county	1	2009	Other Loans & Grants	2015/2016	16000000
county	15	2009	DANIDA grant to supplement financing for county health facilities	2015/2016	18495000
county	11	2009	World Bank grant to supplement financing for county health facilities	2015/2016	22247373
county	4	2009	World Bank grant to supplement financing for county health facilities	2015/2016	24174105
county	25	2009	World Bank grant to supplement financing for county health facilities	2015/2016	29848554
county	42	2009	Other Loans & Grants	2015/2016	30000000
county	10	2009	World Bank grant to supplement financing for county health facilities	2015/2016	34627134
county	6	2009	World Bank grant to supplement financing for county health facilities	2015/2016	36034216
county	34	2009	Other Loans & Grants	2015/2016	40000000
county	7	2009	World Bank grant to supplement financing for county health facilities	2015/2016	41161467
county	9	2009	World Bank grant to supplement financing for county health facilities	2015/2016	42477798
county	13	2009	World Bank grant to supplement financing for county health facilities	2015/2016	44654343
county	8	2009	World Bank grant to supplement financing for county health facilities	2015/2016	46166458
county	24	2009	World Bank grant to supplement financing for county health facilities	2015/2016	56049761
county	28	2009	World Bank grant to supplement financing for county health facilities	2015/2016	56932570
county	31	2009	World Bank grant to supplement financing for county health facilities	2015/2016	60049676
county	23	2009	World Bank grant to supplement financing for county health facilities	2015/2016	67258982
county	30	2009	World Bank grant to supplement financing for county health facilities	2015/2016	77761278
county	33	2009	World Bank grant to supplement financing for county health facilities	2015/2016	81201403
county	2	2009	World Bank grant to supplement financing for county health facilities	2015/2016	82166289
county	34	2009	World Bank grant to supplement financing for county health facilities	2015/2016	100581341
county	3	2009	World Bank grant to supplement financing for county health facilities	2015/2016	114657642
county	15	2009	World Bank grant to supplement financing for county health facilities	2015/2016	131525244
county	44	2009	World Bank grant to supplement financing for county health facilities	2015/2016	138220725
county	47	2009	Other Loans & Grants	2015/2016	360000000
country	KE	2009	World Bank grant to supplement financing for county health facilities	2015/2016	1302324737
county	12	2009	Other Loans & Grants	2015/2016	1700000000
country	KE	2009	Other Loans & Grants	2015/2016	2146000000
\.


--
-- Name: breakdown_condition_fund_dp2015 pk_breakdown_condition_fund_dp2015; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.breakdown_condition_fund_dp2015
    ADD CONSTRAINT pk_breakdown_condition_fund_dp2015 PRIMARY KEY (geo_level, geo_code, geo_version, project_type, year);


--
-- PostgreSQL database dump complete
--


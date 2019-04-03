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

ALTER TABLE IF EXISTS ONLY public.useofipt DROP CONSTRAINT IF EXISTS pk_useofipt;
DROP TABLE IF EXISTS public.useofipt;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: useofipt; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.useofipt (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "use of ipt" character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: useofipt; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.useofipt (geo_level, geo_code, "use of ipt", total, geo_version) FROM stdin;
county	1	1 or more	67.2999999999999972	2009
county	1	2 or more	46.3999999999999986	2009
county	1	3 or more	24.8999999999999986	2009
county	2	1 or more	91.7999999999999972	2009
county	2	2 or more	79.0999999999999943	2009
county	2	3 or more	51.8999999999999986	2009
county	3	1 or more	65.2000000000000028	2009
county	3	2 or more	41.7999999999999972	2009
county	3	3 or more	28.5	2009
county	4	1 or more	77	2009
county	4	2 or more	41.6000000000000014	2009
county	4	3 or more	21.3999999999999986	2009
county	5	1 or more	81	2009
county	5	2 or more	60	2009
county	5	3 or more	35.7000000000000028	2009
county	6	1 or more	75	2009
county	6	2 or more	55.1000000000000014	2009
county	6	3 or more	31.8999999999999986	2009
county	7	1 or more	2.70000000000000018	2009
county	7	2 or more	1	2009
county	7	3 or more	0.800000000000000044	2009
county	8	1 or more	4.40000000000000036	2009
county	8	2 or more	2	2009
county	8	3 or more	0.5	2009
county	9	1 or more	11.3000000000000007	2009
county	9	2 or more	4.29999999999999982	2009
county	9	3 or more	3	2009
county	10	1 or more	1.5	2009
county	10	2 or more	1.19999999999999996	2009
county	10	3 or more	0.599999999999999978	2009
county	11	1 or more	48.2000000000000028	2009
county	11	2 or more	3.29999999999999982	2009
county	11	3 or more	1.30000000000000004	2009
county	12	1 or more	19.1000000000000014	2009
county	12	2 or more	3.79999999999999982	2009
county	12	3 or more	0	2009
county	13	1 or more	25.8999999999999986	2009
county	13	2 or more	10.3000000000000007	2009
county	13	3 or more	7.09999999999999964	2009
county	14	1 or more	15	2009
county	14	2 or more	1.10000000000000009	2009
county	14	3 or more	0	2009
county	15	1 or more	42.2000000000000028	2009
county	15	2 or more	25.8000000000000007	2009
county	15	3 or more	16	2009
county	16	1 or more	16.5	2009
county	16	2 or more	8.30000000000000071	2009
county	16	3 or more	2.5	2009
county	17	1 or more	26.5	2009
county	17	2 or more	10.0999999999999996	2009
county	17	3 or more	7.40000000000000036	2009
county	18	1 or more	7.29999999999999982	2009
county	18	2 or more	3	2009
county	18	3 or more	2.20000000000000018	2009
county	19	1 or more	5.20000000000000018	2009
county	19	2 or more	3.20000000000000018	2009
county	19	3 or more	1.89999999999999991	2009
county	20	1 or more	10.1999999999999993	2009
county	20	2 or more	8.40000000000000036	2009
county	20	3 or more	3.70000000000000018	2009
county	21	1 or more	14.4000000000000004	2009
county	21	2 or more	4.79999999999999982	2009
county	21	3 or more	1.89999999999999991	2009
county	22	1 or more	24.5	2009
county	22	2 or more	4.40000000000000036	2009
county	22	3 or more	2.60000000000000009	2009
county	23	1 or more	52.3999999999999986	2009
county	23	2 or more	22.6999999999999993	2009
county	23	3 or more	13	2009
county	24	1 or more	3.10000000000000009	2009
county	24	2 or more	3	2009
county	24	3 or more	2.89999999999999991	2009
county	25	1 or more	6.29999999999999982	2009
county	25	2 or more	2.89999999999999991	2009
county	25	3 or more	2.79999999999999982	2009
county	26	1 or more	11	2009
county	26	2 or more	3.70000000000000018	2009
county	26	3 or more	3.20000000000000018	2009
county	27	1 or more	7.79999999999999982	2009
county	27	2 or more	7	2009
county	27	3 or more	6.40000000000000036	2009
county	28	1 or more	15.1999999999999993	2009
county	28	2 or more	4.29999999999999982	2009
county	28	3 or more	1.80000000000000004	2009
county	29	1 or more	11.3000000000000007	2009
county	29	2 or more	3.39999999999999991	2009
county	29	3 or more	1.89999999999999991	2009
county	30	1 or more	21.1999999999999993	2009
county	30	2 or more	9.90000000000000036	2009
county	30	3 or more	6.70000000000000018	2009
county	31	1 or more	19.3999999999999986	2009
county	31	2 or more	7	2009
county	31	3 or more	1.60000000000000009	2009
county	32	1 or more	19.1999999999999993	2009
county	32	2 or more	9.30000000000000071	2009
county	32	3 or more	4.20000000000000018	2009
county	33	1 or more	6.59999999999999964	2009
county	33	2 or more	1.39999999999999991	2009
county	33	3 or more	0.599999999999999978	2009
county	34	1 or more	20.6000000000000014	2009
county	34	2 or more	12.3000000000000007	2009
county	34	3 or more	8.5	2009
county	35	1 or more	7.5	2009
county	35	2 or more	4.40000000000000036	2009
county	35	3 or more	3.39999999999999991	2009
county	36	1 or more	7.5	2009
county	36	2 or more	5.20000000000000018	2009
county	36	3 or more	4.79999999999999982	2009
county	37	1 or more	36.2000000000000028	2009
county	37	2 or more	28.1000000000000014	2009
county	37	3 or more	20.1000000000000014	2009
county	38	1 or more	72.9000000000000057	2009
county	38	2 or more	47.1000000000000014	2009
county	38	3 or more	20.5	2009
county	39	1 or more	57.5	2009
county	39	2 or more	39.6000000000000014	2009
county	39	3 or more	27.6999999999999993	2009
county	40	1 or more	60.8999999999999986	2009
county	40	2 or more	47.8999999999999986	2009
county	40	3 or more	36.1000000000000014	2009
county	41	1 or more	58.1000000000000014	2009
county	41	2 or more	23.3999999999999986	2009
county	41	3 or more	15	2009
county	42	1 or more	58.2000000000000028	2009
county	42	2 or more	26.8999999999999986	2009
county	42	3 or more	5.90000000000000036	2009
county	43	1 or more	38.3999999999999986	2009
county	43	2 or more	22.8000000000000007	2009
county	43	3 or more	12.3000000000000007	2009
county	44	1 or more	51	2009
county	44	2 or more	26.1000000000000014	2009
county	44	3 or more	12.9000000000000004	2009
county	45	1 or more	25.5	2009
county	45	2 or more	11.3000000000000007	2009
county	45	3 or more	3.70000000000000018	2009
county	46	1 or more	21.8999999999999986	2009
county	46	2 or more	18.1000000000000014	2009
county	46	3 or more	7	2009
county	47	1 or more	6.29999999999999982	2009
county	47	2 or more	1.30000000000000004	2009
county	47	3 or more	0.800000000000000044	2009
country	KE	1 or more	29.6000000000000014	2009
country	KE	2 or more	16.8999999999999986	2009
country	KE	3 or more	10.0999999999999996	2009
\.


--
-- Name: useofipt pk_useofipt; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.useofipt
    ADD CONSTRAINT pk_useofipt PRIMARY KEY (geo_level, geo_code, geo_version, "use of ipt");


--
-- PostgreSQL database dump complete
--


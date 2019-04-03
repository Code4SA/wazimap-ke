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

ALTER TABLE IF EXISTS ONLY public.crop_production DROP CONSTRAINT IF EXISTS pk_crop_production;
DROP TABLE IF EXISTS public.crop_production;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: crop_production; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.crop_production (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    crop_production character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: crop_production; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.crop_production (geo_level, geo_code, crop_production, total, geo_version) FROM stdin;
county	23	maize	1310	2009
county	15	greengrams	89487	2009
county	47	maize	913	2009
county	47	maize (90kg bags)	8220	2009
county	47	maize yield	15	2009
county	22	maize	24450	2009
county	22	maize (90kg bags)	82044	2009
county	22	maize yield	6.79999999999999982	2009
county	20	maize	32992	2009
county	20	maize (90kg bags)	413143	2009
county	20	maize yield	14.6999999999999993	2009
county	21	maize	61543	2009
county	21	maize (90kg bags)	580734	2009
county	21	maize yield	13.0999999999999996	2009
county	18	maize	10366	2009
county	18	maize (90kg bags)	145591	2009
county	18	maize yield	21.6000000000000014	2009
county	19	maize	61543	2009
county	19	maize (90kg bags)	492011	2009
county	19	maize yield	13.0999999999999996	2009
county	3	maize	653	2009
county	3	maize (90kg bags)	3334	2009
county	3	maize yield	6.40000000000000036	2009
county	2	maize	34644	2009
county	2	maize (90kg bags)	349695	2009
county	2	maize yield	13.5	2009
county	5	maize	35261	2009
county	5	maize (90kg bags)	395000	2009
county	5	maize yield	12.4000000000000004	2009
county	1	maize	653	2009
county	1	maize (90kg bags)	3751	2009
county	1	maize yield	5.70000000000000018	2009
county	6	maize	653	2009
county	6	maize (90kg bags)	9142	2009
county	6	maize yield	13	2009
county	4	maize	9582	2009
county	4	maize (90kg bags)	126561	2009
county	4	maize yield	14.6999999999999993	2009
county	14	maize	26720	2009
county	14	maize (90kg bags)	295677	2009
county	14	maize yield	11.3000000000000007	2009
county	11	maize	1385	2009
county	11	maize (90kg bags)	7298	2009
county	11	maize yield	5.40000000000000036	2009
county	15	maize	84763	2009
county	15	maize (90kg bags)	339832	2009
county	15	maize yield	4.09999999999999964	2009
county	16	maize	139090	2009
county	16	maize (90kg bags)	694189	2009
county	16	maize yield	5.40000000000000036	2009
county	17	maize	181089	2009
county	17	maize (90kg bags)	860442	2009
county	17	maize yield	4.90000000000000036	2009
county	10	maize	1571	2009
county	10	maize (90kg bags)	17575	2009
county	10	maize yield	11.4000000000000004	2009
county	12	maize	110489	2009
county	12	maize (90kg bags)	1243949	2009
county	12	maize yield	11.5	2009
county	13	maize	29916	2009
county	13	maize (90kg bags)	283014	2009
county	13	maize yield	9.59999999999999964	2009
county	7	maize	245	2009
county	7	maize (90kg bags)	2208	2009
county	7	maize yield	9.09999999999999964	2009
county	9	maize	2682	2009
county	9	maize (90kg bags)	17874	2009
county	9	maize yield	6.70000000000000018	2009
county	8	maize	660	2009
county	8	maize (90kg bags)	1241	2009
county	8	maize yield	2	2009
county	43	maize	79667	2009
county	43	maize (90kg bags)	1382943	2009
county	43	maize yield	18.6999999999999993	2009
county	45	maize	62210	2009
county	45	maize (90kg bags)	1330034	2009
county	45	maize yield	23	2009
county	42	maize	27150	2009
county	42	maize (90kg bags)	607234	2009
county	42	maize yield	24	2009
county	44	maize	67485	2009
county	44	maize (90kg bags)	930028	2009
county	44	maize yield	14.8000000000000007	2009
county	46	maize	35549	2009
county	46	maize (90kg bags)	456836	2009
county	46	maize yield	13.8000000000000007	2009
county	41	maize	78132	2009
county	41	maize (90kg bags)	1372914	2009
county	41	maize yield	18.8999999999999986	2009
county	30	maize	34960	2009
county	30	maize (90kg bags)	388444	2009
county	30	maize yield	11.0999999999999996	2009
county	36	maize	30940	2009
county	36	maize (90kg bags)	590692	2009
county	36	maize yield	19.1000000000000014	2009
county	28	maize	27620	2009
county	28	maize (90kg bags)	1149427	2009
county	28	maize yield	43	2009
county	34	maize	31020	2009
county	34	maize (90kg bags)	815506	2009
county	34	maize yield	26.6999999999999993	2009
county	35	maize	41041	2009
county	35	maize (90kg bags)	765697	2009
county	35	maize yield	24.1999999999999993	2009
county	31	maize	6175	2009
county	31	maize (90kg bags)	71902	2009
county	31	maize yield	11.8000000000000007	2009
county	32	maize	86504	2009
county	32	maize (90kg bags)	1765714	2009
county	32	maize yield	20.6000000000000014	2009
county	29	maize	74045	2009
county	29	maize (90kg bags)	1857991	2009
county	29	maize yield	27.3999999999999986	2009
county	33	maize	112079	2009
county	33	maize (90kg bags)	2975208	2009
county	33	maize yield	26.8999999999999986	2009
county	25	maize	1973	2009
county	25	maize (90kg bags)	22931	2009
county	25	maize yield	11.5999999999999996	2009
county	26	maize	106778	2009
county	26	maize (90kg bags)	5014980	2009
county	26	maize yield	47.8999999999999986	2009
county	23	maize (90kg bags)	23928	2009
county	23	maize yield	18.6000000000000014	2009
county	27	maize	96654	2009
county	27	maize (90kg bags)	4224741	2009
county	27	maize yield	43.7000000000000028	2009
county	24	maize	19748	2009
county	24	maize (90kg bags)	514903	2009
county	24	maize yield	26.6000000000000014	2009
county	39	maize	98074	2009
county	39	maize (90kg bags)	2970027	2009
county	39	maize yield	32.6000000000000014	2009
county	40	maize	50400	2009
county	40	maize (90kg bags)	807352	2009
county	40	maize yield	17.6000000000000014	2009
county	37	maize	70993	2009
county	37	maize (90kg bags)	2026635	2009
county	37	maize yield	30	2009
county	38	maize	23772	2009
county	38	maize (90kg bags)	406723	2009
county	38	maize yield	18.1999999999999993	2009
country	KE	maize	2116141	2009
country	KE	maize (90kg bags)	39035228	2009
country	KE	maize yield	19.6999999999999993	2009
county	18	wheat	1455	2009
county	18	wheat (90kg bags)	32300	2009
county	18	wheat yield	22.1999999999999993	2009
county	19	wheat	4280	2009
county	19	wheat (90kg bags)	77600	2009
county	19	wheat yield	18.1000000000000014	2009
county	12	wheat	11600	2009
county	12	wheat (90kg bags)	326875	2009
county	12	wheat yield	28.1999999999999993	2009
county	10	wheat	37	2009
county	10	wheat (90kg bags)	1030	2009
county	10	wheat yield	27.8000000000000007	2009
county	28	wheat	105	2009
county	28	wheat (90kg bags)	3150	2009
county	28	wheat yield	30	2009
county	35	wheat	0	2009
county	35	wheat (90kg bags)	0	2009
county	35	wheat yield	0	2009
county	31	wheat	5145	2009
county	31	wheat (90kg bags)	185600	2009
county	31	wheat yield	36.1000000000000014	2009
county	32	wheat	32057	2009
county	32	wheat (90kg bags)	961083	2009
county	32	wheat yield	30	2009
county	29	wheat	43	2009
county	29	wheat (90kg bags)	1030	2009
county	29	wheat yield	24	2009
county	33	wheat	70884	2009
county	33	wheat (90kg bags)	1508620	2009
county	33	wheat yield	21.3000000000000007	2009
county	25	wheat	600	2009
county	25	wheat (90kg bags)	12000	2009
county	25	wheat yield	20	2009
county	26	wheat	1870	2009
county	26	wheat (90kg bags)	46078	2009
county	26	wheat yield	24.6000000000000014	2009
county	27	wheat	18829	2009
county	27	wheat (90kg bags)	488395	2009
county	27	wheat yield	25.8999999999999986	2009
county	39	wheat	305	2009
county	39	wheat (90kg bags)	7767	2009
county	39	wheat yield	25.5	2009
county	37	wheat	0	2009
county	37	wheat (90kg bags)	0	2009
county	37	wheat yield	0	2009
country	KE	wheat	147210	2009
country	KE	wheat (90kg bags)	3651528	2009
country	KE	wheat yield	24.8000000000000007	2009
county	1	wheat	0	2009
county	1	wheat (90kg bags)	0	2009
county	1	wheat yield	0	2009
county	2	wheat	0	2009
county	2	wheat (90kg bags)	0	2009
county	2	wheat yield	0	2009
county	3	wheat	0	2009
county	3	wheat (90kg bags)	0	2009
county	3	wheat yield	0	2009
county	4	wheat	0	2009
county	4	wheat (90kg bags)	0	2009
county	4	wheat yield	0	2009
county	5	wheat	0	2009
county	5	wheat (90kg bags)	0	2009
county	5	wheat yield	0	2009
county	6	wheat	0	2009
county	6	wheat (90kg bags)	0	2009
county	6	wheat yield	0	2009
county	7	wheat	0	2009
county	7	wheat (90kg bags)	0	2009
county	7	wheat yield	0	2009
county	8	wheat	0	2009
county	8	wheat (90kg bags)	0	2009
county	8	wheat yield	0	2009
county	9	wheat	0	2009
county	9	wheat (90kg bags)	0	2009
county	9	wheat yield	0	2009
county	11	wheat	0	2009
county	11	wheat (90kg bags)	0	2009
county	11	wheat yield	0	2009
county	13	wheat	0	2009
county	13	wheat (90kg bags)	0	2009
county	13	wheat yield	0	2009
county	14	wheat	0	2009
county	14	wheat (90kg bags)	0	2009
county	14	wheat yield	0	2009
county	15	wheat	0	2009
county	15	wheat (90kg bags)	0	2009
county	15	wheat yield	0	2009
county	16	wheat	0	2009
county	16	wheat (90kg bags)	0	2009
county	16	wheat yield	0	2009
county	17	wheat	0	2009
county	17	wheat (90kg bags)	0	2009
county	17	wheat yield	0	2009
county	20	wheat	0	2009
county	20	wheat (90kg bags)	0	2009
county	20	wheat yield	0	2009
county	21	wheat	0	2009
county	21	wheat (90kg bags)	0	2009
county	21	wheat yield	0	2009
county	22	wheat	0	2009
county	22	wheat (90kg bags)	0	2009
county	22	wheat yield	0	2009
county	23	wheat	0	2009
county	23	wheat (90kg bags)	0	2009
county	23	wheat yield	0	2009
county	24	wheat	0	2009
county	24	wheat (90kg bags)	0	2009
county	24	wheat yield	0	2009
county	30	wheat	0	2009
county	30	wheat (90kg bags)	0	2009
county	30	wheat yield	0	2009
county	34	wheat	0	2009
county	34	wheat (90kg bags)	0	2009
county	34	wheat yield	0	2009
county	36	wheat	0	2009
county	36	wheat (90kg bags)	0	2009
county	36	wheat yield	0	2009
county	47	wheat	0	2009
county	47	wheat (90kg bags)	0	2009
county	47	wheat yield	0	2009
county	38	wheat	0	2009
county	38	wheat (90kg bags)	0	2009
county	38	wheat yield	0	2009
county	40	wheat	0	2009
county	40	wheat (90kg bags)	0	2009
county	40	wheat yield	0	2009
county	41	wheat	0	2009
county	41	wheat (90kg bags)	0	2009
county	41	wheat yield	0	2009
county	42	wheat	0	2009
county	42	wheat (90kg bags)	0	2009
county	42	wheat yield	0	2009
county	43	wheat	0	2009
county	43	wheat (90kg bags)	0	2009
county	43	wheat yield	0	2009
county	44	wheat	0	2009
county	44	wheat (90kg bags)	0	2009
county	44	wheat yield	0	2009
county	45	wheat	0	2009
county	45	wheat (90kg bags)	0	2009
county	45	wheat yield	0	2009
county	46	wheat	0	2009
county	46	wheat (90kg bags)	0	2009
county	46	wheat yield	0	2009
county	18	barley	25	2009
county	18	barley (Ton)	45	2009
county	18	barley yield	1.80000000000000004	2009
county	32	barley	30456	2009
county	32	barley (Ton)	110974	2009
county	32	barley yield	3.5	2009
county	33	barley	140126	2009
county	33	barley (Ton)	130871	2009
county	33	barley yield	1	2009
county	25	barley	450	2009
county	25	barley (Ton)	792	2009
county	25	barley yield	1.80000000000000004	2009
county	27	barley	875	2009
county	27	barley (Ton)	320375	2009
county	27	barley yield	37	2009
county	12	barley	20600	2009
county	12	barley (Ton)	60345	2009
county	12	barley yield	2.39999999999999991	2009
country	KE	barley	210532	2009
country	KE	barley (Ton)	650402	2009
country	KE	barley yield	3	2009
county	1	barley	0	2009
county	1	barley (Ton)	0	2009
county	1	barley yield	0	2009
county	2	barley	0	2009
county	2	barley (Ton)	0	2009
county	2	barley yield	0	2009
county	3	barley	0	2009
county	3	barley (Ton)	0	2009
county	3	barley yield	0	2009
county	4	barley	0	2009
county	4	barley (Ton)	0	2009
county	4	barley yield	0	2009
county	5	barley	0	2009
county	5	barley (Ton)	0	2009
county	5	barley yield	0	2009
county	6	barley	0	2009
county	6	barley (Ton)	0	2009
county	6	barley yield	0	2009
county	7	barley	0	2009
county	7	barley (Ton)	0	2009
county	7	barley yield	0	2009
county	8	barley	0	2009
county	8	barley (Ton)	0	2009
county	8	barley yield	0	2009
county	9	barley	0	2009
county	9	barley (Ton)	0	2009
county	9	barley yield	0	2009
county	10	barley	0	2009
county	10	barley (Ton)	0	2009
county	10	barley yield	0	2009
county	11	barley	0	2009
county	11	barley (Ton)	0	2009
county	11	barley yield	0	2009
county	41	barley	0	2009
county	41	barley (Ton)	0	2009
county	41	barley yield	0	2009
county	13	barley	0	2009
county	13	barley (Ton)	0	2009
county	13	barley yield	0	2009
county	14	barley	0	2009
county	14	barley (Ton)	0	2009
county	14	barley yield	0	2009
county	15	barley	0	2009
county	15	barley (Ton)	0	2009
county	15	barley yield	0	2009
county	16	barley	0	2009
county	16	barley (Ton)	0	2009
county	16	barley yield	0	2009
county	17	barley	0	2009
county	17	barley (Ton)	0	2009
county	17	barley yield	0	2009
county	47	barley	0	2009
county	47	barley (Ton)	0	2009
county	47	barley yield	0	2009
county	19	barley	0	2009
county	19	barley (Ton)	0	2009
county	19	barley yield	0	2009
county	20	barley	0	2009
county	20	barley (Ton)	0	2009
county	20	barley yield	0	2009
county	21	barley	0	2009
county	21	barley (Ton)	0	2009
county	21	barley yield	0	2009
county	22	barley	0	2009
county	22	barley (Ton)	0	2009
county	22	barley yield	0	2009
county	23	barley	0	2009
county	23	barley (Ton)	0	2009
county	23	barley yield	0	2009
county	24	barley	0	2009
county	24	barley (Ton)	0	2009
county	24	barley yield	0	2009
county	43	barley	0	2009
county	43	barley (Ton)	0	2009
county	43	barley yield	0	2009
county	26	barley	0	2009
county	26	barley (Ton)	0	2009
county	26	barley yield	0	2009
county	42	barley	0	2009
county	42	barley (Ton)	0	2009
county	42	barley yield	0	2009
county	28	barley	0	2009
county	28	barley (Ton)	0	2009
county	28	barley yield	0	2009
county	29	barley	0	2009
county	29	barley (Ton)	0	2009
county	29	barley yield	0	2009
county	30	barley	0	2009
county	30	barley (Ton)	0	2009
county	30	barley yield	0	2009
county	31	barley	0	2009
county	31	barley (Ton)	0	2009
county	31	barley yield	0	2009
county	45	barley	0	2009
county	45	barley (Ton)	0	2009
county	45	barley yield	0	2009
county	44	barley	0	2009
county	44	barley (Ton)	0	2009
county	44	barley yield	0	2009
county	34	barley	0	2009
county	34	barley (Ton)	0	2009
county	34	barley yield	0	2009
county	35	barley	0	2009
county	35	barley (Ton)	0	2009
county	35	barley yield	0	2009
county	36	barley	0	2009
county	36	barley (Ton)	0	2009
county	36	barley yield	0	2009
county	37	barley	0	2009
county	37	barley (Ton)	0	2009
county	37	barley yield	0	2009
county	38	barley	0	2009
county	38	barley (Ton)	0	2009
county	38	barley yield	0	2009
county	39	barley	0	2009
county	39	barley (Ton)	0	2009
county	39	barley yield	0	2009
county	40	barley	0	2009
county	40	barley (Ton)	0	2009
county	40	barley yield	0	2009
county	21	rice	102.599999999999994	2009
county	21	rice (Ton)	261.399999999999977	2009
county	21	rice yield	2.5	2009
county	20	rice	10465	2009
county	20	rice (Ton)	68988.1999999999971	2009
county	20	rice yield	6.59999999999999964	2009
county	19	rice	102.599999999999994	2009
county	19	rice (Ton)	261.399999999999977	2009
county	19	rice yield	2.5	2009
county	3	rice	179	2009
county	3	rice (Ton)	95.1200000000000045	2009
county	3	rice yield	0.5	2009
county	2	rice	1273	2009
county	2	rice (Ton)	1355.67000000000007	2009
county	2	rice yield	1.10000000000000009	2009
county	5	rice	91	2009
county	5	rice (Ton)	170.599999999999994	2009
county	5	rice yield	1.89999999999999991	2009
county	1	rice	0	2009
county	1	rice (Ton)	0	2009
county	1	rice yield	0	2009
county	6	rice	265	2009
county	6	rice (Ton)	1396	2009
county	6	rice yield	5.29999999999999982	2009
county	4	rice	1355	2009
county	4	rice (Ton)	2244.15000000000009	2009
county	4	rice yield	1.69999999999999996	2009
county	14	rice	5	2009
county	14	rice (Ton)	5	2009
county	14	rice yield	1	2009
county	12	rice	111	2009
county	12	rice (Ton)	144.5	2009
county	12	rice yield	1.30000000000000004	2009
county	13	rice	27.6999999999999993	2009
county	13	rice (Ton)	24.3999999999999986	2009
county	13	rice yield	0.900000000000000022	2009
county	7	rice	30	2009
county	7	rice (Ton)	34	2009
county	7	rice yield	1.10000000000000009	2009
county	9	rice	0.100000000000000006	2009
county	9	rice (Ton)	0	2009
county	9	rice yield	0	2009
county	43	rice	5223	2009
county	43	rice (Ton)	7713.32999999999993	2009
county	43	rice yield	1.5	2009
county	42	rice	4540	2009
county	42	rice (Ton)	18390	2009
county	42	rice yield	4.09999999999999964	2009
county	44	rice	680.899999999999977	2009
county	44	rice (Ton)	421.060000000000002	2009
county	44	rice yield	0.599999999999999978	2009
county	41	rice	2648	2009
county	41	rice (Ton)	8137.76000000000022	2009
county	41	rice yield	3.10000000000000009	2009
county	28	rice	14.3000000000000007	2009
county	28	rice (Ton)	20.3399999999999999	2009
county	28	rice yield	1.39999999999999991	2009
county	30	rice	40	2009
county	30	rice (Ton)	89.9000000000000057	2009
county	30	rice yield	2.20000000000000018	2009
county	39	rice	115	2009
county	39	rice (Ton)	92.5	2009
county	39	rice yield	0.800000000000000044	2009
county	40	rice	964	2009
county	40	rice (Ton)	1947	2009
county	40	rice yield	2	2009
county	37	rice	103.5	2009
county	37	rice (Ton)	395.5	2009
county	37	rice yield	3.79999999999999982	2009
county	38	rice	54	2009
county	38	rice (Ton)	75.5	2009
county	38	rice yield	1.39999999999999991	2009
country	KE	rice	28390	2009
country	KE	rice (Ton)	112263	2009
country	KE	rice yield	4	2009
county	8	rice	0	2009
county	8	rice (Ton)	0	2009
county	8	rice yield	0	2009
county	10	rice	0	2009
county	10	rice (Ton)	0	2009
county	10	rice yield	0	2009
county	11	rice	0	2009
county	11	rice (Ton)	0	2009
county	11	rice yield	0	2009
county	15	rice	0	2009
county	15	rice (Ton)	0	2009
county	15	rice yield	0	2009
county	16	rice	0	2009
county	16	rice (Ton)	0	2009
county	16	rice yield	0	2009
county	17	rice	0	2009
county	17	rice (Ton)	0	2009
county	17	rice yield	0	2009
county	18	rice	0	2009
county	18	rice (Ton)	0	2009
county	18	rice yield	0	2009
county	22	rice	0	2009
county	22	rice (Ton)	0	2009
county	22	rice yield	0	2009
county	23	rice	0	2009
county	23	rice (Ton)	0	2009
county	23	rice yield	0	2009
county	24	rice	0	2009
county	24	rice (Ton)	0	2009
county	24	rice yield	0	2009
county	25	rice	0	2009
county	25	rice (Ton)	0	2009
county	25	rice yield	0	2009
county	26	rice	0	2009
county	26	rice (Ton)	0	2009
county	26	rice yield	0	2009
county	27	rice	0	2009
county	27	rice (Ton)	0	2009
county	27	rice yield	0	2009
county	29	rice	0	2009
county	29	rice (Ton)	0	2009
county	29	rice yield	0	2009
county	31	rice	0	2009
county	31	rice (Ton)	0	2009
county	31	rice yield	0	2009
county	32	rice	0	2009
county	32	rice (Ton)	0	2009
county	32	rice yield	0	2009
county	33	rice	0	2009
county	33	rice (Ton)	0	2009
county	33	rice yield	0	2009
county	34	rice	0	2009
county	34	rice (Ton)	0	2009
county	34	rice yield	0	2009
county	35	rice	0	2009
county	35	rice (Ton)	0	2009
county	35	rice yield	0	2009
county	36	rice	0	2009
county	36	rice (Ton)	0	2009
county	36	rice yield	0	2009
county	45	rice	0	2009
county	45	rice (Ton)	0	2009
county	45	rice yield	0	2009
county	46	rice	0	2009
county	46	rice (Ton)	0	2009
county	46	rice yield	0	2009
county	47	rice	0	2009
county	47	rice (Ton)	0	2009
county	47	rice yield	0	2009
county	47	sorghum	913	2009
county	47	sorghum (90kg bags)	1233	2009
county	47	sorghum yield	1.39999999999999991	2009
county	20	sorghum	276	2009
county	20	sorghum (90kg bags)	1544	2009
county	20	sorghum yield	5.59999999999999964	2009
county	21	sorghum	204	2009
county	21	sorghum (90kg bags)	1720	2009
county	21	sorghum yield	8.40000000000000036	2009
county	18	sorghum	35	2009
county	18	sorghum (90kg bags)	280	2009
county	18	sorghum yield	8	2009
county	19	sorghum	204	2009
county	19	sorghum (90kg bags)	1720	2009
county	19	sorghum yield	8.40000000000000036	2009
county	3	sorghum	363	2009
county	3	sorghum (90kg bags)	1089	2009
county	3	sorghum yield	3	2009
county	2	sorghum	153	2009
county	2	sorghum (90kg bags)	663	2009
county	2	sorghum yield	4.29999999999999982	2009
county	5	sorghum	273	2009
county	5	sorghum (90kg bags)	3067	2009
county	5	sorghum yield	11.3000000000000007	2009
county	1	sorghum	0	2009
county	1	sorghum (90kg bags)	0	2009
county	1	sorghum yield	0	2009
county	6	sorghum	474	2009
county	6	sorghum (90kg bags)	833	2009
county	6	sorghum yield	1.80000000000000004	2009
county	4	sorghum	131	2009
county	4	sorghum (90kg bags)	862	2009
county	4	sorghum yield	6.59999999999999964	2009
county	14	sorghum	5386	2009
county	14	sorghum (90kg bags)	58303	2009
county	14	sorghum yield	10.8000000000000007	2009
county	11	sorghum	45	2009
county	11	sorghum (90kg bags)	270	2009
county	11	sorghum yield	6	2009
county	15	sorghum	59530	2009
county	15	sorghum (90kg bags)	429623	2009
county	15	sorghum yield	7.20000000000000018	2009
county	16	sorghum	9693	2009
county	16	sorghum (90kg bags)	81726	2009
county	16	sorghum yield	8.40000000000000036	2009
county	17	sorghum	16306	2009
county	17	sorghum (90kg bags)	53416	2009
county	17	sorghum yield	3.29999999999999982	2009
county	10	sorghum	13	2009
county	10	sorghum (90kg bags)	41	2009
county	10	sorghum yield	3	2009
county	12	sorghum	12451	2009
county	12	sorghum (90kg bags)	95439	2009
county	12	sorghum yield	7.70000000000000018	2009
county	13	sorghum	21227	2009
county	13	sorghum (90kg bags)	116964	2009
county	13	sorghum yield	5.5	2009
county	7	sorghum	35	2009
county	7	sorghum (90kg bags)	378	2009
county	7	sorghum yield	10.8000000000000007	2009
county	9	sorghum	961	2009
county	9	sorghum (90kg bags)	1393	2009
county	9	sorghum yield	1.39999999999999991	2009
county	8	sorghum	440	2009
county	8	sorghum (90kg bags)	889	2009
county	8	sorghum yield	2	2009
county	43	sorghum	20401	2009
county	43	sorghum (90kg bags)	358380	2009
county	43	sorghum yield	17.6000000000000014	2009
county	45	sorghum	113	2009
county	45	sorghum (90kg bags)	5724	2009
county	45	sorghum yield	50.7000000000000028	2009
county	42	sorghum	11160	2009
county	42	sorghum (90kg bags)	210654	2009
county	42	sorghum yield	18.8999999999999986	2009
county	44	sorghum	5373	2009
county	44	sorghum (90kg bags)	58613	2009
county	44	sorghum yield	10.9000000000000004	2009
county	46	sorghum	93	2009
county	46	sorghum (90kg bags)	973	2009
county	46	sorghum yield	10.5	2009
county	41	sorghum	15986	2009
county	41	sorghum (90kg bags)	128726	2009
county	41	sorghum yield	8.09999999999999964	2009
county	30	sorghum	849	2009
county	30	sorghum (90kg bags)	8483	2009
county	30	sorghum yield	10	2009
county	36	sorghum	442	2009
county	36	sorghum (90kg bags)	5432	2009
county	36	sorghum yield	12.3000000000000007	2009
county	28	sorghum	769	2009
county	28	sorghum (90kg bags)	9206	2009
county	28	sorghum yield	12	2009
county	34	sorghum	55	2009
county	34	sorghum (90kg bags)	346	2009
county	34	sorghum yield	6.29999999999999982	2009
county	35	sorghum	957	2009
county	35	sorghum (90kg bags)	19100	2009
county	35	sorghum yield	20	2009
county	31	sorghum	57	2009
county	31	sorghum (90kg bags)	285	2009
county	31	sorghum yield	5	2009
county	32	sorghum	1330	2009
county	32	sorghum (90kg bags)	18038	2009
county	32	sorghum yield	13.5999999999999996	2009
county	29	sorghum	181	2009
county	29	sorghum (90kg bags)	3408	2009
county	29	sorghum yield	18.8000000000000007	2009
county	33	sorghum	1437	2009
county	33	sorghum (90kg bags)	12068	2009
county	33	sorghum yield	8.40000000000000036	2009
county	25	sorghum	10	2009
county	25	sorghum (90kg bags)	133	2009
county	25	sorghum yield	13.3000000000000007	2009
county	26	sorghum	189	2009
county	26	sorghum (90kg bags)	2397	2009
county	26	sorghum yield	12.6999999999999993	2009
county	23	sorghum	1438	2009
county	23	sorghum (90kg bags)	15486	2009
county	23	sorghum yield	10.8000000000000007	2009
county	27	sorghum	1438	2009
county	27	sorghum (90kg bags)	15486	2009
county	27	sorghum yield	10.8000000000000007	2009
county	24	sorghum	560	2009
county	24	sorghum (90kg bags)	5360	2009
county	24	sorghum yield	9.59999999999999964	2009
county	39	sorghum	1565	2009
county	39	sorghum (90kg bags)	17722	2009
county	39	sorghum yield	11.3000000000000007	2009
county	40	sorghum	13109	2009
county	40	sorghum (90kg bags)	193756	2009
county	40	sorghum yield	14.8000000000000007	2009
county	37	sorghum	830	2009
county	37	sorghum (90kg bags)	8602	2009
county	37	sorghum yield	10.4000000000000004	2009
county	38	sorghum	358	2009
county	38	sorghum (90kg bags)	4509	2009
county	38	sorghum yield	12.5999999999999996	2009
country	KE	sorghum	213520	2009
country	KE	sorghum (90kg bags)	1972810	2009
country	KE	sorghum yield	9.19999999999999929	2009
county	22	sorghum	0	2009
county	22	sorghum (90kg bags)	0	2009
county	22	sorghum yield	0	2009
county	22	millet	0	2009
county	22	millet (90kg bags)	0	2009
county	22	millet yield	0	2009
county	20	millet	12	2009
county	20	millet (90kg bags)	108	2009
county	20	millet yield	9	2009
county	21	millet	0	2009
county	21	millet (90kg bags)	0	2009
county	21	millet yield	0	2009
county	18	millet	0	2009
county	18	millet (90kg bags)	0	2009
county	18	millet yield	0	2009
county	19	millet	0	2009
county	19	millet (90kg bags)	0	2009
county	19	millet yield	0	2009
county	3	millet	4	2009
county	3	millet (90kg bags)	5	2009
county	3	millet yield	1.39999999999999991	2009
county	2	millet	4	2009
county	2	millet (90kg bags)	0	2009
county	2	millet yield	0	2009
county	5	millet	273	2009
county	5	millet (90kg bags)	893	2009
county	5	millet yield	3.29999999999999982	2009
county	6	millet	32	2009
county	6	millet (90kg bags)	52	2009
county	6	millet yield	1.60000000000000009	2009
county	4	millet	0	2009
county	4	millet (90kg bags)	0	2009
county	4	millet yield	0	2009
county	14	millet	2799	2009
county	14	millet (90kg bags)	26924	2009
county	14	millet yield	9.59999999999999964	2009
county	15	millet	53735	2009
county	15	millet (90kg bags)	582466	2009
county	15	millet yield	10.8000000000000007	2009
county	16	millet	1853	2009
county	16	millet (90kg bags)	35151	2009
county	16	millet yield	19	2009
county	17	millet	11322	2009
county	17	millet (90kg bags)	35485	2009
county	17	millet yield	3.10000000000000009	2009
county	12	millet	6853	2009
county	12	millet (90kg bags)	40708	2009
county	12	millet yield	5.90000000000000036	2009
county	13	millet	20778	2009
county	13	millet (90kg bags)	139259	2009
county	13	millet yield	6.70000000000000018	2009
county	7	millet	0	2009
county	7	millet (90kg bags)	0	2009
county	7	millet yield	0	2009
county	8	millet	0	2009
county	8	millet (90kg bags)	0	2009
county	8	millet yield	0	2009
county	43	millet	1785	2009
county	43	millet (90kg bags)	33456	2009
county	43	millet yield	18.6999999999999993	2009
county	45	millet	7357	2009
county	45	millet (90kg bags)	215656	2009
county	45	millet yield	29.3000000000000007	2009
county	42	millet	23	2009
county	42	millet (90kg bags)	65	2009
county	42	millet yield	2.79999999999999982	2009
county	44	millet	390	2009
county	44	millet (90kg bags)	1269	2009
county	44	millet yield	3.29999999999999982	2009
county	46	millet	8688	2009
county	46	millet (90kg bags)	100844	2009
county	46	millet yield	11.5999999999999996	2009
county	41	millet	179	2009
county	41	millet (90kg bags)	896	2009
county	41	millet yield	5	2009
county	30	millet	2301	2009
county	30	millet (90kg bags)	33727	2009
county	30	millet yield	14.6999999999999993	2009
county	36	millet	992	2009
county	36	millet (90kg bags)	13096	2009
county	36	millet yield	13.1999999999999993	2009
county	28	millet	2407	2009
county	28	millet (90kg bags)	20352	2009
county	28	millet yield	8.5	2009
county	34	millet	26	2009
county	34	millet (90kg bags)	68	2009
county	34	millet yield	2.60000000000000009	2009
county	35	millet	618	2009
county	35	millet (90kg bags)	6871	2009
county	35	millet yield	11.0999999999999996	2009
county	31	millet	0	2009
county	31	millet (90kg bags)	0	2009
county	31	millet yield	0	2009
county	32	millet	3456	2009
county	32	millet (90kg bags)	11974	2009
county	32	millet yield	3.5	2009
county	29	millet	172	2009
county	29	millet (90kg bags)	1896	2009
county	29	millet yield	11.0999999999999996	2009
county	33	millet	1443	2009
county	33	millet (90kg bags)	14247	2009
county	33	millet yield	9.90000000000000036	2009
county	25	millet	9	2009
county	25	millet (90kg bags)	156	2009
county	25	millet yield	17.3000000000000007	2009
county	26	millet	860	2009
county	26	millet (90kg bags)	10011	2009
county	26	millet yield	11.5999999999999996	2009
county	23	millet	0	2009
county	23	millet (90kg bags)	0	2009
county	23	millet yield	0	2009
county	27	millet	284	2009
county	27	millet (90kg bags)	2812	2009
county	27	millet yield	9.90000000000000036	2009
county	24	millet	337	2009
county	24	millet (90kg bags)	2685	2009
county	24	millet yield	8	2009
county	39	millet	4760	2009
county	39	millet (90kg bags)	34933	2009
county	39	millet yield	7.29999999999999982	2009
county	40	millet	4500	2009
county	40	millet (90kg bags)	71444	2009
county	40	millet yield	15.9000000000000004	2009
county	37	millet	534	2009
county	37	millet (90kg bags)	4889	2009
county	37	millet yield	9.19999999999999929	2009
county	38	millet	45	2009
county	38	millet (90kg bags)	363	2009
county	38	millet yield	8.09999999999999964	2009
country	KE	millet	138829	2009
country	KE	millet (90kg bags)	1442761	2009
country	KE	millet yield	10.4000000000000004	2009
county	1	millet	0	2009
county	1	millet (90kg bags)	0	2009
county	1	millet yield	0	2009
county	9	millet	0	2009
county	9	millet (90kg bags)	0	2009
county	9	millet yield	0	2009
county	10	millet	0	2009
county	10	millet (90kg bags)	0	2009
county	10	millet yield	0	2009
county	11	millet	0	2009
county	11	millet (90kg bags)	0	2009
county	11	millet yield	0	2009
county	47	millet	0	2009
county	47	millet (90kg bags)	0	2009
county	47	millet yield	0	2009
county	47	beans	676	2009
county	47	beans (90kg bags)	13700	2009
county	47	beans yield	20.3000000000000007	2009
county	22	beans	13834	2009
county	22	beans (90kg bags)	69696	2009
county	22	beans yield	5	2009
county	20	beans	24199	2009
county	20	beans (90kg bags)	99032	2009
county	20	beans yield	4.09999999999999964	2009
county	21	beans	43244	2009
county	21	beans (90kg bags)	313894	2009
county	21	beans yield	7.29999999999999982	2009
county	18	beans	4561	2009
county	18	beans (90kg bags)	24544	2009
county	18	beans yield	5.40000000000000036	2009
county	19	beans	43244	2009
county	19	beans (90kg bags)	313894	2009
county	19	beans yield	7.29999999999999982	2009
county	3	beans	34	2009
county	3	beans (90kg bags)	54	2009
county	3	beans yield	1.60000000000000009	2009
county	2	beans	284	2009
county	2	beans (90kg bags)	3237	2009
county	2	beans yield	11.4000000000000004	2009
county	5	beans	0	2009
county	5	beans (90kg bags)	0	2009
county	5	beans yield	0	2009
county	1	beans	0	2009
county	1	beans (90kg bags)	0	2009
county	1	beans yield	0	2009
county	6	beans	2361	2009
county	6	beans (90kg bags)	6067	2009
county	6	beans yield	2.60000000000000009	2009
county	4	beans	0	2009
county	4	beans (90kg bags)	0	2009
county	4	beans yield	0	2009
county	14	beans	20330	2009
county	14	beans (90kg bags)	181078	2009
county	14	beans yield	8.90000000000000036	2009
county	11	beans	2267	2009
county	11	beans (90kg bags)	433	2009
county	11	beans yield	0.200000000000000011	2009
county	15	beans	32155	2009
county	15	beans (90kg bags)	199389	2009
county	15	beans yield	6.20000000000000018	2009
county	16	beans	64369	2009
county	16	beans (90kg bags)	215300	2009
county	16	beans yield	3.29999999999999982	2009
county	17	beans	37367	2009
county	17	beans (90kg bags)	82095	2009
county	17	beans yield	2.20000000000000018	2009
county	10	beans	627	2009
county	10	beans (90kg bags)	9121	2009
county	10	beans yield	14.5	2009
county	12	beans	142009	2009
county	12	beans (90kg bags)	467262	2009
county	12	beans yield	3.29999999999999982	2009
county	13	beans	9436	2009
county	13	beans (90kg bags)	93590	2009
county	13	beans yield	9.90000000000000036	2009
county	43	beans	40583	2009
county	43	beans (90kg bags)	327253	2009
county	43	beans yield	8.09999999999999964	2009
county	45	beans	47842	2009
county	45	beans (90kg bags)	421010	2009
county	45	beans yield	8.80000000000000071	2009
county	42	beans	8095	2009
county	42	beans (90kg bags)	73911	2009
county	42	beans yield	9.09999999999999964	2009
county	44	beans	19698	2009
county	44	beans (90kg bags)	104510	2009
county	44	beans yield	5.29999999999999982	2009
county	46	beans	24615	2009
county	46	beans (90kg bags)	202044	2009
county	46	beans yield	8.19999999999999929	2009
county	41	beans	47915	2009
county	41	beans (90kg bags)	348283	2009
county	41	beans yield	7.29999999999999982	2009
county	30	beans	17788	2009
county	30	beans (90kg bags)	168394	2009
county	30	beans yield	9.5	2009
county	36	beans	31857	2009
county	36	beans (90kg bags)	238668	2009
county	36	beans yield	7.5	2009
county	28	beans	14894	2009
county	28	beans (90kg bags)	155150	2009
county	28	beans yield	10.4000000000000004	2009
county	34	beans	42550	2009
county	34	beans (90kg bags)	210483	2009
county	34	beans yield	4.90000000000000036	2009
county	35	beans	19804	2009
county	35	beans (90kg bags)	169667	2009
county	35	beans yield	8.59999999999999964	2009
county	31	beans	1659	2009
county	31	beans (90kg bags)	16227	2009
county	31	beans yield	9.80000000000000071	2009
county	32	beans	43946	2009
county	32	beans (90kg bags)	232686	2009
county	32	beans yield	5.29999999999999982	2009
county	29	beans	37964	2009
county	29	beans (90kg bags)	343242	2009
county	29	beans yield	9	2009
county	33	beans	30346	2009
county	33	beans (90kg bags)	48273	2009
county	33	beans yield	1.60000000000000009	2009
county	25	beans	840	2009
county	25	beans (90kg bags)	6270	2009
county	25	beans yield	7.5	2009
county	26	beans	13740	2009
county	26	beans (90kg bags)	54867	2009
county	26	beans yield	4	2009
county	27	beans	15992	2009
county	27	beans (90kg bags)	46023	2009
county	27	beans yield	2.89999999999999991	2009
county	24	beans	7630	2009
county	24	beans (90kg bags)	40307	2009
county	24	beans yield	5.29999999999999982	2009
county	39	beans	57578	2009
county	39	beans (90kg bags)	789089	2009
county	39	beans yield	13.6999999999999993	2009
county	40	beans	19100	2009
county	40	beans (90kg bags)	204644	2009
county	40	beans yield	10.6999999999999993	2009
county	37	beans	48126	2009
county	37	beans (90kg bags)	490039	2009
county	37	beans yield	10.1999999999999993	2009
county	38	beans	18851	2009
county	38	beans (90kg bags)	60933	2009
county	38	beans yield	3.20000000000000018	2009
country	KE	beans	1052408	2009
country	KE	beans (90kg bags)	6844357	2009
country	KE	beans yield	6.5	2009
county	7	beans	0	2009
county	7	beans (90kg bags)	0	2009
county	7	beans yield	0	2009
county	8	beans	0	2009
county	8	beans (90kg bags)	0	2009
county	8	beans yield	0	2009
county	9	beans	0	2009
county	9	beans (90kg bags)	0	2009
county	9	beans yield	0	2009
county	23	beans	0	2009
county	23	beans (90kg bags)	0	2009
county	23	beans yield	0	2009
county	47	cowpeas	33	2009
county	47	cowpeas (90kg bags)	83	2009
county	47	cowpeas yield	2.5	2009
county	22	cowpeas	0	2009
county	22	cowpeas (90kg bags)	0	2009
county	22	cowpeas yield	0	2009
county	20	cowpeas	361	2009
county	20	cowpeas (90kg bags)	1486	2009
county	20	cowpeas yield	4.09999999999999964	2009
county	21	cowpeas	819	2009
county	21	cowpeas (90kg bags)	3716	2009
county	21	cowpeas yield	4.5	2009
county	18	cowpeas	0	2009
county	18	cowpeas (90kg bags)	0	2009
county	18	cowpeas yield	0	2009
county	19	cowpeas	509	2009
county	19	cowpeas (90kg bags)	3499	2009
county	19	cowpeas yield	6.90000000000000036	2009
county	3	cowpeas	8929	2009
county	3	cowpeas (90kg bags)	12780	2009
county	3	cowpeas yield	1.39999999999999991	2009
county	2	cowpeas	4619	2009
county	2	cowpeas (90kg bags)	18207	2009
county	2	cowpeas yield	3.89999999999999991	2009
county	5	cowpeas	3620	2009
county	5	cowpeas (90kg bags)	28608	2009
county	5	cowpeas yield	7.90000000000000036	2009
county	1	cowpeas	297	2009
county	1	cowpeas (90kg bags)	844	2009
county	1	cowpeas yield	2.79999999999999982	2009
county	6	cowpeas	1351	2009
county	6	cowpeas (90kg bags)	4882	2009
county	6	cowpeas yield	3.60000000000000009	2009
county	4	cowpeas	1334	2009
county	4	cowpeas (90kg bags)	11186	2009
county	4	cowpeas yield	8.40000000000000036	2009
county	14	cowpeas	7231	2009
county	14	cowpeas (90kg bags)	104490	2009
county	14	cowpeas yield	14.5	2009
county	11	cowpeas	70	2009
county	11	cowpeas (90kg bags)	533	2009
county	11	cowpeas yield	7.59999999999999964	2009
county	15	cowpeas	89161	2009
county	15	cowpeas (90kg bags)	412540	2009
county	15	cowpeas yield	4.59999999999999964	2009
county	16	cowpeas	35247	2009
county	16	cowpeas (90kg bags)	160572	2009
county	16	cowpeas yield	4.59999999999999964	2009
county	17	cowpeas	97103	2009
county	17	cowpeas (90kg bags)	567704	2009
county	17	cowpeas yield	5.79999999999999982	2009
county	10	cowpeas	8	2009
county	10	cowpeas (90kg bags)	56	2009
county	10	cowpeas yield	7.20000000000000018	2009
county	12	cowpeas	8990	2009
county	12	cowpeas (90kg bags)	87617	2009
county	12	cowpeas yield	9.69999999999999929	2009
county	13	cowpeas	16509	2009
county	13	cowpeas (90kg bags)	81549	2009
county	13	cowpeas yield	4.90000000000000036	2009
county	7	cowpeas	85	2009
county	7	cowpeas (90kg bags)	589	2009
county	7	cowpeas yield	6.90000000000000036	2009
county	9	cowpeas	1276	2009
county	9	cowpeas (90kg bags)	627	2009
county	9	cowpeas yield	0.5	2009
county	8	cowpeas	219	2009
county	8	cowpeas (90kg bags)	219	2009
county	8	cowpeas yield	1	2009
county	43	cowpeas	476	2009
county	43	cowpeas (90kg bags)	2275	2009
county	43	cowpeas yield	4.79999999999999982	2009
county	45	cowpeas	511	2009
county	45	cowpeas (90kg bags)	10059	2009
county	45	cowpeas yield	19.6999999999999993	2009
county	42	cowpeas	1462	2009
county	42	cowpeas (90kg bags)	13184	2009
county	42	cowpeas yield	9	2009
county	44	cowpeas	334	2009
county	44	cowpeas (90kg bags)	1633	2009
county	44	cowpeas yield	4.90000000000000036	2009
county	46	cowpeas	0	2009
county	46	cowpeas (90kg bags)	0	2009
county	46	cowpeas yield	0	2009
county	41	cowpeas	597	2009
county	41	cowpeas (90kg bags)	4763	2009
county	41	cowpeas yield	8	2009
county	30	cowpeas	285	2009
county	30	cowpeas (90kg bags)	2877	2009
county	30	cowpeas yield	10.0999999999999996	2009
county	28	cowpeas	129	2009
county	28	cowpeas (90kg bags)	1459	2009
county	28	cowpeas yield	11.3000000000000007	2009
county	34	cowpeas	58	2009
county	34	cowpeas (90kg bags)	1003	2009
county	34	cowpeas yield	17.3000000000000007	2009
county	31	cowpeas	8	2009
county	31	cowpeas (90kg bags)	72	2009
county	31	cowpeas yield	9	2009
county	32	cowpeas	59	2009
county	32	cowpeas (90kg bags)	569	2009
county	32	cowpeas yield	9.59999999999999964	2009
county	33	cowpeas	58	2009
county	33	cowpeas (90kg bags)	571	2009
county	33	cowpeas yield	9.80000000000000071	2009
county	25	cowpeas	11	2009
county	25	cowpeas (90kg bags)	71	2009
county	25	cowpeas yield	6.5	2009
county	26	cowpeas	120	2009
county	26	cowpeas (90kg bags)	491	2009
county	26	cowpeas yield	4.09999999999999964	2009
country	KE	cowpeas	281877	2009
country	KE	cowpeas (90kg bags)	1540813	2009
country	KE	cowpeas yield	5.5	2009
county	23	cowpeas	0	2009
county	23	cowpeas (90kg bags)	0	2009
county	23	cowpeas yield	0	2009
county	24	cowpeas	0	2009
county	24	cowpeas (90kg bags)	0	2009
county	24	cowpeas yield	0	2009
county	27	cowpeas	0	2009
county	27	cowpeas (90kg bags)	0	2009
county	27	cowpeas yield	0	2009
county	29	cowpeas	0	2009
county	29	cowpeas (90kg bags)	0	2009
county	29	cowpeas yield	0	2009
county	35	cowpeas	0	2009
county	35	cowpeas (90kg bags)	0	2009
county	35	cowpeas yield	0	2009
county	36	cowpeas	0	2009
county	36	cowpeas (90kg bags)	0	2009
county	36	cowpeas yield	0	2009
county	37	cowpeas	0	2009
county	37	cowpeas (90kg bags)	0	2009
county	37	cowpeas yield	0	2009
county	38	cowpeas	0	2009
county	38	cowpeas (90kg bags)	0	2009
county	38	cowpeas yield	0	2009
county	39	cowpeas	0	2009
county	39	cowpeas (90kg bags)	0	2009
county	39	cowpeas yield	0	2009
county	40	cowpeas	0	2009
county	40	cowpeas (90kg bags)	0	2009
county	40	cowpeas yield	0	2009
county	47	greengrams	3	2009
county	47	greengrams (90kg bags)	14.4443999999999999	2009
county	47	greengrams yield	4.80999999999999961	2009
county	22	greengrams	0	2009
county	22	greengrams (90kg bags)	0	2009
county	22	greengrams yield	0	2009
county	20	greengrams	404.800000000000011	2009
county	20	greengrams (90kg bags)	2094.55999999999995	2009
county	20	greengrams yield	5.16999999999999993	2009
county	21	greengrams	313	2009
county	21	greengrams (90kg bags)	1109.44000000000005	2009
county	21	greengrams yield	3.54455000000000009	2009
county	3	greengrams	3389	2009
county	3	greengrams (90kg bags)	6714.14999999999964	2009
county	3	greengrams yield	1.98116000000000003	2009
county	2	greengrams	4080	2009
county	2	greengrams (90kg bags)	36544.4000000000015	2009
county	2	greengrams yield	8.9569700000000001	2009
county	5	greengrams	3154	2009
county	5	greengrams (90kg bags)	23751.0999999999985	2009
county	5	greengrams yield	7.53047000000000022	2009
county	1	greengrams	297	2009
county	1	greengrams (90kg bags)	844	2009
county	1	greengrams yield	2.84175000000000022	2009
county	6	greengrams	2163.69999999999982	2009
county	6	greengrams (90kg bags)	6753.25	2009
county	6	greengrams yield	3.12116000000000016	2009
county	4	greengrams	2175	2009
county	4	greengrams (90kg bags)	11186	2009
county	4	greengrams yield	5.14299000000000017	2009
county	14	greengrams	7436	2009
county	14	greengrams (90kg bags)	118161	2009
county	14	greengrams yield	15.8903999999999996	2009
county	11	greengrams	59.7999999999999972	2009
county	11	greengrams (90kg bags)	358.800000000000011	2009
county	11	greengrams yield	6	2009
county	15	greengrams (90kg bags)	387114	2009
county	15	greengrams yield	4.32591999999999999	2009
county	16	greengrams	12096.7999999999993	2009
county	16	greengrams (90kg bags)	102156	2009
county	16	greengrams yield	8.44490000000000052	2009
county	17	greengrams	89444	2009
county	17	greengrams (90kg bags)	400431	2009
county	17	greengrams yield	4.47689000000000004	2009
county	10	greengrams	7.20000000000000018	2009
county	10	greengrams (90kg bags)	52.2000000000000028	2009
county	10	greengrams yield	7.25	2009
county	12	greengrams	7692	2009
county	12	greengrams (90kg bags)	44634.3000000000029	2009
county	12	greengrams yield	5.80269999999999975	2009
county	13	greengrams	30584	2009
county	13	greengrams (90kg bags)	151023	2009
county	13	greengrams yield	4.93796000000000035	2009
county	7	greengrams	105	2009
county	7	greengrams (90kg bags)	588.88900000000001	2009
county	7	greengrams yield	5.60846999999999962	2009
county	9	greengrams	132	2009
county	9	greengrams (90kg bags)	270.444000000000017	2009
county	9	greengrams yield	2.04882000000000009	2009
county	8	greengrams	120	2009
county	8	greengrams (90kg bags)	120	2009
county	8	greengrams yield	1	2009
county	43	greengrams	762	2009
county	43	greengrams (90kg bags)	14228.1000000000004	2009
county	43	greengrams yield	18.6720000000000006	2009
county	45	greengrams	0	2009
county	45	greengrams (90kg bags)	0	2009
county	45	greengrams yield	0	2009
county	42	greengrams	1423	2009
county	42	greengrams (90kg bags)	13100	2009
county	42	greengrams yield	9.20589999999999975	2009
county	44	greengrams	131.849999999999994	2009
county	44	greengrams (90kg bags)	1034.1099999999999	2009
county	44	greengrams yield	7.84309000000000012	2009
county	46	greengrams	0	2009
county	46	greengrams (90kg bags)	0	2009
county	46	greengrams yield	0	2009
county	41	greengrams	833	2009
county	41	greengrams (90kg bags)	4104.89000000000033	2009
county	41	greengrams yield	4.92783999999999978	2009
county	30	greengrams	551	2009
county	30	greengrams (90kg bags)	5316.67000000000007	2009
county	30	greengrams yield	9.64911999999999992	2009
county	34	greengrams	35	2009
county	34	greengrams (90kg bags)	177.777999999999992	2009
county	34	greengrams yield	5.07936999999999994	2009
county	28	greengrams	579	2009
county	28	greengrams (90kg bags)	3540	2009
county	28	greengrams yield	6.11399000000000026	2009
county	31	greengrams	0	2009
county	31	greengrams (90kg bags)	0	2009
county	31	greengrams yield	0	2009
county	33	greengrams	0	2009
county	33	greengrams (90kg bags)	0	2009
county	33	greengrams yield	0	2009
county	25	greengrams	15	2009
county	25	greengrams (90kg bags)	111.099999999999994	2009
county	25	greengrams yield	7.40000000000000036	2009
county	23	greengrams	145	2009
county	23	greengrams (90kg bags)	526	2009
county	23	greengrams yield	3.60000000000000009	2009
county	24	greengrams	50	2009
county	24	greengrams (90kg bags)	350	2009
county	24	greengrams yield	7	2009
county	39	greengrams	471	2009
county	39	greengrams (90kg bags)	3706.67000000000007	2009
county	39	greengrams yield	7.79999999999999982	2009
county	40	greengrams	1018	2009
county	40	greengrams (90kg bags)	4988.89000000000033	2009
county	40	greengrams yield	4.90000000000000036	2009
county	37	greengrams	8	2009
county	37	greengrams (90kg bags)	166.667000000000002	2009
county	37	greengrams yield	20.8000000000000007	2009
county	38	greengrams	2	2009
county	38	greengrams (90kg bags)	22.2222000000000008	2009
county	38	greengrams yield	11.0999999999999996	2009
country	KE	greengrams	259167	2009
country	KE	greengrams (90kg bags)	1345294	2009
country	KE	greengrams yield	5.19000000000000039	2009
county	18	greengrams	0	2009
county	18	greengrams (90kg bags)	0	2009
county	18	greengrams yield	0	2009
county	19	greengrams	0	2009
county	19	greengrams (90kg bags)	0	2009
county	19	greengrams yield	0	2009
county	26	greengrams	0	2009
county	26	greengrams (90kg bags)	0	2009
county	26	greengrams yield	0	2009
county	27	greengrams	0	2009
county	27	greengrams (90kg bags)	0	2009
county	27	greengrams yield	0	2009
county	29	greengrams	0	2009
county	29	greengrams (90kg bags)	0	2009
county	29	greengrams yield	0	2009
county	32	greengrams	0	2009
county	32	greengrams (90kg bags)	0	2009
county	32	greengrams yield	0	2009
county	35	greengrams	0	2009
county	35	greengrams (90kg bags)	0	2009
county	35	greengrams yield	0	2009
county	36	greengrams	0	2009
county	36	greengrams (90kg bags)	0	2009
county	36	greengrams yield	0	2009
county	47	sweetpotatoes	25	2009
county	47	sweetpotatoes (Ton)	175	2009
county	47	sweetpotatoes yield	7	2009
county	22	sweetpotatoes	50	2009
county	22	sweetpotatoes (Ton)	4619.19999999999982	2009
county	22	sweetpotatoes yield	92.4000000000000057	2009
county	20	sweetpotatoes	833.5	2009
county	20	sweetpotatoes (Ton)	9413	2009
county	20	sweetpotatoes yield	11.3000000000000007	2009
county	21	sweetpotatoes	467	2009
county	21	sweetpotatoes (Ton)	4035.84999999999991	2009
county	21	sweetpotatoes yield	8.59999999999999964	2009
county	18	sweetpotatoes	21	2009
county	18	sweetpotatoes (Ton)	245	2009
county	18	sweetpotatoes yield	11.6999999999999993	2009
county	19	sweetpotatoes	467	2009
county	19	sweetpotatoes (Ton)	4035.84999999999991	2009
county	19	sweetpotatoes yield	8.59999999999999964	2009
county	3	sweetpotatoes	275	2009
county	3	sweetpotatoes (Ton)	4125	2009
county	3	sweetpotatoes yield	15	2009
county	2	sweetpotatoes	802	2009
county	2	sweetpotatoes (Ton)	650	2009
county	2	sweetpotatoes yield	0.800000000000000044	2009
county	5	sweetpotatoes	25.1999999999999993	2009
county	5	sweetpotatoes (Ton)	481.600000000000023	2009
county	5	sweetpotatoes yield	19.1000000000000014	2009
county	1	sweetpotatoes	7	2009
county	1	sweetpotatoes (Ton)	21	2009
county	1	sweetpotatoes yield	3	2009
county	6	sweetpotatoes	77.0999999999999943	2009
county	6	sweetpotatoes (Ton)	802.899999999999977	2009
county	6	sweetpotatoes yield	10.4000000000000004	2009
county	4	sweetpotatoes	87.5	2009
county	4	sweetpotatoes (Ton)	1384.5	2009
county	4	sweetpotatoes yield	15.8000000000000007	2009
county	14	sweetpotatoes	213	2009
county	14	sweetpotatoes (Ton)	3138	2009
county	14	sweetpotatoes yield	14.6999999999999993	2009
county	11	sweetpotatoes	42.2999999999999972	2009
county	11	sweetpotatoes (Ton)	99.875	2009
county	11	sweetpotatoes yield	2.39999999999999991	2009
county	15	sweetpotatoes	484	2009
county	15	sweetpotatoes (Ton)	2336	2009
county	15	sweetpotatoes yield	4.79999999999999982	2009
county	16	sweetpotatoes	3562.23999999999978	2009
county	16	sweetpotatoes (Ton)	42029.3000000000029	2009
county	16	sweetpotatoes yield	11.8000000000000007	2009
county	17	sweetpotatoes	4802	2009
county	17	sweetpotatoes (Ton)	38267.5999999999985	2009
county	17	sweetpotatoes yield	8	2009
county	10	sweetpotatoes	0	2009
county	10	sweetpotatoes (Ton)	0	2009
county	10	sweetpotatoes yield	0	2009
county	12	sweetpotatoes	1230	2009
county	12	sweetpotatoes (Ton)	8518	2009
county	12	sweetpotatoes yield	6.90000000000000036	2009
county	13	sweetpotatoes	244	2009
county	13	sweetpotatoes (Ton)	1769	2009
county	13	sweetpotatoes yield	7.29999999999999982	2009
county	43	sweetpotatoes	7839	2009
county	43	sweetpotatoes (Ton)	127725	2009
county	43	sweetpotatoes yield	16.3000000000000007	2009
county	45	sweetpotatoes	1161	2009
county	45	sweetpotatoes (Ton)	20317	2009
county	45	sweetpotatoes yield	17.5	2009
county	42	sweetpotatoes	1573	2009
county	42	sweetpotatoes (Ton)	17390	2009
county	42	sweetpotatoes yield	11.0999999999999996	2009
county	44	sweetpotatoes	10995	2009
county	44	sweetpotatoes (Ton)	69641.5	2009
county	44	sweetpotatoes yield	6.29999999999999982	2009
county	46	sweetpotatoes	440	2009
county	46	sweetpotatoes (Ton)	4752	2009
county	46	sweetpotatoes yield	10.8000000000000007	2009
county	41	sweetpotatoes	3476	2009
county	41	sweetpotatoes (Ton)	46306	2009
county	41	sweetpotatoes yield	13.3000000000000007	2009
county	30	sweetpotatoes	360.5	2009
county	30	sweetpotatoes (Ton)	1146	2009
county	30	sweetpotatoes yield	3.20000000000000018	2009
county	36	sweetpotatoes	2333	2009
county	36	sweetpotatoes (Ton)	30971	2009
county	36	sweetpotatoes yield	13.3000000000000007	2009
county	28	sweetpotatoes	58	2009
county	28	sweetpotatoes (Ton)	652	2009
county	28	sweetpotatoes yield	11.1999999999999993	2009
county	34	sweetpotatoes	3	2009
county	34	sweetpotatoes (Ton)	42	2009
county	34	sweetpotatoes yield	14	2009
county	35	sweetpotatoes	735	2009
county	35	sweetpotatoes (Ton)	1568	2009
county	35	sweetpotatoes yield	2.10000000000000009	2009
county	31	sweetpotatoes	70	2009
county	31	sweetpotatoes (Ton)	1052	2009
county	31	sweetpotatoes yield	15	2009
county	32	sweetpotatoes	217.400000000000006	2009
county	32	sweetpotatoes (Ton)	1786.41000000000008	2009
county	32	sweetpotatoes yield	8.19999999999999929	2009
county	29	sweetpotatoes	101.5	2009
county	29	sweetpotatoes (Ton)	1678	2009
county	29	sweetpotatoes yield	16.5	2009
county	33	sweetpotatoes	2062.19999999999982	2009
county	33	sweetpotatoes (Ton)	23214	2009
county	33	sweetpotatoes yield	11.3000000000000007	2009
county	25	sweetpotatoes	0.5	2009
county	25	sweetpotatoes (Ton)	2.5	2009
county	25	sweetpotatoes yield	5	2009
county	26	sweetpotatoes	225.5	2009
county	26	sweetpotatoes (Ton)	3115	2009
county	26	sweetpotatoes yield	13.8000000000000007	2009
county	27	sweetpotatoes	87.2999999999999972	2009
county	27	sweetpotatoes (Ton)	986	2009
county	27	sweetpotatoes yield	11.3000000000000007	2009
county	24	sweetpotatoes	6	2009
county	24	sweetpotatoes (Ton)	62	2009
county	24	sweetpotatoes yield	10.3000000000000007	2009
county	23	sweetpotatoes	1.5	2009
county	23	sweetpotatoes (Ton)	7.5	2009
county	23	sweetpotatoes yield	5	2009
county	39	sweetpotatoes	5499	2009
county	39	sweetpotatoes (Ton)	133037	2009
county	39	sweetpotatoes yield	24.1999999999999993	2009
county	40	sweetpotatoes	6395	2009
county	40	sweetpotatoes (Ton)	119970	2009
county	40	sweetpotatoes yield	18.8000000000000007	2009
county	37	sweetpotatoes	2998	2009
county	37	sweetpotatoes (Ton)	24770	2009
county	37	sweetpotatoes yield	8.30000000000000071	2009
county	38	sweetpotatoes	715	2009
county	38	sweetpotatoes (Ton)	7305	2009
county	38	sweetpotatoes yield	10.1999999999999993	2009
country	KE	sweetpotatoes	61067	2009
country	KE	sweetpotatoes (Ton)	763643	2009
country	KE	sweetpotatoes yield	12.5	2009
county	7	sweetpotatoes	0	2009
county	7	sweetpotatoes (Ton)	0	2009
county	7	sweetpotatoes yield	0	2009
county	8	sweetpotatoes	0	2009
county	8	sweetpotatoes (Ton)	0	2009
county	8	sweetpotatoes yield	0	2009
county	9	sweetpotatoes	0	2009
county	9	sweetpotatoes (Ton)	0	2009
county	9	sweetpotatoes yield	0	2009
county	47	cassava	18	2009
county	47	cassava (Ton)	144	2009
county	47	cassava yield	8	2009
county	22	cassava	111	2009
county	22	cassava (Ton)	1107	2009
county	22	cassava yield	10	2009
county	20	cassava	123	2009
county	20	cassava (Ton)	2233	2009
county	20	cassava yield	18.1999999999999993	2009
county	21	cassava	361	2009
county	21	cassava (Ton)	4036	2009
county	21	cassava yield	11.1999999999999993	2009
county	19	cassava	361	2009
county	19	cassava (Ton)	4044	2009
county	19	cassava yield	11.1999999999999993	2009
county	18	cassava	11	2009
county	18	cassava (Ton)	110	2009
county	18	cassava yield	10	2009
county	3	cassava	5779	2009
county	3	cassava (Ton)	207060	2009
county	3	cassava yield	35.7999999999999972	2009
county	2	cassava	6475	2009
county	2	cassava (Ton)	3300	2009
county	2	cassava yield	0.5	2009
county	5	cassava	1279	2009
county	5	cassava (Ton)	31500	2009
county	5	cassava yield	24.6000000000000014	2009
county	1	cassava	226	2009
county	1	cassava (Ton)	1360	2009
county	1	cassava yield	6	2009
county	6	cassava	58	2009
county	6	cassava (Ton)	795	2009
county	6	cassava yield	13.5999999999999996	2009
county	4	cassava	189	2009
county	4	cassava (Ton)	2694	2009
county	4	cassava yield	14.3000000000000007	2009
county	14	cassava	210	2009
county	14	cassava (Ton)	5245	2009
county	14	cassava yield	25	2009
county	11	cassava	0	2009
county	11	cassava (Ton)	0	2009
county	11	cassava yield	0	2009
county	15	cassava	915	2009
county	15	cassava (Ton)	11950	2009
county	15	cassava yield	13.0999999999999996	2009
county	16	cassava	3216	2009
county	16	cassava (Ton)	35313	2009
county	16	cassava yield	11	2009
county	17	cassava	4988	2009
county	17	cassava (Ton)	40110	2009
county	17	cassava yield	8	2009
county	10	cassava	2	2009
county	10	cassava (Ton)	5	2009
county	10	cassava yield	2.5	2009
county	12	cassava	731	2009
county	12	cassava (Ton)	6358	2009
county	12	cassava yield	8.69999999999999929	2009
county	13	cassava	462	2009
county	13	cassava (Ton)	1951	2009
county	13	cassava yield	4.20000000000000018	2009
county	43	cassava	4884	2009
county	43	cassava (Ton)	76310	2009
county	43	cassava yield	15.5999999999999996	2009
county	45	cassava	109	2009
county	45	cassava (Ton)	1474	2009
county	45	cassava yield	13.5	2009
county	42	cassava	1106	2009
county	42	cassava (Ton)	12205	2009
county	42	cassava yield	11	2009
county	44	cassava	6639	2009
county	44	cassava (Ton)	10742	2009
county	44	cassava yield	1.60000000000000009	2009
county	46	cassava	80	2009
county	46	cassava (Ton)	2222	2009
county	46	cassava yield	27.8000000000000007	2009
county	41	cassava	2987	2009
county	41	cassava (Ton)	28700	2009
county	41	cassava yield	9.59999999999999964	2009
county	30	cassava	118	2009
county	30	cassava (Ton)	2297	2009
county	30	cassava yield	19.3999999999999986	2009
county	36	cassava	23	2009
county	36	cassava (Ton)	345	2009
county	36	cassava yield	15	2009
county	28	cassava	226	2009
county	28	cassava (Ton)	5570	2009
county	28	cassava yield	24.6000000000000014	2009
county	34	cassava	3	2009
county	34	cassava (Ton)	26	2009
county	34	cassava yield	8.69999999999999929	2009
county	35	cassava	0	2009
county	35	cassava (Ton)	0	2009
county	35	cassava yield	0	2009
county	31	cassava	17	2009
county	31	cassava (Ton)	102	2009
county	31	cassava yield	6	2009
county	32	cassava	111	2009
county	32	cassava (Ton)	827	2009
county	32	cassava yield	7.40000000000000036	2009
county	29	cassava	84	2009
county	29	cassava (Ton)	2100	2009
county	29	cassava yield	24.8999999999999986	2009
county	33	cassava	55	2009
county	33	cassava (Ton)	279	2009
county	33	cassava yield	5	2009
county	25	cassava	3	2009
county	25	cassava (Ton)	6	2009
county	25	cassava yield	2.39999999999999991	2009
county	26	cassava	76	2009
county	26	cassava (Ton)	1520	2009
county	26	cassava yield	20	2009
county	23	cassava	0	2009
county	23	cassava (Ton)	0	2009
county	23	cassava yield	0	2009
county	27	cassava	11	2009
county	27	cassava (Ton)	115	2009
county	27	cassava yield	10.9000000000000004	2009
county	24	cassava	0	2009
county	24	cassava (Ton)	0	2009
county	24	cassava yield	0	2009
county	39	cassava	1567	2009
county	39	cassava (Ton)	28267	2009
county	39	cassava yield	18	2009
county	40	cassava	19580	2009
county	40	cassava (Ton)	321835	2009
county	40	cassava yield	16.3999999999999986	2009
county	37	cassava	341	2009
county	37	cassava (Ton)	1938	2009
county	37	cassava yield	5.70000000000000018	2009
county	38	cassava	191	2009
county	38	cassava (Ton)	2267	2009
county	38	cassava yield	11.9000000000000004	2009
country	KE	cassava	63725	2009
country	KE	cassava (Ton)	858461	2009
country	KE	cassava yield	13.5	2009
county	7	cassava	0	2009
county	7	cassava (Ton)	0	2009
county	7	cassava yield	0	2009
county	8	cassava	0	2009
county	8	cassava (Ton)	0	2009
county	8	cassava yield	0	2009
county	9	cassava	0	2009
county	9	cassava (Ton)	0	2009
county	9	cassava yield	0	2009
county	30	irishpotatoes	2013	2009
county	30	irishpotatoes (Ton)	32933.8000000000029	2009
county	30	irishpotatoes yield	16.3999999999999986	2009
county	36	irishpotatoes	0	2009
county	36	irishpotatoes (Ton)	0	2009
county	36	irishpotatoes yield	0	2009
county	28	irishpotatoes	11637	2009
county	28	irishpotatoes (Ton)	196305	2009
county	28	irishpotatoes yield	16.8999999999999986	2009
county	34	irishpotatoes	1091	2009
county	34	irishpotatoes (Ton)	16726.25	2009
county	34	irishpotatoes yield	15.3000000000000007	2009
county	31	irishpotatoes	484	2009
county	31	irishpotatoes (Ton)	5680	2009
county	31	irishpotatoes yield	11.6999999999999993	2009
county	32	irishpotatoes	34744.3000000000029	2009
county	32	irishpotatoes (Ton)	361027.400000000023	2009
county	32	irishpotatoes yield	10.4000000000000004	2009
county	29	irishpotatoes	384.300000000000011	2009
county	29	irishpotatoes (Ton)	5820	2009
county	29	irishpotatoes yield	15.0999999999999996	2009
county	33	irishpotatoes	10173	2009
county	33	irishpotatoes (Ton)	82402.3300000000017	2009
county	33	irishpotatoes yield	8.09999999999999964	2009
county	26	irishpotatoes	87	2009
county	26	irishpotatoes (Ton)	1532.5	2009
county	26	irishpotatoes yield	17.6000000000000014	2009
county	27	irishpotatoes	1132	2009
county	27	irishpotatoes (Ton)	156230	2009
county	27	irishpotatoes yield	138	2009
county	45	irishpotatoes	160	2009
county	45	irishpotatoes (Ton)	2675	2009
county	45	irishpotatoes yield	16.6999999999999993	2009
county	43	irishpotatoes	2697	2009
county	43	irishpotatoes (Ton)	32655	2009
county	43	irishpotatoes yield	12.0999999999999996	2009
county	46	irishpotatoes	41	2009
county	46	irishpotatoes (Ton)	245.5	2009
county	46	irishpotatoes yield	6	2009
county	47	irishpotatoes	94	2009
county	47	irishpotatoes (Ton)	940	2009
county	47	irishpotatoes yield	10	2009
county	18	irishpotatoes	22270	2009
county	18	irishpotatoes (Ton)	293410	2009
county	18	irishpotatoes yield	13.1999999999999993	2009
county	20	irishpotatoes	839	2009
county	20	irishpotatoes (Ton)	12442	2009
county	20	irishpotatoes yield	14.8000000000000007	2009
county	22	irishpotatoes	15483.3199999999997	2009
county	22	irishpotatoes (Ton)	99313.6159999999945	2009
county	22	irishpotatoes yield	6.40000000000000036	2009
county	21	irishpotatoes	7294	2009
county	21	irishpotatoes (Ton)	27765.2999999999993	2009
county	21	irishpotatoes yield	3.79999999999999982	2009
county	19	irishpotatoes	7294	2009
county	19	irishpotatoes (Ton)	27765.2999999999993	2009
county	19	irishpotatoes yield	3.79999999999999982	2009
county	14	irishpotatoes	195	2009
county	14	irishpotatoes (Ton)	4394	2009
county	14	irishpotatoes yield	22.5	2009
county	16	irishpotatoes	10	2009
county	16	irishpotatoes (Ton)	6	2009
county	16	irishpotatoes yield	0.599999999999999978	2009
county	17	irishpotatoes	137	2009
county	17	irishpotatoes (Ton)	1035	2009
county	17	irishpotatoes yield	7.59999999999999964	2009
county	12	irishpotatoes	14916	2009
county	12	irishpotatoes (Ton)	157503.5	2009
county	12	irishpotatoes yield	10.5999999999999996	2009
county	13	irishpotatoes	42	2009
county	13	irishpotatoes (Ton)	365	2009
county	13	irishpotatoes yield	8.69999999999999929	2009
county	39	irishpotatoes	1396	2009
county	39	irishpotatoes (Ton)	56950	2009
county	39	irishpotatoes yield	40.7999999999999972	2009
county	37	irishpotatoes	16	2009
county	37	irishpotatoes (Ton)	105	2009
county	37	irishpotatoes yield	6.59999999999999964	2009
country	KE	irishpotatoes	134630	2009
country	KE	irishpotatoes (Ton)	1576227	2009
country	KE	irishpotatoes yield	11.6999999999999993	2009
county	1	irishpotatoes	0	2009
county	1	irishpotatoes (Ton)	0	2009
county	1	irishpotatoes yield	0	2009
county	2	irishpotatoes	0	2009
county	2	irishpotatoes (Ton)	0	2009
county	2	irishpotatoes yield	0	2009
county	3	irishpotatoes	0	2009
county	3	irishpotatoes (Ton)	0	2009
county	3	irishpotatoes yield	0	2009
county	4	irishpotatoes	0	2009
county	4	irishpotatoes (Ton)	0	2009
county	4	irishpotatoes yield	0	2009
county	5	irishpotatoes	0	2009
county	5	irishpotatoes (Ton)	0	2009
county	5	irishpotatoes yield	0	2009
county	6	irishpotatoes	0	2009
county	6	irishpotatoes (Ton)	0	2009
county	6	irishpotatoes yield	0	2009
county	7	irishpotatoes	0	2009
county	7	irishpotatoes (Ton)	0	2009
county	7	irishpotatoes yield	0	2009
county	8	irishpotatoes	0	2009
county	8	irishpotatoes (Ton)	0	2009
county	8	irishpotatoes yield	0	2009
county	9	irishpotatoes	0	2009
county	9	irishpotatoes (Ton)	0	2009
county	9	irishpotatoes yield	0	2009
county	10	irishpotatoes	0	2009
county	10	irishpotatoes (Ton)	0	2009
county	10	irishpotatoes yield	0	2009
county	11	irishpotatoes	0	2009
county	11	irishpotatoes (Ton)	0	2009
county	11	irishpotatoes yield	0	2009
county	15	irishpotatoes	0	2009
county	15	irishpotatoes (Ton)	0	2009
county	15	irishpotatoes yield	0	2009
county	23	irishpotatoes	0	2009
county	23	irishpotatoes (Ton)	0	2009
county	23	irishpotatoes yield	0	2009
county	24	irishpotatoes	0	2009
county	24	irishpotatoes (Ton)	0	2009
county	24	irishpotatoes yield	0	2009
county	25	irishpotatoes	0	2009
county	25	irishpotatoes (Ton)	0	2009
county	25	irishpotatoes yield	0	2009
county	35	irishpotatoes	0	2009
county	35	irishpotatoes (Ton)	0	2009
county	35	irishpotatoes yield	0	2009
county	38	irishpotatoes	0	2009
county	38	irishpotatoes (Ton)	0	2009
county	38	irishpotatoes yield	0	2009
county	40	irishpotatoes	0	2009
county	40	irishpotatoes (Ton)	0	2009
county	40	irishpotatoes yield	0	2009
county	41	irishpotatoes	0	2009
county	41	irishpotatoes (Ton)	0	2009
county	41	irishpotatoes yield	0	2009
county	42	irishpotatoes	0	2009
county	42	irishpotatoes (Ton)	0	2009
county	42	irishpotatoes yield	0	2009
county	44	irishpotatoes	0	2009
county	44	irishpotatoes (Ton)	0	2009
county	44	irishpotatoes yield	0	2009
county	20	cocoyam	7	2009
county	20	cocoyam (Ton)	23	2009
county	20	cocoyam yield	3.29999999999999982	2009
county	21	cocoyam	212.5	2009
county	21	cocoyam (Ton)	879.200000000000045	2009
county	21	cocoyam yield	4.09999999999999964	2009
county	19	cocoyam	212.5	2009
county	19	cocoyam (Ton)	879.200000000000045	2009
county	19	cocoyam yield	4.09999999999999964	2009
county	43	cocoyam	1531	2009
county	43	cocoyam (Ton)	22550	2009
county	43	cocoyam yield	14.6999999999999993	2009
county	13	cocoyam	92	2009
county	13	cocoyam (Ton)	984	2009
county	13	cocoyam yield	10.6999999999999993	2009
county	14	cocoyam	81	2009
county	14	cocoyam (Ton)	1766	2009
county	14	cocoyam yield	21.8000000000000007	2009
country	KE	cocoyam	2155	2009
country	KE	cocoyam (Ton)	27619	2009
country	KE	cocoyam yield	12.8000000000000007	2009
county	1	cocoyam	0	2009
county	1	cocoyam (Ton)	0	2009
county	1	cocoyam yield	0	2009
county	2	cocoyam	0	2009
county	2	cocoyam (Ton)	0	2009
county	2	cocoyam yield	0	2009
county	3	cocoyam	0	2009
county	3	cocoyam (Ton)	0	2009
county	3	cocoyam yield	0	2009
county	4	cocoyam	0	2009
county	4	cocoyam (Ton)	0	2009
county	4	cocoyam yield	0	2009
county	5	cocoyam	0	2009
county	5	cocoyam (Ton)	0	2009
county	5	cocoyam yield	0	2009
county	6	cocoyam	0	2009
county	6	cocoyam (Ton)	0	2009
county	6	cocoyam yield	0	2009
county	7	cocoyam	0	2009
county	7	cocoyam (Ton)	0	2009
county	7	cocoyam yield	0	2009
county	8	cocoyam	0	2009
county	8	cocoyam (Ton)	0	2009
county	8	cocoyam yield	0	2009
county	9	cocoyam	0	2009
county	9	cocoyam (Ton)	0	2009
county	9	cocoyam yield	0	2009
county	10	cocoyam	0	2009
county	10	cocoyam (Ton)	0	2009
county	10	cocoyam yield	0	2009
county	11	cocoyam	0	2009
county	11	cocoyam (Ton)	0	2009
county	11	cocoyam yield	0	2009
county	12	cocoyam	0	2009
county	12	cocoyam (Ton)	0	2009
county	12	cocoyam yield	0	2009
county	15	cocoyam	0	2009
county	15	cocoyam (Ton)	0	2009
county	15	cocoyam yield	0	2009
county	16	cocoyam	0	2009
county	16	cocoyam (Ton)	0	2009
county	16	cocoyam yield	0	2009
county	17	cocoyam	0	2009
county	17	cocoyam (Ton)	0	2009
county	17	cocoyam yield	0	2009
county	18	cocoyam	0	2009
county	18	cocoyam (Ton)	0	2009
county	18	cocoyam yield	0	2009
county	22	cocoyam	0	2009
county	22	cocoyam (Ton)	0	2009
county	22	cocoyam yield	0	2009
county	23	cocoyam	0	2009
county	23	cocoyam (Ton)	0	2009
county	23	cocoyam yield	0	2009
county	24	cocoyam	0	2009
county	24	cocoyam (Ton)	0	2009
county	24	cocoyam yield	0	2009
county	25	cocoyam	0	2009
county	25	cocoyam (Ton)	0	2009
county	25	cocoyam yield	0	2009
county	26	cocoyam	0	2009
county	26	cocoyam (Ton)	0	2009
county	26	cocoyam yield	0	2009
county	27	cocoyam	0	2009
county	27	cocoyam (Ton)	0	2009
county	27	cocoyam yield	0	2009
county	28	cocoyam	0	2009
county	28	cocoyam (Ton)	0	2009
county	28	cocoyam yield	0	2009
county	29	cocoyam	0	2009
county	29	cocoyam (Ton)	0	2009
county	29	cocoyam yield	0	2009
county	30	cocoyam	0	2009
county	30	cocoyam (Ton)	0	2009
county	30	cocoyam yield	0	2009
county	31	cocoyam	0	2009
county	31	cocoyam (Ton)	0	2009
county	31	cocoyam yield	0	2009
county	32	cocoyam	0	2009
county	32	cocoyam (Ton)	0	2009
county	32	cocoyam yield	0	2009
county	33	cocoyam	0	2009
county	33	cocoyam (Ton)	0	2009
county	33	cocoyam yield	0	2009
county	34	cocoyam	0	2009
county	34	cocoyam (Ton)	0	2009
county	34	cocoyam yield	0	2009
county	35	cocoyam	0	2009
county	35	cocoyam (Ton)	0	2009
county	35	cocoyam yield	0	2009
county	36	cocoyam	0	2009
county	36	cocoyam (Ton)	0	2009
county	36	cocoyam yield	0	2009
county	37	cocoyam	0	2009
county	37	cocoyam (Ton)	0	2009
county	37	cocoyam yield	0	2009
county	38	cocoyam	0	2009
county	38	cocoyam (Ton)	0	2009
county	38	cocoyam yield	0	2009
county	39	cocoyam	0	2009
county	39	cocoyam (Ton)	0	2009
county	39	cocoyam yield	0	2009
county	40	cocoyam	0	2009
county	40	cocoyam (Ton)	0	2009
county	40	cocoyam yield	0	2009
county	41	cocoyam	0	2009
county	41	cocoyam (Ton)	0	2009
county	41	cocoyam yield	0	2009
county	42	cocoyam	0	2009
county	42	cocoyam (Ton)	0	2009
county	42	cocoyam yield	0	2009
county	44	cocoyam	0	2009
county	44	cocoyam (Ton)	0	2009
county	44	cocoyam yield	0	2009
county	45	cocoyam	0	2009
county	45	cocoyam (Ton)	0	2009
county	45	cocoyam yield	0	2009
county	46	cocoyam	0	2009
county	46	cocoyam (Ton)	0	2009
county	46	cocoyam yield	0	2009
county	47	cocoyam	0	2009
county	47	cocoyam (Ton)	0	2009
county	47	cocoyam yield	0	2009
\.


--
-- Name: crop_production pk_crop_production; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.crop_production
    ADD CONSTRAINT pk_crop_production PRIMARY KEY (geo_level, geo_code, geo_version, crop_production);


--
-- PostgreSQL database dump complete
--


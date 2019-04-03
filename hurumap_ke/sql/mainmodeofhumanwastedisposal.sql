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

ALTER TABLE IF EXISTS ONLY public.mainmodeofhumanwastedisposal DROP CONSTRAINT IF EXISTS pk_mainmodeofhumanwastedisposal;
DROP TABLE IF EXISTS public.mainmodeofhumanwastedisposal;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: mainmodeofhumanwastedisposal; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mainmodeofhumanwastedisposal (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main mode of human waste disposal" character varying(128) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: mainmodeofhumanwastedisposal; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mainmodeofhumanwastedisposal (geo_level, geo_code, "main mode of human waste disposal", total, geo_version) FROM stdin;
country	KE	bucket	22828	2009
country	KE	bush	1196509	2009
country	KE	cess pool	29881	2009
country	KE	main sewer	674541	2009
country	KE	other	14104	2009
country	KE	septic tank	299030	2009
county	2	bucket	196	2009
county	2	bush	62342	2009
county	2	cess pool	574	2009
county	2	main sewer	614	2009
county	2	other	166	2009
county	2	septic tank	2723	2009
county	3	bucket	1152	2009
county	3	bush	67545	2009
county	3	cess pool	930	2009
county	3	main sewer	3234	2009
county	3	other	273	2009
county	5	bucket	92	2009
county	5	bush	4822	2009
county	5	cess pool	97	2009
county	5	main sewer	75	2009
county	5	other	78	2009
county	5	septic tank	759	2009
county	7	bucket	308	2009
county	7	bush	46934	2009
county	7	cess pool	150	2009
county	7	main sewer	1121	2009
county	7	other	557	2009
county	7	septic tank	851	2009
county	9	bucket	168	2009
county	9	bush	82437	2009
county	9	cess pool	226	2009
county	9	main sewer	122	2009
county	9	other	404	2009
county	10	bucket	24	2009
county	10	bush	36636	2009
county	10	cess pool	23	2009
county	10	main sewer	22	2009
county	10	other	131	2009
county	10	septic tank	118	2009
county	11	bucket	36	2009
county	11	bush	13739	2009
county	11	cess pool	17	2009
county	11	main sewer	1557	2009
county	11	other	107	2009
county	12	bucket	277	2009
county	12	bush	8257	2009
county	12	cess pool	874	2009
county	12	main sewer	2306	2009
county	12	other	540	2009
county	12	septic tank	6029	2009
county	14	bucket	78	2009
county	14	bush	2188	2009
county	14	cess pool	469	2009
county	14	main sewer	3264	2009
county	14	other	83	2009
county	15	bucket	86	2009
county	15	bush	63204	2009
county	15	cess pool	217	2009
county	15	main sewer	433	2009
county	15	other	216	2009
county	15	septic tank	1269	2009
county	16	bucket	307	2009
county	16	bush	6989	2009
county	16	cess pool	1175	2009
county	16	main sewer	11666	2009
county	16	other	524	2009
county	16	septic tank	8944	2009
county	17	bucket	78	2009
county	17	bush	3811	2009
county	17	cess pool	249	2009
county	17	main sewer	1032	2009
county	17	other	74	2009
county	20	bucket	245	2009
county	20	bush	807	2009
county	20	cess pool	252	2009
county	20	main sewer	1222	2009
county	20	other	147	2009
county	20	septic tank	4985	2009
county	40	bucket	135	2009
county	40	bush	12033	2009
county	40	cess pool	178	2009
county	40	main sewer	545	2009
county	40	other	223	2009
county	21	bucket	116	2009
county	21	bush	415	2009
county	22	bucket	491	2009
county	22	bush	1118	2009
county	22	cess pool	1862	2009
county	22	main sewer	31288	2009
county	22	other	264	2009
county	22	septic tank	44518	2009
county	28	bucket	51	2009
county	28	bush	14465	2009
county	28	cess pool	33	2009
county	28	main sewer	295	2009
county	28	other	34	2009
county	30	bucket	40	2009
county	30	bush	47510	2009
county	30	cess pool	80	2009
county	30	main sewer	296	2009
county	30	other	59	2009
county	30	septic tank	1111	2009
county	31	bucket	84	2009
county	31	bush	11626	2009
county	31	cess pool	194	2009
county	31	main sewer	10324	2009
county	31	other	70	2009
county	34	bucket	232	2009
county	34	bush	44197	2009
county	34	cess pool	478	2009
county	34	main sewer	2407	2009
county	34	other	316	2009
county	34	septic tank	17157	2009
county	35	bucket	129	2009
county	35	bush	10080	2009
county	35	cess pool	107	2009
county	35	main sewer	2695	2009
county	35	other	78	2009
county	36	bucket	96	2009
county	36	bush	8639	2009
county	36	cess pool	144	2009
county	36	main sewer	565	2009
county	36	other	113	2009
county	36	septic tank	546	2009
county	37	bucket	336	2009
county	37	bush	4941	2009
county	1	bucket	3040	2009
county	1	bush	5723	2009
county	1	cess pool	3698	2009
county	1	main sewer	37225	2009
county	1	other	494	2009
county	1	septic tank	35307	2009
county	3	septic tank	14764	2009
county	4	bucket	104	2009
county	4	bush	33291	2009
county	4	cess pool	30	2009
county	4	main sewer	132	2009
county	4	other	103	2009
county	4	septic tank	261	2009
county	6	bucket	31	2009
county	6	bush	3948	2009
county	6	cess pool	185	2009
county	6	main sewer	953	2009
county	6	other	86	2009
county	6	septic tank	3223	2009
county	8	bucket	6660	2009
county	8	bush	67723	2009
county	8	cess pool	59	2009
county	8	main sewer	151	2009
county	8	other	239	2009
county	8	septic tank	329	2009
county	9	septic tank	87	2009
county	11	septic tank	622	2009
county	13	bucket	8	2009
county	13	bush	2541	2009
county	13	cess pool	9	2009
county	13	main sewer	19	2009
county	13	other	26	2009
county	13	septic tank	81	2009
county	14	septic tank	4076	2009
county	17	septic tank	632	2009
county	18	bucket	116	2009
county	18	bush	223	2009
county	18	cess pool	110	2009
county	18	main sewer	346	2009
county	18	other	39	2009
county	18	septic tank	1022	2009
county	19	bucket	196	2009
county	19	bush	486	2009
county	19	cess pool	584	2009
county	19	main sewer	9633	2009
county	19	other	34	2009
county	19	septic tank	7083	2009
county	25	bucket	19	2009
county	25	bush	34746	2009
county	25	cess pool	30	2009
county	25	main sewer	94	2009
county	25	other	33	2009
county	25	septic tank	295	2009
county	40	septic tank	808	2009
county	21	cess pool	419	2009
county	21	main sewer	3967	2009
county	21	other	101	2009
county	21	septic tank	3578	2009
county	23	bucket	67	2009
county	23	bush	100997	2009
county	23	cess pool	133	2009
county	23	main sewer	192	2009
county	23	other	230	2009
county	23	septic tank	252	2009
county	24	bucket	41	2009
county	24	bush	62901	2009
county	24	cess pool	56	2009
county	24	main sewer	132	2009
county	24	other	42	2009
county	24	septic tank	156	2009
county	26	bucket	173	2009
county	26	bush	4346	2009
county	26	cess pool	200	2009
county	26	main sewer	2802	2009
county	26	other	261	2009
county	26	septic tank	1377	2009
county	27	bucket	293	2009
county	27	bush	3374	2009
county	27	cess pool	315	2009
county	27	main sewer	16411	2009
county	27	other	330	2009
county	27	septic tank	6845	2009
county	28	septic tank	333	2009
county	29	bucket	58	2009
county	29	bush	7173	2009
county	29	cess pool	146	2009
county	29	main sewer	599	2009
county	29	other	295	2009
county	29	septic tank	663	2009
county	31	septic tank	1886	2009
county	32	bucket	554	2009
county	32	bush	11262	2009
county	32	cess pool	3148	2009
county	32	main sewer	32864	2009
county	32	other	339	2009
county	32	septic tank	14507	2009
county	33	bucket	122	2009
county	33	bush	81700	2009
county	33	cess pool	122	2009
county	33	main sewer	755	2009
county	33	other	209	2009
county	33	septic tank	1429	2009
county	35	septic tank	1316	2009
county	37	cess pool	466	2009
county	37	main sewer	5272	2009
county	37	other	570	2009
county	37	septic tank	2879	2009
county	38	bucket	55	2009
county	38	bush	908	2009
county	38	cess pool	78	2009
county	38	main sewer	374	2009
county	38	other	98	2009
county	38	septic tank	275	2009
county	39	bucket	303	2009
county	39	bush	8060	2009
county	39	cess pool	282	2009
county	39	main sewer	1936	2009
county	39	other	743	2009
county	39	septic tank	2086	2009
county	41	bucket	154	2009
county	41	bush	39793	2009
county	41	cess pool	199	2009
county	41	main sewer	396	2009
county	41	other	385	2009
county	41	septic tank	512	2009
county	42	bucket	275	2009
county	42	bush	27440	2009
county	42	cess pool	294	2009
county	42	main sewer	10933	2009
county	42	other	758	2009
county	42	septic tank	5513	2009
county	43	bucket	171	2009
county	43	bush	79509	2009
county	43	cess pool	111	2009
county	43	main sewer	1869	2009
county	43	other	481	2009
county	43	septic tank	354	2009
county	44	bucket	215	2009
county	44	bush	59404	2009
county	44	cess pool	125	2009
county	44	main sewer	861	2009
county	44	other	245	2009
county	44	septic tank	595	2009
county	45	bucket	128	2009
county	45	bush	1726	2009
county	45	cess pool	214	2009
county	45	main sewer	1640	2009
county	45	other	304	2009
county	45	septic tank	1191	2009
county	47	bucket	5205	2009
county	47	bush	3962	2009
county	47	cess pool	10489	2009
county	47	main sewer	469830	2009
county	47	other	3180	2009
county	46	bucket	83	2009
county	46	bush	538	2009
county	46	cess pool	50	2009
county	46	main sewer	72	2009
county	46	other	22	2009
county	46	septic tank	273	2009
county	47	septic tank	95410	2009
\.


--
-- Name: mainmodeofhumanwastedisposal pk_mainmodeofhumanwastedisposal; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mainmodeofhumanwastedisposal
    ADD CONSTRAINT pk_mainmodeofhumanwastedisposal PRIMARY KEY (geo_level, geo_code, geo_version, "main mode of human waste disposal");


--
-- PostgreSQL database dump complete
--


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

ALTER TABLE IF EXISTS ONLY public.maintypeofroofingmaterial DROP CONSTRAINT IF EXISTS pk_maintypeofroofingmaterial;
DROP TABLE IF EXISTS public.maintypeofroofingmaterial;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: maintypeofroofingmaterial; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.maintypeofroofingmaterial (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of roofing material" character varying(128) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: maintypeofroofingmaterial; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.maintypeofroofingmaterial (geo_level, geo_code, "main type of roofing material", total, geo_version) FROM stdin;
country	KE	asbestos sheets	197217	2009
county	47	other	1638	2009
country	KE	concrete	311379	2009
country	KE	corrugated iron sheets	6398622	2009
country	KE	grass	1194210	2009
country	KE	makuti	283141	2009
country	KE	mud/dung	69715	2009
country	KE	other	64866	2009
country	KE	tiles	193792	2009
country	KE	tin	25155	2009
county	30	asbestos sheets	1597	2009
county	30	concrete	127	2009
county	30	corrugated iron sheets	64044	2009
county	30	grass	42860	2009
county	30	makuti	223	2009
county	30	mud/dung	68	2009
county	30	other	266	2009
county	30	tiles	1109	2009
county	30	tin	132	2009
county	36	asbestos sheets	2417	2009
county	36	concrete	1280	2009
county	36	corrugated iron sheets	126571	2009
county	36	grass	41326	2009
county	36	makuti	336	2009
county	36	mud/dung	158	2009
county	36	other	48	2009
county	36	tiles	1641	2009
county	36	tin	517	2009
county	39	asbestos sheets	7131	2009
county	39	concrete	363	2009
county	39	corrugated iron sheets	210417	2009
county	39	grass	49928	2009
county	39	makuti	229	2009
county	39	mud/dung	116	2009
county	39	other	351	2009
county	39	tiles	1534	2009
county	39	tin	532	2009
county	40	asbestos sheets	2568	2009
county	40	concrete	150	2009
county	40	corrugated iron sheets	77297	2009
county	40	grass	72762	2009
county	40	makuti	214	2009
county	40	mud/dung	38	2009
county	40	other	153	2009
county	40	tiles	798	2009
county	40	tin	100	2009
county	28	asbestos sheets	890	2009
county	28	concrete	65	2009
county	28	corrugated iron sheets	44911	2009
county	28	grass	30179	2009
county	28	makuti	161	2009
county	28	mud/dung	56	2009
county	28	other	446	2009
county	28	tiles	720	2009
county	28	tin	110	2009
county	14	asbestos sheets	3090	2009
county	14	concrete	710	2009
county	14	corrugated iron sheets	121230	2009
county	14	grass	4325	2009
county	14	makuti	169	2009
county	14	mud/dung	51	2009
county	14	other	54	2009
county	14	tiles	1424	2009
county	14	tin	145	2009
county	7	asbestos sheets	2427	2009
county	7	concrete	220	2009
county	7	corrugated iron sheets	28769	2009
county	7	grass	59267	2009
county	7	makuti	4537	2009
county	7	mud/dung	769	2009
county	7	other	836	2009
county	7	tiles	744	2009
county	7	tin	701	2009
county	43	asbestos sheets	3289	2009
county	43	concrete	131	2009
county	43	corrugated iron sheets	169537	2009
county	43	grass	31181	2009
county	43	makuti	259	2009
county	43	mud/dung	78	2009
county	43	other	43	2009
county	43	tiles	1144	2009
county	43	tin	446	2009
county	11	asbestos sheets	459	2009
county	11	concrete	100	2009
county	11	corrugated iron sheets	19025	2009
county	11	grass	6499	2009
county	11	makuti	1823	2009
county	11	mud/dung	1060	2009
county	11	other	1576	2009
county	11	tiles	208	2009
county	11	tin	555	2009
county	34	asbestos sheets	5520	2009
county	34	concrete	5799	2009
county	34	corrugated iron sheets	115996	2009
county	34	grass	18406	2009
county	34	makuti	693	2009
county	34	mud/dung	17838	2009
county	34	other	1215	2009
county	34	tiles	6884	2009
county	34	tin	712	2009
county	37	asbestos sheets	8605	2009
county	37	concrete	509	2009
county	37	corrugated iron sheets	272421	2009
county	37	grass	70575	2009
county	37	makuti	284	2009
county	37	mud/dung	143	2009
county	37	other	160	2009
county	37	tiles	2066	2009
county	37	tin	612	2009
county	35	asbestos sheets	1568	2009
county	35	concrete	1483	2009
county	35	corrugated iron sheets	103851	2009
county	35	grass	18671	2009
county	35	makuti	134	2009
county	35	mud/dung	92	2009
county	35	other	134	2009
county	35	tiles	1037	2009
county	35	tin	255	2009
county	22	asbestos sheets	8616	2009
county	22	concrete	30984	2009
county	22	corrugated iron sheets	423968	2009
county	22	grass	845	2009
county	22	makuti	540	2009
county	22	mud/dung	119	2009
county	22	other	649	2009
county	22	tiles	15256	2009
county	22	tin	810	2009
county	3	asbestos sheets	5039	2009
county	3	concrete	3498	2009
county	3	corrugated iron sheets	83604	2009
county	3	grass	14458	2009
county	3	makuti	88633	2009
county	3	mud/dung	84	2009
county	3	other	218	2009
county	3	tiles	1978	2009
county	3	tin	339	2009
county	20	asbestos sheets	4011	2009
county	20	concrete	1287	2009
county	20	corrugated iron sheets	146203	2009
county	20	grass	956	2009
county	20	makuti	41	2009
county	20	mud/dung	49	2009
county	20	other	182	2009
county	20	tiles	1155	2009
county	20	tin	97	2009
county	45	asbestos sheets	8598	2009
county	45	concrete	1669	2009
county	45	corrugated iron sheets	225456	2009
county	45	grass	30638	2009
county	45	makuti	443	2009
county	45	mud/dung	124	2009
county	45	other	49	2009
county	45	tiles	1604	2009
county	45	tin	873	2009
county	42	asbestos sheets	6075	2009
county	42	concrete	2370	2009
county	42	corrugated iron sheets	192366	2009
county	42	grass	20515	2009
county	42	makuti	231	2009
county	42	mud/dung	108	2009
county	42	other	144	2009
county	42	tiles	3841	2009
county	42	tin	487	2009
county	15	asbestos sheets	3385	2009
county	15	concrete	298	2009
county	15	corrugated iron sheets	156845	2009
county	15	grass	41198	2009
county	15	makuti	753	2009
county	15	mud/dung	127	2009
county	15	other	264	2009
county	15	tiles	2257	2009
county	15	tin	285	2009
county	2	asbestos sheets	2199	2009
county	2	concrete	250	2009
county	2	corrugated iron sheets	45196	2009
county	2	grass	12240	2009
county	2	makuti	60569	2009
county	2	mud/dung	63	2009
county	2	other	228	2009
county	2	tiles	695	2009
county	2	tin	251	2009
county	31	asbestos sheets	2776	2009
county	31	concrete	1432	2009
county	31	corrugated iron sheets	83142	2009
county	31	grass	9620	2009
county	31	makuti	442	2009
county	31	mud/dung	2627	2009
county	31	other	963	2009
county	31	tiles	1423	2009
county	31	tin	656	2009
county	5	asbestos sheets	656	2009
county	5	concrete	2464	2009
county	5	corrugated iron sheets	6955	2009
county	5	grass	3611	2009
county	5	makuti	7670	2009
county	5	mud/dung	16	2009
county	5	other	495	2009
county	5	tiles	70	2009
county	5	tin	76	2009
county	16	asbestos sheets	4114	2009
county	16	concrete	8066	2009
county	16	corrugated iron sheets	235065	2009
county	16	grass	11777	2009
county	16	makuti	313	2009
county	16	mud/dung	132	2009
county	16	other	284	2009
county	16	tiles	4278	2009
county	16	tin	313	2009
county	17	asbestos sheets	2195	2009
county	17	concrete	276	2009
county	17	corrugated iron sheets	161275	2009
county	17	grass	20425	2009
county	17	makuti	447	2009
county	17	mud/dung	53	2009
county	17	other	68	2009
county	17	tiles	1425	2009
county	17	tin	116	2009
county	9	asbestos sheets	531	2009
county	9	concrete	142	2009
county	9	corrugated iron sheets	14372	2009
county	9	grass	77307	2009
county	9	makuti	31088	2009
county	9	mud/dung	265	2009
county	9	other	1009	2009
county	9	tiles	619	2009
county	9	tin	138	2009
county	10	asbestos sheets	584	2009
county	10	concrete	27	2009
county	10	corrugated iron sheets	15613	2009
county	10	grass	13789	2009
county	10	makuti	6661	2009
county	10	mud/dung	452	2009
county	10	other	18606	2009
county	10	tiles	126	2009
county	10	tin	853	2009
county	12	asbestos sheets	10844	2009
county	12	concrete	1092	2009
county	12	corrugated iron sheets	352331	2009
county	12	grass	10920	2009
county	12	makuti	1133	2009
county	12	mud/dung	375	2009
county	12	other	303	2009
county	12	tiles	2998	2009
county	12	tin	509	2009
county	44	asbestos sheets	4341	2009
county	44	concrete	211	2009
county	44	corrugated iron sheets	136532	2009
county	44	grass	37312	2009
county	44	makuti	175	2009
county	44	mud/dung	86	2009
county	44	other	50	2009
county	44	tiles	1098	2009
county	44	tin	165	2009
county	1	asbestos sheets	8338	2009
county	1	concrete	24683	2009
county	1	corrugated iron sheets	201639	2009
county	1	grass	261	2009
county	1	makuti	11418	2009
county	1	mud/dung	344	2009
county	1	other	332	2009
county	1	tiles	9111	2009
county	1	tin	1128	2009
county	21	asbestos sheets	4132	2009
county	21	concrete	4372	2009
county	21	corrugated iron sheets	228723	2009
county	21	grass	332	2009
county	21	makuti	86	2009
county	21	mud/dung	110	2009
county	21	other	85	2009
county	21	tiles	3005	2009
county	21	tin	1487	2009
county	47	asbestos sheets	30463	2009
county	47	concrete	208148	2009
county	47	corrugated iron sheets	641697	2009
county	47	grass	185	2009
county	47	makuti	711	2009
county	47	mud/dung	283	2009
county	47	tiles	95617	2009
county	47	tin	4373	2009
county	32	asbestos sheets	13084	2009
county	32	concrete	3613	2009
county	32	corrugated iron sheets	354675	2009
county	32	grass	23801	2009
county	32	makuti	661	2009
county	32	mud/dung	547	2009
county	32	other	2999	2009
county	32	tiles	8644	2009
county	32	tin	1073	2009
county	29	asbestos sheets	2110	2009
county	29	concrete	113	2009
county	29	corrugated iron sheets	126222	2009
county	29	grass	22662	2009
county	29	makuti	150	2009
county	29	mud/dung	33	2009
county	29	other	187	2009
county	29	tiles	1189	2009
county	29	tin	223	2009
county	33	asbestos sheets	4998	2009
county	33	concrete	191	2009
county	33	corrugated iron sheets	82259	2009
county	33	grass	56817	2009
county	33	makuti	1942	2009
county	33	mud/dung	18677	2009
county	33	other	2720	2009
county	33	tiles	808	2009
county	33	tin	655	2009
county	46	asbestos sheets	1793	2009
county	46	concrete	218	2009
county	46	corrugated iron sheets	96374	2009
county	46	grass	6561	2009
county	46	makuti	148	2009
county	46	mud/dung	30	2009
county	46	other	10	2009
county	46	tiles	901	2009
county	46	tin	30	2009
county	18	asbestos sheets	2864	2009
county	18	concrete	252	2009
county	18	corrugated iron sheets	135489	2009
county	18	grass	1138	2009
county	18	makuti	102	2009
county	18	mud/dung	22	2009
county	18	other	1679	2009
county	18	tiles	866	2009
county	18	tin	81	2009
county	19	asbestos sheets	4441	2009
county	19	concrete	2375	2009
county	19	corrugated iron sheets	190494	2009
county	19	grass	898	2009
county	19	makuti	148	2009
county	19	mud/dung	47	2009
county	19	other	207	2009
county	19	tiles	2376	2009
county	19	tin	367	2009
county	25	asbestos sheets	439	2009
county	25	concrete	32	2009
county	25	corrugated iron sheets	10747	2009
county	25	grass	5257	2009
county	25	makuti	5576	2009
county	25	mud/dung	17966	2009
county	25	other	5713	2009
county	25	tiles	349	2009
county	25	tin	1152	2009
county	41	asbestos sheets	1861	2009
county	41	concrete	198	2009
county	41	corrugated iron sheets	130934	2009
county	41	grass	63799	2009
county	41	makuti	200	2009
county	41	mud/dung	69	2009
county	41	other	56	2009
county	41	tiles	1224	2009
county	41	tin	323	2009
county	6	asbestos sheets	2098	2009
county	6	concrete	299	2009
county	6	corrugated iron sheets	60246	2009
county	6	grass	4678	2009
county	6	makuti	1064	2009
county	6	mud/dung	82	2009
county	6	other	166	2009
county	6	tiles	884	2009
county	6	tin	522	2009
county	4	asbestos sheets	681	2009
county	4	concrete	19	2009
county	4	corrugated iron sheets	12498	2009
county	4	grass	26680	2009
county	4	makuti	6576	2009
county	4	mud/dung	19	2009
county	4	other	546	2009
county	4	tiles	193	2009
county	4	tin	62	2009
county	13	asbestos sheets	855	2009
county	13	concrete	10	2009
county	13	corrugated iron sheets	21477	2009
county	13	grass	4769	2009
county	13	makuti	65	2009
county	13	mud/dung	10	2009
county	13	other	29	2009
county	13	tiles	159	2009
county	13	tin	15	2009
county	26	asbestos sheets	4836	2009
county	26	concrete	286	2009
county	26	corrugated iron sheets	138404	2009
county	26	grass	22979	2009
county	26	makuti	280	2009
county	26	mud/dung	83	2009
county	26	other	844	2009
county	26	tiles	1721	2009
county	26	tin	199	2009
county	23	asbestos sheets	1447	2009
county	23	concrete	53	2009
county	23	corrugated iron sheets	16925	2009
county	23	grass	42370	2009
county	23	makuti	43605	2009
county	23	mud/dung	195	2009
county	23	other	16104	2009
county	23	tiles	456	2009
county	23	tin	1780	2009
county	27	asbestos sheets	5088	2009
county	27	concrete	1150	2009
county	27	corrugated iron sheets	170243	2009
county	27	grass	15613	2009
county	27	makuti	171	2009
county	27	mud/dung	114	2009
county	27	other	2403	2009
county	27	tiles	6432	2009
county	27	tin	402	2009
county	38	asbestos sheets	3026	2009
county	38	concrete	239	2009
county	38	corrugated iron sheets	113898	2009
county	38	grass	4694	2009
county	38	makuti	90	2009
county	38	mud/dung	46	2009
county	38	other	23	2009
county	38	tiles	891	2009
county	38	tin	334	2009
county	8	asbestos sheets	399	2009
county	8	concrete	93	2009
county	8	corrugated iron sheets	9230	2009
county	8	grass	76293	2009
county	8	makuti	1708	2009
county	8	mud/dung	152	2009
county	8	other	188	2009
county	8	tiles	319	2009
county	8	tin	111	2009
county	24	asbestos sheets	739	2009
county	24	concrete	32	2009
county	24	corrugated iron sheets	23456	2009
county	24	grass	62833	2009
county	24	makuti	239	2009
county	24	mud/dung	5739	2009
county	24	other	143	2009
county	24	tiles	515	2009
county	24	tin	53	2009
\.


--
-- Name: maintypeofroofingmaterial pk_maintypeofroofingmaterial; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.maintypeofroofingmaterial
    ADD CONSTRAINT pk_maintypeofroofingmaterial PRIMARY KEY (geo_level, geo_code, geo_version, "main type of roofing material");


--
-- PostgreSQL database dump complete
--


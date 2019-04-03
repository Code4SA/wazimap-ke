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

ALTER TABLE IF EXISTS ONLY public.voterregistration_2015 DROP CONSTRAINT IF EXISTS pk_voterregistration_2015;
DROP TABLE IF EXISTS public.voterregistration_2015;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: voterregistration_2015; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.voterregistration_2015 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    voterregistration_2015 character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: voterregistration_2015; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.voterregistration_2015 (geo_level, geo_code, voterregistration_2015, total, geo_version) FROM stdin;
county	10	wards	20	2009
county	1	IDs issued	799735	2009
county	1	dead with IDs	84532	2009
county	1	potential voting population with IDs	715203	2009
county	1	registered voters	413069	2009
county	1	additional voters registered	3943	2009
county	1	total registered	417012	2009
county	1	potential voting population not registered	298191	2009
county	1	constituencies	6	2009
county	1	wards	30	2009
county	1	registration centers	196	2009
county	1	bvr kits	62	2009
county	2	IDs issued	394359	2009
county	2	dead with IDs	41684	2009
county	2	potential voting population with IDs	352675	2009
county	2	registered voters	175572	2009
county	2	additional voters registered	1687	2009
county	2	total registered	177259	2009
county	2	potential voting population not registered	175416	2009
county	2	constituencies	4	2009
county	2	wards	20	2009
county	2	registration centers	415	2009
county	2	bvr kits	88	2009
county	3	IDs issued	732701	2009
county	3	dead with IDs	77446	2009
county	3	potential voting population with IDs	655255	2009
county	3	registered voters	336410	2009
county	3	additional voters registered	6338	2009
county	3	total registered	342748	2009
county	3	potential voting population not registered	312507	2009
county	3	constituencies	7	2009
county	3	wards	35	2009
county	3	registration centers	542	2009
county	3	bvr kits	142	2009
county	4	IDs issued	142700	2009
county	4	dead with IDs	15083	2009
county	4	potential voting population with IDs	127617	2009
county	4	registered voters	79641	2009
county	4	additional voters registered	1820	2009
county	4	total registered	81461	2009
county	4	potential voting population not registered	46156	2009
county	4	constituencies	3	2009
county	4	wards	15	2009
county	4	registration centers	243	2009
county	4	bvr kits	88	2009
county	5	IDs issued	84020	2009
county	5	dead with IDs	8881	2009
county	5	potential voting population with IDs	75139	2009
county	5	registered voters	52359	2009
county	5	additional voters registered	39	2009
county	5	total registered	52398	2009
county	5	potential voting population not registered	22741	2009
county	5	constituencies	2	2009
county	5	wards	10	2009
county	5	registration centers	120	2009
county	5	bvr kits	50	2009
county	6	IDs issued	235621	2009
county	6	dead with IDs	24905	2009
county	6	potential voting population with IDs	210716	2009
county	6	registered voters	114189	2009
county	6	additional voters registered	1082	2009
county	6	total registered	115271	2009
county	6	potential voting population not registered	95445	2009
county	6	constituencies	4	2009
county	6	wards	20	2009
county	6	registration centers	276	2009
county	6	bvr kits	92	2009
county	7	IDs issued	189502	2009
county	7	dead with IDs	20030	2009
county	7	potential voting population with IDs	169472	2009
county	7	registered voters	115236	2009
county	7	additional voters registered	905	2009
county	7	total registered	116141	2009
county	7	potential voting population not registered	53331	2009
county	7	constituencies	6	2009
county	7	wards	30	2009
county	7	registration centers	262	2009
county	7	bvr kits	164	2009
county	8	IDs issued	174904	2009
county	8	dead with IDs	18487	2009
county	8	potential voting population with IDs	156417	2009
county	8	registered voters	118245	2009
county	8	additional voters registered	402	2009
county	8	total registered	118647	2009
county	8	potential voting population not registered	37770	2009
county	8	constituencies	6	2009
county	8	wards	30	2009
county	8	registration centers	360	2009
county	8	bvr kits	170	2009
county	9	IDs issued	168122	2009
county	9	dead with IDs	17770	2009
county	9	potential voting population with IDs	150352	2009
county	9	registered voters	120923	2009
county	9	additional voters registered	347	2009
county	9	total registered	121270	2009
county	9	potential voting population not registered	29082	2009
county	9	constituencies	6	2009
county	9	wards	30	2009
county	9	registration centers	265	2009
county	9	bvr kits	152	2009
county	10	IDs issued	173520	2009
county	10	dead with IDs	18341	2009
county	10	potential voting population with IDs	155179	2009
county	10	registered voters	105259	2009
county	10	additional voters registered	477	2009
county	10	total registered	105736	2009
county	10	potential voting population not registered	49443	2009
county	10	constituencies	4	2009
county	10	registration centers	301	2009
county	10	bvr kits	120	2009
county	11	IDs issued	97343	2009
county	11	dead with IDs	10289	2009
county	11	potential voting population with IDs	87054	2009
county	11	registered voters	54587	2009
county	11	additional voters registered	489	2009
county	11	total registered	55076	2009
county	11	potential voting population not registered	31978	2009
county	11	constituencies	2	2009
county	11	wards	10	2009
county	11	registration centers	144	2009
county	11	bvr kits	54	2009
county	12	IDs issued	876779	2009
county	12	dead with IDs	92676	2009
county	12	potential voting population with IDs	784103	2009
county	12	registered voters	489590	2009
county	12	additional voters registered	4460	2009
county	12	total registered	494050	2009
county	12	potential voting population not registered	290053	2009
county	12	constituencies	9	2009
county	12	wards	45	2009
county	12	registration centers	951	2009
county	12	bvr kits	176	2009
county	13	IDs issued	276666	2009
county	13	dead with IDs	29244	2009
county	13	potential voting population with IDs	247422	2009
county	13	registered voters	155904	2009
county	13	additional voters registered	1775	2009
county	13	total registered	157679	2009
county	13	potential voting population not registered	89743	2009
county	13	constituencies	3	2009
county	13	wards	15	2009
county	13	registration centers	567	2009
county	13	bvr kits	60	2009
county	14	IDs issued	436308	2009
county	14	dead with IDs	46118	2009
county	14	potential voting population with IDs	390190	2009
county	14	registered voters	227638	2009
county	14	additional voters registered	1539	2009
county	14	total registered	229177	2009
county	14	potential voting population not registered	161013	2009
county	14	constituencies	4	2009
county	14	wards	20	2009
county	14	registration centers	517	2009
county	14	bvr kits	74	2009
county	15	IDs issued	659598	2009
county	15	dead with IDs	69720	2009
county	15	potential voting population with IDs	589878	2009
county	15	registered voters	324798	2009
county	15	additional voters registered	5169	2009
county	15	total registered	329967	2009
county	15	potential voting population not registered	259911	2009
county	15	constituencies	8	2009
county	15	wards	40	2009
county	15	registration centers	1318	2009
county	15	bvr kits	186	2009
county	16	IDs issued	791515	2009
county	16	dead with IDs	83663	2009
county	16	potential voting population with IDs	707852	2009
county	16	registered voters	445421	2009
county	16	additional voters registered	8118	2009
county	16	total registered	453539	2009
county	16	potential voting population not registered	254313	2009
county	16	constituencies	8	2009
county	16	wards	40	2009
county	16	registration centers	875	2009
county	16	bvr kits	158	2009
county	17	IDs issued	577359	2009
county	17	dead with IDs	61027	2009
county	17	potential voting population with IDs	516332	2009
county	17	registered voters	298474	2009
county	17	additional voters registered	4183	2009
county	17	total registered	302657	2009
county	17	potential voting population not registered	213675	2009
county	17	constituencies	6	2009
county	17	wards	30	2009
county	17	registration centers	862	2009
county	17	bvr kits	126	2009
county	18	IDs issued	428978	2009
county	18	dead with IDs	45343	2009
county	18	potential voting population with IDs	383635	2009
county	18	registered voters	256425	2009
county	18	additional voters registered	2191	2009
county	18	total registered	258616	2009
county	18	potential voting population not registered	125019	2009
county	18	constituencies	5	2009
county	18	wards	25	2009
county	18	registration centers	350	2009
county	18	bvr kits	100	2009
county	19	IDs issued	650846	2009
county	19	dead with IDs	68794	2009
county	19	potential voting population with IDs	582052	2009
county	19	registered voters	357059	2009
county	19	additional voters registered	2136	2009
county	19	total registered	359195	2009
county	19	potential voting population not registered	222857	2009
county	19	constituencies	6	2009
county	19	wards	30	2009
county	19	registration centers	572	2009
county	19	bvr kits	114	2009
county	20	IDs issued	395839	2009
county	20	dead with IDs	41840	2009
county	20	potential voting population with IDs	353999	2009
county	20	registered voters	265567	2009
county	20	additional voters registered	2035	2009
county	20	total registered	267602	2009
county	20	potential voting population not registered	86397	2009
county	20	constituencies	4	2009
county	20	wards	20	2009
county	20	registration centers	315	2009
county	20	bvr kits	78	2009
county	21	IDs issued	679940	2009
county	21	dead with IDs	71870	2009
county	21	potential voting population with IDs	608070	2009
county	21	registered voters	453725	2009
county	21	additional voters registered	2729	2009
county	21	total registered	456454	2009
county	21	potential voting population not registered	151616	2009
county	21	constituencies	7	2009
county	21	wards	35	2009
county	21	registration centers	584	2009
county	21	bvr kits	136	2009
county	22	IDs issued	1326733	2009
county	22	dead with IDs	140236	2009
county	22	potential voting population with IDs	1186497	2009
county	22	registered voters	863199	2009
county	22	additional voters registered	5508	2009
county	22	total registered	868707	2009
county	22	potential voting population not registered	317790	2009
county	22	constituencies	12	2009
county	22	wards	60	2009
county	22	registration centers	551	2009
county	22	bvr kits	182	2009
county	23	IDs issued	263837	2009
county	23	dead with IDs	27888	2009
county	23	potential voting population with IDs	235949	2009
county	23	registered voters	134426	2009
county	23	additional voters registered	2528	2009
county	23	total registered	136954	2009
county	23	potential voting population not registered	98995	2009
county	23	constituencies	6	2009
county	23	wards	30	2009
county	23	registration centers	557	2009
county	23	bvr kits	182	2009
county	24	IDs issued	211273	2009
county	24	dead with IDs	22332	2009
county	24	potential voting population with IDs	188941	2009
county	24	registered voters	121204	2009
county	24	additional voters registered	1899	2009
county	24	total registered	123103	2009
county	24	potential voting population not registered	65838	2009
county	24	constituencies	4	2009
county	24	wards	20	2009
county	24	registration centers	673	2009
county	24	bvr kits	94	2009
county	25	IDs issued	117246	2009
county	25	dead with IDs	12393	2009
county	25	potential voting population with IDs	104853	2009
county	25	registered voters	61150	2009
county	25	additional voters registered	631	2009
county	25	total registered	61781	2009
county	25	potential voting population not registered	43072	2009
county	25	constituencies	3	2009
county	25	wards	15	2009
county	25	registration centers	272	2009
county	25	bvr kits	84	2009
county	26	IDs issued	440582	2009
county	26	dead with IDs	46570	2009
county	26	potential voting population with IDs	394012	2009
county	26	registered voters	245092	2009
county	26	additional voters registered	3122	2009
county	26	total registered	248214	2009
county	26	potential voting population not registered	145798	2009
county	26	constituencies	5	2009
county	26	wards	25	2009
county	26	registration centers	310	2009
county	26	bvr kits	94	2009
county	27	IDs issued	560403	2009
county	27	dead with IDs	59235	2009
county	27	potential voting population with IDs	501168	2009
county	27	registered voters	332177	2009
county	27	additional voters registered	2647	2009
county	27	total registered	334824	2009
county	27	potential voting population not registered	166344	2009
county	27	constituencies	6	2009
county	27	wards	30	2009
county	27	registration centers	467	2009
county	27	bvr kits	112	2009
county	28	IDs issued	249001	2009
county	28	dead with IDs	26319	2009
county	28	potential voting population with IDs	222682	2009
county	28	registered voters	135487	2009
county	28	additional voters registered	1127	2009
county	28	total registered	136614	2009
county	28	potential voting population not registered	86068	2009
county	28	constituencies	4	2009
county	28	wards	20	2009
county	28	registration centers	492	2009
county	28	bvr kits	82	2009
county	29	IDs issued	437378	2009
county	29	dead with IDs	46231	2009
county	29	potential voting population with IDs	391147	2009
county	29	registered voters	265109	2009
county	29	additional voters registered	1655	2009
county	29	total registered	266764	2009
county	29	potential voting population not registered	124383	2009
county	29	constituencies	6	2009
county	29	wards	30	2009
county	29	registration centers	614	2009
county	29	bvr kits	120	2009
county	30	IDs issued	316428	2009
county	30	dead with IDs	33446	2009
county	30	potential voting population with IDs	282982	2009
county	30	registered voters	174136	2009
county	30	additional voters registered	1832	2009
county	30	total registered	175968	2009
county	30	potential voting population not registered	107014	2009
county	30	constituencies	6	2009
county	30	wards	30	2009
county	30	registration centers	855	2009
county	30	bvr kits	140	2009
county	31	IDs issued	294773	2009
county	31	dead with IDs	31158	2009
county	31	potential voting population with IDs	263615	2009
county	31	registered voters	174131	2009
county	31	additional voters registered	802	2009
county	31	total registered	174933	2009
county	31	potential voting population not registered	88682	2009
county	31	constituencies	3	2009
county	31	wards	15	2009
county	31	registration centers	325	2009
county	31	bvr kits	76	2009
county	32	IDs issued	1101467	2009
county	32	dead with IDs	116425	2009
county	32	potential voting population with IDs	985042	2009
county	32	registered voters	696594	2009
county	32	additional voters registered	5774	2009
county	32	total registered	702368	2009
county	32	potential voting population not registered	282674	2009
county	32	constituencies	11	2009
county	32	wards	55	2009
county	32	registration centers	899	2009
county	32	bvr kits	202	2009
county	33	IDs issued	383478	2009
county	33	dead with IDs	40534	2009
county	33	potential voting population with IDs	342944	2009
county	33	registered voters	263365	2009
county	33	additional voters registered	1340	2009
county	33	total registered	264705	2009
county	33	potential voting population not registered	78239	2009
county	33	constituencies	6	2009
county	33	wards	30	2009
county	33	registration centers	529	2009
county	33	bvr kits	140	2009
county	34	IDs issued	386120	2009
county	34	dead with IDs	40813	2009
county	34	potential voting population with IDs	345307	2009
county	34	registered voters	306977	2009
county	34	additional voters registered	2147	2009
county	34	total registered	309124	2009
county	34	potential voting population not registered	36183	2009
county	34	constituencies	5	2009
county	34	wards	25	2009
county	34	registration centers	393	2009
county	34	bvr kits	120	2009
county	35	IDs issued	630836	2009
county	35	dead with IDs	66679	2009
county	35	potential voting population with IDs	564157	2009
county	35	registered voters	290947	2009
county	35	additional voters registered	2516	2009
county	35	total registered	293463	2009
county	35	potential voting population not registered	270694	2009
county	35	constituencies	6	2009
county	35	wards	30	2009
county	35	registration centers	524	2009
county	35	bvr kits	116	2009
county	36	IDs issued	291127	2009
county	36	dead with IDs	30772	2009
county	36	potential voting population with IDs	260355	2009
county	36	registered voters	253060	2009
county	36	additional voters registered	0	2009
county	36	total registered	253060	2009
county	36	potential voting population not registered	7295	2009
county	36	constituencies	5	2009
county	36	wards	25	2009
county	36	registration centers	566	2009
county	36	bvr kits	100	2009
county	37	IDs issued	1088915	2009
county	37	dead with IDs	115098	2009
county	37	potential voting population with IDs	973817	2009
county	37	registered voters	568151	2009
county	37	additional voters registered	10680	2009
county	37	total registered	578831	2009
county	37	potential voting population not registered	394986	2009
county	37	constituencies	12	2009
county	37	wards	60	2009
county	37	registration centers	904	2009
county	37	bvr kits	228	2009
county	38	IDs issued	467772	2009
county	38	dead with IDs	49444	2009
county	38	potential voting population with IDs	418328	2009
county	38	registered voters	202887	2009
county	38	additional voters registered	4152	2009
county	38	total registered	207039	2009
county	38	potential voting population not registered	211289	2009
county	38	constituencies	5	2009
county	38	wards	25	2009
county	38	registration centers	343	2009
county	38	bvr kits	52	2009
county	39	IDs issued	775554	2009
county	39	dead with IDs	81976	2009
county	39	potential voting population with IDs	693578	2009
county	39	registered voters	412018	2009
county	39	additional voters registered	7131	2009
county	39	total registered	419149	2009
county	39	potential voting population not registered	274429	2009
county	39	constituencies	9	2009
county	39	wards	45	2009
county	39	registration centers	804	2009
county	39	bvr kits	174	2009
county	40	IDs issued	484548	2009
county	40	dead with IDs	51217	2009
county	40	potential voting population with IDs	433331	2009
county	40	registered voters	251517	2009
county	40	additional voters registered	5777	2009
county	40	total registered	257294	2009
county	40	potential voting population not registered	176037	2009
county	40	constituencies	7	2009
county	40	wards	35	2009
county	40	registration centers	527	2009
county	40	bvr kits	130	2009
county	41	IDs issued	588004	2009
county	41	dead with IDs	62152	2009
county	41	potential voting population with IDs	525852	2009
county	41	registered voters	312441	2009
county	41	additional voters registered	5002	2009
county	41	total registered	317443	2009
county	41	potential voting population not registered	208409	2009
county	41	constituencies	6	2009
county	41	wards	30	2009
county	41	registration centers	572	2009
county	41	bvr kits	120	2009
county	42	IDs issued	738345	2009
county	42	dead with IDs	78043	2009
county	42	potential voting population with IDs	660302	2009
county	42	registered voters	386606	2009
county	42	additional voters registered	8340	2009
county	42	total registered	394946	2009
county	42	potential voting population not registered	265356	2009
county	42	constituencies	7	2009
county	42	wards	35	2009
county	42	registration centers	528	2009
county	42	bvr kits	124	2009
county	43	IDs issued	590090	2009
county	43	dead with IDs	62373	2009
county	43	potential voting population with IDs	527717	2009
county	43	registered voters	326505	2009
county	43	additional voters registered	5836	2009
county	43	total registered	332341	2009
county	43	potential voting population not registered	195376	2009
county	43	constituencies	8	2009
county	43	wards	40	2009
county	43	registration centers	816	2009
county	43	bvr kits	154	2009
county	44	IDs issued	508570	2009
county	44	dead with IDs	53756	2009
county	44	potential voting population with IDs	454814	2009
county	44	registered voters	283997	2009
county	44	additional voters registered	2854	2009
county	44	total registered	286851	2009
county	44	potential voting population not registered	167963	2009
county	44	constituencies	8	2009
county	44	wards	40	2009
county	44	registration centers	593	2009
county	44	bvr kits	152	2009
county	45	IDs issued	782373	2009
county	45	dead with IDs	82697	2009
county	45	potential voting population with IDs	699676	2009
county	45	registered voters	413161	2009
county	45	additional voters registered	6069	2009
county	45	total registered	419230	2009
county	45	potential voting population not registered	280446	2009
county	45	constituencies	9	2009
county	45	wards	45	2009
county	45	registration centers	748	2009
county	45	bvr kits	132	2009
county	46	IDs issued	385851	2009
county	46	dead with IDs	40784	2009
county	46	potential voting population with IDs	345067	2009
county	46	registered voters	219428	2009
county	46	additional voters registered	3312	2009
county	46	total registered	222740	2009
county	46	potential voting population not registered	122327	2009
county	46	constituencies	4	2009
county	46	wards	20	2009
county	46	registration centers	332	2009
county	46	bvr kits	78	2009
county	47	IDs issued	3159291	2009
county	47	dead with IDs	333937	2009
county	47	potential voting population with IDs	2825354	2009
county	47	registered voters	1732288	2009
county	47	additional voters registered	12271	2009
county	47	total registered	1744559	2009
county	47	potential voting population not registered	1080795	2009
county	47	constituencies	17	2009
county	47	wards	85	2009
county	47	registration centers	330	2009
county	47	bvr kits	178	2009
country	KE	IDs issued	25551628	2009
country	KE	dead with IDs	2700809	2009
country	KE	potential voting population with IDs	22850819	2009
country	KE	registered voters	14388781	2009
country	KE	additional voters registered	156816	2009
country	KE	total registered	14545597	2009
country	KE	potential voting population not registered	8303239	2009
country	KE	constituencies	290	2009
country	KE	wards	1450	2009
country	KE	registration centers	24559	2009
country	KE	bvr kits	5756	2009
\.


--
-- Name: voterregistration_2015 pk_voterregistration_2015; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.voterregistration_2015
    ADD CONSTRAINT pk_voterregistration_2015 PRIMARY KEY (geo_level, geo_code, geo_version, voterregistration_2015);


--
-- PostgreSQL database dump complete
--


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

ALTER TABLE IF EXISTS ONLY public.voterregistration_2017 DROP CONSTRAINT IF EXISTS pk_voterregistration_2017;
DROP TABLE IF EXISTS public.voterregistration_2017;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: voterregistration_2017; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.voterregistration_2017 (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    voterregistration_2017 character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: voterregistration_2017; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.voterregistration_2017 (geo_level, geo_code, voterregistration_2017, total, geo_version) FROM stdin;
county	1	Actual Dead with IDs	3473	2009
county	1	additional voters registered	163211	2009
county	1	bvr kits	96	2009
county	1	constituencies	6	2009
county	1	Dead with IDs	94359	2009
county	1	female voters	274702	2009
county	1	IDs issued	892702	2009
county	1	male voters	305521	2009
county	1	polling stations	934	2009
county	1	potential voting population not registered	343544	2009
county	1	potential voting population with Ids	798343	2009
county	1	registered voters	413069	2009
county	1	registration centers	196	2009
county	1	total registered	580223	2009
county	1	wards	30	2009
county	2	Actual Dead with IDs	1042	2009
county	2	additional voters registered	103782	2009
county	2	bvr kits	122	2009
county	2	constituencies	4	2009
county	2	Dead with IDs	46804	2009
county	2	female voters	134863	2009
county	2	IDs issued	442804	2009
county	2	male voters	146178	2009
county	2	polling stations	612	2009
county	2	potential voting population not registered	187662	2009
county	2	potential voting population with Ids	396000	2009
county	2	registered voters	175572	2009
county	2	registration centers	415	2009
county	2	total registered	281041	2009
county	2	wards	20	2009
county	3	Actual Dead with IDs	2432	2009
county	3	additional voters registered	165320	2009
county	3	bvr kits	194	2009
county	3	constituencies	7	2009
county	3	Dead with IDs	86227	2009
county	3	female voters	244470	2009
county	3	IDs issued	815768	2009
county	3	male voters	263598	2009
county	3	polling stations	988	2009
county	3	potential voting population not registered	342923	2009
county	3	potential voting population with Ids	729541	2009
county	3	registered voters	336410	2009
county	3	registration centers	542	2009
county	3	total registered	508068	2009
county	3	wards	35	2009
county	4	Actual Dead with IDs	372	2009
county	4	additional voters registered	36866	2009
county	4	bvr kits	112	2009
county	4	constituencies	3	2009
county	4	Dead with IDs	16370	2009
county	4	female voters	56659	2009
county	4	IDs issued	154876	2009
county	4	male voters	61668	2009
county	4	polling stations	307	2009
county	4	potential voting population not registered	41831	2009
county	4	potential voting population with Ids	138506	2009
county	4	registered voters	79641	2009
county	4	registration centers	243	2009
county	4	total registered	118327	2009
county	4	wards	15	2009
county	5	Actual Dead with IDs	347	2009
county	5	additional voters registered	17378	2009
county	5	bvr kits	63	2009
county	5	constituencies	2	2009
county	5	Dead with IDs	10233	2009
county	5	female voters	31222	2009
county	5	IDs issued	96812	2009
county	5	male voters	38554	2009
county	5	polling stations	167	2009
county	5	potential voting population not registered	29835	2009
county	5	potential voting population with Ids	86579	2009
county	5	registered voters	52359	2009
county	5	registration centers	120	2009
county	5	total registered	69776	2009
county	5	wards	10	2009
county	6	Actual Dead with IDs	2229	2009
county	6	additional voters registered	40445	2009
county	6	bvr kits	124	2009
county	6	constituencies	4	2009
county	6	Dead with IDs	26919	2009
county	6	female voters	69210	2009
county	6	IDs issued	254675	2009
county	6	male voters	86506	2009
county	6	polling stations	354	2009
county	6	potential voting population not registered	102036	2009
county	6	potential voting population with Ids	227756	2009
county	6	registered voters	114189	2009
county	6	registration centers	276	2009
county	6	total registered	155716	2009
county	6	wards	20	2009
county	7	Actual Dead with IDs	149	2009
county	7	additional voters registered	47209	2009
county	7	bvr kits	208	2009
county	7	constituencies	6	2009
county	7	Dead with IDs	21985	2009
county	7	female voters	75440	2009
county	7	IDs issued	207991	2009
county	7	male voters	87910	2009
county	7	polling stations	381	2009
county	7	potential voting population not registered	61136	2009
county	7	potential voting population with Ids	186006	2009
county	7	registered voters	115236	2009
county	7	registration centers	262	2009
county	7	total registered	163350	2009
county	7	wards	30	2009
county	8	Actual Dead with IDs	793	2009
county	8	additional voters registered	44255	2009
county	8	bvr kits	219	2009
county	8	constituencies	6	2009
county	8	Dead with IDs	20816	2009
county	8	female voters	74283	2009
county	8	IDs issued	196938	2009
county	8	male voters	88619	2009
county	8	polling stations	434	2009
county	8	potential voting population not registered	49966	2009
county	8	potential voting population with Ids	176122	2009
county	8	registered voters	118245	2009
county	8	registration centers	360	2009
county	8	total registered	162902	2009
county	8	wards	30	2009
county	9	Actual Dead with IDs	789	2009
county	17	bvr kits	178	2009
county	9	additional voters registered	54372	2009
county	9	bvr kits	198	2009
county	9	constituencies	6	2009
county	9	Dead with IDs	21397	2009
county	9	female voters	80856	2009
county	9	IDs issued	202434	2009
county	9	male voters	94786	2009
county	9	polling stations	41	2009
county	9	potential voting population not registered	55881	2009
county	9	potential voting population with Ids	181037	2009
county	9	registered voters	120923	2009
county	9	registration centers	265	2009
county	9	total registered	175642	2009
county	9	wards	30	2009
county	10	Actual Dead with IDs	407	2009
county	10	additional voters registered	35972	2009
county	10	bvr kits	154	2009
county	10	constituencies	4	2009
county	10	Dead with IDs	19913	2009
county	10	female voters	64318	2009
county	10	IDs issued	188390	2009
county	10	male voters	77390	2009
county	10	polling stations	384	2009
county	39	IDs issued	845172	2009
county	10	potential voting population not registered	43729	2009
county	10	potential voting population with Ids	168477	2009
county	10	registered voters	105259	2009
county	10	registration centers	301	2009
county	10	total registered	141708	2009
county	10	wards	20	2009
county	11	Actual Dead with IDs	122	2009
county	11	additional voters registered	20262	2009
county	11	bvr kits	70	2009
county	11	constituencies	2	2009
county	11	Dead with IDs	10988	2009
county	11	female voters	33805	2009
county	11	IDs issued	103955	2009
county	11	male voters	41533	2009
county	11	polling stations	195	2009
county	11	potential voting population not registered	33243	2009
county	11	potential voting population with Ids	92967	2009
county	11	registered voters	54587	2009
county	11	registration centers	144	2009
county	11	total registered	75338	2009
county	11	wards	10	2009
county	12	Actual Dead with IDs	2169	2009
county	12	additional voters registered	208430	2009
county	12	bvr kits	240	2009
county	12	constituencies	9	2009
county	12	Dead with IDs	102845	2009
county	12	female voters	320458	2009
county	12	IDs issued	972991	2009
county	12	male voters	382022	2009
county	12	polling stations	1473	2009
county	12	potential voting population not registered	327571	2009
county	12	potential voting population with Ids	870146	2009
county	12	registered voters	489590	2009
county	12	registration centers	951	2009
county	12	total registered	702480	2009
county	12	wards	45	2009
county	13	Actual Dead with IDs	1505	2009
county	13	additional voters registered	55475	2009
county	13	bvr kits	82	2009
county	13	constituencies	3	2009
county	13	Dead with IDs	32758	2009
county	13	female voters	96115	2009
county	13	IDs issued	309916	2009
county	13	male voters	117039	2009
county	13	polling stations	625	2009
county	13	potential voting population not registered	106644	2009
county	13	potential voting population with Ids	277158	2009
county	13	registered voters	155904	2009
county	13	registration centers	567	2009
county	13	total registered	213154	2009
county	13	wards	15	2009
county	14	Actual Dead with IDs	3526	2009
county	14	additional voters registered	80291	2009
county	14	bvr kits	105	2009
county	14	constituencies	4	2009
county	14	Dead with IDs	50752	2009
county	14	female voters	143369	2009
county	14	IDs issued	480150	2009
county	14	male voters	166099	2009
county	14	polling stations	710	2009
county	14	potential voting population not registered	184374	2009
county	14	potential voting population with Ids	429398	2009
county	14	registered voters	227638	2009
county	14	registration centers	517	2009
county	14	total registered	309468	2009
county	14	wards	20	2009
county	15	Actual Dead with IDs	2306	2009
county	15	additional voters registered	144545	2009
county	15	bvr kits	251	2009
county	15	constituencies	8	2009
county	15	Dead with IDs	77407	2009
county	15	female voters	217502	2009
county	15	IDs issued	732331	2009
county	15	male voters	257010	2009
county	15	polling stations	1454	2009
county	15	potential voting population not registered	260558	2009
county	15	potential voting population with Ids	654924	2009
county	15	registered voters	324798	2009
county	15	registration centers	1318	2009
county	15	total registered	474512	2009
county	15	wards	40	2009
county	16	Actual Dead with IDs	4767	2009
county	16	additional voters registered	166715	2009
county	16	bvr kits	222	2009
county	16	constituencies	8	2009
county	16	Dead with IDs	90113	2009
county	16	female voters	273213	2009
county	16	IDs issued	852534	2009
county	16	male voters	347041	2009
county	16	polling stations	1332	2009
county	16	potential voting population not registered	249573	2009
county	16	potential voting population with Ids	762421	2009
county	16	registered voters	445421	2009
county	16	registration centers	875	2009
county	16	total registered	620254	2009
county	16	wards	40	2009
county	17	Actual Dead with IDs	1580	2009
county	17	additional voters registered	120653	2009
county	17	constituencies	6	2009
county	17	Dead with IDs	66555	2009
county	17	female voters	183486	2009
county	17	IDs issued	629663	2009
county	17	male voters	239824	2009
county	17	polling stations	1060	2009
county	17	potential voting population not registered	220764	2009
county	17	potential voting population with Ids	563108	2009
county	17	registered voters	298474	2009
county	17	registration centers	862	2009
county	17	total registered	423310	2009
county	17	wards	30	2009
county	18	Actual Dead with IDs	2504	2009
county	18	additional voters registered	77018	2009
county	18	bvr kits	144	2009
county	18	constituencies	5	2009
county	18	Dead with IDs	49525	2009
county	18	female voters	159678	2009
county	18	IDs issued	468541	2009
county	18	male voters	175956	2009
county	18	polling stations	654	2009
county	18	potential voting population not registered	135811	2009
county	18	potential voting population with Ids	419016	2009
county	18	registered voters	256425	2009
county	18	registration centers	350	2009
county	18	total registered	335634	2009
county	18	wards	25	2009
county	19	Actual Dead with IDs	4536	2009
county	19	additional voters registered	97754	2009
county	19	bvr kits	152	2009
county	19	constituencies	6	2009
county	19	Dead with IDs	74664	2009
county	19	female voters	211452	2009
county	19	IDs issued	706380	2009
county	19	male voters	245497	2009
county	19	polling stations	917	2009
county	19	potential voting population not registered	240834	2009
county	19	potential voting population with Ids	631716	2009
county	19	registered voters	357059	2009
county	19	registration centers	572	2009
county	19	total registered	456949	2009
county	19	wards	30	2009
county	20	Actual Dead with IDs	3472	2009
county	20	additional voters registered	82234	2009
county	20	bvr kits	102	2009
county	20	constituencies	4	2009
county	20	Dead with IDs	45999	2009
county	20	female voters	165776	2009
county	20	IDs issued	435186	2009
county	20	male voters	184060	2009
county	20	polling stations	659	2009
county	20	potential voting population not registered	98167	2009
county	20	potential voting population with Ids	389187	2009
county	20	registered voters	265567	2009
county	20	registration centers	315	2009
county	20	total registered	349836	2009
county	20	wards	20	2009
county	21	Actual Dead with IDs	7763	2009
county	21	additional voters registered	130672	2009
county	21	bvr kits	178	2009
county	21	constituencies	7	2009
county	21	Dead with IDs	78677	2009
county	21	female voters	257301	2009
county	21	IDs issued	744340	2009
county	21	male voters	329825	2009
county	21	polling stations	1131	2009
county	21	potential voting population not registered	176612	2009
county	21	potential voting population with Ids	665663	2009
county	21	registered voters	453725	2009
county	21	registration centers	584	2009
county	21	total registered	587126	2009
county	21	wards	35	2009
county	22	Actual Dead with IDs	5743	2009
county	22	additional voters registered	312213	2009
county	22	bvr kits	266	2009
county	22	constituencies	12	2009
county	22	Dead with IDs	156188	2009
county	22	female voters	588220	2009
county	22	IDs issued	1477657	2009
county	22	male voters	592700	2009
county	22	polling stations	1963	2009
county	22	potential voting population not registered	373870	2009
county	22	potential voting population with Ids	1321469	2009
county	22	registered voters	863199	2009
county	22	registration centers	551	2009
county	22	total registered	1180920	2009
county	22	wards	60	2009
county	23	Actual Dead with IDs	49	2009
county	23	additional voters registered	54481	2009
county	23	bvr kits	226	2009
county	23	constituencies	6	2009
county	23	Dead with IDs	29996	2009
county	23	female voters	93939	2009
county	23	IDs issued	283782	2009
county	23	male voters	97496	2009
county	23	polling stations	644	2009
county	23	potential voting population not registered	100034	2009
county	23	potential voting population with Ids	253786	2009
county	23	registered voters	134426	2009
county	23	registration centers	557	2009
county	23	total registered	191435	2009
county	23	wards	30	2009
county	24	Actual Dead with IDs	159	2009
county	24	additional voters registered	57129	2009
county	24	bvr kits	126	2009
county	24	constituencies	4	2009
county	24	Dead with IDs	25580	2009
county	24	female voters	86755	2009
county	24	IDs issued	242004	2009
county	24	male voters	93477	2009
county	24	polling stations	712	2009
county	24	potential voting population not registered	81657	2009
county	24	potential voting population with Ids	216424	2009
county	24	registered voters	121204	2009
county	24	registration centers	673	2009
county	24	total registered	180232	2009
county	24	wards	20	2009
county	25	Actual Dead with IDs	153	2009
county	25	additional voters registered	21006	2009
county	25	bvr kits	105	2009
county	25	constituencies	3	2009
county	25	Dead with IDs	13635	2009
county	25	female voters	40614	2009
county	25	IDs issued	128996	2009
county	25	male voters	42173	2009
county	25	polling stations	284	2009
county	25	potential voting population not registered	45975	2009
county	25	potential voting population with Ids	115361	2009
county	25	registered voters	61150	2009
county	25	registration centers	272	2009
county	25	total registered	82787	2009
county	25	wards	15	2009
county	26	Actual Dead with IDs	1128	2009
county	26	additional voters registered	91408	2009
county	26	bvr kits	131	2009
county	26	constituencies	5	2009
county	26	Dead with IDs	51398	2009
county	26	female voters	154822	2009
county	26	IDs issued	486259	2009
county	26	male voters	184800	2009
county	26	polling stations	639	2009
county	26	potential voting population not registered	160382	2009
county	26	potential voting population with Ids	434861	2009
county	26	registered voters	245092	2009
county	26	registration centers	310	2009
county	26	total registered	339622	2009
county	26	wards	25	2009
county	27	Actual Dead with IDs	788	2009
county	27	additional voters registered	115231	2009
county	27	bvr kits	159	2009
county	27	constituencies	6	2009
county	27	Dead with IDs	65368	2009
county	27	female voters	212103	2009
county	27	IDs issued	618426	2009
county	27	male voters	237952	2009
county	27	polling stations	868	2009
county	27	potential voting population not registered	201919	2009
county	27	potential voting population with Ids	553058	2009
county	27	registered voters	332177	2009
county	27	registration centers	467	2009
county	27	total registered	450055	2009
county	27	wards	30	2009
county	28	Actual Dead with IDs	835	2009
county	28	additional voters registered	44050	2009
county	28	bvr kits	116	2009
county	28	constituencies	4	2009
county	28	Dead with IDs	28425	2009
county	28	female voters	80414	2009
county	28	IDs issued	268922	2009
county	28	male voters	100250	2009
county	28	polling stations	529	2009
county	28	potential voting population not registered	95794	2009
county	28	potential voting population with Ids	240497	2009
county	28	registered voters	135487	2009
county	28	registration centers	492	2009
county	28	total registered	180664	2009
county	28	wards	20	2009
county	29	Actual Dead with IDs	1326	2009
county	29	additional voters registered	79243	2009
county	29	bvr kits	160	2009
county	29	constituencies	6	2009
county	29	Dead with IDs	50127	2009
county	29	female voters	157513	2009
county	29	IDs issued	474234	2009
county	29	male voters	188494	2009
county	29	polling stations	796	2009
county	29	potential voting population not registered	144441	2009
county	29	potential voting population with Ids	424107	2009
county	29	registered voters	265109	2009
county	29	registration centers	614	2009
county	29	total registered	346007	2009
county	29	wards	30	2009
county	30	Actual Dead with IDs	740	2009
county	30	additional voters registered	56290	2009
county	30	bvr kits	186	2009
county	30	constituencies	6	2009
county	30	Dead with IDs	35867	2009
county	30	female voters	105296	2009
county	30	IDs issued	339329	2009
county	30	male voters	126962	2009
county	30	polling stations	892	2009
county	30	potential voting population not registered	113156	2009
county	30	potential voting population with Ids	303462	2009
county	30	registered voters	174136	2009
county	30	registration centers	855	2009
county	30	total registered	232258	2009
county	30	wards	30	2009
county	31	Actual Dead with IDs	1893	2009
county	31	additional voters registered	71554	2009
county	31	bvr kits	97	2009
county	31	constituencies	3	2009
county	31	Dead with IDs	34451	2009
county	31	female voters	115255	2009
county	31	IDs issued	325928	2009
county	31	male voters	131232	2009
county	31	polling stations	531	2009
county	31	potential voting population not registered	98151	2009
county	31	potential voting population with Ids	291477	2009
county	31	registered voters	174131	2009
county	31	registration centers	325	2009
county	31	total registered	246487	2009
county	31	wards	15	2009
county	32	Actual Dead with IDs	6735	2009
county	32	additional voters registered	247250	2009
county	32	bvr kits	288	2009
county	32	constituencies	11	2009
county	32	Dead with IDs	128399	2009
county	32	female voters	455972	2009
county	32	IDs issued	1214746	2009
county	32	male voters	493646	2009
county	32	polling stations	1806	2009
county	32	potential voting population not registered	313435	2009
county	32	potential voting population with Ids	1086347	2009
county	32	registered voters	696594	2009
county	32	registration centers	899	2009
county	32	total registered	949618	2009
county	32	wards	55	2009
county	33	Actual Dead with IDs	917	2009
county	33	additional voters registered	77025	2009
county	33	bvr kits	187	2009
county	33	constituencies	6	2009
county	33	Dead with IDs	44589	2009
county	33	female voters	161414	2009
county	33	IDs issued	421847	2009
county	33	male voters	180316	2009
county	33	polling stations	750	2009
county	33	potential voting population not registered	93481	2009
county	33	potential voting population with Ids	377258	2009
county	33	registered voters	263365	2009
county	33	registration centers	529	2009
county	33	total registered	341730	2009
county	33	wards	30	2009
county	34	Actual Dead with IDs	915	2009
county	34	additional voters registered	102069	2009
county	34	bvr kits	157	2009
county	34	constituencies	5	2009
county	34	Dead with IDs	44820	2009
county	34	female voters	201125	2009
county	34	IDs issued	424027	2009
county	34	male voters	210068	2009
county	34	polling stations	797	2009
county	34	potential voting population not registered	49674	2009
county	34	potential voting population with Ids	379207	2009
county	34	registered voters	306977	2009
county	34	registration centers	393	2009
county	34	total registered	411193	2009
county	34	wards	25	2009
county	35	Actual Dead with IDs	2193	2009
county	35	additional voters registered	82205	2009
county	35	bvr kits	157	2009
county	35	constituencies	6	2009
county	35	Dead with IDs	59187	2009
county	35	female voters	170537	2009
county	35	IDs issued	559950	2009
county	35	male voters	205131	2009
county	35	polling stations	780	2009
county	35	potential voting population not registered	186819	2009
county	35	potential voting population with Ids	500763	2009
county	35	registered voters	290947	2009
county	35	registration centers	524	2009
county	35	total registered	375668	2009
county	35	wards	30	2009
county	36	Actual Dead with IDs	2906	2009
county	36	additional voters registered	68952	2009
county	36	bvr kits	130	2009
county	36	constituencies	5	2009
county	36	Dead with IDs	46090	2009
county	36	female voters	144088	2009
county	36	IDs issued	436041	2009
county	36	male voters	177924	2009
county	36	polling stations	728	2009
county	36	potential voting population not registered	119455	2009
county	36	potential voting population with Ids	389951	2009
county	36	registered voters	253060	2009
county	36	registration centers	566	2009
county	36	total registered	322012	2009
county	36	wards	25	2009
county	37	Actual Dead with IDs	3319	2009
county	37	additional voters registered	164905	2009
county	37	bvr kits	295	2009
county	37	constituencies	12	2009
county	37	Dead with IDs	124077	2009
county	37	female voters	341994	2009
county	37	IDs issued	1173861	2009
county	37	male voters	401742	2009
county	37	polling stations	1497	2009
county	37	potential voting population not registered	417033	2009
county	37	potential voting population with Ids	1049784	2009
county	37	registered voters	568151	2009
county	37	registration centers	904	2009
county	37	total registered	743736	2009
county	37	wards	60	2009
county	38	Actual Dead with IDs	553	2009
county	38	additional voters registered	65370	2009
county	38	bvr kits	100	2009
county	38	constituencies	5	2009
county	38	Dead with IDs	52507	2009
county	38	female voters	117663	2009
county	38	IDs issued	496755	2009
county	38	male voters	154746	2009
county	38	polling stations	548	2009
county	38	potential voting population not registered	219610	2009
county	38	potential voting population with Ids	444248	2009
county	38	registered voters	202887	2009
county	38	registration centers	343	2009
county	38	total registered	272409	2009
county	38	wards	25	2009
county	39	Actual Dead with IDs	1081	2009
county	39	additional voters registered	140701	2009
county	39	bvr kits	219	2009
county	39	constituencies	9	2009
county	39	Dead with IDs	89335	2009
county	39	female voters	253744	2009
county	39	male voters	306106	2009
county	39	polling stations	1186	2009
county	39	potential voting population not registered	284381	2009
county	39	potential voting population with Ids	755837	2009
county	39	registered voters	412018	2009
county	39	registration centers	804	2009
county	39	total registered	559850	2009
county	39	wards	45	2009
county	40	Actual Dead with IDs	2016	2009
county	40	additional voters registered	93754	2009
county	40	bvr kits	169	2009
county	40	constituencies	7	2009
county	40	Dead with IDs	56273	2009
county	40	female voters	161377	2009
county	40	IDs issued	532383	2009
county	40	male voters	189671	2009
county	40	polling stations	760	2009
county	40	potential voting population not registered	186500	2009
county	40	potential voting population with Ids	476110	2009
county	40	registered voters	251517	2009
county	40	registration centers	527	2009
county	40	total registered	351048	2009
county	40	wards	35	2009
county	41	Actual Dead with IDs	624	2009
county	41	additional voters registered	140510	2009
county	41	bvr kits	157	2009
county	41	constituencies	6	2009
county	41	Dead with IDs	68256	2009
county	41	female voters	203293	2009
county	41	IDs issued	645754	2009
county	41	male voters	254660	2009
county	41	polling stations	916	2009
county	41	potential voting population not registered	198205	2009
county	41	potential voting population with Ids	577498	2009
county	41	registered voters	312441	2009
county	41	registration centers	572	2009
county	41	total registered	457953	2009
county	41	wards	30	2009
county	42	Actual Dead with IDs	1167	2009
county	42	additional voters registered	144264	2009
county	42	bvr kits	166	2009
county	42	constituencies	7	2009
county	42	Dead with IDs	85509	2009
county	42	female voters	249549	2009
county	42	IDs issued	808977	2009
county	42	male voters	289661	2009
county	42	polling stations	127	2009
county	42	potential voting population not registered	273457	2009
county	42	potential voting population with Ids	723468	2009
county	42	registered voters	386606	2009
county	42	registration centers	528	2009
county	42	total registered	539210	2009
county	42	wards	35	2009
county	43	Actual Dead with IDs	1424	2009
county	43	additional voters registered	144534	2009
county	43	bvr kits	206	2009
county	43	constituencies	8	2009
county	43	Dead with IDs	67570	2009
county	43	female voters	221918	2009
county	43	IDs issued	639261	2009
county	43	male voters	254957	2009
county	43	polling stations	1062	2009
county	43	potential voting population not registered	186153	2009
county	43	potential voting population with Ids	571691	2009
county	43	registered voters	326505	2009
county	43	registration centers	816	2009
county	43	total registered	476875	2009
county	43	wards	40	2009
county	44	Actual Dead with IDs	848	2009
county	44	additional voters registered	101782	2009
county	44	bvr kits	201	2009
county	44	constituencies	8	2009
county	44	Dead with IDs	59447	2009
county	44	female voters	181752	2009
county	44	IDs issued	562412	2009
county	44	male voters	206881	2009
county	44	polling stations	826	2009
county	44	potential voting population not registered	176510	2009
county	44	potential voting population with Ids	502965	2009
county	44	registered voters	283997	2009
county	44	registration centers	593	2009
county	44	total registered	388633	2009
county	44	wards	40	2009
county	45	Actual Dead with IDs	1755	2009
county	45	additional voters registered	127350	2009
county	45	bvr kits	201	2009
county	45	constituencies	9	2009
county	45	Dead with IDs	90003	2009
county	45	female voters	247857	2009
county	45	IDs issued	851495	2009
county	45	male voters	298723	2009
county	45	polling stations	1126	2009
county	45	potential voting population not registered	304631	2009
county	45	potential voting population with Ids	761492	2009
county	45	registered voters	413161	2009
county	45	registration centers	748	2009
county	45	total registered	546580	2009
county	45	wards	45	2009
county	46	Actual Dead with IDs	1980	2009
county	46	additional voters registered	56113	2009
county	46	bvr kits	99	2009
county	46	constituencies	4	2009
county	46	Dead with IDs	44229	2009
county	46	female voters	127427	2009
county	46	IDs issued	418437	2009
county	46	male voters	151426	2009
county	46	polling stations	553	2009
county	46	potential voting population not registered	135938	2009
county	46	potential voting population with Ids	374208	2009
county	46	registered voters	219428	2009
county	46	registration centers	332	2009
county	46	total registered	278853	2009
county	46	wards	20	2009
county	47	Actual Dead with IDs	4747	2009
county	47	additional voters registered	506294	2009
county	47	bvr kits	275	2009
county	47	constituencies	17	2009
county	47	Dead with IDs	368756	2009
county	47	female voters	1096371	2009
county	47	IDs issued	3488708	2009
county	47	male voters	1154482	2009
county	47	polling stations	3378	2009
county	47	potential voting population not registered	1276912	2009
county	47	potential voting population with Ids	3119952	2009
county	47	registered voters	1732288	2009
county	47	registration centers	330	2009
county	47	total registered	2250853	2009
county	47	wards	85	2009
country	KE	Actual Dead with IDs	92277	2009
country	KE	additional voters registered	5055905	2009
country	KE	bvr kits	7793	2009
country	KE	constituencies	290	2009
country	KE	Dead with IDs	2965386	2009
country	KE	female voters	9139190	2009
country	KE	IDs issued	28054740	2009
country	KE	male voters	10462312	2009
country	KE	polling stations	39510	2009
country	KE	potential voting population not registered	9139269	2009
country	KE	potential voting population with Ids	25089354	2009
country	KE	registered voters	14386144	2009
country	KE	registration centers	24559	2009
country	KE	total registered	19601502	2009
country	KE	wards	15936252	2009
\.


--
-- Name: voterregistration_2017 pk_voterregistration_2017; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.voterregistration_2017
    ADD CONSTRAINT pk_voterregistration_2017 PRIMARY KEY (geo_level, geo_code, geo_version, voterregistration_2017);


--
-- PostgreSQL database dump complete
--


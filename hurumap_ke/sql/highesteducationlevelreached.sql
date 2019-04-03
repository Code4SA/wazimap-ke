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

ALTER TABLE IF EXISTS ONLY public.highesteducationlevelreached DROP CONSTRAINT IF EXISTS pk_highesteducationlevelreached;
DROP TABLE IF EXISTS public.highesteducationlevelreached;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: highesteducationlevelreached; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.highesteducationlevelreached (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "highest education level reached" character varying(128) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: highesteducationlevelreached; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.highesteducationlevelreached (geo_level, geo_code, "highest education level reached", total, geo_version) FROM stdin;
county	16	madrassa	317	2009
county	22	basic literacy	4525	2009
county	22	madrassa	344	2009
county	22	none	97649	2009
county	22	pre-primary	95423	2009
county	22	primary	740539	2009
county	22	secondary	437294	2009
county	22	tertiary	112740	2009
county	22	university	45680	2009
county	22	youth polytechnic	8262	2009
county	28	basic literacy	419	2009
county	28	madrassa	17	2009
county	28	none	43642	2009
county	28	pre-primary	26192	2009
county	28	primary	201577	2009
county	28	secondary	49082	2009
county	28	tertiary	8409	2009
county	28	university	2197	2009
county	28	youth polytechnic	1505	2009
county	30	basic literacy	551	2009
county	30	madrassa	52	2009
county	30	none	140043	2009
county	30	pre-primary	38957	2009
county	30	primary	237325	2009
county	30	secondary	63547	2009
county	30	tertiary	14654	2009
county	30	university	3896	2009
county	30	youth polytechnic	1233	2009
county	34	basic literacy	1205	2009
county	34	madrassa	504	2009
county	34	none	144098	2009
county	34	pre-primary	45718	2009
county	34	primary	253654	2009
county	34	secondary	116920	2009
county	34	tertiary	31561	2009
county	34	university	19186	2009
county	34	youth polytechnic	2772	2009
county	35	basic literacy	647	2009
county	35	madrassa	80	2009
county	35	none	52661	2009
county	35	pre-primary	38252	2009
county	35	primary	322587	2009
county	35	secondary	92317	2009
county	35	tertiary	17826	2009
county	35	university	5298	2009
county	35	youth polytechnic	2104	2009
county	36	basic literacy	1015	2009
county	36	madrassa	79	2009
county	36	none	87597	2009
county	36	pre-primary	54658	2009
county	36	primary	503574	2009
county	36	secondary	126073	2009
county	36	tertiary	20942	2009
county	36	university	5388	2009
county	36	youth polytechnic	2921	2009
county	37	basic literacy	1599	2009
county	37	madrassa	230	2009
county	37	none	211448	2009
county	37	pre-primary	108891	2009
county	37	primary	883557	2009
county	37	secondary	224519	2009
county	37	tertiary	32942	2009
county	7	basic literacy	423	2009
county	7	madrassa	39662	2009
county	7	none	379051	2009
county	7	pre-primary	8775	2009
county	7	primary	112347	2009
county	7	secondary	24421	2009
county	7	tertiary	3095	2009
county	7	university	2461	2009
county	11	basic literacy	125	2009
county	11	madrassa	1076	2009
county	11	none	54105	2009
county	11	pre-primary	9751	2009
county	11	primary	45724	2009
county	11	secondary	13589	2009
county	11	tertiary	2672	2009
county	11	university	931	2009
county	11	youth polytechnic	346	2009
county	14	basic literacy	1542	2009
county	14	madrassa	49	2009
county	14	none	56517	2009
county	14	pre-primary	18718	2009
county	14	primary	281293	2009
county	14	secondary	90932	2009
county	14	tertiary	17140	2009
county	14	university	5031	2009
county	14	youth polytechnic	3784	2009
county	15	basic literacy	2185	2009
county	15	madrassa	234	2009
county	15	none	168726	2009
county	15	pre-primary	57502	2009
county	15	primary	555091	2009
county	15	secondary	94245	2009
county	15	tertiary	17251	2009
county	20	basic literacy	1627	2009
county	20	madrassa	118	2009
county	20	none	45033	2009
county	20	pre-primary	21983	2009
county	20	primary	288571	2009
county	20	secondary	112656	2009
county	20	tertiary	15505	2009
county	20	university	4706	2009
county	40	basic literacy	640	2009
county	40	madrassa	120	2009
county	40	none	105650	2009
county	40	pre-primary	51408	2009
county	40	primary	400807	2009
county	40	secondary	85031	2009
county	40	tertiary	11784	2009
county	40	university	3753	2009
county	40	youth polytechnic	1661	2009
county	37	university	13329	2009
county	37	youth polytechnic	3156	2009
county	39	basic literacy	1333	2009
county	39	madrassa	114	2009
county	39	none	143688	2009
county	39	pre-primary	86555	2009
county	39	primary	731968	2009
county	39	secondary	217310	2009
county	39	tertiary	30024	2009
county	39	university	9351	2009
county	39	youth polytechnic	2641	2009
county	42	basic literacy	1491	2009
county	42	madrassa	164	2009
county	42	none	75700	2009
county	42	pre-primary	83062	2009
county	42	primary	481966	2009
county	42	secondary	167723	2009
county	42	tertiary	32808	2009
county	42	university	16264	2009
county	42	youth polytechnic	3004	2009
county	43	basic literacy	774	2009
county	43	madrassa	42	2009
county	43	none	87603	2009
county	43	pre-primary	91107	2009
county	43	primary	527361	2009
county	43	secondary	125211	2009
county	43	tertiary	16259	2009
county	43	university	5845	2009
county	43	youth polytechnic	1704	2009
county	45	basic literacy	1179	2009
county	45	madrassa	65	2009
county	45	none	118497	2009
county	45	pre-primary	86681	2009
county	45	primary	610717	2009
county	45	secondary	270662	2009
county	45	tertiary	30346	2009
county	45	university	10923	2009
county	45	youth polytechnic	4269	2009
county	21	basic literacy	3154	2009
county	21	madrassa	82	2009
county	21	none	80762	2009
county	21	pre-primary	33452	2009
county	21	primary	504390	2009
county	21	secondary	172117	2009
county	21	tertiary	24308	2009
county	21	university	6684	2009
county	21	youth polytechnic	3557	2009
county	29	basic literacy	814	2009
county	29	madrassa	93	2009
county	29	none	70364	2009
county	29	pre-primary	61589	2009
county	29	primary	419103	2009
county	29	secondary	100002	2009
county	29	tertiary	18298	2009
county	29	university	6194	2009
county	29	youth polytechnic	2010	2009
county	31	basic literacy	861	2009
county	31	madrassa	66	2009
county	31	none	61541	2009
county	31	pre-primary	27328	2009
county	31	primary	186821	2009
county	31	secondary	69127	2009
county	31	tertiary	11054	2009
county	31	university	3948	2009
county	31	youth polytechnic	1283	2009
county	32	basic literacy	2828	2009
county	32	madrassa	256	2009
county	32	none	139539	2009
county	32	pre-primary	116217	2009
county	32	primary	780918	2009
county	32	secondary	320381	2009
county	32	tertiary	61662	2009
county	32	university	23976	2009
county	32	youth polytechnic	3844	2009
county	33	basic literacy	572	2009
county	33	madrassa	84	2009
county	33	none	231573	2009
county	33	pre-primary	55205	2009
county	33	primary	376147	2009
county	33	secondary	66146	2009
county	33	tertiary	10601	2009
county	33	university	3052	2009
county	33	youth polytechnic	1070	2009
county	44	basic literacy	708	2009
county	44	madrassa	247	2009
county	44	none	90415	2009
county	44	pre-primary	81616	2009
county	44	primary	508578	2009
county	44	secondary	102617	2009
county	44	tertiary	14584	2009
county	44	university	5458	2009
county	44	youth polytechnic	1524	2009
county	46	basic literacy	455	2009
county	46	madrassa	13	2009
county	46	none	41178	2009
county	46	pre-primary	33258	2009
county	46	primary	233911	2009
county	46	secondary	113806	2009
county	46	tertiary	12102	2009
county	46	university	3656	2009
county	46	youth polytechnic	1483	2009
county	47	basic literacy	8300	2009
county	47	madrassa	9065	2009
county	47	none	162504	2009
county	47	pre-primary	162520	2009
county	47	primary	1074033	2009
county	47	secondary	944148	2009
county	47	tertiary	287649	2009
county	47	university	192337	2009
county	47	youth polytechnic	21803	2009
county	2	basic literacy	844	2009
county	2	madrassa	2446	2009
county	2	none	168879	2009
county	2	pre-primary	53274	2009
county	2	primary	290116	2009
county	2	secondary	49182	2009
county	2	tertiary	8370	2009
county	2	university	1992	2009
county	2	youth polytechnic	1503	2009
county	5	basic literacy	152	2009
county	5	madrassa	3004	2009
county	5	none	19460	2009
county	5	pre-primary	7812	2009
county	5	primary	48223	2009
county	5	secondary	10587	2009
county	5	tertiary	1480	2009
county	5	university	415	2009
county	5	youth polytechnic	131	2009
county	9	basic literacy	480	2009
county	9	madrassa	98975	2009
county	9	none	560334	2009
county	9	pre-primary	10411	2009
county	9	primary	235580	2009
county	9	secondary	40413	2009
county	9	tertiary	2519	2009
county	9	university	1424	2009
county	9	youth polytechnic	202	2009
county	10	basic literacy	468	2009
county	10	madrassa	3119	2009
county	10	none	163550	2009
county	10	pre-primary	12989	2009
county	10	primary	67450	2009
county	10	secondary	12665	2009
county	10	tertiary	2135	2009
county	10	university	956	2009
county	10	youth polytechnic	308	2009
county	12	basic literacy	4144	2009
county	12	madrassa	225	2009
county	12	none	226905	2009
county	12	pre-primary	71376	2009
county	12	primary	881763	2009
county	12	secondary	209839	2009
county	12	tertiary	39147	2009
county	12	university	11930	2009
county	15	university	4469	2009
county	15	youth polytechnic	12216	2009
county	16	basic literacy	4649	2009
county	16	none	99498	2009
county	16	pre-primary	51475	2009
county	16	primary	578689	2009
county	16	secondary	203414	2009
county	16	tertiary	37277	2009
county	16	university	12437	2009
county	16	youth polytechnic	18698	2009
county	17	basic literacy	2637	2009
county	17	madrassa	187	2009
county	17	none	99661	2009
county	17	pre-primary	39584	2009
county	17	primary	496042	2009
county	17	secondary	131811	2009
county	17	tertiary	19235	2009
county	17	university	4683	2009
county	18	basic literacy	1658	2009
county	18	madrassa	50	2009
county	18	none	47332	2009
county	18	pre-primary	40067	2009
county	18	primary	336716	2009
county	18	secondary	104653	2009
county	18	tertiary	12800	2009
county	18	university	3610	2009
county	18	youth polytechnic	1360	2009
county	19	basic literacy	2531	2009
county	19	madrassa	118	2009
county	19	none	42333	2009
county	19	pre-primary	36274	2009
county	23	basic literacy	840	2009
county	23	madrassa	424	2009
county	23	none	614643	2009
county	23	pre-primary	24486	2009
county	23	primary	121093	2009
county	23	secondary	22393	2009
county	23	tertiary	3776	2009
county	23	university	1489	2009
county	23	youth polytechnic	351	2009
county	24	basic literacy	153	2009
county	24	madrassa	23	2009
county	24	none	219742	2009
county	24	pre-primary	33514	2009
county	24	primary	172096	2009
county	24	secondary	22097	2009
county	24	tertiary	4564	2009
county	24	university	1407	2009
county	24	youth polytechnic	582	2009
county	26	basic literacy	774	2009
county	26	madrassa	110	2009
county	26	none	98644	2009
county	26	pre-primary	55557	2009
county	26	primary	425993	2009
county	26	secondary	126449	2009
county	26	tertiary	16326	2009
county	26	university	6412	2009
county	26	youth polytechnic	1173	2009
county	27	basic literacy	1428	2009
county	27	madrassa	182	2009
county	27	none	78641	2009
county	27	pre-primary	63490	2009
county	27	primary	422770	2009
county	27	secondary	174412	2009
county	27	tertiary	36479	2009
county	27	university	26454	2009
county	27	youth polytechnic	2778	2009
county	38	basic literacy	1328	2009
county	38	madrassa	60	2009
county	38	none	58485	2009
county	38	pre-primary	32971	2009
county	38	primary	309369	2009
county	38	secondary	82617	2009
county	38	tertiary	11985	2009
county	38	university	3907	2009
county	38	youth polytechnic	1481	2009
county	41	basic literacy	948	2009
county	41	madrassa	90	2009
county	41	none	102506	2009
county	41	pre-primary	59001	2009
county	41	primary	471530	2009
county	1	basic literacy	2705	2009
county	1	madrassa	4431	2009
county	1	none	84459	2009
county	1	pre-primary	59153	2009
county	1	primary	384904	2009
county	1	secondary	226497	2009
county	1	tertiary	56992	2009
county	1	university	20239	2009
county	1	youth polytechnic	6844	2009
county	3	basic literacy	1638	2009
county	3	madrassa	1606	2009
county	3	none	249459	2009
county	3	pre-primary	106855	2009
county	3	primary	505502	2009
county	3	secondary	96901	2009
county	3	tertiary	17830	2009
county	3	university	5475	2009
county	3	youth polytechnic	2978	2009
county	4	basic literacy	316	2009
county	4	madrassa	4046	2009
county	4	none	98600	2009
county	4	pre-primary	16129	2009
county	4	primary	77008	2009
county	4	secondary	11941	2009
county	4	tertiary	1773	2009
county	4	university	336	2009
county	4	youth polytechnic	261	2009
county	6	basic literacy	1004	2009
county	6	madrassa	293	2009
county	6	none	30876	2009
county	6	pre-primary	16611	2009
county	6	primary	151123	2009
county	6	secondary	40858	2009
county	6	tertiary	8478	2009
county	6	university	1776	2009
county	6	youth polytechnic	3917	2009
county	7	youth polytechnic	238	2009
county	8	basic literacy	213	2009
county	8	madrassa	62342	2009
county	8	none	399405	2009
county	8	pre-primary	6177	2009
county	8	primary	118167	2009
county	8	secondary	20917	2009
county	8	tertiary	2174	2009
county	8	university	1311	2009
county	8	youth polytechnic	164	2009
county	12	youth polytechnic	10256	2009
county	13	basic literacy	145	2009
county	13	madrassa	7	2009
county	13	none	21263	2009
county	13	pre-primary	6519	2009
county	13	primary	74126	2009
county	13	secondary	11148	2009
county	13	tertiary	2290	2009
county	13	university	522	2009
county	13	youth polytechnic	1482	2009
county	17	youth polytechnic	11600	2009
county	19	primary	345189	2009
county	19	secondary	175626	2009
county	19	tertiary	28956	2009
county	19	university	9881	2009
county	19	youth polytechnic	3896	2009
county	20	youth polytechnic	1691	2009
county	25	basic literacy	303	2009
county	25	madrassa	10	2009
county	25	none	117716	2009
county	25	pre-primary	16489	2009
county	25	primary	50422	2009
county	25	secondary	9428	2009
county	25	tertiary	2270	2009
county	25	university	666	2009
county	25	youth polytechnic	291	2009
county	41	secondary	100596	2009
county	41	tertiary	12358	2009
county	41	university	4967	2009
county	41	youth polytechnic	1367	2009
country	KE	basic literacy	136660	2009
country	KE	madrassa	469842	2009
country	KE	none	12983950	2009
country	KE	pre-primary	4630064	2009
country	KE	primary	35652860	2009
country	KE	secondary	12168640	2009
country	KE	tertiary	2370860	2009
country	KE	university	1052604	2009
country	KE	youth polytechnic	323408	2009
\.


--
-- Name: highesteducationlevelreached pk_highesteducationlevelreached; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.highesteducationlevelreached
    ADD CONSTRAINT pk_highesteducationlevelreached PRIMARY KEY (geo_level, geo_code, geo_version, "highest education level reached");


--
-- PostgreSQL database dump complete
--


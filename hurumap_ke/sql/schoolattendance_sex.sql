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

ALTER TABLE IF EXISTS ONLY public.schoolattendance_sex DROP CONSTRAINT IF EXISTS pk_schoolattendance_sex;
DROP TABLE IF EXISTS public.schoolattendance_sex;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schoolattendance_sex; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schoolattendance_sex (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "school attendance" character varying(128) NOT NULL,
    sex character varying(128) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: schoolattendance_sex; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.schoolattendance_sex (geo_level, geo_code, "school attendance", sex, total, geo_version) FROM stdin;
country	KE	at school	male	14579976	2009
country	KE	left school	male	14149928	2009
country	KE	never attended	male	5317852	2009
country	KE	unspecified	male	774668	2009
country	KE	at school	female	13646608	2009
country	KE	left school	female	14315758	2009
country	KE	never attended	female	6798986	2009
country	KE	unspecified	female	587326	2009
county	2	at school	male	121867	2009
county	2	left school	male	94236	2009
county	2	never attended	male	59303	2009
county	2	unspecified	male	5619	2009
county	3	at school	male	223846	2009
county	3	left school	male	166620	2009
county	3	never attended	male	75632	2009
county	3	unspecified	male	11678	2009
county	5	at school	male	18413	2009
county	5	left school	male	20403	2009
county	5	never attended	male	8152	2009
county	5	unspecified	male	1411	2009
county	7	at school	male	84871	2009
county	7	left school	male	29944	2009
county	7	never attended	male	184831	2009
county	7	unspecified	male	9350	2009
county	9	at school	male	191251	2009
county	9	left school	male	39629	2009
county	9	never attended	male	284712	2009
county	9	unspecified	male	7371	2009
county	10	at school	male	40742	2009
county	10	left school	male	15698	2009
county	10	never attended	male	78596	2009
county	10	unspecified	male	2730	2009
county	11	at school	male	23221	2009
county	11	left school	male	16982	2009
county	11	never attended	male	24643	2009
county	11	unspecified	male	1835	2009
county	12	at school	male	270391	2009
county	12	left school	male	346260	2009
county	12	never attended	male	86133	2009
county	12	unspecified	male	17947	2009
county	14	at school	male	90118	2009
county	14	left school	male	120224	2009
county	14	never attended	male	19457	2009
county	14	unspecified	male	5114	2009
county	15	at school	male	214922	2009
county	15	left school	male	148151	2009
county	15	never attended	male	61923	2009
county	15	unspecified	male	7734	2009
county	16	at school	male	212080	2009
county	16	left school	male	243109	2009
county	16	never attended	male	35574	2009
county	16	unspecified	male	8508	2009
county	17	at school	male	187877	2009
county	17	left school	male	161764	2009
county	17	never attended	male	37005	2009
county	17	unspecified	male	6320	2009
county	18	at school	male	123517	2009
county	18	left school	male	125212	2009
county	18	never attended	male	15650	2009
county	18	unspecified	male	3653	2009
county	20	at school	male	85265	2009
county	20	left school	male	140821	2009
county	20	never attended	male	13709	2009
county	20	unspecified	male	3608	2009
county	40	at school	male	156476	2009
county	40	left school	male	116293	2009
county	40	never attended	male	35187	2009
county	40	unspecified	male	8596	2009
county	21	at school	male	163644	2009
county	21	left school	male	206083	2009
county	21	never attended	male	25445	2009
county	21	unspecified	male	6179	2009
county	22	at school	male	286280	2009
county	22	left school	male	436421	2009
county	22	never attended	male	31046	2009
county	22	unspecified	male	10298	2009
county	28	at school	male	82359	2009
county	28	left school	male	63332	2009
county	28	never attended	male	16867	2009
county	28	unspecified	male	2774	2009
county	29	at school	male	159912	2009
county	29	left school	male	147090	2009
county	29	never attended	male	25949	2009
county	29	unspecified	male	6296	2009
county	30	at school	male	111827	2009
county	30	left school	male	71451	2009
county	30	never attended	male	64688	2009
county	30	unspecified	male	3808	2009
county	31	at school	male	75202	2009
county	31	left school	male	78029	2009
county	31	never attended	male	23345	2009
county	31	unspecified	male	4817	2009
county	32	at school	male	318392	2009
county	32	left school	male	345560	2009
county	32	never attended	male	51628	2009
county	32	unspecified	male	15948	2009
county	33	at school	male	157552	2009
county	33	left school	male	114296	2009
county	33	never attended	male	94955	2009
county	33	unspecified	male	10761	2009
county	34	at school	male	119125	2009
county	34	left school	male	127006	2009
county	34	never attended	male	57831	2009
county	34	unspecified	male	7413	2009
county	35	at school	male	124769	2009
county	35	left school	male	120947	2009
county	35	never attended	male	18477	2009
county	35	unspecified	male	6290	2009
county	36	at school	male	195328	2009
county	36	left school	male	164091	2009
county	36	never attended	male	29742	2009
county	36	unspecified	male	8706	2009
county	37	at school	male	333524	2009
county	37	left school	male	284668	2009
county	37	never attended	male	77912	2009
county	37	unspecified	male	17310	2009
county	39	at school	male	298735	2009
county	39	left school	male	230738	2009
county	39	never attended	male	55238	2009
county	39	unspecified	male	11858	2009
county	42	at school	male	203863	2009
county	42	left school	male	185579	2009
county	42	never attended	male	22354	2009
county	42	unspecified	male	13580	2009
county	43	at school	male	225500	2009
county	43	left school	male	150338	2009
county	43	never attended	male	24705	2009
county	43	unspecified	male	8574	2009
county	44	at school	male	209890	2009
county	44	left school	male	142722	2009
county	44	never attended	male	28076	2009
county	44	unspecified	male	9238	2009
county	45	at school	male	278075	2009
county	45	left school	male	213054	2009
county	45	never attended	male	35868	2009
county	45	unspecified	male	12197	2009
county	46	at school	male	104631	2009
county	46	left school	male	89613	2009
county	46	never attended	male	13706	2009
county	46	unspecified	male	3152	2009
county	47	at school	male	484427	2009
county	47	left school	male	898849	2009
county	47	never attended	male	58191	2009
county	47	unspecified	male	38858	2009
county	3	at school	female	207161	2009
county	3	left school	female	139580	2009
county	3	never attended	female	160240	2009
county	3	unspecified	female	10035	2009
county	4	at school	male	36950	2009
county	4	left school	male	24632	2009
county	4	never attended	male	41606	2009
county	4	unspecified	male	1874	2009
county	5	at school	female	16424	2009
county	5	left school	female	16398	2009
county	5	never attended	female	10275	2009
county	5	unspecified	female	910	2009
county	6	at school	male	51013	2009
county	6	left school	male	64912	2009
county	6	never attended	male	11038	2009
county	6	unspecified	male	6933	2009
county	7	at school	female	57967	2009
county	7	left school	female	18269	2009
county	7	never attended	female	181825	2009
county	7	unspecified	female	6721	2009
county	8	at school	male	99266	2009
county	8	left school	male	29665	2009
county	8	never attended	male	203669	2009
county	8	unspecified	male	6481	2009
county	11	at school	female	20948	2009
county	11	left school	female	12996	2009
county	11	never attended	female	28452	2009
county	11	unspecified	female	781	2009
county	13	at school	male	25395	2009
county	13	left school	male	22532	2009
county	13	never attended	male	7848	2009
county	13	unspecified	male	775	2009
county	14	at school	female	89150	2009
county	14	left school	female	118331	2009
county	14	never attended	female	31447	2009
county	14	unspecified	female	3895	2009
county	15	at school	female	207249	2009
county	15	left school	female	171827	2009
county	15	never attended	female	99252	2009
county	16	at school	female	199404	2009
county	16	left school	female	250784	2009
county	16	never attended	female	55578	2009
county	16	unspecified	female	6301	2009
county	17	at school	female	177951	2009
county	19	at school	male	125874	2009
county	19	left school	male	172081	2009
county	19	never attended	male	13014	2009
county	19	unspecified	male	5916	2009
county	20	at school	female	82572	2009
county	20	left school	female	137731	2009
county	20	never attended	female	27844	2009
county	20	unspecified	female	2330	2009
county	25	at school	male	31103	2009
county	25	left school	male	13646	2009
county	25	never attended	male	52707	2009
county	25	unspecified	male	2116	2009
county	40	at school	female	148301	2009
county	40	left school	female	132907	2009
county	40	never attended	female	59575	2009
county	40	unspecified	female	7312	2009
county	22	at school	female	283008	2009
county	22	left school	female	436749	2009
county	22	never attended	female	53833	2009
county	22	unspecified	female	9288	2009
county	23	at school	male	74742	2009
county	23	left school	male	23498	2009
county	23	never attended	male	305995	2009
county	23	unspecified	male	10031	2009
county	24	at school	male	82804	2009
county	24	left school	male	39942	2009
county	24	never attended	male	98870	2009
county	24	unspecified	male	3995	2009
county	26	at school	male	168612	2009
county	26	left school	male	148491	2009
county	26	never attended	male	39269	2009
county	26	unspecified	male	8003	2009
county	27	at school	male	186421	2009
county	27	left school	male	180459	2009
county	27	never attended	male	27666	2009
county	27	unspecified	male	13308	2009
county	28	at school	female	79688	2009
county	28	left school	female	63509	2009
county	28	never attended	female	22608	2009
county	28	unspecified	female	2575	2009
county	30	at school	female	105437	2009
county	30	left school	female	70993	2009
county	30	never attended	female	71016	2009
county	30	unspecified	female	2967	2009
county	31	at school	female	70751	2009
county	31	left school	female	76011	2009
county	31	never attended	female	34000	2009
county	31	unspecified	female	2901	2009
county	34	at school	female	110961	2009
county	34	left school	female	113589	2009
county	34	never attended	female	80594	2009
county	35	at school	female	116375	2009
county	35	left school	female	116015	2009
county	35	never attended	female	27234	2009
county	35	unspecified	female	4817	2009
county	36	at school	female	183299	2009
county	36	left school	female	170290	2009
county	36	never attended	female	44822	2009
county	36	unspecified	female	8193	2009
county	37	at school	female	325039	2009
county	37	left school	female	321980	2009
county	37	never attended	female	110074	2009
county	37	unspecified	female	14562	2009
county	38	at school	male	113537	2009
county	38	left school	male	97565	2009
county	38	never attended	male	21596	2009
county	38	unspecified	male	4129	2009
county	39	at school	female	284434	2009
county	39	left school	female	263111	2009
county	39	never attended	female	70870	2009
county	39	unspecified	female	10888	2009
county	41	at school	male	171257	2009
county	41	left school	male	145636	2009
county	41	never attended	male	30181	2009
county	41	unspecified	male	8267	2009
county	42	at school	female	192916	2009
county	42	left school	female	202528	2009
county	42	never attended	female	42216	2009
county	42	unspecified	female	7958	2009
county	43	at school	female	202153	2009
county	43	left school	female	188355	2009
county	43	never attended	female	49350	2009
county	43	unspecified	female	8702	2009
county	45	at school	female	261919	2009
county	45	left school	female	259422	2009
county	45	never attended	female	64583	2009
county	45	unspecified	female	11741	2009
county	1	at school	male	145122	2009
county	1	left school	male	256692	2009
county	1	never attended	male	28937	2009
county	1	unspecified	male	15975	2009
county	1	at school	female	140747	2009
county	1	left school	female	217170	2009
county	1	never attended	female	46086	2009
county	1	unspecified	female	9433	2009
county	2	at school	female	112517	2009
county	2	left school	female	78655	2009
county	2	never attended	female	103738	2009
county	2	unspecified	female	4536	2009
county	4	at school	female	30439	2009
county	4	left school	female	19622	2009
county	4	never attended	female	54593	2009
county	4	unspecified	female	1438	2009
county	6	at school	female	48372	2009
county	6	left school	female	59282	2009
county	6	never attended	female	17187	2009
county	6	unspecified	female	3256	2009
county	8	at school	female	66236	2009
county	8	left school	female	16005	2009
county	8	never attended	female	189056	2009
county	8	unspecified	female	3802	2009
county	9	at school	female	135154	2009
county	9	left school	female	23368	2009
county	9	never attended	female	265814	2009
county	9	unspecified	female	5085	2009
county	10	at school	female	33918	2009
county	10	left school	female	9586	2009
county	10	never attended	female	82752	2009
county	10	unspecified	female	1384	2009
county	12	at school	female	270674	2009
county	12	left school	female	338970	2009
county	12	never attended	female	117716	2009
county	12	unspecified	female	13754	2009
county	13	at school	female	25098	2009
county	13	left school	female	23094	2009
county	13	never attended	female	12256	2009
county	13	unspecified	female	729	2009
county	15	unspecified	female	5277	2009
county	17	left school	female	177543	2009
county	17	never attended	female	57343	2009
county	17	unspecified	female	4009	2009
county	18	at school	female	118192	2009
county	18	left school	female	133197	2009
county	18	never attended	female	26387	2009
county	18	unspecified	female	3222	2009
county	19	at school	female	120154	2009
county	19	left school	female	183327	2009
county	19	never attended	female	24983	2009
county	19	unspecified	female	3409	2009
county	25	at school	female	25014	2009
county	25	left school	female	9974	2009
county	25	never attended	female	63516	2009
county	25	unspecified	female	1092	2009
county	21	at school	female	155549	2009
county	21	left school	female	221178	2009
county	21	never attended	female	46992	2009
county	21	unspecified	female	5019	2009
county	23	at school	female	58804	2009
county	23	left school	female	17211	2009
county	23	never attended	female	297540	2009
county	23	unspecified	female	7564	2009
county	24	at school	female	75523	2009
county	24	left school	female	35690	2009
county	24	never attended	female	114560	2009
county	24	unspecified	female	3617	2009
county	26	at school	female	161152	2009
county	26	left school	female	153592	2009
county	26	never attended	female	49323	2009
county	26	unspecified	female	5851	2009
county	27	at school	female	181150	2009
county	27	left school	female	177522	2009
county	27	never attended	female	36404	2009
county	27	unspecified	female	9694	2009
county	29	at school	female	152881	2009
county	29	left school	female	147118	2009
county	29	never attended	female	34849	2009
county	29	unspecified	female	5465	2009
county	32	at school	female	300742	2009
county	32	left school	female	343244	2009
county	32	never attended	female	72949	2009
county	32	unspecified	female	10846	2009
county	33	at school	female	138785	2009
county	33	left school	female	101282	2009
county	33	never attended	female	124728	2009
county	33	unspecified	female	7677	2009
county	34	unspecified	female	4204	2009
county	38	at school	female	112411	2009
county	38	left school	female	119387	2009
county	38	never attended	female	30446	2009
county	38	unspecified	female	4078	2009
county	41	at school	female	159208	2009
county	41	left school	female	173592	2009
county	41	never attended	female	60846	2009
county	41	unspecified	female	7182	2009
county	44	at school	female	190347	2009
county	44	left school	female	170717	2009
county	44	never attended	female	48939	2009
county	44	unspecified	female	8557	2009
county	46	at school	female	99258	2009
county	46	left school	female	104435	2009
county	46	never attended	female	22252	2009
county	46	unspecified	female	3304	2009
county	47	at school	female	487872	2009
county	47	left school	female	821743	2009
county	47	never attended	female	72550	2009
county	47	unspecified	female	27302	2009
\.


--
-- Name: schoolattendance_sex pk_schoolattendance_sex; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schoolattendance_sex
    ADD CONSTRAINT pk_schoolattendance_sex PRIMARY KEY (geo_level, geo_code, geo_version, "school attendance", sex);


--
-- PostgreSQL database dump complete
--


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

ALTER TABLE IF EXISTS ONLY public.maintypeoflightingfuel DROP CONSTRAINT IF EXISTS pk_maintypeoflightingfuel;
DROP TABLE IF EXISTS public.maintypeoflightingfuel;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: maintypeoflightingfuel; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.maintypeoflightingfuel (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of lighting fuel" character varying(128) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: maintypeoflightingfuel; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.maintypeoflightingfuel (geo_level, geo_code, "main type of lighting fuel", total, geo_version) FROM stdin;
county	3	electricity	33423	2009
county	3	gas lamps	911	2009
county	3	lanterns	33735	2009
county	3	other	665	2009
county	3	pressure lamps	1433	2009
county	3	solar	3471	2009
county	3	tin lamps	125005	2009
county	3	wood	1121	2009
county	5	electricity	3767	2009
county	5	gas lamps	158	2009
county	5	lanterns	7211	2009
county	5	other	428	2009
county	5	pressure lamps	135	2009
county	5	solar	560	2009
county	7	electricity	11405	2009
county	7	gas lamps	17277	2009
county	7	lanterns	20272	2009
county	7	other	6827	2009
county	7	pressure lamps	552	2009
county	7	solar	10251	2009
county	7	tin lamps	31642	2009
county	7	wood	364	2009
county	11	electricity	5800	2009
county	11	gas lamps	781	2009
county	11	lanterns	9751	2009
county	11	other	1015	2009
county	11	pressure lamps	154	2009
county	11	solar	7283	2009
county	11	tin lamps	6113	2009
county	14	electricity	19611	2009
county	14	gas lamps	778	2009
county	14	lanterns	46512	2009
county	14	other	626	2009
county	14	pressure lamps	992	2009
county	14	solar	1114	2009
county	14	tin lamps	57535	2009
county	14	wood	4515	2009
county	15	electricity	9850	2009
county	15	gas lamps	1372	2009
county	15	lanterns	111037	2009
county	15	other	1277	2009
county	15	pressure lamps	1192	2009
county	15	solar	10311	2009
county	15	tin lamps	64450	2009
county	20	electricity	25353	2009
county	20	gas lamps	1005	2009
county	20	lanterns	51589	2009
county	20	other	367	2009
county	20	pressure lamps	1028	2009
county	20	solar	413	2009
county	20	tin lamps	69116	2009
county	20	wood	5349	2009
county	40	electricity	9253	2009
county	40	gas lamps	709	2009
county	40	lanterns	33283	2009
county	40	other	338	2009
county	40	pressure lamps	494	2009
county	40	solar	566	2009
county	40	tin lamps	108949	2009
county	22	electricity	255704	2009
county	22	gas lamps	1428	2009
county	22	lanterns	125860	2009
county	22	other	1866	2009
county	22	pressure lamps	3345	2009
county	22	solar	735	2009
county	22	tin lamps	89701	2009
county	28	electricity	5547	2009
county	28	gas lamps	449	2009
county	28	lanterns	36321	2009
county	28	other	228	2009
county	28	pressure lamps	220	2009
county	28	solar	11744	2009
county	28	tin lamps	21891	2009
county	28	wood	1155	2009
county	30	electricity	10583	2009
county	30	gas lamps	796	2009
county	30	lanterns	43488	2009
county	30	other	471	2009
county	30	pressure lamps	437	2009
county	30	solar	30734	2009
county	30	tin lamps	22238	2009
county	31	electricity	18222	2009
county	31	gas lamps	740	2009
county	31	lanterns	36366	2009
county	31	other	428	2009
county	31	pressure lamps	542	2009
county	31	solar	5276	2009
county	31	tin lamps	35413	2009
county	31	wood	6127	2009
county	34	electricity	69098	2009
county	34	gas lamps	706	2009
county	34	lanterns	32788	2009
county	34	other	1780	2009
county	34	pressure lamps	1430	2009
county	34	solar	3804	2009
county	34	tin lamps	62031	2009
county	35	electricity	15005	2009
county	35	gas lamps	587	2009
county	35	lanterns	58865	2009
county	35	other	212	2009
county	35	pressure lamps	505	2009
county	35	solar	361	2009
county	35	tin lamps	49875	2009
county	35	wood	2171	2009
county	36	electricity	7552	2009
county	36	gas lamps	1135	2009
county	36	lanterns	113311	2009
county	36	other	499	2009
county	36	pressure lamps	581	2009
county	36	solar	1444	2009
county	36	tin lamps	45434	2009
county	37	electricity	19959	2009
county	37	gas lamps	2718	2009
county	37	lanterns	100156	2009
county	37	other	483	2009
county	37	pressure lamps	1791	2009
county	37	solar	1367	2009
county	37	tin lamps	226650	2009
county	37	wood	2555	2009
county	39	electricity	12219	2009
county	39	gas lamps	1704	2009
county	39	lanterns	72256	2009
county	39	other	458	2009
county	39	pressure lamps	1351	2009
county	39	solar	1493	2009
county	4	electricity	1184	2009
county	4	gas lamps	604	2009
county	4	lanterns	9590	2009
county	4	other	1279	2009
county	4	pressure lamps	86	2009
county	4	solar	2785	2009
county	4	tin lamps	31438	2009
county	4	wood	448	2009
county	5	tin lamps	8752	2009
county	5	wood	1173	2009
county	6	electricity	10653	2009
county	6	gas lamps	257	2009
county	6	lanterns	32595	2009
county	6	other	450	2009
county	6	pressure lamps	353	2009
county	6	solar	412	2009
county	6	tin lamps	24732	2009
county	6	wood	1638	2009
county	9	electricity	3198	2009
county	9	gas lamps	13845	2009
county	9	lanterns	41321	2009
county	9	other	4340	2009
county	9	pressure lamps	271	2009
county	9	solar	45240	2009
county	9	tin lamps	16989	2009
county	9	wood	293	2009
county	10	electricity	4258	2009
county	10	gas lamps	1665	2009
county	10	lanterns	13084	2009
county	10	other	2879	2009
county	10	pressure lamps	69	2009
county	10	solar	27355	2009
county	10	tin lamps	6953	2009
county	12	electricity	50004	2009
county	12	gas lamps	3018	2009
county	12	lanterns	112946	2009
county	12	other	1519	2009
county	12	pressure lamps	2388	2009
county	12	solar	7015	2009
county	12	tin lamps	183198	2009
county	12	wood	20938	2009
county	13	electricity	826	2009
county	13	gas lamps	154	2009
county	13	lanterns	3801	2009
county	13	other	366	2009
county	13	pressure lamps	93	2009
county	13	solar	1652	2009
county	13	tin lamps	18194	2009
county	16	electricity	45067	2009
county	16	gas lamps	1355	2009
county	16	lanterns	143523	2009
county	16	other	1172	2009
county	16	pressure lamps	1846	2009
county	16	solar	565	2009
county	16	tin lamps	63999	2009
county	16	wood	6973	2009
county	17	electricity	10912	2009
county	17	gas lamps	859	2009
county	17	lanterns	117991	2009
county	17	other	517	2009
county	17	pressure lamps	816	2009
county	17	solar	1136	2009
county	17	tin lamps	47245	2009
county	18	electricity	15086	2009
county	18	gas lamps	911	2009
county	18	lanterns	79351	2009
county	18	other	387	2009
county	18	pressure lamps	875	2009
county	18	solar	391	2009
county	18	tin lamps	38225	2009
county	19	electricity	53086	2009
county	19	gas lamps	1038	2009
county	19	lanterns	69517	2009
county	19	other	486	2009
county	19	pressure lamps	1641	2009
county	19	solar	1004	2009
county	19	tin lamps	66305	2009
county	19	wood	8626	2009
county	25	electricity	2949	2009
county	25	gas lamps	444	2009
county	25	lanterns	5074	2009
county	25	other	374	2009
county	25	pressure lamps	165	2009
county	25	solar	28451	2009
county	25	tin lamps	9239	2009
county	21	electricity	33847	2009
county	21	gas lamps	1296	2009
county	21	lanterns	95784	2009
county	21	other	386	2009
county	21	pressure lamps	1306	2009
county	21	solar	555	2009
county	21	tin lamps	103722	2009
county	21	wood	5594	2009
county	26	electricity	15121	2009
county	26	gas lamps	1088	2009
county	26	lanterns	65971	2009
county	26	other	489	2009
county	29	electricity	9788	2009
county	29	gas lamps	796	2009
county	29	lanterns	64865	2009
county	29	other	246	2009
county	29	pressure lamps	504	2009
county	29	solar	316	2009
county	29	tin lamps	75638	2009
county	32	electricity	139430	2009
county	32	gas lamps	1994	2009
county	32	lanterns	147950	2009
county	32	other	1927	2009
county	32	pressure lamps	2271	2009
county	32	solar	3398	2009
county	32	tin lamps	103605	2009
county	32	wood	9261	2009
county	33	electricity	9903	2009
county	33	gas lamps	861	2009
county	33	lanterns	49009	2009
county	33	other	1921	2009
county	33	pressure lamps	826	2009
county	33	solar	12977	2009
county	33	tin lamps	91422	2009
county	41	electricity	8615	2009
county	41	gas lamps	885	2009
county	41	lanterns	41128	2009
county	41	other	270	2009
county	41	pressure lamps	858	2009
county	41	solar	440	2009
county	1	electricity	158588	2009
county	1	gas lamps	512	2009
county	1	lanterns	43057	2009
county	1	other	1644	2009
county	1	pressure lamps	2748	2009
county	1	solar	530	2009
county	1	tin lamps	61236	2009
county	1	wood	385	2009
county	2	electricity	12888	2009
county	2	gas lamps	419	2009
county	2	lanterns	16063	2009
county	2	other	326	2009
county	2	pressure lamps	713	2009
county	2	solar	1522	2009
county	2	tin lamps	89118	2009
county	2	wood	998	2009
county	8	electricity	3039	2009
county	8	gas lamps	9767	2009
county	8	lanterns	27923	2009
county	8	other	6348	2009
county	8	pressure lamps	98	2009
county	8	solar	26296	2009
county	8	tin lamps	14948	2009
county	8	wood	155	2009
county	10	wood	678	2009
county	11	wood	429	2009
county	13	wood	2307	2009
county	15	wood	6002	2009
county	17	wood	7002	2009
county	18	wood	8653	2009
county	25	wood	658	2009
county	40	wood	633	2009
county	22	wood	3811	2009
county	23	electricity	3017	2009
county	23	gas lamps	694	2009
county	23	lanterns	10571	2009
county	23	other	4322	2009
county	23	pressure lamps	224	2009
county	23	solar	89894	2009
county	23	tin lamps	13523	2009
county	23	wood	946	2009
county	24	electricity	2456	2009
county	24	gas lamps	467	2009
county	24	lanterns	20880	2009
county	24	other	400	2009
county	24	pressure lamps	104	2009
county	24	solar	46980	2009
county	24	tin lamps	22021	2009
county	24	wood	469	2009
county	26	pressure lamps	977	2009
county	26	solar	994	2009
county	26	tin lamps	84035	2009
county	26	wood	1442	2009
county	27	electricity	56534	2009
county	27	gas lamps	782	2009
county	27	lanterns	89231	2009
county	27	other	1035	2009
county	27	pressure lamps	1218	2009
county	27	solar	628	2009
county	27	tin lamps	50506	2009
county	27	wood	2357	2009
county	29	wood	1920	2009
county	30	wood	1902	2009
county	33	wood	2301	2009
county	34	wood	1827	2009
county	36	wood	4958	2009
county	38	electricity	8678	2009
county	38	gas lamps	1038	2009
county	38	lanterns	35132	2009
county	38	other	129	2009
county	38	pressure lamps	547	2009
county	38	solar	582	2009
county	38	tin lamps	76480	2009
county	38	wood	761	2009
county	39	tin lamps	180120	2009
county	39	wood	1223	2009
county	41	tin lamps	145066	2009
county	41	wood	1772	2009
county	42	electricity	41551	2009
county	42	gas lamps	921	2009
county	42	lanterns	52543	2009
county	42	other	392	2009
county	42	pressure lamps	1256	2009
county	42	solar	513	2009
county	42	tin lamps	127278	2009
county	42	wood	2265	2009
county	43	electricity	6850	2009
county	43	gas lamps	1067	2009
county	43	lanterns	43788	2009
county	43	other	226	2009
county	43	pressure lamps	980	2009
county	43	solar	823	2009
county	43	tin lamps	150440	2009
county	43	wood	2081	2009
county	44	electricity	9551	2009
county	44	gas lamps	1057	2009
county	44	lanterns	46080	2009
county	44	other	297	2009
county	44	pressure lamps	1015	2009
county	44	solar	1051	2009
county	44	tin lamps	119675	2009
county	44	wood	1485	2009
county	45	electricity	20965	2009
county	45	gas lamps	1490	2009
county	45	lanterns	87971	2009
county	45	other	345	2009
county	45	pressure lamps	1033	2009
county	45	solar	711	2009
county	45	tin lamps	154632	2009
county	45	wood	2536	2009
county	46	electricity	6486	2009
county	46	gas lamps	586	2009
county	46	lanterns	42674	2009
county	46	other	67	2009
county	46	pressure lamps	453	2009
county	46	solar	297	2009
county	46	tin lamps	54798	2009
county	46	wood	1024	2009
county	47	electricity	712859	2009
county	47	gas lamps	1251	2009
county	47	lanterns	128173	2009
county	47	other	7244	2009
county	47	pressure lamps	10324	2009
county	47	solar	622	2009
county	47	tin lamps	123551	2009
county	47	wood	992	2009
country	KE	electricity	1989740	2009
country	KE	gas lamps	84375	2009
country	KE	lanterns	2670387	2009
country	KE	other	59751	2009
country	KE	pressure lamps	52240	2009
country	KE	solar	396062	2009
country	KE	tin lamps	3373126	2009
country	KE	wood	142273	2009
\.


--
-- Name: maintypeoflightingfuel pk_maintypeoflightingfuel; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.maintypeoflightingfuel
    ADD CONSTRAINT pk_maintypeoflightingfuel PRIMARY KEY (geo_level, geo_code, geo_version, "main type of lighting fuel");


--
-- PostgreSQL database dump complete
--


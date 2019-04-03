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

ALTER TABLE IF EXISTS ONLY public.maintypeoffloormaterial DROP CONSTRAINT IF EXISTS pk_maintypeoffloormaterial;
DROP TABLE IF EXISTS public.maintypeoffloormaterial;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: maintypeoffloormaterial; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.maintypeoffloormaterial (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of floor material" character varying(128) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: maintypeoffloormaterial; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.maintypeoffloormaterial (geo_level, geo_code, "main type of floor material", total, geo_version) FROM stdin;
county	30	cement	110426	2009
county	30	earth	1856	2009
county	30	other	80603	2009
county	30	tiles	27425	2009
county	30	wood	332	2009
county	36	cement	174294	2009
county	36	earth	954	2009
county	36	other	131613	2009
county	36	tiles	41125	2009
county	36	wood	405	2009
county	39	cement	270601	2009
county	39	earth	789	2009
county	39	other	214459	2009
county	39	tiles	53831	2009
county	39	wood	1000	2009
county	40	cement	154080	2009
county	40	earth	527	2009
county	40	other	115342	2009
county	40	tiles	37401	2009
county	40	wood	587	2009
county	28	cement	77538	2009
county	28	earth	734	2009
county	28	other	59498	2009
county	28	tiles	16756	2009
county	28	wood	170	2009
county	14	cement	131198	2009
county	14	earth	648	2009
county	14	other	76432	2009
county	14	tiles	53256	2009
county	14	wood	698	2009
county	7	cement	98270	2009
county	7	earth	594	2009
county	7	other	78385	2009
county	7	tiles	18419	2009
county	7	wood	381	2009
county	43	cement	206108	2009
county	43	earth	663	2009
county	43	other	154017	2009
county	43	tiles	50331	2009
county	43	wood	641	2009
county	11	cement	31305	2009
county	11	earth	126	2009
county	11	other	21911	2009
county	11	tiles	9047	2009
county	11	wood	169	2009
county	34	cement	173063	2009
county	34	earth	538	2009
county	34	other	66945	2009
county	34	tiles	99118	2009
county	34	wood	6210	2009
county	37	cement	355375	2009
county	37	earth	1612	2009
county	37	other	285209	2009
county	37	tiles	66150	2009
county	37	wood	1204	2009
county	35	cement	127225	2009
county	35	earth	1005	2009
county	35	other	77342	2009
county	35	tiles	48287	2009
county	35	wood	474	2009
county	22	cement	481787	2009
county	22	earth	2120	2009
county	22	other	113189	2009
county	22	tiles	355536	2009
county	22	wood	10567	2009
county	3	cement	197851	2009
county	3	earth	515	2009
county	3	other	129139	2009
county	3	tiles	65473	2009
county	3	wood	2288	2009
county	20	cement	153981	2009
county	20	earth	735	2009
county	20	other	92239	2009
county	20	tiles	60133	2009
county	20	wood	680	2009
county	45	cement	269454	2009
county	45	earth	1379	2009
county	45	other	208278	2009
county	45	tiles	57974	2009
county	45	wood	993	2009
county	42	cement	226137	2009
county	42	earth	932	2009
county	42	other	125046	2009
county	42	tiles	95973	2009
county	42	wood	3612	2009
county	15	cement	205412	2009
county	15	earth	656	2009
county	15	other	136153	2009
county	15	tiles	67124	2009
county	15	wood	1182	2009
county	2	cement	121691	2009
county	2	earth	211	2009
county	2	other	85386	2009
county	2	tiles	35161	2009
county	2	wood	803	2009
county	31	cement	103081	2009
county	31	earth	1033	2009
county	31	other	67685	2009
county	31	tiles	33491	2009
county	31	wood	651	2009
county	5	cement	22013	2009
county	5	earth	73	2009
county	5	other	13705	2009
county	5	tiles	8143	2009
county	5	wood	65	2009
county	16	cement	264342	2009
county	16	earth	500	2009
county	16	other	105122	2009
county	16	tiles	154263	2009
county	16	wood	4275	2009
county	17	cement	186280	2009
county	17	earth	404	2009
county	17	other	99572	2009
county	17	tiles	85016	2009
county	17	wood	1148	2009
county	9	cement	125471	2009
county	9	earth	629	2009
county	9	other	115087	2009
county	9	tiles	9280	2009
county	9	wood	152	2009
county	10	cement	56711	2009
county	10	earth	153	2009
county	10	other	46871	2009
county	10	tiles	9292	2009
county	10	wood	143	2009
county	12	cement	380505	2009
county	12	earth	7188	2009
county	12	other	226948	2009
county	12	tiles	143636	2009
county	12	wood	1691	2009
county	44	cement	179970	2009
county	44	earth	832	2009
county	44	other	129541	2009
county	44	tiles	48681	2009
county	44	wood	697	2009
county	1	cement	257254	2009
county	1	earth	637	2009
county	1	other	36368	2009
county	1	tiles	207480	2009
county	1	wood	12235	2009
county	21	cement	242332	2009
county	21	earth	1109	2009
county	21	other	145502	2009
county	21	tiles	94140	2009
county	21	wood	1321	2009
county	47	cement	983115	2009
county	47	earth	19169	2009
county	47	other	87228	2009
county	47	tiles	809278	2009
county	47	wood	66147	2009
county	32	cement	409097	2009
county	32	earth	3457	2009
county	32	other	191454	2009
county	32	tiles	208216	2009
county	32	wood	5045	2009
county	29	cement	152889	2009
county	29	earth	699	2009
county	29	other	105529	2009
county	29	tiles	45787	2009
county	29	wood	619	2009
county	33	cement	169067	2009
county	33	earth	1040	2009
county	33	other	142236	2009
county	33	tiles	24696	2009
county	33	wood	419	2009
county	46	cement	106065	2009
county	46	earth	552	2009
county	46	other	80843	2009
county	46	tiles	24221	2009
county	46	wood	361	2009
county	18	cement	142493	2009
county	18	earth	2218	2009
county	18	other	98033	2009
county	18	tiles	40989	2009
county	18	wood	450	2009
county	19	cement	201353	2009
county	19	earth	3254	2009
county	19	other	113669	2009
county	19	tiles	83057	2009
county	19	wood	1068	2009
county	25	cement	47231	2009
county	25	earth	165	2009
county	25	other	39058	2009
county	25	tiles	7821	2009
county	25	wood	86	2009
county	41	cement	198664	2009
county	41	earth	734	2009
county	41	other	139196	2009
county	41	tiles	57585	2009
county	41	wood	793	2009
county	6	cement	70039	2009
county	6	earth	200	2009
county	6	other	38782	2009
county	6	tiles	30485	2009
county	6	wood	451	2009
county	4	cement	47274	2009
county	4	earth	138	2009
county	4	other	41604	2009
county	4	tiles	5366	2009
county	4	wood	87	2009
county	13	cement	27389	2009
county	13	earth	195	2009
county	13	other	22520	2009
county	13	tiles	4590	2009
county	13	wood	55	2009
county	26	cement	169632	2009
county	26	earth	814	2009
county	26	other	123709	2009
county	26	tiles	43706	2009
county	26	wood	895	2009
county	23	cement	122935	2009
county	23	earth	1125	2009
county	23	other	113145	2009
county	23	tiles	8007	2009
county	23	wood	205	2009
county	27	cement	201616	2009
county	27	earth	1561	2009
county	27	other	102615	2009
county	27	tiles	93401	2009
county	27	wood	3501	2009
county	38	cement	123241	2009
county	38	earth	551	2009
county	38	other	97630	2009
county	38	tiles	24377	2009
county	38	wood	468	2009
county	8	cement	88493	2009
county	8	earth	214	2009
county	8	other	80979	2009
county	8	tiles	6899	2009
county	8	wood	131	2009
county	24	cement	93749	2009
county	24	earth	524	2009
county	24	other	81304	2009
county	24	tiles	11578	2009
county	24	wood	137	2009
country	KE	cement	8738097	2009
country	KE	earth	65762	2009
country	KE	other	4937121	2009
country	KE	tiles	3582001	2009
country	KE	wood	135692	2009
\.


--
-- Name: maintypeoffloormaterial pk_maintypeoffloormaterial; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.maintypeoffloormaterial
    ADD CONSTRAINT pk_maintypeoffloormaterial PRIMARY KEY (geo_level, geo_code, geo_version, "main type of floor material");


--
-- PostgreSQL database dump complete
--


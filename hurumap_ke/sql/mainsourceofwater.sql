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

ALTER TABLE IF EXISTS ONLY public.mainsourceofwater DROP CONSTRAINT IF EXISTS pk_mainsourceofwater;
DROP TABLE IF EXISTS public.mainsourceofwater;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: mainsourceofwater; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mainsourceofwater (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main source of water" character varying(128) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: mainsourceofwater; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mainsourceofwater (geo_level, geo_code, "main source of water", total, geo_version) FROM stdin;
county	22	jabia/rain/harvested	4620	2009
county	22	lake	3873	2009
county	22	other	164	2009
county	22	piped	158445	2009
county	22	piped into dwelling	60224	2009
county	22	pond/dam	163	2009
county	22	spring/well/borehole	153734	2009
county	22	stream	57079	2009
county	22	water vendor	44148	2009
county	28	jabia/rain/harvested	148	2009
county	28	lake	606	2009
county	28	other	29	2009
county	28	piped	13426	2009
county	28	piped into dwelling	1856	2009
county	28	pond/dam	60	2009
county	28	spring/well/borehole	18869	2009
county	28	stream	42315	2009
county	28	water vendor	246	2009
county	30	jabia/rain/harvested	440	2009
county	30	lake	7123	2009
county	30	other	3384	2009
county	30	piped	13623	2009
county	30	piped into dwelling	1925	2009
county	30	pond/dam	2344	2009
county	30	spring/well/borehole	22901	2009
county	30	stream	57714	2009
county	30	water vendor	1195	2009
county	34	jabia/rain/harvested	1325	2009
county	34	lake	6889	2009
county	34	other	261	2009
county	34	piped	48283	2009
county	34	piped into dwelling	15602	2009
county	34	pond/dam	299	2009
county	34	spring/well/borehole	60198	2009
county	34	stream	15482	2009
county	34	water vendor	25125	2009
county	35	jabia/rain/harvested	935	2009
county	35	lake	1334	2009
county	35	other	39	2009
county	35	piped	23743	2009
county	35	piped into dwelling	15249	2009
county	35	pond/dam	90	2009
county	35	spring/well/borehole	31603	2009
county	35	stream	52052	2009
county	35	water vendor	2536	2009
county	36	jabia/rain/harvested	2353	2009
county	36	lake	26480	2009
county	36	other	49	2009
county	36	piped	16819	2009
county	36	piped into dwelling	7910	2009
county	36	pond/dam	229	2009
county	36	spring/well/borehole	44261	2009
county	36	stream	75666	2009
county	36	water vendor	1147	2009
county	37	jabia/rain/harvested	1250	2009
county	37	lake	2463	2009
county	37	other	109	2009
county	37	piped	14459	2009
county	37	piped into dwelling	6263	2009
county	37	pond/dam	264	2009
county	3	lake	26218	2009
county	7	jabia/rain/harvested	618	2009
county	7	lake	3797	2009
county	7	other	9514	2009
county	7	piped	24492	2009
county	7	piped into dwelling	3233	2009
county	7	pond/dam	120	2009
county	7	spring/well/borehole	46371	2009
county	7	stream	7506	2009
county	11	jabia/rain/harvested	71	2009
county	11	lake	213	2009
county	11	other	162	2009
county	11	piped	13413	2009
county	11	piped into dwelling	2010	2009
county	11	pond/dam	3	2009
county	11	spring/well/borehole	11018	2009
county	11	stream	3386	2009
county	14	jabia/rain/harvested	607	2009
county	14	lake	4662	2009
county	14	other	146	2009
county	14	piped	37288	2009
county	14	piped into dwelling	11810	2009
county	14	pond/dam	99	2009
county	14	spring/well/borehole	32127	2009
county	14	stream	40822	2009
county	14	water vendor	4122	2009
county	15	jabia/rain/harvested	1336	2009
county	15	lake	9583	2009
county	15	other	49	2009
county	15	piped	13758	2009
county	15	piped into dwelling	1968	2009
county	15	pond/dam	294	2009
county	20	jabia/rain/harvested	756	2009
county	20	lake	318	2009
county	20	other	79	2009
county	20	piped	51515	2009
county	20	piped into dwelling	10975	2009
county	20	pond/dam	28	2009
county	20	spring/well/borehole	24356	2009
county	20	stream	63242	2009
county	40	jabia/rain/harvested	260	2009
county	40	lake	1800	2009
county	40	other	44	2009
county	40	piped	7689	2009
county	40	piped into dwelling	986	2009
county	40	pond/dam	5033	2009
county	40	spring/well/borehole	118850	2009
county	40	stream	18793	2009
county	40	water vendor	770	2009
county	37	spring/well/borehole	248628	2009
county	37	stream	80202	2009
county	37	water vendor	2041	2009
county	39	jabia/rain/harvested	394	2009
county	39	lake	729	2009
county	39	other	55	2009
county	39	piped	23765	2009
county	39	piped into dwelling	4186	2009
county	39	pond/dam	168	2009
county	39	spring/well/borehole	212514	2009
county	39	stream	25720	2009
county	39	water vendor	3293	2009
county	42	jabia/rain/harvested	2362	2009
county	42	lake	9735	2009
county	42	other	72	2009
county	42	piped	49658	2009
county	42	piped into dwelling	7653	2009
county	42	pond/dam	5287	2009
county	42	spring/well/borehole	76589	2009
county	42	stream	55491	2009
county	43	jabia/rain/harvested	1353	2009
county	43	lake	24289	2009
county	43	other	114	2009
county	43	piped	9969	2009
county	43	piped into dwelling	1625	2009
county	43	pond/dam	34914	2009
county	43	spring/well/borehole	66615	2009
county	43	stream	64696	2009
county	43	water vendor	2680	2009
county	45	jabia/rain/harvested	2510	2009
county	45	lake	437	2009
county	45	other	55	2009
county	45	piped	8007	2009
county	45	piped into dwelling	2449	2009
county	45	pond/dam	147	2009
county	45	spring/well/borehole	170166	2009
county	45	stream	84837	2009
county	21	jabia/rain/harvested	8537	2009
county	21	lake	1583	2009
county	21	other	82	2009
county	21	piped	46955	2009
county	21	piped into dwelling	10802	2009
county	21	pond/dam	96	2009
county	21	spring/well/borehole	57400	2009
county	21	stream	112927	2009
county	21	water vendor	4108	2009
county	29	jabia/rain/harvested	859	2009
county	29	lake	1656	2009
county	29	other	30	2009
county	29	piped	17747	2009
county	29	piped into dwelling	3234	2009
county	29	pond/dam	116	2009
county	29	spring/well/borehole	64729	2009
county	29	stream	64381	2009
county	29	water vendor	1321	2009
county	31	jabia/rain/harvested	1580	2009
county	31	lake	7847	2009
county	31	other	48	2009
county	31	piped	21809	2009
county	31	piped into dwelling	8753	2009
county	31	pond/dam	40	2009
county	31	spring/well/borehole	32560	2009
county	31	stream	26873	2009
county	31	water vendor	3604	2009
county	32	jabia/rain/harvested	15511	2009
county	32	lake	8131	2009
county	32	other	609	2009
county	32	piped	118036	2009
county	32	piped into dwelling	32572	2009
county	32	pond/dam	1625	2009
county	32	spring/well/borehole	106202	2009
county	32	stream	69081	2009
county	32	water vendor	58069	2009
county	33	jabia/rain/harvested	1589	2009
county	33	lake	22845	2009
county	33	other	672	2009
county	33	piped	10241	2009
county	33	piped into dwelling	1401	2009
county	33	pond/dam	291	2009
county	33	spring/well/borehole	43601	2009
county	33	stream	78939	2009
county	33	water vendor	9641	2009
county	44	jabia/rain/harvested	802	2009
county	44	lake	9615	2009
county	44	other	232	2009
county	44	piped	2901	2009
county	44	piped into dwelling	1359	2009
county	44	pond/dam	11291	2009
county	44	spring/well/borehole	81080	2009
county	44	stream	71603	2009
county	44	water vendor	1328	2009
county	46	jabia/rain/harvested	2140	2009
county	46	lake	660	2009
county	46	other	11	2009
county	46	piped	3666	2009
county	46	piped into dwelling	713	2009
county	46	pond/dam	52	2009
county	46	spring/well/borehole	66466	2009
county	46	stream	32287	2009
county	46	water vendor	390	2009
county	47	jabia/rain/harvested	1691	2009
county	47	lake	2761	2009
county	47	other	687	2009
county	47	piped	514943	2009
county	47	piped into dwelling	230704	2009
county	47	pond/dam	99	2009
county	47	spring/well/borehole	70729	2009
county	47	stream	1345	2009
county	47	water vendor	162057	2009
county	2	jabia/rain/harvested	701	2009
county	2	lake	25370	2009
county	2	other	125	2009
county	2	piped	31361	2009
county	2	piped into dwelling	3080	2009
county	2	pond/dam	265	2009
county	2	spring/well/borehole	45131	2009
county	2	stream	13470	2009
county	5	jabia/rain/harvested	1652	2009
county	5	lake	1396	2009
county	5	other	29	2009
county	5	piped	5030	2009
county	5	piped into dwelling	1732	2009
county	5	pond/dam	146	2009
county	5	spring/well/borehole	11402	2009
county	5	stream	532	2009
county	9	jabia/rain/harvested	6167	2009
county	9	lake	34942	2009
county	9	other	353	2009
county	9	piped	5769	2009
county	9	piped into dwelling	1426	2009
county	9	pond/dam	118	2009
county	9	spring/well/borehole	51713	2009
county	9	stream	8410	2009
county	9	water vendor	16599	2009
county	10	jabia/rain/harvested	1008	2009
county	10	lake	5599	2009
county	10	other	53	2009
county	10	piped	3747	2009
county	10	piped into dwelling	147	2009
county	10	pond/dam	724	2009
county	10	spring/well/borehole	39266	2009
county	10	stream	350	2009
county	12	jabia/rain/harvested	3276	2009
county	12	lake	1214	2009
county	12	other	832	2009
county	12	piped	170912	2009
county	12	piped into dwelling	29737	2009
county	12	pond/dam	449	2009
county	12	spring/well/borehole	43660	2009
county	12	stream	102300	2009
county	12	water vendor	28646	2009
county	15	spring/well/borehole	87259	2009
county	15	stream	83955	2009
county	15	water vendor	7289	2009
county	16	jabia/rain/harvested	1920	2009
county	16	lake	20640	2009
county	16	other	138	2009
county	16	piped	27785	2009
county	16	piped into dwelling	9809	2009
county	16	pond/dam	155	2009
county	16	spring/well/borehole	114074	2009
county	16	stream	61163	2009
county	17	jabia/rain/harvested	1158	2009
county	17	lake	9380	2009
county	17	other	11	2009
county	17	piped	36034	2009
county	17	piped into dwelling	4529	2009
county	17	pond/dam	77	2009
county	17	spring/well/borehole	64460	2009
county	17	stream	62249	2009
county	17	water vendor	8580	2009
county	18	jabia/rain/harvested	9675	2009
county	18	lake	11979	2009
county	18	other	32	2009
county	18	piped	29594	2009
county	18	piped into dwelling	5718	2009
county	18	pond/dam	90	2009
county	18	spring/well/borehole	52806	2009
county	18	stream	29165	2009
county	19	jabia/rain/harvested	8206	2009
county	19	lake	1111	2009
county	19	other	138	2009
county	19	piped	88332	2009
county	23	jabia/rain/harvested	56	2009
county	23	lake	692	2009
county	23	other	323	2009
county	23	piped	12945	2009
county	23	piped into dwelling	2313	2009
county	23	pond/dam	3247	2009
county	23	spring/well/borehole	76203	2009
county	23	stream	25515	2009
county	23	water vendor	1897	2009
county	24	jabia/rain/harvested	104	2009
county	24	lake	3270	2009
county	24	other	15	2009
county	24	piped	7353	2009
county	24	piped into dwelling	1210	2009
county	24	pond/dam	128	2009
county	24	spring/well/borehole	26259	2009
county	24	stream	54977	2009
county	24	water vendor	461	2009
county	26	jabia/rain/harvested	407	2009
county	26	lake	1197	2009
county	26	other	90	2009
county	26	piped	16880	2009
county	26	piped into dwelling	2822	2009
county	26	pond/dam	85	2009
county	26	spring/well/borehole	110386	2009
county	26	stream	34441	2009
county	26	water vendor	3809	2009
county	27	jabia/rain/harvested	214	2009
county	27	lake	1638	2009
county	27	other	122	2009
county	27	piped	50168	2009
county	27	piped into dwelling	15465	2009
county	27	pond/dam	135	2009
county	27	spring/well/borehole	113923	2009
county	27	stream	17991	2009
county	27	water vendor	2635	2009
county	38	jabia/rain/harvested	1497	2009
county	38	lake	416	2009
county	38	other	21	2009
county	38	piped	4155	2009
county	38	piped into dwelling	1387	2009
county	38	pond/dam	57	2009
county	38	spring/well/borehole	87185	2009
county	38	stream	27406	2009
county	38	water vendor	1223	2009
county	41	jabia/rain/harvested	2052	2009
county	41	lake	28184	2009
county	41	other	38	2009
county	41	piped	11698	2009
county	41	piped into dwelling	1850	2009
county	1	jabia/rain/harvested	323	2009
county	1	lake	1102	2009
county	1	other	147	2009
county	1	piped	110955	2009
county	1	piped into dwelling	31055	2009
county	1	pond/dam	33	2009
county	1	spring/well/borehole	59144	2009
county	1	stream	340	2009
county	1	water vendor	65601	2009
county	2	water vendor	2544	2009
county	3	jabia/rain/harvested	1418	2009
county	3	other	582	2009
county	3	piped	93557	2009
county	3	piped into dwelling	14151	2009
county	3	pond/dam	511	2009
county	3	spring/well/borehole	42476	2009
county	3	stream	8636	2009
county	3	water vendor	12215	2009
county	4	jabia/rain/harvested	82	2009
county	4	lake	3691	2009
county	4	other	2549	2009
county	4	piped	5024	2009
county	4	piped into dwelling	800	2009
county	4	pond/dam	460	2009
county	4	spring/well/borehole	20399	2009
county	4	stream	12703	2009
county	4	water vendor	1706	2009
county	5	water vendor	265	2009
county	6	jabia/rain/harvested	134	2009
county	6	lake	617	2009
county	6	other	52	2009
county	6	piped	37451	2009
county	6	piped into dwelling	4639	2009
county	6	pond/dam	216	2009
county	6	spring/well/borehole	7532	2009
county	6	stream	16368	2009
county	6	water vendor	4081	2009
county	7	water vendor	2939	2009
county	8	jabia/rain/harvested	965	2009
county	8	lake	12091	2009
county	8	other	211	2009
county	8	piped	1061	2009
county	8	piped into dwelling	249	2009
county	8	pond/dam	26	2009
county	8	spring/well/borehole	62867	2009
county	8	stream	48	2009
county	8	water vendor	11056	2009
county	10	water vendor	6047	2009
county	11	water vendor	1050	2009
county	13	jabia/rain/harvested	23	2009
county	13	lake	21	2009
county	13	other	7	2009
county	13	piped	2895	2009
county	13	piped into dwelling	328	2009
county	13	pond/dam	28	2009
county	13	spring/well/borehole	7828	2009
county	13	stream	16084	2009
county	13	water vendor	179	2009
county	16	water vendor	28816	2009
county	18	water vendor	4820	2009
county	19	piped into dwelling	24534	2009
county	19	pond/dam	56	2009
county	19	spring/well/borehole	18701	2009
county	19	stream	55794	2009
county	19	water vendor	4831	2009
county	20	water vendor	2951	2009
county	25	jabia/rain/harvested	194	2009
county	25	lake	2624	2009
county	25	other	22	2009
county	25	piped	6389	2009
county	25	piped into dwelling	441	2009
county	25	pond/dam	233	2009
county	25	spring/well/borehole	25100	2009
county	25	stream	11747	2009
county	25	water vendor	604	2009
county	41	pond/dam	27534	2009
county	41	spring/well/borehole	77281	2009
county	41	stream	46921	2009
county	41	water vendor	3476	2009
county	42	water vendor	19872	2009
county	45	water vendor	1075	2009
country	KE	jabia/rain/harvested	95279	2009
country	KE	lake	352821	2009
country	KE	other	22586	2009
country	KE	piped	2023745	2009
country	KE	piped into dwelling	602884	2009
country	KE	pond/dam	97925	2009
country	KE	spring/well/borehole	3106622	2009
country	KE	stream	1893004	2009
country	KE	water vendor	573088	2009
\.


--
-- Name: mainsourceofwater pk_mainsourceofwater; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mainsourceofwater
    ADD CONSTRAINT pk_mainsourceofwater PRIMARY KEY (geo_level, geo_code, geo_version, "main source of water");


--
-- PostgreSQL database dump complete
--


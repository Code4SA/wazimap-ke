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

ALTER TABLE IF EXISTS ONLY public.maintypeofwallmaterial DROP CONSTRAINT IF EXISTS pk_maintypeofwallmaterial;
DROP TABLE IF EXISTS public.maintypeofwallmaterial;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: maintypeofwallmaterial; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.maintypeofwallmaterial (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    "main type of wall material" character varying(128) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: maintypeofwallmaterial; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.maintypeofwallmaterial (geo_level, geo_code, "main type of wall material", total, geo_version) FROM stdin;
country	KE	brick/block	1470779	2009
country	KE	corrugated iron sheets	577500	2009
country	KE	grass/reeds	264557	2009
country	KE	mud/cement	673636	2009
country	KE	mud/wood	3208268	2009
country	KE	other	78803	2009
country	KE	tin	26411	2009
country	KE	wood only	970089	2009
country	KE	stone	1450487	2009
county	30	brick/block	4037	2009
county	30	corrugated iron sheets	7048	2009
county	30	grass/reeds	1675	2009
county	30	mud/cement	6952	2009
county	30	mud/wood	55881	2009
county	30	other	611	2009
county	30	tin	87	2009
county	30	wood only	28489	2009
county	36	brick/block	15688	2009
county	36	corrugated iron sheets	1430	2009
county	36	grass/reeds	159	2009
county	36	mud/cement	13147	2009
county	36	mud/wood	113528	2009
county	36	other	1834	2009
county	36	tin	81	2009
county	36	wood only	21166	2009
county	39	brick/block	38862	2009
county	39	corrugated iron sheets	493	2009
county	39	grass/reeds	210	2009
county	39	mud/cement	33668	2009
county	39	mud/wood	190042	2009
county	39	other	2246	2009
county	39	tin	85	2009
county	39	wood only	982	2009
county	40	brick/block	26034	2009
county	40	corrugated iron sheets	464	2009
county	40	grass/reeds	476	2009
county	40	mud/cement	16284	2009
county	40	mud/wood	104454	2009
county	40	other	3086	2009
county	40	tin	96	2009
county	40	wood only	312	2009
county	28	brick/block	5037	2009
county	28	corrugated iron sheets	1558	2009
county	28	grass/reeds	235	2009
county	28	mud/cement	5200	2009
county	28	mud/wood	41805	2009
county	28	other	409	2009
county	28	tin	62	2009
county	28	wood only	15919	2009
county	14	brick/block	28030	2009
county	14	corrugated iron sheets	2544	2009
county	14	grass/reeds	458	2009
county	14	mud/cement	3860	2009
county	14	mud/wood	37605	2009
county	14	other	3379	2009
county	14	tin	89	2009
county	14	wood only	33149	2009
county	7	brick/block	12771	2009
county	7	corrugated iron sheets	923	2009
county	7	grass/reeds	42429	2009
county	7	mud/cement	9217	2009
county	7	mud/wood	19218	2009
county	7	other	693	2009
county	7	tin	307	2009
county	7	wood only	8106	2009
county	43	brick/block	17676	2009
county	43	corrugated iron sheets	11533	2009
county	43	grass/reeds	359	2009
county	43	mud/cement	33897	2009
county	43	mud/wood	135139	2009
county	43	other	1318	2009
county	43	tin	279	2009
county	43	wood only	576	2009
county	11	brick/block	2090	2009
county	11	corrugated iron sheets	380	2009
county	11	grass/reeds	5491	2009
county	11	mud/cement	1144	2009
county	11	mud/wood	9850	2009
county	11	other	642	2009
county	11	tin	1518	2009
county	11	wood only	6970	2009
county	34	brick/block	13104	2009
county	34	corrugated iron sheets	45926	2009
county	34	grass/reeds	3587	2009
county	34	mud/cement	5763	2009
county	34	mud/wood	39264	2009
county	34	other	2402	2009
county	34	tin	863	2009
county	34	wood only	14315	2009
county	37	brick/block	48365	2009
county	37	corrugated iron sheets	941	2009
county	37	grass/reeds	264	2009
county	37	mud/cement	36471	2009
county	37	mud/wood	264801	2009
county	37	other	989	2009
county	37	tin	78	2009
county	37	wood only	708	2009
county	35	brick/block	17026	2009
county	35	corrugated iron sheets	7600	2009
county	35	grass/reeds	91	2009
county	35	mud/cement	9746	2009
county	35	mud/wood	62362	2009
county	35	other	1011	2009
county	35	tin	132	2009
county	35	wood only	15786	2009
county	22	brick/block	29659	2009
county	22	corrugated iron sheets	118797	2009
county	22	grass/reeds	158	2009
county	22	mud/cement	6421	2009
county	22	mud/wood	23682	2009
county	22	other	712	2009
county	22	tin	3034	2009
county	22	wood only	68284	2009
county	3	brick/block	45805	2009
county	3	corrugated iron sheets	645	2009
county	3	grass/reeds	2645	2009
county	3	mud/cement	16157	2009
county	3	mud/wood	106284	2009
county	3	other	535	2009
county	3	tin	157	2009
county	3	wood only	4281	2009
county	20	brick/block	25880	2009
county	20	corrugated iron sheets	2626	2009
county	20	grass/reeds	957	2009
county	20	mud/cement	4617	2009
county	20	mud/wood	28517	2009
county	20	other	757	2009
county	20	tin	156	2009
county	20	wood only	53075	2009
county	45	brick/block	51676	2009
county	45	corrugated iron sheets	1860	2009
county	45	grass/reeds	187	2009
county	45	mud/cement	21297	2009
county	45	mud/wood	189596	2009
county	45	other	1440	2009
county	45	tin	85	2009
county	45	wood only	857	2009
county	42	brick/block	47969	2009
county	42	corrugated iron sheets	6935	2009
county	42	grass/reeds	146	2009
county	42	mud/cement	48071	2009
county	42	mud/wood	112223	2009
county	42	other	2516	2009
county	42	tin	382	2009
county	42	wood only	482	2009
county	15	brick/block	131432	2009
county	15	corrugated iron sheets	343	2009
county	15	grass/reeds	881	2009
county	15	mud/cement	12953	2009
county	15	mud/wood	52452	2009
county	15	other	368	2009
county	15	tin	79	2009
county	15	wood only	2000	2009
county	2	brick/block	17675	2009
county	2	corrugated iron sheets	373	2009
county	2	grass/reeds	2699	2009
county	2	mud/cement	11944	2009
county	2	mud/wood	69208	2009
county	2	other	667	2009
county	2	tin	76	2009
county	2	wood only	483	2009
county	31	brick/block	2933	2009
county	31	corrugated iron sheets	2928	2009
county	31	grass/reeds	464	2009
county	31	mud/cement	3186	2009
county	31	mud/wood	30105	2009
county	31	other	1049	2009
county	31	tin	111	2009
county	31	wood only	47459	2009
county	5	brick/block	4158	2009
county	5	corrugated iron sheets	84	2009
county	5	grass/reeds	1476	2009
county	5	mud/cement	3069	2009
county	5	mud/wood	10332	2009
county	5	other	323	2009
county	5	tin	28	2009
county	5	wood only	150	2009
county	16	brick/block	161931	2009
county	16	corrugated iron sheets	18602	2009
county	16	grass/reeds	298	2009
county	16	mud/cement	4811	2009
county	16	mud/wood	11002	2009
county	16	other	350	2009
county	16	tin	339	2009
county	16	wood only	1235	2009
county	17	brick/block	135293	2009
county	17	corrugated iron sheets	960	2009
county	17	grass/reeds	400	2009
county	17	mud/cement	7158	2009
county	17	mud/wood	36850	2009
county	17	other	118	2009
county	17	tin	61	2009
county	17	wood only	668	2009
county	9	brick/block	5745	2009
county	9	corrugated iron sheets	309	2009
county	9	grass/reeds	79903	2009
county	9	mud/cement	2403	2009
county	9	mud/wood	7494	2009
county	9	other	3054	2009
county	9	tin	124	2009
county	9	wood only	22898	2009
county	10	brick/block	2821	2009
county	10	corrugated iron sheets	589	2009
county	10	grass/reeds	6847	2009
county	10	mud/cement	6067	2009
county	10	mud/wood	17019	2009
county	10	other	15948	2009
county	10	tin	1919	2009
county	10	wood only	4611	2009
county	12	brick/block	13443	2009
county	12	corrugated iron sheets	1512	2009
county	12	grass/reeds	2404	2009
county	12	mud/cement	6760	2009
county	12	mud/wood	76884	2009
county	12	other	2459	2009
county	12	tin	236	2009
county	12	wood only	227889	2009
county	44	brick/block	30770	2009
county	44	corrugated iron sheets	2923	2009
county	44	grass/reeds	228	2009
county	44	mud/cement	27323	2009
county	44	mud/wood	116088	2009
county	44	other	276	2009
county	44	tin	78	2009
county	44	wood only	484	2009
county	1	brick/block	109233	2009
county	1	corrugated iron sheets	1724	2009
county	1	grass/reeds	401	2009
county	1	mud/cement	35229	2009
county	1	mud/wood	27720	2009
county	1	other	226	2009
county	1	tin	262	2009
county	1	wood only	582	2009
county	21	brick/block	27457	2009
county	21	corrugated iron sheets	35815	2009
county	21	grass/reeds	180	2009
county	21	mud/cement	6745	2009
county	21	mud/wood	58882	2009
county	21	other	1036	2009
county	21	tin	5127	2009
county	21	wood only	37132	2009
county	47	brick/block	137375	2009
county	47	corrugated iron sheets	264413	2009
county	47	grass/reeds	431	2009
county	47	mud/cement	52330	2009
county	47	mud/wood	36809	2009
county	47	other	955	2009
county	47	tin	5850	2009
county	47	wood only	18592	2009
county	32	brick/block	23136	2009
county	32	corrugated iron sheets	11816	2009
county	32	grass/reeds	428	2009
county	32	mud/cement	42592	2009
county	32	mud/wood	137687	2009
county	32	other	2693	2009
county	32	tin	500	2009
county	32	wood only	55420	2009
county	29	brick/block	23211	2009
county	29	corrugated iron sheets	1429	2009
county	29	grass/reeds	92	2009
county	29	mud/cement	22231	2009
county	29	mud/wood	97633	2009
county	29	other	720	2009
county	29	tin	44	2009
county	29	wood only	5525	2009
county	33	brick/block	6607	2009
county	33	corrugated iron sheets	4896	2009
county	33	grass/reeds	1319	2009
county	33	mud/cement	11923	2009
county	33	mud/wood	115444	2009
county	33	other	2339	2009
county	33	tin	606	2009
county	33	wood only	16479	2009
county	46	brick/block	21176	2009
county	46	corrugated iron sheets	282	2009
county	46	grass/reeds	201	2009
county	46	mud/cement	6697	2009
county	46	mud/wood	76135	2009
county	46	other	24	2009
county	46	tin	26	2009
county	46	wood only	671	2009
county	18	brick/block	3763	2009
county	18	corrugated iron sheets	4386	2009
county	18	grass/reeds	51	2009
county	18	mud/cement	4252	2009
county	18	mud/wood	47580	2009
county	18	other	1951	2009
county	18	tin	134	2009
county	15	stone	4904	2009
county	18	wood only	61182	2009
county	19	brick/block	9510	2009
county	19	corrugated iron sheets	3001	2009
county	19	grass/reeds	267	2009
county	19	mud/cement	2602	2009
county	19	mud/wood	20485	2009
county	19	other	274	2009
county	19	tin	405	2009
county	19	wood only	121347	2009
county	25	brick/block	1359	2009
county	25	corrugated iron sheets	262	2009
county	25	grass/reeds	2448	2009
county	25	mud/cement	6197	2009
county	25	mud/wood	28057	2009
county	25	other	2569	2009
county	25	tin	1202	2009
county	25	wood only	3520	2009
county	41	brick/block	26766	2009
county	41	corrugated iron sheets	811	2009
county	41	grass/reeds	260	2009
county	41	mud/cement	38390	2009
county	41	mud/wood	126728	2009
county	41	other	1903	2009
county	41	tin	116	2009
county	41	wood only	343	2009
county	6	brick/block	30474	2009
county	6	corrugated iron sheets	616	2009
county	6	grass/reeds	354	2009
county	6	mud/cement	6177	2009
county	6	mud/wood	27940	2009
county	6	other	376	2009
county	6	tin	76	2009
county	6	wood only	888	2009
county	4	brick/block	2705	2009
county	4	corrugated iron sheets	330	2009
county	4	grass/reeds	13961	2009
county	4	mud/cement	3896	2009
county	4	mud/wood	19429	2009
county	4	other	280	2009
county	4	tin	56	2009
county	4	wood only	5722	2009
county	13	brick/block	3316	2009
county	13	corrugated iron sheets	70	2009
county	13	grass/reeds	105	2009
county	13	mud/cement	1993	2009
county	13	mud/wood	19839	2009
county	13	other	84	2009
county	13	tin	6	2009
county	13	wood only	580	2009
county	26	brick/block	26728	2009
county	26	corrugated iron sheets	748	2009
county	26	grass/reeds	179	2009
county	26	mud/cement	21857	2009
county	26	mud/wood	115572	2009
county	26	other	987	2009
county	26	tin	76	2009
county	26	wood only	1109	2009
county	23	brick/block	4969	2009
county	23	corrugated iron sheets	773	2009
county	23	grass/reeds	33318	2009
county	23	mud/cement	4858	2009
county	23	mud/wood	30909	2009
county	23	other	9775	2009
county	23	tin	1003	2009
county	23	wood only	36611	2009
county	27	brick/block	51138	2009
county	27	corrugated iron sheets	5244	2009
county	27	grass/reeds	221	2009
county	27	mud/cement	24850	2009
county	27	mud/wood	91857	2009
county	27	other	2764	2009
county	27	tin	254	2009
county	27	wood only	13632	2009
county	38	brick/block	18807	2009
county	38	corrugated iron sheets	141	2009
county	38	grass/reeds	32	2009
county	38	mud/cement	12403	2009
county	38	mud/wood	90495	2009
county	38	other	225	2009
county	38	tin	28	2009
county	38	wood only	156	2009
county	8	brick/block	2370	2009
county	8	corrugated iron sheets	155	2009
county	8	grass/reeds	54588	2009
county	8	mud/cement	981	2009
county	8	mud/wood	2567	2009
county	8	other	164	2009
county	8	tin	49	2009
county	8	wood only	6477	2009
county	24	brick/block	4769	2009
county	24	corrugated iron sheets	262	2009
county	24	grass/reeds	594	2009
county	24	mud/cement	9847	2009
county	24	mud/wood	74815	2009
county	24	other	266	2009
county	24	tin	49	2009
county	24	wood only	2787	2009
county	30	stone	5646	2009
county	36	stone	7261	2009
county	39	stone	4013	2009
county	40	stone	2874	2009
county	28	stone	7313	2009
county	14	stone	22084	2009
county	7	stone	4606	2009
county	43	stone	5331	2009
county	11	stone	3220	2009
county	34	stone	47839	2009
county	37	stone	2758	2009
county	35	stone	13471	2009
county	22	stone	231040	2009
county	3	stone	21342	2009
county	20	stone	37396	2009
county	45	stone	2456	2009
county	42	stone	7413	2009
county	2	stone	18566	2009
county	31	stone	14846	2009
county	5	stone	2393	2009
county	16	stone	65774	2009
county	17	stone	4772	2009
county	9	stone	3541	2009
county	10	stone	890	2009
county	12	stone	48918	2009
county	44	stone	1800	2009
county	1	stone	81877	2009
county	21	stone	69958	2009
county	47	stone	466360	2009
county	32	stone	134825	2009
county	29	stone	2004	2009
county	33	stone	9454	2009
county	46	stone	853	2009
county	18	stone	19194	2009
county	19	stone	43462	2009
county	25	stone	1617	2009
county	41	stone	3347	2009
county	6	stone	3138	2009
county	4	stone	895	2009
county	13	stone	1396	2009
county	26	stone	2376	2009
county	23	stone	719	2009
county	27	stone	11656	2009
county	38	stone	954	2009
county	8	stone	3575	2009
county	24	stone	360	2009
\.


--
-- Name: maintypeofwallmaterial pk_maintypeofwallmaterial; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.maintypeofwallmaterial
    ADD CONSTRAINT pk_maintypeofwallmaterial PRIMARY KEY (geo_level, geo_code, geo_version, "main type of wall material");


--
-- PostgreSQL database dump complete
--


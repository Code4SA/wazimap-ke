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

ALTER TABLE IF EXISTS ONLY public.vote_for_which_party DROP CONSTRAINT IF EXISTS pk_vote_for_which_party;
DROP TABLE IF EXISTS public.vote_for_which_party;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: vote_for_which_party; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.vote_for_which_party (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    vote_for_which_party character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: vote_for_which_party; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.vote_for_which_party (geo_level, geo_code, geo_version, vote_for_which_party, total) FROM stdin;
county	30	2009	Other	1
county	30	2009	The National Alliance (TNA)	8
county	30	2009	United Republican Party (URP)	23
county	36	2009	Orange Democratic Movement (ODM)	7
county	36	2009	Refused to answer	10
county	36	2009	Restore and Build Kenya (RBK)	1
county	36	2009	The National Alliance (TNA)	10
county	36	2009	United Republican Party (URP)	20
county	39	2009	Don't know	12
county	39	2009	Ford Kenya	6
county	39	2009	NARCK Kenya	1
county	39	2009	Orange Democratic Movement (ODM)	17
county	39	2009	Refused to answer	13
county	39	2009	The National Alliance (TNA)	19
county	39	2009	United Democratic Front (UDF)	1
county	39	2009	United Republican Party (URP)	5
county	39	2009	Would not vote	6
county	40	2009	Don't know	9
county	40	2009	Orange Democratic Movement (ODM)	14
county	40	2009	Other	1
county	40	2009	Refused to answer	4
county	40	2009	The National Alliance (TNA)	5
county	40	2009	United Republican Party (URP)	1
county	40	2009	Would not vote	6
county	28	2009	Orange Democratic Movement (ODM)	1
county	28	2009	Refused to answer	1
county	28	2009	The National Alliance (TNA)	2
county	28	2009	United Democratic Front (UDF)	1
county	28	2009	United Republican Party (URP)	11
county	14	2009	Don't know	2
county	14	2009	NARCK Kenya	1
county	14	2009	Orange Democratic Movement (ODM)	1
county	14	2009	Refused to answer	9
county	14	2009	The National Alliance (TNA)	27
county	7	2009	Don't know	4
county	7	2009	Orange Democratic Movement (ODM)	1
county	7	2009	Refused to answer	3
county	7	2009	The National Alliance (TNA)	14
county	7	2009	United Republican Party (URP)	6
county	7	2009	Would not vote	4
county	43	2009	Orange Democratic Movement (ODM)	45
county	43	2009	Refused to answer	4
county	43	2009	The National Alliance (TNA)	6
county	43	2009	Would not vote	1
county	11	2009	Orange Democratic Movement (ODM)	2
county	11	2009	Refused to answer	3
county	11	2009	The National Alliance (TNA)	2
county	11	2009	Would not vote	1
county	34	2009	Orange Democratic Movement (ODM)	16
county	34	2009	Refused to answer	3
county	34	2009	Restore and Build Kenya (RBK)	1
county	34	2009	The National Alliance (TNA)	22
county	34	2009	United Democratic Front (UDF)	2
county	34	2009	Wiper Democratic Movement (WDM-K)	2
county	34	2009	Would not vote	2
county	37	2009	Don't know	16
county	37	2009	Ford Kenya	1
county	37	2009	Orange Democratic Movement (ODM)	37
county	37	2009	Other	1
county	37	2009	Refused to answer	17
county	37	2009	Restore and Build Kenya (RBK)	1
county	37	2009	The National Alliance (TNA)	15
county	37	2009	United Democratic Front (UDF)	1
county	37	2009	United Republican Party (URP)	1
county	37	2009	Wiper Democratic Movement (WDM-K)	1
county	37	2009	Would not vote	5
county	35	2009	Don't know	1
county	35	2009	Orange Democratic Movement (ODM)	15
county	35	2009	Refused to answer	6
county	35	2009	The National Alliance (TNA)	3
county	35	2009	United Democratic Front (UDF)	1
county	35	2009	United Republican Party (URP)	13
county	35	2009	Would not vote	1
county	22	2009	Don't know	6
county	22	2009	Orange Democratic Movement (ODM)	7
county	22	2009	Other	1
county	22	2009	Refused to answer	7
county	22	2009	The National Alliance (TNA)	94
county	22	2009	Wiper Democratic Movement (WDM-K)	1
county	22	2009	Would not vote	4
county	3	2009	Don't know	5
county	3	2009	Orange Democratic Movement (ODM)	22
county	3	2009	Refused to answer	20
county	3	2009	The National Alliance (TNA)	4
county	3	2009	Wiper Democratic Movement (WDM-K)	1
county	3	2009	Would not vote	12
county	20	2009	NARCK Kenya	1
county	20	2009	Orange Democratic Movement (ODM)	1
county	20	2009	Refused to answer	2
county	20	2009	The National Alliance (TNA)	35
county	20	2009	United Republican Party (URP)	1
county	45	2009	Don't know	6
county	45	2009	Kenya Social Congress (KSC)	1
county	45	2009	NARCK Kenya	1
county	45	2009	Orange Democratic Movement (ODM)	21
county	45	2009	Refused to answer	15
county	45	2009	The National Alliance (TNA)	24
county	45	2009	United Republican Party (URP)	1
county	45	2009	Would not vote	3
county	42	2009	Don't know	1
county	42	2009	Ford Kenya	1
county	42	2009	Kenya Social Congress (KSC)	1
county	42	2009	Orange Democratic Movement (ODM)	43
county	42	2009	Refused to answer	4
county	42	2009	The National Alliance (TNA)	3
county	42	2009	Would not vote	3
county	15	2009	Don't know	3
county	15	2009	NARCK Kenya	1
county	15	2009	Orange Democratic Movement (ODM)	6
county	15	2009	Refused to answer	9
county	15	2009	Restore and Build Kenya (RBK)	1
county	15	2009	The National Alliance (TNA)	14
county	15	2009	United Republican Party (URP)	3
county	15	2009	Wiper Democratic Movement (WDM-K)	18
county	15	2009	Would not vote	1
county	2	2009	Don't know	1
county	2	2009	Orange Democratic Movement (ODM)	17
county	2	2009	Refused to answer	8
county	2	2009	Restore and Build Kenya (RBK)	1
county	2	2009	The National Alliance (TNA)	8
county	2	2009	United Democratic Front (UDF)	1
county	2	2009	Would not vote	4
county	31	2009	Don't know	5
county	31	2009	Orange Democratic Movement (ODM)	1
county	31	2009	Other	1
county	31	2009	Refused to answer	5
county	31	2009	The National Alliance (TNA)	11
county	31	2009	Would not vote	1
county	5	2009	Orange Democratic Movement (ODM)	2
county	5	2009	The National Alliance (TNA)	5
county	5	2009	Would not vote	1
county	16	2009	Don't know	3
county	16	2009	Orange Democratic Movement (ODM)	15
county	16	2009	Refused to answer	11
county	16	2009	The National Alliance (TNA)	23
county	16	2009	United Republican Party (URP)	2
county	16	2009	Wiper Democratic Movement (WDM-K)	17
county	16	2009	Would not vote	1
county	17	2009	Don't know	5
county	17	2009	Orange Democratic Movement (ODM)	17
county	17	2009	Other	1
county	17	2009	Refused to answer	9
county	17	2009	The National Alliance (TNA)	12
county	17	2009	Wiper Democratic Movement (WDM-K)	7
county	17	2009	Would not vote	5
county	9	2009	Don't know	5
county	9	2009	Orange Democratic Movement (ODM)	11
county	9	2009	Refused to answer	4
county	9	2009	The National Alliance (TNA)	13
county	9	2009	United Republican Party (URP)	7
county	9	2009	Wiper Democratic Movement (WDM-K)	1
county	9	2009	Would not vote	7
county	10	2009	Don't know	2
county	10	2009	Orange Democratic Movement (ODM)	5
county	10	2009	Refused to answer	4
county	10	2009	The National Alliance (TNA)	5
county	12	2009	Don't know	2
county	12	2009	Kenya Social Congress (KSC)	1
county	12	2009	NARCK Kenya	1
county	12	2009	Orange Democratic Movement (ODM)	1
county	12	2009	Refused to answer	14
county	12	2009	The National Alliance (TNA)	64
county	12	2009	United Republican Party (URP)	1
county	12	2009	Wiper Democratic Movement (WDM-K)	1
county	44	2009	Don't know	4
county	44	2009	Orange Democratic Movement (ODM)	36
county	44	2009	Refused to answer	4
county	44	2009	The National Alliance (TNA)	3
county	44	2009	Would not vote	1
county	1	2009	Don't know	6
county	1	2009	Orange Democratic Movement (ODM)	24
county	1	2009	Refused to answer	13
county	1	2009	The National Alliance (TNA)	13
county	1	2009	United Democratic Front (UDF)	1
county	1	2009	Wiper Democratic Movement (WDM-K)	4
county	1	2009	Would not vote	11
county	21	2009	Don't know	1
county	21	2009	Refused to answer	2
county	21	2009	The National Alliance (TNA)	60
county	21	2009	United Democratic Front (UDF)	1
county	47	2009	Don't know	17
county	47	2009	Kenya Social Congress (KSC)	1
county	47	2009	NARCK Kenya	2
county	47	2009	Orange Democratic Movement (ODM)	78
county	47	2009	Other	6
county	47	2009	Refused to answer	15
county	47	2009	The National Alliance (TNA)	94
county	47	2009	United Democratic Front (UDF)	1
county	47	2009	United Republican Party (URP)	2
county	47	2009	Wiper Democratic Movement (WDM-K)	12
county	47	2009	Would not vote	20
county	32	2009	Don't know	7
county	32	2009	Orange Democratic Movement (ODM)	10
county	32	2009	Refused to answer	6
county	32	2009	The National Alliance (TNA)	60
county	32	2009	United Democratic Front (UDF)	2
county	32	2009	United Republican Party (URP)	14
county	32	2009	Would not vote	5
county	29	2009	Orange Democratic Movement (ODM)	4
county	29	2009	Refused to answer	3
county	29	2009	SAFINA	1
county	29	2009	The National Alliance (TNA)	7
county	29	2009	United Democratic Front (UDF)	3
county	29	2009	United Republican Party (URP)	30
county	33	2009	Don't know	4
county	33	2009	Orange Democratic Movement (ODM)	10
county	33	2009	Refused to answer	6
county	33	2009	The National Alliance (TNA)	23
county	33	2009	United Republican Party (URP)	1
county	33	2009	Wiper Democratic Movement (WDM-K)	1
county	33	2009	Would not vote	3
county	46	2009	Orange Democratic Movement (ODM)	19
county	46	2009	Refused to answer	7
county	46	2009	The National Alliance (TNA)	13
county	46	2009	Would not vote	1
county	18	2009	Other	1
county	18	2009	Refused to answer	1
county	18	2009	The National Alliance (TNA)	37
county	18	2009	United Democratic Front (UDF)	1
county	19	2009	NARCK Kenya	2
county	19	2009	Refused to answer	2
county	19	2009	The National Alliance (TNA)	44
county	25	2009	Don't know	1
county	25	2009	Orange Democratic Movement (ODM)	1
county	25	2009	Refused to answer	1
county	25	2009	The National Alliance (TNA)	2
county	25	2009	United Republican Party (URP)	2
county	25	2009	Would not vote	1
county	41	2009	Orange Democratic Movement (ODM)	42
county	41	2009	Other	1
county	41	2009	Refused to answer	2
county	41	2009	The National Alliance (TNA)	3
county	6	2009	Don't know	1
county	6	2009	Orange Democratic Movement (ODM)	9
county	6	2009	Refused to answer	3
county	6	2009	The National Alliance (TNA)	2
county	6	2009	Would not vote	1
county	4	2009	Don't know	2
county	4	2009	NARCK Kenya	2
county	4	2009	The National Alliance (TNA)	3
county	4	2009	Would not vote	1
county	13	2009	Don't know	1
county	13	2009	Kenya Social Congress (KSC)	1
county	13	2009	Orange Democratic Movement (ODM)	1
county	13	2009	Refused to answer	3
county	13	2009	Restore and Build Kenya (RBK)	1
county	13	2009	The National Alliance (TNA)	16
county	13	2009	United Democratic Front (UDF)	1
county	26	2009	Don't know	13
county	26	2009	Ford Kenya	2
county	26	2009	NARCK Kenya	1
county	26	2009	Orange Democratic Movement (ODM)	10
county	26	2009	Other	1
county	26	2009	Refused to answer	9
county	26	2009	The National Alliance (TNA)	10
county	26	2009	United Republican Party (URP)	1
county	26	2009	Would not vote	1
county	23	2009	Don't know	3
county	23	2009	Orange Democratic Movement (ODM)	32
county	23	2009	Refused to answer	2
county	23	2009	The National Alliance (TNA)	8
county	23	2009	United Republican Party (URP)	3
county	27	2009	Don't know	1
county	27	2009	Orange Democratic Movement (ODM)	15
county	27	2009	Refused to answer	1
county	27	2009	SAFINA	1
county	27	2009	The National Alliance (TNA)	15
county	27	2009	United Democratic Front (UDF)	3
county	27	2009	United Republican Party (URP)	19
county	27	2009	Would not vote	1
county	38	2009	Don't know	6
county	38	2009	Orange Democratic Movement (ODM)	12
county	38	2009	Other	1
county	38	2009	Refused to answer	2
county	38	2009	The National Alliance (TNA)	8
county	38	2009	United Democratic Front (UDF)	2
county	38	2009	Would not vote	1
county	8	2009	Don't know	9
county	8	2009	Orange Democratic Movement (ODM)	9
county	8	2009	Refused to answer	1
county	8	2009	The National Alliance (TNA)	4
county	8	2009	United Republican Party (URP)	1
county	8	2009	Would not vote	8
county	24	2009	Orange Democratic Movement (ODM)	2
county	24	2009	The National Alliance (TNA)	3
county	24	2009	United Republican Party (URP)	19
country	KE	2009	Restore and Build Kenya (RBK)	6
country	KE	2009	NARCK Kenya	13
country	KE	2009	The National Alliance (TNA)	876
country	KE	2009	Refused to answer	268
country	KE	2009	Ford Kenya	10
country	KE	2009	United Republican Party (URP)	187
country	KE	2009	United Democratic Front (UDF)	22
country	KE	2009	Don't know	164
country	KE	2009	SAFINA	2
country	KE	2009	Other	16
country	KE	2009	Would not vote	123
country	KE	2009	Wiper Democratic Movement (WDM-K)	66
country	KE	2009	Kenya Social Congress (KSC)	5
country	KE	2009	Orange Democratic Movement (ODM)	639
\.


--
-- Name: vote_for_which_party pk_vote_for_which_party; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.vote_for_which_party
    ADD CONSTRAINT pk_vote_for_which_party PRIMARY KEY (geo_level, geo_code, geo_version, vote_for_which_party);


--
-- PostgreSQL database dump complete
--


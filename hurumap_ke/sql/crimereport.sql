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

ALTER TABLE IF EXISTS ONLY public.crimereport DROP CONSTRAINT IF EXISTS pk_crimereport;
DROP TABLE IF EXISTS public.crimereport;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: crimereport; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.crimereport (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    crimereport character varying(128) NOT NULL,
    total integer NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: crimereport; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.crimereport (geo_level, geo_code, crimereport, total, geo_version) FROM stdin;
county	20	crimes	1177	2009
county	20	crimesindex	223	2009
county	6	crimes	961	2009
county	6	crimesindex	338	2009
county	1	crimes	3194	2009
county	1	crimesindex	340	2009
county	5	crimes	492	2009
county	5	crimesindex	485	2009
county	32	crimes	4384	2009
county	32	crimesindex	273	2009
county	18	crimes	1446	2009
county	18	crimesindex	243	2009
county	22	crimes	4768	2009
county	22	crimesindex	294	2009
county	35	crimes	1510	2009
county	35	crimesindex	256	2009
county	21	crimes	2363	2009
county	21	crimesindex	251	2009
county	28	crimes	571	2009
county	28	crimesindex	154	2009
county	19	crimes	1668	2009
county	19	crimesindex	240	2009
county	42	crimes	2293	2009
county	42	crimesindex	237	2009
county	4	crimes	622	2009
county	4	crimesindex	259	2009
county	34	crimes	1256	2009
county	34	crimesindex	183	2009
county	47	crimes	4383	2009
county	47	crimesindex	140	2009
county	3	crimes	2199	2009
county	3	crimesindex	198	2009
county	27	crimes	1654	2009
county	27	crimesindex	185	2009
county	26	crimes	1781	2009
county	26	crimesindex	218	2009
county	33	crimes	1335	2009
county	33	crimesindex	157	2009
county	31	crimes	830	2009
county	31	crimesindex	208	2009
county	13	crimes	628	2009
county	13	crimesindex	172	2009
county	41	crimes	1493	2009
county	41	crimesindex	177	2009
county	45	crimes	2018	2009
county	45	crimesindex	175	2009
county	30	crimes	1035	2009
county	30	crimesindex	186	2009
county	25	crimes	355	2009
county	25	crimesindex	159	2009
county	14	crimes	848	2009
county	14	crimesindex	164	2009
county	39	crimes	2852	2009
county	39	crimesindex	207	2009
county	11	crimes	213	2009
county	11	crimesindex	149	2009
county	2	crimes	1097	2009
county	2	crimesindex	169	2009
county	37	crimes	2514	2009
county	37	crimesindex	151	2009
county	46	crimes	1124	2009
county	46	crimesindex	188	2009
county	12	crimes	4215	2009
county	12	crimesindex	311	2009
county	29	crimes	989	2009
county	29	crimesindex	131	2009
county	24	crimes	684	2009
county	24	crimesindex	133	2009
county	38	crimes	1146	2009
county	38	crimesindex	207	2009
county	43	crimes	1568	2009
county	43	crimesindex	163	2009
county	7	crimes	638	2009
county	7	crimesindex	102	2009
county	10	crimes	468	2009
county	10	crimesindex	161	2009
county	40	crimes	1553	2009
county	40	crimesindex	209	2009
county	36	crimes	968	2009
county	36	crimesindex	109	2009
county	44	crimes	1282	2009
county	44	crimesindex	140	2009
county	23	crimes	974	2009
county	23	crimesindex	114	2009
county	15	crimes	1573	2009
county	15	crimesindex	155	2009
county	16	crimes	1461	2009
county	16	crimesindex	133	2009
county	17	crimes	1025	2009
county	17	crimesindex	116	2009
county	8	crimes	317	2009
county	8	crimesindex	31	2009
county	9	crimes	271	2009
county	9	crimesindex	41	2009
country	KE	crimes	72490	2009
country	KE	crimesindex	188	2009
\.


--
-- Name: crimereport pk_crimereport; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.crimereport
    ADD CONSTRAINT pk_crimereport PRIMARY KEY (geo_level, geo_code, geo_version, crimereport);


--
-- PostgreSQL database dump complete
--


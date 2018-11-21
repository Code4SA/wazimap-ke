--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.privatelandownershipinhectarespercategory DROP CONSTRAINT IF EXISTS pk_privatelandownershipinhectarespercategory;
DROP TABLE IF EXISTS public.privatelandownershipinhectarespercategory;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: privatelandownershipinhectarespercategory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.privatelandownershipinhectarespercategory (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "private land ownership in hectares per category" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: privatelandownershipinhectarespercategory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.privatelandownershipinhectarespercategory (geo_level, geo_code, geo_version, "private land ownership in hectares per category", total) FROM stdin;
province	EC	2016	Individual	4692320
province	FS	2016	Individual	5005878
province	GT	2016	Individual	546612
province	KZN	2016	Individual	1579543
province	LIM	2016	Individual	1718861
province	MP	2016	Individual	1432232
province	NW	2016	Individual	3215926
province	NC	2016	Individual	15083393
province	WC	2016	Individual	3756518
province	EC	2016	Company	1982479
province	FS	2016	Company	1978952
province	GT	2016	Company	618342
province	KZN	2016	Company	1627042
province	LIM	2016	Company	3918210
province	MP	2016	Company	2219322
province	NW	2016	Company	2025825
province	NC	2016	Company	5641747
province	WC	2016	Company	3187986
province	EC	2016	CBOs	190249
province	FS	2016	CBOs	126044
province	GT	2016	CBOs	60650
province	KZN	2016	CBOs	300556
province	LIM	2016	CBOs	705466
province	MP	2016	CBOs	240947
province	NW	2016	CBOs	341807
province	NC	2016	CBOs	1247673
province	WC	2016	CBOs	336097
province	EC	2016	Trusts	3964671
province	FS	2016	Trusts	4894214
province	GT	2016	Trusts	133797
province	KZN	2016	Trusts	1562455
province	LIM	2016	Trusts	1355839
province	MP	2016	Trusts	1219721
province	NW	2016	Trusts	1953015
province	NC	2016	Trusts	10057482
province	WC	2016	Trusts	4150662
province	EC	2016	Co-ownership	69870
province	FS	2016	Co-ownership	31470
province	GT	2016	Co-ownership	11556
province	KZN	2016	Co-ownership	161950
province	LIM	2016	Co-ownership	60564
province	MP	2016	Co-ownership	36185
province	NW	2016	Co-ownership	117724
province	NC	2016	Co-ownership	126464
province	WC	2016	Co-ownership	267807
country	ZA	2016	Individual	37031283
country	ZA	2016	Company	23199904
country	ZA	2016	CBOs	3549489
country	ZA	2016	Trusts	29291857
country	ZA	2016	Co-ownership	883589
\.


--
-- Name: privatelandownershipinhectarespercategory pk_privatelandownershipinhectarespercategory; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.privatelandownershipinhectarespercategory
    ADD CONSTRAINT pk_privatelandownershipinhectarespercategory PRIMARY KEY (geo_level, geo_code, geo_version, "private land ownership in hectares per category");


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

-- Started on 2018-08-23 12:32:57 EAT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 193 (class 1259 OID 80393)
-- Name: sectionaltitleownershipinhectarespercategory; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.sectionaltitleownershipinhectarespercategory (
    geo_level character varying(25) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "sectional title ownership in hectares per category" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.sectionaltitleownershipinhectarespercategory OWNER TO our_land;

--
-- TOC entry 2194 (class 0 OID 80393)
-- Dependencies: 193
-- Data for Name: sectionaltitleownershipinhectarespercategory; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.sectionaltitleownershipinhectarespercategory (geo_level, geo_code, geo_version, "sectional title ownership in hectares per category", total) FROM stdin;
province	EC	2011		680
province	FS	2011		1232
province	GT	2011		4770
province	KZN	2011		979
province	LIM	2011		1541
province	MP	2011		104
province	NW	2011		1134
province	NC	2011		6
province	WC	2011		533
province	EC	2011	Company	54
province	FS	2011	Company	48
province	GT	2011	Company	36187
province	KZN	2011	Company	320
province	LIM	2011	Company	53
province	MP	2011	Company	45
province	NW	2011	Company	429
province	NC	2011	Company	4
province	WC	2011	Company	382
province	EC	2011	CBOs	2
province	FS	2011	CBOs	6
province	GT	2011	CBOs	8
province	KZN	2011	CBOs	2
province	LIM	2011	CBOs	0
province	MP	2011	CBOs	0
province	NW	2011	CBOs	0
province	NC	2011	CBOs	0
province	WC	2011	CBOs	6
province	EC	2011	Trust	33
province	FS	2011	Trust	38
province	GT	2011	Trust	570
province	KZN	2011	Trust	116
province	LIM	2011	Trust	14
province	MP	2011	Trust	12
province	NW	2011	Trust	16
province	NC	2011	Trust	2
province	WC	2011	Trust	258
province	EC	2011	Co-ownership	21
province	FS	2011	Co-ownership	22
province	GT	2011	Co-ownership	16
province	KZN	2011	Co-ownership	99
province	LIM	2011	Co-ownership	7
province	MP	2011	Co-ownership	18
province	NW	2011	Co-ownership	13
province	NC	2011	Co-ownership	0
province	WC	2011	Co-ownership	109
country	ZA	2011		10980
country	ZA	2011	Company	37523
country	ZA	2011	CBOs	24
country	ZA	2011	Trust	1059
country	ZA	2011	Co-ownership	453
\.


-- Completed on 2018-08-23 12:32:57 EAT

--
-- PostgreSQL database dump complete
--

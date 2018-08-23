--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

-- Started on 2018-08-23 12:26:17 EAT

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
-- TOC entry 194 (class 1259 OID 80397)
-- Name: numberofsectionaltitleownersbycategory; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.numberofsectionaltitleownersbycategory (
    geo_level character varying(25) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of sectional title owners by category" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.numberofsectionaltitleownersbycategory OWNER TO our_land;

--
-- TOC entry 2194 (class 0 OID 80397)
-- Dependencies: 194
-- Data for Name: numberofsectionaltitleownersbycategory; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.numberofsectionaltitleownersbycategory (geo_level, geo_code, geo_version, "number of sectional title owners by category", total) FROM stdin;
province	EC	2011	Individual	30162
province	FS	2011	Individual	25844
province	GT	2011	Individual	360802
province	KZN	2011	Individual	154106
province	LIM	2011	Individual	8607
province	MP	2011	Individual	11718
province	NW	2011	Individual	18394
province	NC	2011	Individual	817
province	WC	2011	Individual	116516
province	EC	2011	Company	1153
province	FS	2011	Company	1004
province	GT	2011	Company	19022
province	KZN	2011	Company	10274
province	LIM	2011	Company	1085
province	MP	2011	Company	1084
province	NW	2011	Company	1308
province	NC	2011	Company	66
province	WC	2011	Company	11931
province	EC	2011	CBOs	80
province	FS	2011	CBOs	51
province	GT	2011	CBOs	442
province	KZN	2011	CBOs	243
province	LIM	2011	CBOs	10
province	MP	2011	CBOs	10
province	NW	2011	CBOs	13
province	NC	2011	CBOs	2
province	WC	2011	CBOs	377
province	EC	2011	Trust	2146
province	FS	2011	Trust	2504
province	GT	2011	Trust	15254
province	KZN	2011	Trust	7999
province	LIM	2011	Trust	900
province	MP	2011	Trust	939
province	NW	2011	Trust	1410
province	NC	2011	Trust	81
province	WC	2011	Trust	11645
country	ZA	2011	Individual	726966
country	ZA	2011	Company	46927
country	ZA	2011	CBOs	1228
country	ZA	2011	Trust	42878
\.


-- Completed on 2018-08-23 12:26:17 EAT

--
-- PostgreSQL database dump complete
--

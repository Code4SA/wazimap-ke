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

ALTER TABLE IF EXISTS ONLY public.numberofprivatelandownersbycategory DROP CONSTRAINT IF EXISTS pk_numberofprivatelandownersbycategory;
DROP TABLE IF EXISTS public.numberofprivatelandownersbycategory;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofprivatelandownersbycategory; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.numberofprivatelandownersbycategory (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of private land owners by category" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: numberofprivatelandownersbycategory; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.numberofprivatelandownersbycategory (geo_level, geo_code, geo_version, "number of private land owners by category", total) FROM stdin;
province	EC	2016	Individual	659469
province	FS	2016	Individual	484942
province	GT	2016	Individual	2031370
province	KZN	2016	Individual	812027
province	MP	2016	Individual	336211
province	NW	2016	Individual	300486
province	NC	2016	Individual	195052
province	WC	2016	Individual	1134283
province	EC	2016	Company	10554
province	FS	2016	Company	8527
province	GT	2016	Company	61350
province	KZN	2016	Company	22079
province	MP	2016	Company	11569
province	NW	2016	Company	10873
province	NC	2016	Company	4308
province	WC	2016	Company	35281
province	EC	2016	Trusts	11628
province	FS	2016	Trusts	11061
province	GT	2016	Trusts	23643
province	KZN	2016	Trusts	16361
province	MP	2016	Trusts	6067
province	NW	2016	Trusts	6839
province	NC	2016	Trusts	4247
province	WC	2016	Trusts	32996
province	EC	2016	CBOs	2785
province	FS	2016	CBOs	1520
province	GT	2016	CBOs	7761
province	KZN	2016	CBOs	3065
province	MP	2016	CBOs	1645
province	NW	2016	CBOs	1586
province	NC	2016	CBOs	1224
province	WC	2016	CBOs	5188
country	ZA	2016	Individual	6150096
country	ZA	2016	Company	176062
country	ZA	2016	Trusts	118214
country	ZA	2016	CBOs	25927
province	LIM	2016	Individual	196256
province	LIM	2016	Company	11521
province	LIM	2016	Trusts	5372
province	LIM	2016	CBOs	1153
\.


--
-- Name: numberofprivatelandownersbycategory pk_numberofprivatelandownersbycategory; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.numberofprivatelandownersbycategory
    ADD CONSTRAINT pk_numberofprivatelandownersbycategory PRIMARY KEY (geo_level, geo_code, geo_version, "number of private land owners by category");


--
-- PostgreSQL database dump complete
--


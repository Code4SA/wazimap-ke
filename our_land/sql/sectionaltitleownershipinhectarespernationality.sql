--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)
-- Dumped by pg_dump version 10.5 (Ubuntu 10.5-0ubuntu0.18.04)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.sectionaltitleownershipinhectarespernationality DROP CONSTRAINT IF EXISTS pk_sectionaltitleownershipinhectarespernationality;
DROP TABLE IF EXISTS public.sectionaltitleownershipinhectarespernationality;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: sectionaltitleownershipinhectarespernationality; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.sectionaltitleownershipinhectarespernationality (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "sectional title ownership in hectares per nationality" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.sectionaltitleownershipinhectarespernationality OWNER TO our_land;

--
-- Data for Name: sectionaltitleownershipinhectarespernationality; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.sectionaltitleownershipinhectarespernationality (geo_level, geo_code, geo_version, "sectional title ownership in hectares per nationality", total) FROM stdin;
province	EC	2011	South African	534
province	FS	2011	South African	1216
province	GT	2011	South African	3878
province	KZN	2011	South African	513
province	MP	2011	South African	85
province	NW	2011	South African	1132
province	NC	2011	South African	5
province	WC	2011	South African	403
country	ZA	2011	South African	9305
province	EC	2011	Foreign	135
province	FS	2011	Foreign	17
province	GT	2011	Foreign	498
province	KZN	2011	Foreign	386
province	MP	2011	Foreign	6
province	NW	2011	Foreign	4
province	NC	2011	Foreign	1
province	WC	2011	Foreign	87
country	ZA	2011	Foreign	1138
province	EC	2011	Co-ownership	29
province	FS	2011	Co-ownership	18
province	GT	2011	Co-ownership	372
province	KZN	2011	Co-ownership	160
province	MP	2011	Co-ownership	28
province	NW	2011	Co-ownership	8
province	NC	2011	Co-ownership	1
province	WC	2011	Co-ownership	104
country	ZA	2011	Co-ownership	724
province	EC	2011	Other	3
province	FS	2011	Other	1
province	GT	2011	Other	175
province	KZN	2011	Other	15
province	MP	2011	Other	1
province	NW	2011	Other	2
province	NC	2011	Other	0
province	WC	2011	Other	31
country	ZA	2011	Other	229
province	LIM	2011	South African	1538
province	LIM	2011	Foreign	4
province	LIM	2011	Co-ownership	4
province	LIM	2011	Other	1
\.


--
-- Name: sectionaltitleownershipinhectarespernationality pk_sectionaltitleownershipinhectarespernationality; Type: CONSTRAINT; Schema: public; Owner: our_land
--

ALTER TABLE IF EXISTS ONLY public.sectionaltitleownershipinhectarespernationality
    ADD CONSTRAINT pk_sectionaltitleownershipinhectarespernationality PRIMARY KEY (geo_level, geo_code, geo_version, "sectional title ownership in hectares per nationality");


--
-- PostgreSQL database dump complete
--


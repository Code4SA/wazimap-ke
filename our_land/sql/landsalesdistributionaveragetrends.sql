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

DROP TABLE public.landsalesdistributionaveragetrends;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: landsalesdistributionaveragetrends; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.landsalesdistributionaveragetrends (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    class character varying(128) NOT NULL,
    total numeric
);


ALTER TABLE public.landsalesdistributionaveragetrends OWNER TO our_land;

--
-- Data for Name: landsalesdistributionaveragetrends; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.landsalesdistributionaveragetrends (geo_level, geo_code, geo_version, class, total) FROM stdin;
country	ZA	2016	 < 1 500	-3
country	ZA	2016	 1 501 - 3 000	0
country	ZA	2016	 3 001 - 5 000	0.2
country	ZA	2016	 5 001 - 10 000	-0.4
country	ZA	2016	 10 001 - 20 000	-0.1
country	ZA	2016	 20 001 - 30 000	0.2
country	ZA	2016	 30 001 - 40 000	0
country	ZA	2016	 40 001 - 50 000	0
country	ZA	2016	 50 001 - 100 000	0
country	ZA	2016	 100 001 - 150 000	-0.2
country	ZA	2016	 150 001 - 200 000	-0.3
country	ZA	2016	 200 001 - 300 000	-0.2
country	ZA	2016	 300 001 - 500 000	0.4
country	ZA	2016	 500 001 - 800 000	0.6
country	ZA	2016	 800 001 - 1 000 000	0.5
country	ZA	2016	 > 1 000 000	-19.3
province	EC	2016	 < 1 500	-1.7
province	EC	2016	 1 501 - 3 000	-0.8
province	EC	2016	 3 001 - 5 000	1.7
province	EC	2016	 5 001 - 10 000	-0.8
province	EC	2016	 10 001 - 20 000	-0.8
province	EC	2016	 20 001 - 30 000	-0.1
province	EC	2016	 30 001 - 40 000	1.4
province	EC	2016	 40 001 - 50 000	0.3
province	EC	2016	 50 001 - 100 000	1.3
province	EC	2016	 100 001 - 150 000	1.6
province	EC	2016	 150 001 - 200 000	-2
province	EC	2016	 200 001 - 300 000	0.7
province	EC	2016	 300 001 - 500 000	1.7
province	EC	2016	 500 001 - 800 000	-9.8
province	EC	2016	 800 001 - 1 000 000	\N
province	EC	2016	 > 1 000 000	\N
province	FS	2016	 < 1 500	-7.2
province	FS	2016	 1 501 - 3 000	-1
province	FS	2016	 3 001 - 5 000	1.4
province	FS	2016	 5 001 - 10 000	-1.3
province	FS	2016	 10 001 - 20 000	-0.5
province	FS	2016	 20 001 - 30 000	-0.9
province	FS	2016	 30 001 - 40 000	-0.1
province	FS	2016	 40 001 - 50 000	-1.6
province	FS	2016	 50 001 - 100 000	-1.6
province	FS	2016	 100 001 - 150 000	0.3
province	FS	2016	 150 001 - 200 000	-1.5
province	FS	2016	 200 001 - 300 000	-1.6
province	FS	2016	 300 001 - 500 000	-8.5
province	FS	2016	 500 001 - 800 000	\N
province	FS	2016	 800 001 - 1 000 000	\N
province	FS	2016	 > 1 000 000	\N
province	GT	2016	 < 1 500	3.8
province	GT	2016	 1 501 - 3 000	\N
province	GT	2016	 3 001 - 5 000	0.2
province	GT	2016	 5 001 - 10 000	-2.2
province	GT	2016	 10 001 - 20 000	0.8
province	GT	2016	 20 001 - 30 000	0.4
province	GT	2016	 30 001 - 40 000	0.1
province	GT	2016	 40 001 - 50 000	-0.3
province	GT	2016	 50 001 - 100 000	1.8
province	GT	2016	 100 001 - 150 000	1
province	GT	2016	 150 001 - 200 000	0
province	GT	2016	 200 001 - 300 000	0.7
province	GT	2016	 300 001 - 500 000	-1.6
province	GT	2016	 500 001 - 800 000	-0.8
province	GT	2016	 800 001 - 1 000 000	\N
province	GT	2016	 > 1 000 000	-2.2
province	KZN	2016	 < 1 500	-11.6
province	KZN	2016	 1 501 - 3 000	3.6
province	KZN	2016	 3 001 - 5 000	1.3
province	KZN	2016	 5 001 - 10 000	0.7
province	KZN	2016	 10 001 - 20 000	-0.2
province	KZN	2016	 20 001 - 30 000	-0.6
province	KZN	2016	 30 001 - 40 000	-0.5
province	KZN	2016	 40 001 - 50 000	0.2
province	KZN	2016	 50 001 - 100 000	0
province	KZN	2016	 100 001 - 150 000	-0.4
province	KZN	2016	 150 001 - 200 000	0.8
province	KZN	2016	 200 001 - 300 000	-0.1
province	KZN	2016	 300 001 - 500 000	0.7
province	KZN	2016	 500 001 - 800 000	1.9
province	KZN	2016	 800 001 - 1 000 000	\N
province	KZN	2016	 > 1 000 000	-21.8
province	LIM	2016	 < 1 500	13.8
province	LIM	2016	 1 501 - 3 000	2
province	LIM	2016	 3 001 - 5 000	-0.8
province	LIM	2016	 5 001 - 10 000	-1.4
province	LIM	2016	 10 001 - 20 000	-0.1
province	LIM	2016	 20 001 - 30 000	-0.7
province	LIM	2016	 30 001 - 40 000	-0.5
province	LIM	2016	 40 001 - 50 000	-0.2
province	LIM	2016	 50 001 - 100 000	0.8
province	LIM	2016	 100 001 - 150 000	-1.9
province	LIM	2016	 150 001 - 200 000	0
province	LIM	2016	 200 001 - 300 000	-1.4
province	LIM	2016	 300 001 - 500 000	-0.4
province	LIM	2016	 500 001 - 800 000	3.9
province	LIM	2016	 800 001 - 1 000 000	\N
province	LIM	2016	 > 1 000 000	\N
province	MP	2016	 < 1 500	\N
province	MP	2016	 1 501 - 3 000	2.5
province	MP	2016	 3 001 - 5 000	1.1
province	MP	2016	 5 001 - 10 000	0.3
province	MP	2016	 10 001 - 20 000	0.9
province	MP	2016	 20 001 - 30 000	2
province	MP	2016	 30 001 - 40 000	1.3
province	MP	2016	 40 001 - 50 000	-0.1
province	MP	2016	 50 001 - 100 000	-1
province	MP	2016	 100 001 - 150 000	0.7
province	MP	2016	 150 001 - 200 000	2
province	MP	2016	 200 001 - 300 000	0.8
province	MP	2016	 300 001 - 500 000	0.4
province	MP	2016	 500 001 - 800 000	1.6
province	MP	2016	 800 001 - 1 000 000	\N
province	MP	2016	 > 1 000 000	\N
province	NC	2016	 < 1 500	-2.9
province	NC	2016	 1 501 - 3 000	-0.7
province	NC	2016	 3 001 - 5 000	-1.4
province	NC	2016	 5 001 - 10 000	1.1
province	NC	2016	 10 001 - 20 000	0.5
province	NC	2016	 20 001 - 30 000	\N
province	NC	2016	 30 001 - 40 000	\N
province	NC	2016	 40 001 - 50 000	\N
province	NC	2016	 50 001 - 100 000	-2.5
province	NC	2016	 100 001 - 150 000	-0.9
province	NC	2016	 150 001 - 200 000	-0.6
province	NC	2016	 200 001 - 300 000	0.3
province	NC	2016	 300 001 - 500 000	0.1
province	NC	2016	 500 001 - 800 000	-2.9
province	NC	2016	 800 001 - 1 000 000	\N
province	NC	2016	 > 1 000 000	\N
province	NW	2016	 < 1 500	13.4
province	NW	2016	 1 501 - 3 000	1.2
province	NW	2016	 3 001 - 5 000	-0.2
province	NW	2016	 5 001 - 10 000	1.7
province	NW	2016	 10 001 - 20 000	-0.1
province	NW	2016	 20 001 - 30 000	-0.6
province	NW	2016	 30 001 - 40 000	0
province	NW	2016	 40 001 - 50 000	0.2
province	NW	2016	 50 001 - 100 000	-0.3
province	NW	2016	 100 001 - 150 000	0.7
province	NW	2016	 150 001 - 200 000	0.3
province	NW	2016	 200 001 - 300 000	1.9
province	NW	2016	 300 001 - 500 000	0.4
province	NW	2016	 500 001 - 800 000	-1.1
province	NW	2016	 800 001 - 1 000 000	0.1
province	NW	2016	 > 1 000 000	\N
province	WC	2016	 < 1 500	0.2
province	WC	2016	 1 501 - 3 000	0.1
province	WC	2016	 3 001 - 5 000	0.7
province	WC	2016	 5 001 - 10 000	-0.8
province	WC	2016	 10 001 - 20 000	0
province	WC	2016	 20 001 - 30 000	0.8
province	WC	2016	 30 001 - 40 000	0.5
province	WC	2016	 40 001 - 50 000	-0.1
province	WC	2016	 50 001 - 100 000	-0.8
province	WC	2016	 100 001 - 150 000	-1
province	WC	2016	 150 001 - 200 000	0.5
province	WC	2016	 200 001 - 300 000	-0.5
province	WC	2016	 300 001 - 500 000	0.6
province	WC	2016	 500 001 - 800 000	-2.3
province	WC	2016	 800 001 - 1 000 000	\N
province	WC	2016	 > 1 000 000	6.6
\.


--
-- PostgreSQL database dump complete
--


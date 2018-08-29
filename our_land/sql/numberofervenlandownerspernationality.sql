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

ALTER TABLE ONLY public.numberofervenlandownerspernationality DROP CONSTRAINT pk_numberofervenlandownerspernationality;
DROP TABLE public.numberofervenlandownerspernationality;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: numberofervenlandownerspernationality; Type: TABLE; Schema: public; Owner: our_land
--

CREATE TABLE public.numberofervenlandownerspernationality (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    "number of erven land owners per nationality" character varying(128) NOT NULL,
    total integer
);


ALTER TABLE public.numberofervenlandownerspernationality OWNER TO our_land;

--
-- Data for Name: numberofervenlandownerspernationality; Type: TABLE DATA; Schema: public; Owner: our_land
--

COPY public.numberofervenlandownerspernationality (geo_level, geo_code, geo_version, "number of erven land owners per nationality", total) FROM stdin;
province	EC	2011	South African	580567
province	FS	2011	South African	435000
province	GT	2011	South African	1771387
province	KZN	2011	South African	693422
province	MP	2011	South African	296358
province	NW	2011	South African	253024
province	NC	2011	South African	177128
province	WC	2011	South African	1058526
country	ZA	2011	South African	5416890
province	EC	2011	Foreign	11604
province	FS	2011	Foreign	7268
province	GT	2011	Foreign	88479
province	KZN	2011	Foreign	21355
province	MP	2011	Foreign	7673
province	NW	2011	Foreign	5677
province	NC	2011	Foreign	4624
province	WC	2011	Foreign	50486
country	ZA	2011	Foreign	200629
province	EC	2011	Other	55635
province	FS	2011	Other	27497
province	GT	2011	Other	123914
province	KZN	2011	Other	67258
province	MP	2011	Other	18435
province	NW	2011	Other	19900
province	NC	2011	Other	7143
province	WC	2011	Other	8420
country	ZA	2011	Other	351946
province	LIM	2011	South African	151478
province	LIM	2011	Foreign	3463
province	LIM	2011	Other	23744
\.


--
-- Name: numberofervenlandownerspernationality pk_numberofervenlandownerspernationality; Type: CONSTRAINT; Schema: public; Owner: our_land
--

ALTER TABLE ONLY public.numberofervenlandownerspernationality
    ADD CONSTRAINT pk_numberofervenlandownerspernationality PRIMARY KEY (geo_level, geo_code, geo_version, "number of erven land owners per nationality");


--
-- PostgreSQL database dump complete
--


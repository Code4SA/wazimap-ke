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

ALTER TABLE IF EXISTS ONLY public.workers_hostel_toilet_facility DROP CONSTRAINT IF EXISTS pk_workers_hostel_toilet_facility;
DROP TABLE IF EXISTS public.workers_hostel_toilet_facility;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: workers_hostel_toilet_facility; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workers_hostel_toilet_facility (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    workers_hostel_toilet_facility character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: workers_hostel_toilet_facility; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.workers_hostel_toilet_facility (geo_level, geo_code, geo_version, workers_hostel_toilet_facility, total) FROM stdin;
province	WC	2018	Flush toilet connected to a public sewerage system	8589
province	WC	2018	Flush toilet connected to a septic tank or conservancy tank	13400
province	WC	2018	Pour flush toilet connected to a septic tank (or septage pit)	0
province	WC	2018	Chemical toilet	0
province	WC	2018	Pit latrine/toilet with ventilation pipe	2135
province	WC	2018	Pit latrine/toilet without ventilation pipe	0
province	WC	2018	Bucket toilet (collected by municipality)	2315
province	WC	2018	Bucket toilet (emptied by household)	0
province	WC	2018	Ecological Sanitation System (e.g. urine diversion)	0
province	WC	2018	Open defecation (e.g. no facilities; field; bush)	0
province	WC	2018	Other	0
province	WC	2018	Unspecified	0
province	EC	2018	Flush toilet connected to a public sewerage system	19158
province	EC	2018	Flush toilet connected to a septic tank or conservancy tank	0
province	EC	2018	Pour flush toilet connected to a septic tank (or septage pit)	0
province	EC	2018	Chemical toilet	0
province	EC	2018	Pit latrine/toilet with ventilation pipe	13214
province	EC	2018	Pit latrine/toilet without ventilation pipe	0
province	EC	2018	Bucket toilet (collected by municipality)	0
province	EC	2018	Bucket toilet (emptied by household)	0
province	EC	2018	Ecological Sanitation System (e.g. urine diversion)	0
province	EC	2018	Open defecation (e.g. no facilities; field; bush)	0
province	EC	2018	Other	0
province	EC	2018	Unspecified	0
province	NC	2018	Flush toilet connected to a public sewerage system	23286
province	NC	2018	Flush toilet connected to a septic tank or conservancy tank	2583
province	NC	2018	Pour flush toilet connected to a septic tank (or septage pit)	465
province	NC	2018	Chemical toilet	0
province	NC	2018	Pit latrine/toilet with ventilation pipe	2013
province	NC	2018	Pit latrine/toilet without ventilation pipe	1445
province	NC	2018	Bucket toilet (collected by municipality)	0
province	NC	2018	Bucket toilet (emptied by household)	0
province	NC	2018	Ecological Sanitation System (e.g. urine diversion)	0
province	NC	2018	Open defecation (e.g. no facilities; field; bush)	317
province	NC	2018	Other	0
province	NC	2018	Unspecified	0
province	FS	2018	Flush toilet connected to a public sewerage system	5195
province	FS	2018	Flush toilet connected to a septic tank or conservancy tank	0
province	FS	2018	Pour flush toilet connected to a septic tank (or septage pit)	0
province	FS	2018	Chemical toilet	0
province	FS	2018	Pit latrine/toilet with ventilation pipe	0
province	FS	2018	Pit latrine/toilet without ventilation pipe	0
province	FS	2018	Bucket toilet (collected by municipality)	0
province	FS	2018	Bucket toilet (emptied by household)	0
province	FS	2018	Ecological Sanitation System (e.g. urine diversion)	0
province	FS	2018	Open defecation (e.g. no facilities; field; bush)	0
province	FS	2018	Other	0
province	FS	2018	Unspecified	0
province	KZN	2018	Flush toilet connected to a public sewerage system	6510
province	KZN	2018	Flush toilet connected to a septic tank or conservancy tank	14130
province	KZN	2018	Pour flush toilet connected to a septic tank (or septage pit)	1380
province	KZN	2018	Chemical toilet	2522
province	KZN	2018	Pit latrine/toilet with ventilation pipe	17783
province	KZN	2018	Pit latrine/toilet without ventilation pipe	34855
province	KZN	2018	Bucket toilet (collected by municipality)	1326
province	KZN	2018	Bucket toilet (emptied by household)	0
province	KZN	2018	Ecological Sanitation System (e.g. urine diversion)	0
province	KZN	2018	Open defecation (e.g. no facilities; field; bush)	0
province	KZN	2018	Other	0
province	KZN	2018	Unspecified	0
province	NW	2018	Flush toilet connected to a public sewerage system	13231
province	NW	2018	Flush toilet connected to a septic tank or conservancy tank	0
province	NW	2018	Pour flush toilet connected to a septic tank (or septage pit)	0
province	NW	2018	Chemical toilet	0
province	NW	2018	Pit latrine/toilet with ventilation pipe	4692
province	NW	2018	Pit latrine/toilet without ventilation pipe	877
province	NW	2018	Bucket toilet (collected by municipality)	0
province	NW	2018	Bucket toilet (emptied by household)	0
province	NW	2018	Ecological Sanitation System (e.g. urine diversion)	0
province	NW	2018	Open defecation (e.g. no facilities; field; bush)	0
province	NW	2018	Other	0
province	NW	2018	Unspecified	0
province	GT	2018	Flush toilet connected to a public sewerage system	130025
province	GT	2018	Flush toilet connected to a septic tank or conservancy tank	0
province	GT	2018	Pour flush toilet connected to a septic tank (or septage pit)	704
province	GT	2018	Chemical toilet	0
province	GT	2018	Pit latrine/toilet with ventilation pipe	4726
province	GT	2018	Pit latrine/toilet without ventilation pipe	3103
province	GT	2018	Bucket toilet (collected by municipality)	3289
province	GT	2018	Bucket toilet (emptied by household)	0
province	GT	2018	Ecological Sanitation System (e.g. urine diversion)	0
province	GT	2018	Open defecation (e.g. no facilities; field; bush)	0
province	GT	2018	Other	0
province	GT	2018	Unspecified	0
province	MP	2018	Flush toilet connected to a public sewerage system	27133
province	MP	2018	Flush toilet connected to a septic tank or conservancy tank	21654
province	MP	2018	Pour flush toilet connected to a septic tank (or septage pit)	0
province	MP	2018	Chemical toilet	0
province	MP	2018	Pit latrine/toilet with ventilation pipe	1442
province	MP	2018	Pit latrine/toilet without ventilation pipe	2272
province	MP	2018	Bucket toilet (collected by municipality)	0
province	MP	2018	Bucket toilet (emptied by household)	0
province	MP	2018	Ecological Sanitation System (e.g. urine diversion)	0
province	MP	2018	Open defecation (e.g. no facilities; field; bush)	1653
province	MP	2018	Other	0
province	MP	2018	Unspecified	759
province	LIM	2018	Flush toilet connected to a public sewerage system	2484
province	LIM	2018	Flush toilet connected to a septic tank or conservancy tank	11471
province	LIM	2018	Pour flush toilet connected to a septic tank (or septage pit)	1388
province	LIM	2018	Chemical toilet	0
province	LIM	2018	Pit latrine/toilet with ventilation pipe	4239
province	LIM	2018	Pit latrine/toilet without ventilation pipe	16975
province	LIM	2018	Bucket toilet (collected by municipality)	0
province	LIM	2018	Bucket toilet (emptied by household)	0
province	LIM	2018	Ecological Sanitation System (e.g. urine diversion)	0
province	LIM	2018	Open defecation (e.g. no facilities; field; bush)	4346
province	LIM	2018	Other	0
province	LIM	2018	Unspecified	0
country	ZA	2018	Flush toilet connected to a public sewerage system	235611
country	ZA	2018	Flush toilet connected to a septic tank or conservancy tank	63238
country	ZA	2018	Pour flush toilet connected to a septic tank (or septage pit)	3937
country	ZA	2018	Chemical toilet	2522
country	ZA	2018	Pit latrine/toilet with ventilation pipe	50246
country	ZA	2018	Pit latrine/toilet without ventilation pipe	59526
country	ZA	2018	Bucket toilet (collected by municipality)	6929
country	ZA	2018	Bucket toilet (emptied by household)	0
country	ZA	2018	Ecological Sanitation System (e.g. urine diversion)	0
country	ZA	2018	Open defecation (e.g. no facilities; field; bush)	6316
country	ZA	2018	Other	0
country	ZA	2018	Unspecified	759
\.


--
-- Name: workers_hostel_toilet_facility pk_workers_hostel_toilet_facility; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workers_hostel_toilet_facility
    ADD CONSTRAINT pk_workers_hostel_toilet_facility PRIMARY KEY (geo_level, geo_code, geo_version, workers_hostel_toilet_facility);


--
-- PostgreSQL database dump complete
--

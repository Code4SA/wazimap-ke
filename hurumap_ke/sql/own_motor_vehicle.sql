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

ALTER TABLE IF EXISTS ONLY public.own_motor_vehicle DROP CONSTRAINT IF EXISTS pk_own_motor_vehicle;
DROP TABLE IF EXISTS public.own_motor_vehicle;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: own_motor_vehicle; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.own_motor_vehicle (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    own_motor_vehicle character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: own_motor_vehicle; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.own_motor_vehicle (geo_level, geo_code, geo_version, own_motor_vehicle, total) FROM stdin;
county	30	2009	No, don't own	23
county	30	2009	Yes, do own	9
county	36	2009	No, don't own	44
county	36	2009	Yes, do own	4
county	39	2009	No, don't own	71
county	39	2009	Yes, do own	9
county	40	2009	No, don't own	36
county	40	2009	Yes, do own	4
county	28	2009	No, don't own	15
county	28	2009	Yes, do own	1
county	14	2009	No, don't own	28
county	14	2009	Yes, do own	12
county	7	2009	Don't know	1
county	7	2009	No, don't own	29
county	7	2009	Yes, do own	2
county	43	2009	No, don't own	52
county	43	2009	Yes, do own	4
county	11	2009	No, don't own	7
county	11	2009	Yes, do own	1
county	34	2009	No, don't own	39
county	34	2009	Yes, do own	9
county	37	2009	No, don't own	92
county	37	2009	Yes, do own	4
county	35	2009	No, don't own	30
county	35	2009	Yes, do own	10
county	22	2009	No, don't own	89
county	22	2009	Yes, do own	31
county	3	2009	Missing	1
county	3	2009	No, don't own	54
county	3	2009	Yes, do own	9
county	20	2009	No, don't own	27
county	20	2009	Yes, do own	13
county	45	2009	No, don't own	67
county	45	2009	Yes, do own	5
county	42	2009	No, don't own	49
county	42	2009	Yes, do own	7
county	15	2009	No, don't own	42
county	15	2009	Yes, do own	14
county	2	2009	No, don't own	36
county	2	2009	Yes, do own	4
county	31	2009	No, don't own	20
county	31	2009	Yes, do own	4
county	5	2009	No, don't own	6
county	5	2009	Yes, do own	2
county	16	2009	No, don't own	62
county	16	2009	Yes, do own	10
county	17	2009	Don't know	4
county	17	2009	Missing	1
county	17	2009	No, don't own	44
county	17	2009	Yes, do own	7
county	9	2009	No, don't own	43
county	9	2009	Yes, do own	5
county	10	2009	No, don't own	15
county	10	2009	Yes, do own	1
county	12	2009	No, don't own	61
county	12	2009	Yes, do own	24
county	44	2009	No, don't own	45
county	44	2009	Yes, do own	3
county	1	2009	No, don't own	62
county	1	2009	Yes, do own	10
county	21	2009	No, don't own	48
county	21	2009	Yes, do own	16
county	47	2009	Don't know	3
county	47	2009	Missing	1
county	47	2009	No, don't own	209
county	47	2009	Yes, do own	35
county	32	2009	No, don't own	92
county	32	2009	Yes, do own	12
county	29	2009	No, don't own	38
county	29	2009	Yes, do own	10
county	33	2009	No, don't own	45
county	33	2009	Yes, do own	3
county	46	2009	No, don't own	38
county	46	2009	Yes, do own	2
county	18	2009	No, don't own	32
county	18	2009	Yes, do own	8
county	19	2009	No, don't own	36
county	19	2009	Yes, do own	12
county	25	2009	No, don't own	8
county	41	2009	No, don't own	45
county	41	2009	Yes, do own	3
county	6	2009	No, don't own	14
county	6	2009	Yes, do own	2
county	4	2009	No, don't own	8
county	13	2009	Don't know	2
county	13	2009	No, don't own	13
county	13	2009	Yes, do own	9
county	26	2009	No, don't own	44
county	26	2009	Yes, do own	4
county	23	2009	No, don't own	44
county	23	2009	Yes, do own	4
county	27	2009	No, don't own	49
county	27	2009	Yes, do own	7
county	38	2009	No, don't own	31
county	38	2009	Yes, do own	1
county	8	2009	No, don't own	31
county	8	2009	Yes, do own	1
county	24	2009	No, don't own	22
county	24	2009	Yes, do own	2
country	KE	2009	Yes, do own	349
country	KE	2009	No, don't own	2035
country	KE	2009	Don't know	10
country	KE	2009	Missing	3
\.


--
-- Name: own_motor_vehicle pk_own_motor_vehicle; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.own_motor_vehicle
    ADD CONSTRAINT pk_own_motor_vehicle PRIMARY KEY (geo_level, geo_code, geo_version, own_motor_vehicle);


--
-- PostgreSQL database dump complete
--


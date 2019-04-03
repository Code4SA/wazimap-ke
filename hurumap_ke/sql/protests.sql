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

ALTER TABLE IF EXISTS ONLY public.protests DROP CONSTRAINT IF EXISTS pk_protests;
DROP TABLE IF EXISTS public.protests;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: protests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.protests (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    protests character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: protests; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.protests (geo_level, geo_code, protests, total, geo_version) FROM stdin;
county	1	number of protests	5	2009
county	2	number of protests	0	2009
county	3	number of protests	0	2009
county	4	number of protests	0	2009
county	5	number of protests	0	2009
county	6	number of protests	3	2009
county	7	number of protests	0	2009
county	8	number of protests	0	2009
county	9	number of protests	0	2009
county	10	number of protests	5	2009
county	11	number of protests	0	2009
county	12	number of protests	0	2009
county	13	number of protests	0	2009
county	14	number of protests	4	2009
county	15	number of protests	0	2009
county	16	number of protests	0	2009
county	17	number of protests	0	2009
county	18	number of protests	0	2009
county	19	number of protests	0	2009
county	20	number of protests	0	2009
county	21	number of protests	6	2009
county	22	number of protests	12	2009
county	23	number of protests	2	2009
county	24	number of protests	1	2009
county	25	number of protests	2	2009
county	26	number of protests	6	2009
county	27	number of protests	7	2009
county	28	number of protests	1	2009
county	29	number of protests	2	2009
county	30	number of protests	4	2009
county	31	number of protests	2	2009
county	32	number of protests	7	2009
county	33	number of protests	4	2009
county	34	number of protests	0	2009
county	35	number of protests	2	2009
county	36	number of protests	3	2009
county	37	number of protests	6	2009
county	38	number of protests	2	2009
county	39	number of protests	2	2009
county	40	number of protests	2	2009
county	41	number of protests	4	2009
county	42	number of protests	5	2009
county	43	number of protests	2	2009
county	44	number of protests	3	2009
county	45	number of protests	10	2009
county	46	number of protests	3	2009
county	47	number of protests	26	2009
country	KE	number of protests	140	2009
\.


--
-- Name: protests pk_protests; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protests
    ADD CONSTRAINT pk_protests PRIMARY KEY (geo_level, geo_code, geo_version, protests);


--
-- PostgreSQL database dump complete
--


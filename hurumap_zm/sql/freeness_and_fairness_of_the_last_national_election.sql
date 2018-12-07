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

ALTER TABLE IF EXISTS ONLY public.freeness_and_fairness_of_the_last_national_election DROP CONSTRAINT IF EXISTS pk_freeness_and_fairness_of_the_last_national_election;
DROP TABLE IF EXISTS public.freeness_and_fairness_of_the_last_national_election;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: freeness_and_fairness_of_the_last_national_election; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.freeness_and_fairness_of_the_last_national_election (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    freeness_and_fairness_of_the_last_national_election character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: freeness_and_fairness_of_the_last_national_election; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.freeness_and_fairness_of_the_last_national_election (geo_level, geo_code, geo_version, freeness_and_fairness_of_the_last_national_election, total) FROM stdin;
province	1	2010	Completely free and fair	70
province	1	2010	Do not understand the question	2
province	1	2010	Don't know	10
province	1	2010	Free and fair, but with minor problems	17
province	1	2010	Free and fair, with major problems	11
province	1	2010	Not free and fair	9
province	2	2010	Completely free and fair	105
province	2	2010	Do not understand the question	1
province	2	2010	Don't know	12
province	2	2010	Free and fair, but with minor problems	39
province	2	2010	Free and fair, with major problems	28
province	2	2010	Not free and fair	7
province	3	2010	Completely free and fair	74
province	3	2010	Do not understand the question	1
province	3	2010	Don't know	12
province	3	2010	Free and fair, but with minor problems	22
province	3	2010	Free and fair, with major problems	13
province	3	2010	Not free and fair	14
province	4	2010	Completely free and fair	65
province	4	2010	Don't know	1
province	4	2010	Free and fair, but with minor problems	15
province	4	2010	Free and fair, with major problems	5
province	4	2010	Not free and fair	1
province	5	2010	Completely free and fair	119
province	5	2010	Don't know	17
province	5	2010	Free and fair, but with minor problems	57
province	5	2010	Free and fair, with major problems	17
province	5	2010	Not free and fair	14
province	6	2010	Completely free and fair	34
province	6	2010	Don't know	10
province	6	2010	Free and fair, but with minor problems	14
province	6	2010	Free and fair, with major problems	5
province	6	2010	Not free and fair	1
province	8	2010	Completely free and fair	36
province	8	2010	Don't know	3
province	8	2010	Free and fair, but with minor problems	18
province	8	2010	Free and fair, with major problems	3
province	8	2010	Not free and fair	4
province	7	2010	Completely free and fair	63
province	7	2010	Don't know	7
province	7	2010	Free and fair, but with minor problems	15
province	7	2010	Free and fair, with major problems	9
province	7	2010	Not free and fair	2
province	9	2010	Completely free and fair	72
province	9	2010	Don't know	5
province	9	2010	Free and fair, but with minor problems	32
province	9	2010	Free and fair, with major problems	20
province	9	2010	Not free and fair	7
province	10	2010	Completely free and fair	45
province	10	2010	Don't know	2
province	10	2010	Free and fair, but with minor problems	20
province	10	2010	Free and fair, with major problems	10
province	10	2010	Not free and fair	3
country	ZM	2010	Free and fair, with major problems	121
country	ZM	2010	Free and fair, but with minor problems	249
country	ZM	2010	Don't know	79
country	ZM	2010	Do not understand the question	4
country	ZM	2010	Not free and fair	62
country	ZM	2010	Completely free and fair	683
\.


--
-- Name: freeness_and_fairness_of_the_last_national_election pk_freeness_and_fairness_of_the_last_national_election; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.freeness_and_fairness_of_the_last_national_election
    ADD CONSTRAINT pk_freeness_and_fairness_of_the_last_national_election PRIMARY KEY (geo_level, geo_code, geo_version, freeness_and_fairness_of_the_last_national_election);


--
-- PostgreSQL database dump complete
--


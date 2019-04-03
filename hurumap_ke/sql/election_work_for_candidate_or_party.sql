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

ALTER TABLE IF EXISTS ONLY public.election_work_for_candidate_or_party DROP CONSTRAINT IF EXISTS pk_election_work_for_candidate_or_party;
DROP TABLE IF EXISTS public.election_work_for_candidate_or_party;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: election_work_for_candidate_or_party; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.election_work_for_candidate_or_party (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    election_work_for_candidate_or_party character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: election_work_for_candidate_or_party; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.election_work_for_candidate_or_party (geo_level, geo_code, geo_version, election_work_for_candidate_or_party, total) FROM stdin;
county	30	2009	No	28
county	30	2009	Yes	4
county	36	2009	No	47
county	36	2009	Yes	1
county	39	2009	No	72
county	39	2009	Yes	8
county	40	2009	No	31
county	40	2009	Yes	9
county	28	2009	No	14
county	28	2009	Yes	2
county	14	2009	No	29
county	14	2009	Yes	11
county	7	2009	No	32
county	43	2009	No	51
county	43	2009	Yes	5
county	11	2009	No	8
county	34	2009	No	44
county	34	2009	Yes	4
county	37	2009	No	84
county	37	2009	Yes	12
county	35	2009	No	36
county	35	2009	Yes	4
county	22	2009	No	102
county	22	2009	Yes	18
county	3	2009	No	63
county	3	2009	Yes	1
county	20	2009	No	28
county	20	2009	Yes	12
county	45	2009	No	66
county	45	2009	Yes	6
county	42	2009	No	50
county	42	2009	Yes	6
county	15	2009	No	43
county	15	2009	Yes	13
county	2	2009	No	36
county	2	2009	Yes	4
county	31	2009	No	24
county	5	2009	No	7
county	5	2009	Yes	1
county	16	2009	No	59
county	16	2009	Yes	13
county	17	2009	Missing	1
county	17	2009	No	50
county	17	2009	Yes	5
county	9	2009	No	44
county	9	2009	Yes	4
county	10	2009	No	14
county	10	2009	Yes	2
county	12	2009	Don't know	1
county	12	2009	No	77
county	12	2009	Yes	7
county	44	2009	No	42
county	44	2009	Yes	6
county	1	2009	No	71
county	1	2009	Yes	1
county	21	2009	No	55
county	21	2009	Yes	9
county	47	2009	No	220
county	47	2009	Yes	28
county	32	2009	No	96
county	32	2009	Yes	8
county	29	2009	No	46
county	29	2009	Yes	2
county	33	2009	No	38
county	33	2009	Yes	10
county	46	2009	No	38
county	46	2009	Yes	2
county	18	2009	No	34
county	18	2009	Yes	6
county	19	2009	No	41
county	19	2009	Yes	7
county	25	2009	No	8
county	41	2009	No	45
county	41	2009	Yes	3
county	6	2009	No	14
county	6	2009	Yes	2
county	4	2009	No	8
county	13	2009	Don't know	3
county	13	2009	No	17
county	13	2009	Yes	4
county	26	2009	Don't know	1
county	26	2009	No	42
county	26	2009	Yes	5
county	23	2009	No	46
county	23	2009	Yes	2
county	27	2009	No	54
county	27	2009	Yes	2
county	38	2009	No	29
county	38	2009	Yes	3
county	8	2009	No	29
county	8	2009	Yes	3
county	24	2009	No	23
county	24	2009	Yes	1
country	KE	2009	No	2135
country	KE	2009	Yes	256
country	KE	2009	Missing	1
country	KE	2009	Don't know	5
\.


--
-- Name: election_work_for_candidate_or_party pk_election_work_for_candidate_or_party; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.election_work_for_candidate_or_party
    ADD CONSTRAINT pk_election_work_for_candidate_or_party PRIMARY KEY (geo_level, geo_code, geo_version, election_work_for_candidate_or_party);


--
-- PostgreSQL database dump complete
--


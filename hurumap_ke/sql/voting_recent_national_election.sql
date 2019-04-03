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

ALTER TABLE IF EXISTS ONLY public.voting_recent_national_election DROP CONSTRAINT IF EXISTS pk_voting_recent_national_election;
DROP TABLE IF EXISTS public.voting_recent_national_election;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: voting_recent_national_election; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.voting_recent_national_election (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    voting_recent_national_election character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: voting_recent_national_election; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.voting_recent_national_election (geo_level, geo_code, geo_version, voting_recent_national_election, total) FROM stdin;
county	30	2009	You voted in the elections	28
county	30	2009	You were not registered to vote	2
county	30	2009	You were too young to vote	2
county	36	2009	You decided not to vote	1
county	36	2009	You voted in the elections	38
county	36	2009	You were not registered to vote	6
county	36	2009	You were prevented from voting	1
county	36	2009	You were too young to vote	2
county	39	2009	Did not vote for some other reason	1
county	39	2009	You decided not to vote	1
county	39	2009	You voted in the elections	65
county	39	2009	You were not registered to vote	10
county	39	2009	You were too young to vote	3
county	40	2009	Did not vote for some other reason	1
county	40	2009	You voted in the elections	33
county	40	2009	You were not registered to vote	2
county	40	2009	You were too young to vote	4
county	28	2009	Did not vote for some other reason	1
county	28	2009	You voted in the elections	12
county	28	2009	You were not registered to vote	2
county	28	2009	You were too young to vote	1
county	14	2009	You did not have time to vote	2
county	14	2009	You voted in the elections	36
county	14	2009	You were not registered to vote	1
county	14	2009	You were prevented from voting	1
county	7	2009	Did not vote for some other reason	1
county	7	2009	You decided not to vote	2
county	7	2009	You did not have time to vote	2
county	7	2009	You voted in the elections	22
county	7	2009	You were not registered to vote	4
county	7	2009	You were prevented from voting	1
county	43	2009	Did not vote for some other reason	4
county	43	2009	You did not vote because your name not in the register	1
county	43	2009	You voted in the elections	49
county	43	2009	You were not registered to vote	1
county	43	2009	You were too young to vote	1
county	11	2009	You voted in the elections	6
county	11	2009	You were not registered to vote	2
county	34	2009	Did not vote for some other reason	1
county	34	2009	You could not find the polling station	1
county	34	2009	You decided not to vote	1
county	34	2009	You did not have time to vote	1
county	34	2009	You voted in the elections	38
county	34	2009	You were not registered to vote	5
county	34	2009	You were too young to vote	1
county	37	2009	Did not vote for some other reason	5
county	37	2009	You could not find the polling station	1
county	37	2009	You decided not to vote	3
county	37	2009	You did not have time to vote	1
county	37	2009	You voted in the elections	74
county	37	2009	You were not registered to vote	8
county	37	2009	You were too young to vote	4
county	35	2009	You voted in the elections	35
county	35	2009	You were not registered to vote	3
county	35	2009	You were too young to vote	2
county	22	2009	Did not vote for some other reason	3
county	22	2009	You decided not to vote	3
county	22	2009	You did not have time to vote	3
county	22	2009	You voted in the elections	97
county	22	2009	You were not registered to vote	10
county	22	2009	You were too young to vote	4
county	3	2009	Did not vote for some other reason	2
county	3	2009	You could not find the polling station	1
county	3	2009	You decided not to vote	4
county	3	2009	You did not vote because your name not in the register	2
county	3	2009	You voted in the elections	42
county	3	2009	You were not registered to vote	11
county	3	2009	You were too young to vote	2
county	20	2009	Did not vote for some other reason	1
county	20	2009	You decided not to vote	1
county	20	2009	You did not vote because your name not in the register	1
county	20	2009	You voted in the elections	33
county	20	2009	You were not registered to vote	3
county	20	2009	You were too young to vote	1
county	45	2009	Did not vote for some other reason	5
county	45	2009	You voted in the elections	61
county	45	2009	You were not registered to vote	5
county	45	2009	You were too young to vote	1
county	42	2009	Did not vote for some other reason	5
county	42	2009	You did not have time to vote	1
county	42	2009	You did not vote because your name not in the register	1
county	42	2009	You voted in the elections	48
county	42	2009	You were not registered to vote	1
county	15	2009	Did not vote for some other reason	1
county	15	2009	You decided not to vote	3
county	15	2009	You did not vote because your name not in the register	1
county	15	2009	You voted in the elections	47
county	15	2009	You were not registered to vote	4
county	2	2009	Did not vote for some other reason	2
county	2	2009	You decided not to vote	2
county	2	2009	You did not vote because your name not in the register	1
county	2	2009	You voted in the elections	29
county	2	2009	You were not registered to vote	4
county	2	2009	You were too young to vote	2
county	31	2009	Did not vote for some other reason	1
county	31	2009	You did not vote because your name not in the register	1
county	31	2009	You voted in the elections	16
county	31	2009	You were not registered to vote	5
county	31	2009	You were too young to vote	1
county	5	2009	You decided not to vote	1
county	5	2009	You voted in the elections	7
county	16	2009	Did not vote for some other reason	3
county	16	2009	You decided not to vote	2
county	16	2009	You did not have time to vote	2
county	16	2009	You did not vote because your name not in the register	1
county	16	2009	You voted in the elections	61
county	16	2009	You were not registered to vote	2
county	16	2009	You were too young to vote	1
county	17	2009	Did not vote for some other reason	4
county	17	2009	You decided not to vote	2
county	17	2009	You did not have time to vote	1
county	17	2009	You voted in the elections	42
county	17	2009	You were not registered to vote	6
county	17	2009	You were too young to vote	1
county	9	2009	Did not vote for some other reason	4
county	9	2009	You voted in the elections	36
county	9	2009	You were not registered to vote	7
county	9	2009	You were prevented from voting	1
county	10	2009	Did not vote for some other reason	1
county	10	2009	You could not find the polling station	1
county	10	2009	You voted in the elections	11
county	10	2009	You were not registered to vote	3
county	12	2009	Did not vote for some other reason	2
county	12	2009	You could not find the polling station	1
county	12	2009	You decided not to vote	5
county	12	2009	You did not have time to vote	3
county	12	2009	You did not vote because your name not in the register	1
county	12	2009	You voted in the elections	71
county	12	2009	You were not registered to vote	1
county	12	2009	You were too young to vote	1
county	44	2009	Did not vote for some other reason	5
county	44	2009	You voted in the elections	38
county	44	2009	You were not registered to vote	4
county	44	2009	You were prevented from voting	1
county	1	2009	Did not vote for some other reason	1
county	1	2009	You decided not to vote	3
county	1	2009	You voted in the elections	62
county	1	2009	You were not registered to vote	6
county	21	2009	Did not vote for some other reason	5
county	21	2009	You voted in the elections	52
county	21	2009	You were not registered to vote	6
county	21	2009	You were too young to vote	1
county	47	2009	Did not vote for some other reason	12
county	47	2009	Don't Know / Can't remember	3
county	47	2009	You could not find the polling station	1
county	47	2009	You decided not to vote	9
county	47	2009	You did not have time to vote	7
county	47	2009	You did not vote because your name not in the register	2
county	47	2009	You voted in the elections	185
county	47	2009	You were not registered to vote	21
county	47	2009	You were prevented from voting	1
county	47	2009	You were too young to vote	7
county	32	2009	Did not vote for some other reason	3
county	32	2009	You decided not to vote	3
county	32	2009	You did not have time to vote	1
county	32	2009	You did not vote because your name not in the register	1
county	32	2009	You voted in the elections	84
county	32	2009	You were not registered to vote	9
county	32	2009	You were too young to vote	3
county	29	2009	Did not vote for some other reason	3
county	29	2009	You decided not to vote	2
county	29	2009	You voted in the elections	41
county	29	2009	You were not registered to vote	1
county	29	2009	You were too young to vote	1
county	33	2009	Did not vote for some other reason	3
county	33	2009	You did not have time to vote	2
county	33	2009	You voted in the elections	38
county	33	2009	You were not registered to vote	4
county	33	2009	You were too young to vote	1
county	46	2009	Did not vote for some other reason	4
county	46	2009	You decided not to vote	1
county	46	2009	You voted in the elections	31
county	46	2009	You were not registered to vote	2
county	46	2009	You were too young to vote	2
county	18	2009	Did not vote for some other reason	1
county	18	2009	You did not have time to vote	1
county	18	2009	You voted in the elections	37
county	18	2009	You were not registered to vote	1
county	19	2009	You voted in the elections	46
county	19	2009	You were not registered to vote	1
county	19	2009	You were too young to vote	1
county	25	2009	You voted in the elections	6
county	25	2009	You were not registered to vote	2
county	41	2009	Did not vote for some other reason	1
county	41	2009	You did not have time to vote	1
county	41	2009	You voted in the elections	45
county	41	2009	You were too young to vote	1
county	6	2009	Did not vote for some other reason	2
county	6	2009	You voted in the elections	9
county	6	2009	You were not registered to vote	4
county	6	2009	You were too young to vote	1
county	4	2009	Did not vote for some other reason	1
county	4	2009	You voted in the elections	5
county	4	2009	You were not registered to vote	2
county	13	2009	You did not have time to vote	1
county	13	2009	You voted in the elections	23
county	26	2009	Did not vote for some other reason	1
county	26	2009	You voted in the elections	36
county	26	2009	You were not registered to vote	7
county	26	2009	You were prevented from voting	1
county	26	2009	You were too young to vote	3
county	23	2009	Did not vote for some other reason	1
county	23	2009	You voted in the elections	42
county	23	2009	You were not registered to vote	4
county	23	2009	You were too young to vote	1
county	27	2009	Did not vote for some other reason	1
county	27	2009	You decided not to vote	3
county	27	2009	You did not have time to vote	2
county	27	2009	You voted in the elections	47
county	27	2009	You were not registered to vote	3
county	38	2009	Did not vote for some other reason	1
county	38	2009	You decided not to vote	2
county	38	2009	You voted in the elections	23
county	38	2009	You were not registered to vote	4
county	38	2009	You were too young to vote	2
county	8	2009	You decided not to vote	2
county	8	2009	You voted in the elections	20
county	8	2009	You were not registered to vote	9
county	8	2009	You were prevented from voting	1
county	24	2009	You decided not to vote	1
county	24	2009	You voted in the elections	23
country	KE	2009	You decided not to vote	57
country	KE	2009	You could not find the polling station	6
country	KE	2009	You did not have time to vote	31
country	KE	2009	You voted in the elections	1930
country	KE	2009	Don't Know / Can't remember	3
country	KE	2009	Did not vote for some other reason	93
country	KE	2009	You did not vote because your name not in the register	13
country	KE	2009	You were prevented from voting	8
country	KE	2009	You were not registered to vote	198
country	KE	2009	You were too young to vote	58
\.


--
-- Name: voting_recent_national_election pk_voting_recent_national_election; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.voting_recent_national_election
    ADD CONSTRAINT pk_voting_recent_national_election PRIMARY KEY (geo_level, geo_code, geo_version, voting_recent_national_election);


--
-- PostgreSQL database dump complete
--


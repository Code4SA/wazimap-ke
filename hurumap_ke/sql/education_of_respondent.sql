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

ALTER TABLE IF EXISTS ONLY public.education_of_respondent DROP CONSTRAINT IF EXISTS pk_education_of_respondent;
DROP TABLE IF EXISTS public.education_of_respondent;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: education_of_respondent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.education_of_respondent (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    education_of_respondent character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: education_of_respondent; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.education_of_respondent (geo_level, geo_code, geo_version, education_of_respondent, total) FROM stdin;
county	30	2009	No formal schooling	3
county	30	2009	Post-graduate	2
county	30	2009	Post-secondary qualifications, other than university	7
county	30	2009	Primary school completed	3
county	30	2009	Secondary school / high school completed	8
county	30	2009	Some primary schooling	2
county	30	2009	Some secondary school / high school	3
county	30	2009	University completed	4
county	36	2009	Post-secondary qualifications, other than university	7
county	36	2009	Primary school completed	6
county	36	2009	Secondary school / high school completed	16
county	36	2009	Some primary schooling	13
county	36	2009	Some secondary school / high school	4
county	36	2009	University completed	2
county	39	2009	Informal schooling only	1
county	39	2009	No formal schooling	4
county	39	2009	Post-secondary qualifications, other than university	12
county	39	2009	Primary school completed	16
county	39	2009	Secondary school / high school completed	15
county	39	2009	Some primary schooling	19
county	39	2009	Some secondary school / high school	13
county	40	2009	Informal schooling only	1
county	40	2009	No formal schooling	5
county	40	2009	Post-graduate	1
county	40	2009	Post-secondary qualifications, other than university	3
county	40	2009	Primary school completed	5
county	40	2009	Secondary school / high school completed	6
county	40	2009	Some primary schooling	9
county	40	2009	Some secondary school / high school	7
county	40	2009	Some university	1
county	40	2009	University completed	2
county	28	2009	No formal schooling	2
county	28	2009	Post-secondary qualifications, other than university	3
county	28	2009	Primary school completed	4
county	28	2009	Secondary school / high school completed	1
county	28	2009	Some primary schooling	3
county	28	2009	Some secondary school / high school	3
county	14	2009	No formal schooling	1
county	14	2009	Post-secondary qualifications, other than university	13
county	14	2009	Primary school completed	5
county	14	2009	Secondary school / high school completed	10
county	14	2009	Some primary schooling	3
county	14	2009	Some secondary school / high school	5
county	14	2009	University completed	3
county	7	2009	Informal schooling only	11
county	7	2009	No formal schooling	5
county	7	2009	Post-secondary qualifications, other than university	1
county	7	2009	Primary school completed	4
county	7	2009	Secondary school / high school completed	1
county	7	2009	Some primary schooling	5
county	7	2009	Some secondary school / high school	4
county	7	2009	Some university	1
county	43	2009	No formal schooling	3
county	43	2009	Post-secondary qualifications, other than university	7
county	43	2009	Primary school completed	12
county	43	2009	Secondary school / high school completed	8
county	43	2009	Some primary schooling	17
county	43	2009	Some secondary school / high school	9
county	11	2009	Informal schooling only	1
county	11	2009	No formal schooling	3
county	11	2009	Secondary school / high school completed	1
county	11	2009	Some primary schooling	2
county	11	2009	Some secondary school / high school	1
county	34	2009	Informal schooling only	2
county	34	2009	No formal schooling	4
county	34	2009	Post-secondary qualifications, other than university	2
county	34	2009	Primary school completed	11
county	34	2009	Secondary school / high school completed	10
county	34	2009	Some primary schooling	9
county	34	2009	Some secondary school / high school	5
county	34	2009	Some university	2
county	34	2009	University completed	3
county	37	2009	Informal schooling only	1
county	37	2009	No formal schooling	3
county	37	2009	Post-secondary qualifications, other than university	8
county	37	2009	Primary school completed	15
county	37	2009	Secondary school / high school completed	25
county	37	2009	Some primary schooling	27
county	37	2009	Some secondary school / high school	15
county	37	2009	University completed	2
county	35	2009	Informal schooling only	1
county	35	2009	Post-secondary qualifications, other than university	10
county	35	2009	Primary school completed	5
county	35	2009	Secondary school / high school completed	11
county	35	2009	Some primary schooling	7
county	35	2009	Some secondary school / high school	3
county	35	2009	University completed	3
county	22	2009	Informal schooling only	1
county	22	2009	No formal schooling	1
county	22	2009	Post-graduate	1
county	22	2009	Post-secondary qualifications, other than university	26
county	22	2009	Primary school completed	14
county	22	2009	Secondary school / high school completed	35
county	22	2009	Some primary schooling	8
county	22	2009	Some secondary school / high school	15
county	22	2009	Some university	6
county	22	2009	University completed	13
county	3	2009	No formal schooling	2
county	3	2009	Post-secondary qualifications, other than university	4
county	3	2009	Primary school completed	19
county	3	2009	Secondary school / high school completed	12
county	3	2009	Some primary schooling	19
county	3	2009	Some secondary school / high school	7
county	3	2009	Some university	1
county	20	2009	No formal schooling	2
county	20	2009	Post-secondary qualifications, other than university	8
county	20	2009	Primary school completed	8
county	20	2009	Secondary school / high school completed	16
county	20	2009	Some primary schooling	2
county	20	2009	Some secondary school / high school	2
county	20	2009	Some university	1
county	20	2009	University completed	1
county	45	2009	No formal schooling	2
county	45	2009	Post-graduate	1
county	45	2009	Post-secondary qualifications, other than university	5
county	45	2009	Primary school completed	18
county	45	2009	Secondary school / high school completed	14
county	45	2009	Some primary schooling	25
county	45	2009	Some secondary school / high school	6
county	45	2009	University completed	1
county	42	2009	No formal schooling	4
county	42	2009	Post-secondary qualifications, other than university	8
county	42	2009	Primary school completed	11
county	42	2009	Secondary school / high school completed	6
county	42	2009	Some primary schooling	13
county	42	2009	Some secondary school / high school	13
county	42	2009	University completed	1
county	15	2009	No formal schooling	3
county	15	2009	Post-graduate	1
county	15	2009	Post-secondary qualifications, other than university	9
county	15	2009	Primary school completed	12
county	15	2009	Secondary school / high school completed	7
county	15	2009	Some primary schooling	14
county	15	2009	Some secondary school / high school	6
county	15	2009	Some university	3
county	15	2009	University completed	1
county	2	2009	No formal schooling	3
county	2	2009	Post-secondary qualifications, other than university	5
county	2	2009	Primary school completed	9
county	2	2009	Secondary school / high school completed	10
county	2	2009	Some primary schooling	7
county	2	2009	Some secondary school / high school	3
county	2	2009	Some university	1
county	2	2009	University completed	2
county	31	2009	No formal schooling	3
county	31	2009	Post-secondary qualifications, other than university	2
county	31	2009	Primary school completed	3
county	31	2009	Secondary school / high school completed	12
county	31	2009	Some primary schooling	3
county	31	2009	Some secondary school / high school	1
county	5	2009	Post-secondary qualifications, other than university	1
county	5	2009	Primary school completed	1
county	5	2009	Secondary school / high school completed	1
county	5	2009	Some primary schooling	3
county	5	2009	Some secondary school / high school	2
county	16	2009	No formal schooling	5
county	16	2009	Post-graduate	3
county	16	2009	Post-secondary qualifications, other than university	4
county	16	2009	Primary school completed	20
county	16	2009	Secondary school / high school completed	20
county	16	2009	Some primary schooling	12
county	16	2009	Some secondary school / high school	5
county	16	2009	Some university	1
county	16	2009	University completed	2
county	17	2009	No formal schooling	2
county	17	2009	Post-secondary qualifications, other than university	7
county	17	2009	Primary school completed	11
county	17	2009	Secondary school / high school completed	19
county	17	2009	Some primary schooling	9
county	17	2009	Some secondary school / high school	8
county	9	2009	Informal schooling only	7
county	9	2009	No formal schooling	6
county	9	2009	Post-secondary qualifications, other than university	5
county	9	2009	Primary school completed	3
county	9	2009	Secondary school / high school completed	9
county	9	2009	Some primary schooling	8
county	9	2009	Some secondary school / high school	8
county	9	2009	Some university	2
county	10	2009	Informal schooling only	4
county	10	2009	No formal schooling	4
county	10	2009	Post-secondary qualifications, other than university	3
county	10	2009	Secondary school / high school completed	3
county	10	2009	Some primary schooling	2
county	12	2009	No formal schooling	2
county	12	2009	Post-graduate	1
county	12	2009	Post-secondary qualifications, other than university	18
county	12	2009	Primary school completed	15
county	12	2009	Secondary school / high school completed	26
county	12	2009	Some primary schooling	6
county	12	2009	Some secondary school / high school	13
county	12	2009	University completed	4
county	44	2009	No formal schooling	5
county	44	2009	Post-graduate	1
county	44	2009	Post-secondary qualifications, other than university	5
county	44	2009	Primary school completed	8
county	44	2009	Secondary school / high school completed	9
county	44	2009	Some primary schooling	15
county	44	2009	Some secondary school / high school	5
county	1	2009	No formal schooling	1
county	1	2009	Post-secondary qualifications, other than university	14
county	1	2009	Primary school completed	9
county	1	2009	Secondary school / high school completed	28
county	1	2009	Some primary schooling	6
county	1	2009	Some secondary school / high school	8
county	1	2009	Some university	2
county	1	2009	University completed	4
county	21	2009	No formal schooling	2
county	21	2009	Post-secondary qualifications, other than university	10
county	21	2009	Primary school completed	16
county	21	2009	Secondary school / high school completed	18
county	21	2009	Some primary schooling	7
county	21	2009	Some secondary school / high school	10
county	21	2009	University completed	1
county	47	2009	Informal schooling only	1
county	47	2009	No formal schooling	1
county	47	2009	Post-graduate	6
county	47	2009	Post-secondary qualifications, other than university	49
county	47	2009	Primary school completed	35
county	47	2009	Secondary school / high school completed	69
county	47	2009	Some primary schooling	22
county	47	2009	Some secondary school / high school	44
county	47	2009	Some university	12
county	47	2009	University completed	9
county	32	2009	No formal schooling	3
county	32	2009	Post-secondary qualifications, other than university	13
county	32	2009	Primary school completed	17
county	32	2009	Secondary school / high school completed	36
county	32	2009	Some primary schooling	17
county	32	2009	Some secondary school / high school	15
county	32	2009	Some university	2
county	32	2009	University completed	1
county	29	2009	No formal schooling	1
county	29	2009	Post-secondary qualifications, other than university	10
county	29	2009	Primary school completed	11
county	29	2009	Secondary school / high school completed	7
county	29	2009	Some primary schooling	9
county	29	2009	Some secondary school / high school	7
county	29	2009	Some university	1
county	29	2009	University completed	2
county	33	2009	No formal schooling	6
county	33	2009	Post-secondary qualifications, other than university	3
county	33	2009	Primary school completed	10
county	33	2009	Secondary school / high school completed	12
county	33	2009	Some primary schooling	12
county	33	2009	Some secondary school / high school	5
county	46	2009	No formal schooling	4
county	46	2009	Post-secondary qualifications, other than university	2
county	46	2009	Primary school completed	8
county	46	2009	Secondary school / high school completed	11
county	46	2009	Some primary schooling	5
county	46	2009	Some secondary school / high school	8
county	46	2009	University completed	2
county	18	2009	Post-graduate	1
county	18	2009	Post-secondary qualifications, other than university	7
county	18	2009	Primary school completed	12
county	18	2009	Secondary school / high school completed	9
county	18	2009	Some primary schooling	4
county	18	2009	Some secondary school / high school	3
county	18	2009	Some university	1
county	18	2009	University completed	3
county	19	2009	Post-secondary qualifications, other than university	6
county	19	2009	Primary school completed	14
county	19	2009	Secondary school / high school completed	13
county	19	2009	Some primary schooling	1
county	19	2009	Some secondary school / high school	11
county	19	2009	University completed	3
county	25	2009	No formal schooling	5
county	25	2009	Primary school completed	1
county	25	2009	Some primary schooling	2
county	41	2009	Don't know	1
county	41	2009	Informal schooling only	1
county	41	2009	No formal schooling	2
county	41	2009	Post-secondary qualifications, other than university	3
county	41	2009	Primary school completed	11
county	41	2009	Secondary school / high school completed	6
county	41	2009	Some primary schooling	19
county	41	2009	Some secondary school / high school	5
county	6	2009	No formal schooling	2
county	6	2009	Post-secondary qualifications, other than university	2
county	6	2009	Primary school completed	3
county	6	2009	Secondary school / high school completed	6
county	6	2009	Some primary schooling	2
county	6	2009	Some secondary school / high school	1
county	4	2009	Informal schooling only	1
county	4	2009	No formal schooling	5
county	4	2009	Some primary schooling	2
county	13	2009	No formal schooling	1
county	13	2009	Post-graduate	1
county	13	2009	Post-secondary qualifications, other than university	5
county	13	2009	Primary school completed	5
county	13	2009	Secondary school / high school completed	7
county	13	2009	Some primary schooling	2
county	13	2009	Some secondary school / high school	1
county	13	2009	Some university	1
county	13	2009	University completed	1
county	26	2009	Informal schooling only	1
county	26	2009	No formal schooling	7
county	26	2009	Post-secondary qualifications, other than university	2
county	26	2009	Primary school completed	12
county	26	2009	Secondary school / high school completed	5
county	26	2009	Some primary schooling	12
county	26	2009	Some secondary school / high school	9
county	23	2009	Informal schooling only	1
county	23	2009	No formal schooling	22
county	23	2009	Post-secondary qualifications, other than university	2
county	23	2009	Primary school completed	6
county	23	2009	Secondary school / high school completed	1
county	23	2009	Some primary schooling	14
county	23	2009	Some secondary school / high school	2
county	27	2009	No formal schooling	2
county	27	2009	Post-secondary qualifications, other than university	8
county	27	2009	Primary school completed	12
county	27	2009	Secondary school / high school completed	18
county	27	2009	Some primary schooling	8
county	27	2009	Some secondary school / high school	5
county	27	2009	University completed	3
county	38	2009	Informal schooling only	1
county	38	2009	No formal schooling	1
county	38	2009	Primary school completed	9
county	38	2009	Secondary school / high school completed	6
county	38	2009	Some primary schooling	11
county	38	2009	Some secondary school / high school	4
county	8	2009	Informal schooling only	7
county	8	2009	No formal schooling	12
county	8	2009	Post-secondary qualifications, other than university	5
county	8	2009	Primary school completed	3
county	8	2009	Secondary school / high school completed	1
county	8	2009	Some primary schooling	3
county	8	2009	Some secondary school / high school	1
county	24	2009	No formal schooling	3
county	24	2009	Primary school completed	7
county	24	2009	Secondary school / high school completed	2
county	24	2009	Some primary schooling	10
county	24	2009	Some secondary school / high school	2
country	KE	2009	Some secondary school / high school	307
country	KE	2009	Some primary schooling	430
country	KE	2009	No formal schooling	157
country	KE	2009	University completed	73
country	KE	2009	Informal schooling only	43
country	KE	2009	Don't know	1
country	KE	2009	Some university	38
country	KE	2009	Post-secondary qualifications, other than university	324
country	KE	2009	Post-graduate	19
country	KE	2009	Primary school completed	439
country	KE	2009	Secondary school / high school completed	566
\.


--
-- Name: education_of_respondent pk_education_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.education_of_respondent
    ADD CONSTRAINT pk_education_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, education_of_respondent);


--
-- PostgreSQL database dump complete
--


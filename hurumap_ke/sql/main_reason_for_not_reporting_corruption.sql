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

ALTER TABLE IF EXISTS ONLY public.main_reason_for_not_reporting_corruption DROP CONSTRAINT IF EXISTS pk_main_reason_for_not_reporting_corruption;
DROP TABLE IF EXISTS public.main_reason_for_not_reporting_corruption;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: main_reason_for_not_reporting_corruption; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.main_reason_for_not_reporting_corruption (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    main_reason_for_not_reporting_corruption character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: main_reason_for_not_reporting_corruption; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.main_reason_for_not_reporting_corruption (geo_level, geo_code, geo_version, main_reason_for_not_reporting_corruption, total) FROM stdin;
county	30	2009	Corruption is too difficult to prove	1
county	30	2009	It's too expensive to report	6
county	30	2009	Most people do report incidents of corruption	3
county	30	2009	Nothing will be done / It wouldn't make a difference	13
county	30	2009	People are afraid of the consequences	5
county	30	2009	People don't know where to report it	1
county	30	2009	The officials where they would report to are also corrupt	1
county	30	2009	They would implicate themselves as bribe-givers	2
county	36	2009	Corruption is normal / Everyone does it	6
county	36	2009	Don't know	3
county	36	2009	It's too expensive to report	1
county	36	2009	Most people do report incidents of corruption	2
county	36	2009	Nothing will be done / It wouldn't make a difference	3
county	36	2009	People are afraid of the consequences	17
county	36	2009	People don't know how to report it	4
county	36	2009	People don't know where to report it	2
county	36	2009	The officials where they would report to are also corrupt	2
county	36	2009	They would implicate themselves as bribe-givers	8
county	39	2009	Corruption is normal / Everyone does it	8
county	39	2009	Corruption is too difficult to prove	3
county	39	2009	Don't know	2
county	39	2009	It's too expensive to report	2
county	39	2009	Nothing will be done / It wouldn't make a difference	6
county	39	2009	People are afraid of the consequences	29
county	39	2009	People don't have enough time to report it	6
county	39	2009	People don't know how to report it	1
county	39	2009	People don't know where to report it	5
county	39	2009	The officials where they would report to are also corrupt	9
county	39	2009	They would implicate themselves as bribe-givers	9
county	40	2009	Corruption is normal / Everyone does it	3
county	40	2009	Nothing will be done / It wouldn't make a difference	6
county	40	2009	Other	4
county	40	2009	People are afraid of the consequences	11
county	40	2009	People don't have enough time to report it	3
county	40	2009	People don't know how to report it	1
county	40	2009	People don't know where to report it	3
county	40	2009	The officials where they would report to are also corrupt	3
county	40	2009	They would implicate themselves as bribe-givers	6
county	28	2009	Corruption is normal / Everyone does it	1
county	28	2009	Don't know	1
county	28	2009	It's too expensive to report	4
county	28	2009	Nothing will be done / It wouldn't make a difference	3
county	28	2009	People are afraid of the consequences	1
county	28	2009	People don't know how to report it	3
county	28	2009	People don't know where to report it	2
county	28	2009	The officials where they would report to are also corrupt	1
county	14	2009	Corruption is normal / Everyone does it	4
county	14	2009	Corruption is too difficult to prove	2
county	14	2009	Don't know	1
county	14	2009	It's too expensive to report	2
county	14	2009	Most people do report incidents of corruption	2
county	14	2009	Nothing will be done / It wouldn't make a difference	19
county	14	2009	People are afraid of the consequences	4
county	14	2009	People don't have enough time to report it	1
county	14	2009	People don't know how to report it	1
county	14	2009	People don't know where to report it	1
county	14	2009	The officials where they would report to are also corrupt	2
county	14	2009	They would implicate themselves as bribe-givers	1
county	7	2009	Corruption is normal / Everyone does it	6
county	7	2009	Don't know	2
county	7	2009	It's too expensive to report	1
county	7	2009	Nothing will be done / It wouldn't make a difference	7
county	7	2009	People are afraid of the consequences	5
county	7	2009	People don't know how to report it	1
county	7	2009	People don't know where to report it	3
county	7	2009	The officials where they would report to are also corrupt	5
county	7	2009	They would implicate themselves as bribe-givers	2
county	43	2009	Corruption is normal / Everyone does it	7
county	43	2009	Corruption is too difficult to prove	2
county	43	2009	It's too expensive to report	1
county	43	2009	Nothing will be done / It wouldn't make a difference	5
county	43	2009	People are afraid of the consequences	33
county	43	2009	The officials where they would report to are also corrupt	6
county	43	2009	They would implicate themselves as bribe-givers	2
county	11	2009	Corruption is normal / Everyone does it	1
county	11	2009	Don't know	1
county	11	2009	Nothing will be done / It wouldn't make a difference	3
county	11	2009	People are afraid of the consequences	1
county	11	2009	People don't know where to report it	1
county	11	2009	They would implicate themselves as bribe-givers	1
county	34	2009	Corruption is too difficult to prove	1
county	34	2009	Don't know	1
county	34	2009	It's too expensive to report	2
county	34	2009	Most people do report incidents of corruption	3
county	34	2009	Nothing will be done / It wouldn't make a difference	16
county	34	2009	People are afraid of the consequences	11
county	34	2009	People don't have enough time to report it	3
county	34	2009	People don't know how to report it	1
county	34	2009	People don't know where to report it	4
county	34	2009	The officials where they would report to are also corrupt	3
county	34	2009	They would implicate themselves as bribe-givers	3
county	37	2009	Corruption is normal / Everyone does it	5
county	37	2009	Corruption is too difficult to prove	6
county	37	2009	Don't know	3
county	37	2009	It's too expensive to report	1
county	37	2009	Most people do report incidents of corruption	1
county	37	2009	Nothing will be done / It wouldn't make a difference	6
county	37	2009	Other	1
county	37	2009	People are afraid of the consequences	32
county	37	2009	People don't have enough time to report it	1
county	37	2009	People don't know how to report it	6
county	37	2009	People don't know where to report it	8
county	37	2009	The officials where they would report to are also corrupt	11
county	37	2009	They would implicate themselves as bribe-givers	15
county	35	2009	Corruption is normal / Everyone does it	6
county	35	2009	Corruption is too difficult to prove	2
county	35	2009	Nothing will be done / It wouldn't make a difference	8
county	35	2009	People are afraid of the consequences	13
county	35	2009	People don't have enough time to report it	1
county	35	2009	People don't know how to report it	2
county	35	2009	People don't know where to report it	3
county	35	2009	The officials where they would report to are also corrupt	3
county	35	2009	They would implicate themselves as bribe-givers	2
county	22	2009	Corruption is normal / Everyone does it	13
county	22	2009	Corruption is too difficult to prove	3
county	22	2009	Don't know	1
county	22	2009	It's government's money, so it's not our problem	1
county	22	2009	It's too expensive to report	2
county	22	2009	Nothing will be done / It wouldn't make a difference	32
county	22	2009	Other	3
county	22	2009	People are afraid of the consequences	36
county	22	2009	People don't have enough time to report it	1
county	22	2009	People don't know where to report it	2
county	22	2009	The officials where they would report to are also corrupt	15
county	22	2009	They would implicate themselves as bribe-givers	11
county	3	2009	Corruption is normal / Everyone does it	4
county	3	2009	Don't know	4
county	3	2009	Nothing will be done / It wouldn't make a difference	11
county	3	2009	People are afraid of the consequences	23
county	3	2009	People don't know how to report it	6
county	3	2009	People don't know where to report it	3
county	3	2009	The officials where they would report to are also corrupt	8
county	3	2009	They would implicate themselves as bribe-givers	5
county	20	2009	Corruption is normal / Everyone does it	9
county	20	2009	Corruption is too difficult to prove	3
county	20	2009	Nothing will be done / It wouldn't make a difference	10
county	20	2009	People are afraid of the consequences	7
county	20	2009	People don't have enough time to report it	1
county	20	2009	People don't know where to report it	1
county	20	2009	The officials where they would report to are also corrupt	6
county	20	2009	They would implicate themselves as bribe-givers	3
county	45	2009	Corruption is normal / Everyone does it	10
county	45	2009	Corruption is too difficult to prove	1
county	45	2009	Don't know	2
county	45	2009	Nothing will be done / It wouldn't make a difference	13
county	45	2009	Other	1
county	45	2009	People are afraid of the consequences	27
county	45	2009	People don't know how to report it	3
county	45	2009	People don't know where to report it	6
county	45	2009	The officials where they would report to are also corrupt	8
county	45	2009	They would implicate themselves as bribe-givers	1
county	42	2009	Corruption is normal / Everyone does it	10
county	42	2009	Corruption is too difficult to prove	1
county	42	2009	Most people do report incidents of corruption	1
county	42	2009	Nothing will be done / It wouldn't make a difference	4
county	42	2009	People are afraid of the consequences	25
county	42	2009	People don't have enough time to report it	1
county	42	2009	People don't know how to report it	1
county	42	2009	People don't know where to report it	4
county	42	2009	The officials where they would report to are also corrupt	6
county	42	2009	They would implicate themselves as bribe-givers	3
county	15	2009	Corruption is normal / Everyone does it	3
county	15	2009	Corruption is too difficult to prove	3
county	15	2009	It's too expensive to report	2
county	15	2009	Nothing will be done / It wouldn't make a difference	19
county	15	2009	People are afraid of the consequences	13
county	15	2009	People don't have enough time to report it	2
county	15	2009	People don't know how to report it	6
county	15	2009	People don't know where to report it	8
county	2	2009	Corruption is normal / Everyone does it	1
county	2	2009	Don't know	4
county	2	2009	Nothing will be done / It wouldn't make a difference	8
county	2	2009	Other	1
county	2	2009	People are afraid of the consequences	14
county	2	2009	People don't know how to report it	2
county	2	2009	People don't know where to report it	4
county	2	2009	The officials where they would report to are also corrupt	4
county	2	2009	They would implicate themselves as bribe-givers	2
county	31	2009	Corruption is normal / Everyone does it	1
county	31	2009	Don't know	3
county	31	2009	It's too expensive to report	2
county	31	2009	Nothing will be done / It wouldn't make a difference	6
county	31	2009	People are afraid of the consequences	4
county	31	2009	People don't know how to report it	3
county	31	2009	People don't know where to report it	1
county	31	2009	The officials where they would report to are also corrupt	2
county	31	2009	They would implicate themselves as bribe-givers	2
county	5	2009	Don't know	1
county	5	2009	Nothing will be done / It wouldn't make a difference	2
county	5	2009	People are afraid of the consequences	2
county	5	2009	The officials where they would report to are also corrupt	1
county	5	2009	They would implicate themselves as bribe-givers	2
county	16	2009	Corruption is normal / Everyone does it	2
county	16	2009	Corruption is too difficult to prove	1
county	16	2009	Don't know	1
county	16	2009	It's too expensive to report	4
county	16	2009	Most people do report incidents of corruption	1
county	16	2009	Nothing will be done / It wouldn't make a difference	29
county	16	2009	People are afraid of the consequences	20
county	16	2009	People don't know how to report it	6
county	16	2009	People don't know where to report it	6
county	16	2009	The officials where they would report to are also corrupt	2
county	17	2009	Corruption is normal / Everyone does it	6
county	17	2009	Don't know	8
county	17	2009	It's too expensive to report	1
county	17	2009	Nothing will be done / It wouldn't make a difference	11
county	17	2009	Other	2
county	17	2009	People are afraid of the consequences	17
county	17	2009	People don't have enough time to report it	2
county	17	2009	People don't know how to report it	2
county	17	2009	People don't know where to report it	3
county	17	2009	The officials where they would report to are also corrupt	3
county	17	2009	They would implicate themselves as bribe-givers	1
county	9	2009	Corruption is normal / Everyone does it	7
county	9	2009	Corruption is too difficult to prove	1
county	9	2009	Don't know	2
county	9	2009	It's too expensive to report	2
county	9	2009	Most people do report incidents of corruption	1
county	9	2009	Nothing will be done / It wouldn't make a difference	8
county	9	2009	People are afraid of the consequences	10
county	9	2009	People don't have enough time to report it	5
county	9	2009	People don't know how to report it	2
county	9	2009	People don't know where to report it	2
county	9	2009	The officials where they would report to are also corrupt	6
county	9	2009	They would implicate themselves as bribe-givers	2
county	10	2009	Corruption is normal / Everyone does it	1
county	10	2009	Don't know	1
county	10	2009	It's too expensive to report	1
county	10	2009	Nothing will be done / It wouldn't make a difference	8
county	10	2009	People are afraid of the consequences	1
county	10	2009	People don't know how to report it	2
county	10	2009	People don't know where to report it	1
county	10	2009	They would implicate themselves as bribe-givers	1
county	12	2009	Corruption is normal / Everyone does it	8
county	12	2009	Corruption is too difficult to prove	4
county	12	2009	It's too expensive to report	7
county	12	2009	Most people do report incidents of corruption	1
county	12	2009	Nothing will be done / It wouldn't make a difference	40
county	12	2009	People are afraid of the consequences	7
county	12	2009	People don't have enough time to report it	1
county	12	2009	People don't know how to report it	8
county	12	2009	People don't know where to report it	3
county	12	2009	The officials where they would report to are also corrupt	2
county	12	2009	They would implicate themselves as bribe-givers	4
county	44	2009	Corruption is normal / Everyone does it	9
county	44	2009	Corruption is too difficult to prove	1
county	44	2009	Nothing will be done / It wouldn't make a difference	8
county	44	2009	People are afraid of the consequences	24
county	44	2009	People don't know where to report it	3
county	44	2009	The officials where they would report to are also corrupt	3
county	1	2009	Corruption is normal / Everyone does it	5
county	1	2009	Don't know	1
county	1	2009	Nothing will be done / It wouldn't make a difference	29
county	1	2009	People are afraid of the consequences	21
county	1	2009	People don't have enough time to report it	2
county	1	2009	People don't know how to report it	2
county	1	2009	People don't know where to report it	1
county	1	2009	The officials where they would report to are also corrupt	7
county	1	2009	They would implicate themselves as bribe-givers	4
county	21	2009	Corruption is normal / Everyone does it	4
county	21	2009	Corruption is too difficult to prove	1
county	21	2009	Don't know	1
county	21	2009	It's too expensive to report	1
county	21	2009	Most people do report incidents of corruption	1
county	21	2009	Nothing will be done / It wouldn't make a difference	15
county	21	2009	Other	2
county	21	2009	People are afraid of the consequences	21
county	21	2009	People don't know where to report it	4
county	21	2009	The officials where they would report to are also corrupt	9
county	21	2009	They would implicate themselves as bribe-givers	5
county	47	2009	Corruption is normal / Everyone does it	29
county	47	2009	Corruption is too difficult to prove	6
county	47	2009	Don't know	8
county	47	2009	Most people do report incidents of corruption	8
county	47	2009	Nothing will be done / It wouldn't make a difference	82
county	47	2009	Other	3
county	47	2009	People are afraid of the consequences	63
county	47	2009	People don't have enough time to report it	7
county	47	2009	People don't know how to report it	9
county	47	2009	People don't know where to report it	7
county	47	2009	The officials where they would report to are also corrupt	13
county	47	2009	They would implicate themselves as bribe-givers	13
county	32	2009	Corruption is normal / Everyone does it	9
county	32	2009	Corruption is too difficult to prove	1
county	32	2009	Don't know	4
county	32	2009	It's too expensive to report	4
county	32	2009	Most people do report incidents of corruption	1
county	32	2009	Nothing will be done / It wouldn't make a difference	27
county	32	2009	Other	1
county	32	2009	People are afraid of the consequences	30
county	32	2009	People don't have enough time to report it	1
county	32	2009	People don't know how to report it	3
county	32	2009	People don't know where to report it	5
county	32	2009	The officials where they would report to are also corrupt	9
county	32	2009	They would implicate themselves as bribe-givers	9
county	29	2009	Don't know	2
county	29	2009	It's government's money, so it's not our problem	1
county	29	2009	It's too expensive to report	4
county	29	2009	Most people do report incidents of corruption	1
county	29	2009	Nothing will be done / It wouldn't make a difference	16
county	29	2009	Other	1
county	29	2009	People are afraid of the consequences	8
county	29	2009	People don't have enough time to report it	1
county	29	2009	People don't know how to report it	1
county	29	2009	People don't know where to report it	5
county	29	2009	The officials where they would report to are also corrupt	2
county	29	2009	They would implicate themselves as bribe-givers	6
county	33	2009	Corruption is normal / Everyone does it	4
county	33	2009	Don't know	1
county	33	2009	It's too expensive to report	1
county	33	2009	Nothing will be done / It wouldn't make a difference	4
county	33	2009	Other	1
county	33	2009	People are afraid of the consequences	14
county	33	2009	People don't have enough time to report it	1
county	33	2009	People don't know how to report it	4
county	33	2009	People don't know where to report it	7
county	33	2009	The officials where they would report to are also corrupt	7
county	33	2009	They would implicate themselves as bribe-givers	4
county	46	2009	Corruption is normal / Everyone does it	7
county	46	2009	Don't know	1
county	46	2009	It's government's money, so it's not our problem	1
county	46	2009	Most people do report incidents of corruption	1
county	46	2009	Nothing will be done / It wouldn't make a difference	3
county	46	2009	People are afraid of the consequences	21
county	46	2009	People don't know how to report it	1
county	46	2009	People don't know where to report it	4
county	46	2009	The officials where they would report to are also corrupt	1
county	18	2009	Corruption is normal / Everyone does it	3
county	18	2009	Corruption is too difficult to prove	1
county	18	2009	Don't know	2
county	18	2009	It's too expensive to report	1
county	18	2009	Nothing will be done / It wouldn't make a difference	12
county	18	2009	People are afraid of the consequences	6
county	18	2009	People don't have enough time to report it	1
county	18	2009	The officials where they would report to are also corrupt	6
county	18	2009	They would implicate themselves as bribe-givers	8
county	19	2009	Corruption is normal / Everyone does it	5
county	19	2009	Don't know	3
county	19	2009	Nothing will be done / It wouldn't make a difference	11
county	19	2009	People are afraid of the consequences	17
county	19	2009	People don't know where to report it	1
county	19	2009	The officials where they would report to are also corrupt	7
county	19	2009	They would implicate themselves as bribe-givers	4
county	25	2009	Don't know	2
county	25	2009	It's too expensive to report	2
county	25	2009	Nothing will be done / It wouldn't make a difference	3
county	25	2009	People don't know how to report it	1
county	41	2009	Corruption is normal / Everyone does it	6
county	41	2009	It's too expensive to report	2
county	41	2009	Most people do report incidents of corruption	1
county	41	2009	Nothing will be done / It wouldn't make a difference	15
county	41	2009	Other	1
county	41	2009	People are afraid of the consequences	17
county	41	2009	People don't have enough time to report it	1
county	41	2009	People don't know how to report it	1
county	41	2009	The officials where they would report to are also corrupt	1
county	41	2009	They would implicate themselves as bribe-givers	3
county	6	2009	Don't know	2
county	6	2009	Nothing will be done / It wouldn't make a difference	5
county	6	2009	People are afraid of the consequences	7
county	6	2009	People don't have enough time to report it	1
county	6	2009	People don't know how to report it	1
county	4	2009	Don't know	6
county	4	2009	People are afraid of the consequences	2
county	13	2009	Corruption is normal / Everyone does it	5
county	13	2009	Corruption is too difficult to prove	1
county	13	2009	Most people do report incidents of corruption	4
county	13	2009	Nothing will be done / It wouldn't make a difference	11
county	13	2009	People are afraid of the consequences	2
county	13	2009	People don't know how to report it	1
county	26	2009	Corruption is normal / Everyone does it	5
county	26	2009	Don't know	4
county	26	2009	It's too expensive to report	4
county	26	2009	Nothing will be done / It wouldn't make a difference	10
county	26	2009	People are afraid of the consequences	10
county	26	2009	People don't have enough time to report it	2
county	26	2009	People don't know how to report it	2
county	26	2009	People don't know where to report it	3
county	26	2009	The officials where they would report to are also corrupt	4
county	26	2009	They would implicate themselves as bribe-givers	4
county	23	2009	Corruption is too difficult to prove	1
county	23	2009	Don't know	8
county	23	2009	It's too expensive to report	3
county	23	2009	Most people do report incidents of corruption	3
county	23	2009	Nothing will be done / It wouldn't make a difference	15
county	23	2009	Other	1
county	23	2009	People are afraid of the consequences	7
county	23	2009	People don't know how to report it	4
county	23	2009	People don't know where to report it	5
county	23	2009	They would implicate themselves as bribe-givers	1
county	27	2009	Corruption is normal / Everyone does it	2
county	27	2009	Corruption is too difficult to prove	2
county	27	2009	Don't know	3
county	27	2009	It's government's money, so it's not our problem	1
county	27	2009	It's too expensive to report	6
county	27	2009	Most people do report incidents of corruption	4
county	27	2009	Nothing will be done / It wouldn't make a difference	19
county	27	2009	People are afraid of the consequences	7
county	27	2009	People don't have enough time to report it	1
county	27	2009	People don't know how to report it	1
county	27	2009	People don't know where to report it	1
county	27	2009	The officials where they would report to are also corrupt	6
county	27	2009	They would implicate themselves as bribe-givers	3
county	38	2009	Corruption is normal / Everyone does it	4
county	38	2009	Don't know	2
county	38	2009	It's too expensive to report	1
county	38	2009	Most people do report incidents of corruption	2
county	38	2009	Nothing will be done / It wouldn't make a difference	2
county	38	2009	People are afraid of the consequences	7
county	38	2009	People don't have enough time to report it	2
county	38	2009	People don't know how to report it	2
county	38	2009	People don't know where to report it	4
county	38	2009	The officials where they would report to are also corrupt	4
county	38	2009	They would implicate themselves as bribe-givers	2
county	8	2009	Corruption is normal / Everyone does it	3
county	8	2009	Corruption is too difficult to prove	2
county	8	2009	Don't know	5
county	8	2009	Nothing will be done / It wouldn't make a difference	8
county	8	2009	People are afraid of the consequences	5
county	8	2009	People don't have enough time to report it	1
county	8	2009	People don't know how to report it	1
county	8	2009	People don't know where to report it	4
county	8	2009	The officials where they would report to are also corrupt	2
county	8	2009	They would implicate themselves as bribe-givers	1
county	24	2009	Corruption is normal / Everyone does it	1
county	24	2009	Corruption is too difficult to prove	1
county	24	2009	Don't know	3
county	24	2009	It's too expensive to report	1
county	24	2009	Nothing will be done / It wouldn't make a difference	8
county	24	2009	People are afraid of the consequences	5
county	24	2009	People don't know how to report it	1
county	24	2009	People don't know where to report it	1
county	24	2009	The officials where they would report to are also corrupt	1
county	24	2009	They would implicate themselves as bribe-givers	2
country	KE	2009	People are afraid of the consequences	662
country	KE	2009	It's government's money, so it's not our problem	4
country	KE	2009	They would implicate themselves as bribe-givers	157
country	KE	2009	Corruption is too difficult to prove	51
country	KE	2009	The officials where they would report to are also corrupt	191
country	KE	2009	Most people do report incidents of corruption	41
country	KE	2009	Nothing will be done / It wouldn't make a difference	599
country	KE	2009	People don't know where to report it	132
country	KE	2009	It's too expensive to report	71
country	KE	2009	People don't have enough time to report it	49
country	KE	2009	Corruption is normal / Everyone does it	223
country	KE	2009	Other	22
country	KE	2009	Don't know	99
country	KE	2009	People don't know how to report it	96
\.


--
-- Name: main_reason_for_not_reporting_corruption pk_main_reason_for_not_reporting_corruption; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.main_reason_for_not_reporting_corruption
    ADD CONSTRAINT pk_main_reason_for_not_reporting_corruption PRIMARY KEY (geo_level, geo_code, geo_version, main_reason_for_not_reporting_corruption);


--
-- PostgreSQL database dump complete
--


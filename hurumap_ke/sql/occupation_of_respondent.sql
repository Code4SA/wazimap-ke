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

ALTER TABLE IF EXISTS ONLY public.occupation_of_respondent DROP CONSTRAINT IF EXISTS pk_occupation_of_respondent;
DROP TABLE IF EXISTS public.occupation_of_respondent;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: occupation_of_respondent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.occupation_of_respondent (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    occupation_of_respondent character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: occupation_of_respondent; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.occupation_of_respondent (geo_level, geo_code, geo_version, occupation_of_respondent, total) FROM stdin;
county	30	2009	Agriculture / farming / fishing / forestry	2
county	30	2009	Artisan or skilled manual worker	1
county	30	2009	Clerical or secretarial	2
county	30	2009	Housewife / homemaker	3
county	30	2009	Mid-level professional	4
county	30	2009	Never had a job	7
county	30	2009	Other	1
county	30	2009	Retail / Shop	1
county	30	2009	Security services	1
county	30	2009	Student	3
county	30	2009	Trader / hawker / vendor	2
county	30	2009	Unskilled manual worker	2
county	30	2009	Upper-level professional	3
county	36	2009	Agriculture / farming / fishing / forestry	18
county	36	2009	Artisan or skilled manual worker	4
county	36	2009	Housewife / homemaker	3
county	36	2009	Mid-level professional	3
county	36	2009	Other	1
county	36	2009	Retail / Shop	2
county	36	2009	Security services	1
county	36	2009	Student	6
county	36	2009	Trader / hawker / vendor	2
county	36	2009	Unskilled manual worker	8
county	39	2009	Agriculture / farming / fishing / forestry	21
county	39	2009	Artisan or skilled manual worker	8
county	39	2009	Housewife / homemaker	5
county	39	2009	Mid-level professional	5
county	39	2009	Never had a job	16
county	39	2009	Retail / Shop	3
county	39	2009	Security services	1
county	39	2009	Student	5
county	39	2009	Trader / hawker / vendor	8
county	39	2009	Unskilled manual worker	5
county	39	2009	Upper-level professional	3
county	40	2009	Agriculture / farming / fishing / forestry	10
county	40	2009	Artisan or skilled manual worker	8
county	40	2009	Housewife / homemaker	2
county	40	2009	Mid-level professional	5
county	40	2009	Never had a job	4
county	40	2009	Retail / Shop	1
county	40	2009	Student	5
county	40	2009	Supervisor / Foreman / Senior Manager	2
county	40	2009	Trader / hawker / vendor	1
county	40	2009	Unskilled manual worker	1
county	40	2009	Upper-level professional	1
county	28	2009	Agriculture / farming / fishing / forestry	4
county	28	2009	Housewife / homemaker	2
county	28	2009	Mid-level professional	2
county	28	2009	Never had a job	3
county	28	2009	Security services	1
county	28	2009	Supervisor / Foreman / Senior Manager	1
county	28	2009	Unskilled manual worker	2
county	28	2009	Upper-level professional	1
county	14	2009	Agriculture / farming / fishing / forestry	7
county	14	2009	Artisan or skilled manual worker	6
county	14	2009	Clerical or secretarial	1
county	14	2009	Housewife / homemaker	1
county	14	2009	Mid-level professional	5
county	14	2009	Never had a job	1
county	14	2009	Other	1
county	14	2009	Retail / Shop	5
county	14	2009	Security services	2
county	14	2009	Student	1
county	14	2009	Supervisor / Foreman / Senior Manager	1
county	14	2009	Trader / hawker / vendor	5
county	14	2009	Unskilled manual worker	3
county	14	2009	Upper-level professional	1
county	7	2009	Agriculture / farming / fishing / forestry	5
county	7	2009	Housewife / homemaker	7
county	7	2009	Mid-level professional	1
county	7	2009	Never had a job	4
county	7	2009	Retail / Shop	6
county	7	2009	Student	1
county	7	2009	Trader / hawker / vendor	6
county	7	2009	Unskilled manual worker	2
county	43	2009	Agriculture / farming / fishing / forestry	17
county	43	2009	Artisan or skilled manual worker	3
county	43	2009	Housewife / homemaker	1
county	43	2009	Mid-level professional	3
county	43	2009	Never had a job	3
county	43	2009	Retail / Shop	1
county	43	2009	Student	6
county	43	2009	Supervisor / Foreman / Senior Manager	1
county	43	2009	Trader / hawker / vendor	16
county	43	2009	Unskilled manual worker	5
county	11	2009	Housewife / homemaker	2
county	11	2009	Never had a job	2
county	11	2009	Other	1
county	11	2009	Trader / hawker / vendor	3
county	34	2009	Agriculture / farming / fishing / forestry	3
county	34	2009	Artisan or skilled manual worker	6
county	34	2009	Clerical or secretarial	2
county	34	2009	Housewife / homemaker	3
county	34	2009	Mid-level professional	2
county	34	2009	Never had a job	6
county	34	2009	Retail / Shop	4
county	34	2009	Security services	1
county	34	2009	Student	4
county	34	2009	Supervisor / Foreman / Senior Manager	1
county	34	2009	Trader / hawker / vendor	3
county	34	2009	Unskilled manual worker	11
county	34	2009	Upper-level professional	2
county	37	2009	Agriculture / farming / fishing / forestry	23
county	37	2009	Artisan or skilled manual worker	7
county	37	2009	Clerical or secretarial	3
county	37	2009	Housewife / homemaker	12
county	37	2009	Mid-level professional	8
county	37	2009	Never had a job	9
county	37	2009	Other	1
county	37	2009	Retail / Shop	5
county	37	2009	Student	9
county	37	2009	Trader / hawker / vendor	7
county	37	2009	Unskilled manual worker	11
county	37	2009	Upper-level professional	1
county	35	2009	Agriculture / farming / fishing / forestry	16
county	35	2009	Artisan or skilled manual worker	3
county	35	2009	Housewife / homemaker	2
county	35	2009	Mid-level professional	2
county	35	2009	Never had a job	2
county	35	2009	Retail / Shop	2
county	35	2009	Student	6
county	35	2009	Supervisor / Foreman / Senior Manager	1
county	35	2009	Trader / hawker / vendor	3
county	35	2009	Unskilled manual worker	2
county	35	2009	Upper-level professional	1
county	22	2009	Agriculture / farming / fishing / forestry	16
county	22	2009	Artisan or skilled manual worker	15
county	22	2009	Clerical or secretarial	3
county	22	2009	Housewife / homemaker	4
county	22	2009	Mid-level professional	14
county	22	2009	Never had a job	2
county	22	2009	Other	2
county	22	2009	Retail / Shop	16
county	22	2009	Security services	4
county	22	2009	Student	10
county	22	2009	Supervisor / Foreman / Senior Manager	1
county	22	2009	Trader / hawker / vendor	19
county	22	2009	Unskilled manual worker	8
county	22	2009	Upper-level professional	6
county	3	2009	Agriculture / farming / fishing / forestry	10
county	3	2009	Artisan or skilled manual worker	6
county	3	2009	Clerical or secretarial	2
county	3	2009	Never had a job	13
county	3	2009	Other	3
county	3	2009	Retail / Shop	4
county	3	2009	Security services	2
county	3	2009	Student	3
county	3	2009	Supervisor / Foreman / Senior Manager	1
county	3	2009	Trader / hawker / vendor	13
county	3	2009	Unskilled manual worker	6
county	3	2009	Upper-level professional	1
county	20	2009	Agriculture / farming / fishing / forestry	11
county	20	2009	Artisan or skilled manual worker	3
county	20	2009	Clerical or secretarial	3
county	20	2009	Housewife / homemaker	1
county	20	2009	Mid-level professional	4
county	20	2009	Retail / Shop	5
county	20	2009	Student	3
county	20	2009	Supervisor / Foreman / Senior Manager	2
county	20	2009	Trader / hawker / vendor	3
county	20	2009	Unskilled manual worker	5
county	45	2009	Agriculture / farming / fishing / forestry	38
county	45	2009	Artisan or skilled manual worker	4
county	45	2009	Housewife / homemaker	2
county	45	2009	Mid-level professional	3
county	45	2009	Never had a job	1
county	45	2009	Retail / Shop	2
county	45	2009	Student	4
county	45	2009	Trader / hawker / vendor	13
county	45	2009	Unskilled manual worker	5
county	42	2009	Agriculture / farming / fishing / forestry	7
county	42	2009	Artisan or skilled manual worker	10
county	42	2009	Clerical or secretarial	1
county	42	2009	Housewife / homemaker	1
county	42	2009	Mid-level professional	7
county	42	2009	Never had a job	5
county	42	2009	Other	1
county	42	2009	Retail / Shop	1
county	42	2009	Student	3
county	42	2009	Supervisor / Foreman / Senior Manager	1
county	42	2009	Trader / hawker / vendor	11
county	42	2009	Unskilled manual worker	7
county	42	2009	Upper-level professional	1
county	15	2009	Agriculture / farming / fishing / forestry	8
county	15	2009	Artisan or skilled manual worker	3
county	15	2009	Clerical or secretarial	1
county	15	2009	Don't know	1
county	15	2009	Housewife / homemaker	3
county	15	2009	Mid-level professional	3
county	15	2009	Never had a job	8
county	15	2009	Other	1
county	15	2009	Retail / Shop	9
county	15	2009	Security services	1
county	15	2009	Student	3
county	15	2009	Trader / hawker / vendor	10
county	15	2009	Unskilled manual worker	5
county	2	2009	Agriculture / farming / fishing / forestry	6
county	2	2009	Artisan or skilled manual worker	4
county	2	2009	Clerical or secretarial	1
county	2	2009	Housewife / homemaker	1
county	2	2009	Mid-level professional	4
county	2	2009	Never had a job	5
county	2	2009	Retail / Shop	3
county	2	2009	Security services	2
county	2	2009	Student	3
county	2	2009	Supervisor / Foreman / Senior Manager	1
county	2	2009	Trader / hawker / vendor	6
county	2	2009	Unskilled manual worker	4
county	31	2009	Agriculture / farming / fishing / forestry	9
county	31	2009	Artisan or skilled manual worker	1
county	31	2009	Housewife / homemaker	3
county	31	2009	Mid-level professional	2
county	31	2009	Never had a job	1
county	31	2009	Retail / Shop	3
county	31	2009	Student	2
county	31	2009	Trader / hawker / vendor	3
county	5	2009	Agriculture / farming / fishing / forestry	3
county	5	2009	Artisan or skilled manual worker	1
county	5	2009	Housewife / homemaker	2
county	5	2009	Never had a job	1
county	5	2009	Supervisor / Foreman / Senior Manager	1
county	16	2009	Agriculture / farming / fishing / forestry	15
county	16	2009	Artisan or skilled manual worker	3
county	16	2009	Housewife / homemaker	6
county	16	2009	Mid-level professional	1
county	16	2009	Never had a job	7
county	16	2009	Other	1
county	16	2009	Retail / Shop	8
county	16	2009	Security services	1
county	16	2009	Student	3
county	16	2009	Trader / hawker / vendor	16
county	16	2009	Unskilled manual worker	8
county	16	2009	Upper-level professional	3
county	17	2009	Agriculture / farming / fishing / forestry	3
county	17	2009	Artisan or skilled manual worker	5
county	17	2009	Housewife / homemaker	2
county	17	2009	Mid-level professional	3
county	17	2009	Never had a job	9
county	17	2009	Other	2
county	17	2009	Retail / Shop	16
county	17	2009	Security services	2
county	17	2009	Student	1
county	17	2009	Trader / hawker / vendor	2
county	17	2009	Unskilled manual worker	11
county	9	2009	Agriculture / farming / fishing / forestry	2
county	9	2009	Artisan or skilled manual worker	2
county	9	2009	Housewife / homemaker	16
county	9	2009	Mid-level professional	4
county	9	2009	Never had a job	3
county	9	2009	Retail / Shop	6
county	9	2009	Student	7
county	9	2009	Trader / hawker / vendor	6
county	9	2009	Unskilled manual worker	2
county	10	2009	Agriculture / farming / fishing / forestry	1
county	10	2009	Artisan or skilled manual worker	1
county	10	2009	Clerical or secretarial	1
county	10	2009	Housewife / homemaker	5
county	10	2009	Mid-level professional	1
county	10	2009	Never had a job	3
county	10	2009	Other	1
county	10	2009	Student	1
county	10	2009	Trader / hawker / vendor	2
county	12	2009	Agriculture / farming / fishing / forestry	13
county	12	2009	Artisan or skilled manual worker	2
county	12	2009	Clerical or secretarial	4
county	12	2009	Housewife / homemaker	6
county	12	2009	Mid-level professional	4
county	12	2009	Never had a job	5
county	12	2009	Other	1
county	12	2009	Retail / Shop	10
county	12	2009	Security services	2
county	12	2009	Student	5
county	12	2009	Supervisor / Foreman / Senior Manager	4
county	12	2009	Trader / hawker / vendor	18
county	12	2009	Unskilled manual worker	7
county	12	2009	Upper-level professional	4
county	44	2009	Agriculture / farming / fishing / forestry	22
county	44	2009	Artisan or skilled manual worker	1
county	44	2009	Housewife / homemaker	2
county	44	2009	Mid-level professional	4
county	44	2009	Never had a job	3
county	44	2009	Retail / Shop	1
county	44	2009	Student	7
county	44	2009	Trader / hawker / vendor	7
county	44	2009	Unskilled manual worker	1
county	1	2009	Agriculture / farming / fishing / forestry	1
county	1	2009	Artisan or skilled manual worker	9
county	1	2009	Clerical or secretarial	3
county	1	2009	Housewife / homemaker	1
county	1	2009	Mid-level professional	6
county	1	2009	Never had a job	6
county	1	2009	Other	3
county	1	2009	Retail / Shop	7
county	1	2009	Security services	3
county	1	2009	Student	2
county	1	2009	Supervisor / Foreman / Senior Manager	5
county	1	2009	Trader / hawker / vendor	13
county	1	2009	Unskilled manual worker	13
county	21	2009	Agriculture / farming / fishing / forestry	30
county	21	2009	Artisan or skilled manual worker	5
county	21	2009	Clerical or secretarial	1
county	21	2009	Mid-level professional	3
county	21	2009	Never had a job	1
county	21	2009	Other	1
county	21	2009	Retail / Shop	7
county	21	2009	Student	4
county	21	2009	Trader / hawker / vendor	1
county	21	2009	Unskilled manual worker	11
county	47	2009	Agriculture / farming / fishing / forestry	4
county	47	2009	Artisan or skilled manual worker	29
county	47	2009	Clerical or secretarial	7
county	47	2009	Don't know	1
county	47	2009	Housewife / homemaker	7
county	47	2009	Mid-level professional	16
county	47	2009	Never had a job	16
county	47	2009	Other	15
county	47	2009	Retail / Shop	22
county	47	2009	Security services	5
county	47	2009	Student	21
county	47	2009	Supervisor / Foreman / Senior Manager	3
county	47	2009	Trader / hawker / vendor	42
county	47	2009	Unskilled manual worker	51
county	47	2009	Upper-level professional	9
county	32	2009	Agriculture / farming / fishing / forestry	37
county	32	2009	Artisan or skilled manual worker	8
county	32	2009	Clerical or secretarial	2
county	32	2009	Housewife / homemaker	8
county	32	2009	Mid-level professional	5
county	32	2009	Never had a job	2
county	32	2009	Retail / Shop	5
county	32	2009	Security services	1
county	32	2009	Student	8
county	32	2009	Trader / hawker / vendor	16
county	32	2009	Unskilled manual worker	12
county	29	2009	Agriculture / farming / fishing / forestry	14
county	29	2009	Artisan or skilled manual worker	3
county	29	2009	Clerical or secretarial	3
county	29	2009	Housewife / homemaker	2
county	29	2009	Mid-level professional	7
county	29	2009	Never had a job	2
county	29	2009	Other	1
county	29	2009	Retail / Shop	1
county	29	2009	Security services	1
county	29	2009	Student	3
county	29	2009	Trader / hawker / vendor	5
county	29	2009	Unskilled manual worker	5
county	29	2009	Upper-level professional	1
county	33	2009	Agriculture / farming / fishing / forestry	22
county	33	2009	Artisan or skilled manual worker	2
county	33	2009	Housewife / homemaker	6
county	33	2009	Mid-level professional	1
county	33	2009	Never had a job	3
county	33	2009	Retail / Shop	3
county	33	2009	Student	2
county	33	2009	Trader / hawker / vendor	6
county	33	2009	Unskilled manual worker	3
county	46	2009	Agriculture / farming / fishing / forestry	20
county	46	2009	Artisan or skilled manual worker	3
county	46	2009	Clerical or secretarial	1
county	46	2009	Retail / Shop	2
county	46	2009	Student	3
county	46	2009	Trader / hawker / vendor	7
county	46	2009	Unskilled manual worker	1
county	46	2009	Upper-level professional	3
county	18	2009	Agriculture / farming / fishing / forestry	7
county	18	2009	Artisan or skilled manual worker	6
county	18	2009	Clerical or secretarial	1
county	18	2009	Housewife / homemaker	1
county	18	2009	Mid-level professional	1
county	18	2009	Never had a job	1
county	18	2009	Retail / Shop	8
county	18	2009	Security services	1
county	18	2009	Student	2
county	18	2009	Trader / hawker / vendor	5
county	18	2009	Unskilled manual worker	6
county	18	2009	Upper-level professional	1
county	19	2009	Agriculture / farming / fishing / forestry	19
county	19	2009	Artisan or skilled manual worker	3
county	19	2009	Mid-level professional	2
county	19	2009	Retail / Shop	8
county	19	2009	Student	2
county	19	2009	Supervisor / Foreman / Senior Manager	2
county	19	2009	Trader / hawker / vendor	6
county	19	2009	Unskilled manual worker	5
county	19	2009	Upper-level professional	1
county	25	2009	Housewife / homemaker	1
county	25	2009	Never had a job	5
county	25	2009	Other	1
county	25	2009	Unskilled manual worker	1
county	41	2009	Agriculture / farming / fishing / forestry	15
county	41	2009	Artisan or skilled manual worker	4
county	41	2009	Housewife / homemaker	3
county	41	2009	Mid-level professional	1
county	41	2009	Never had a job	5
county	41	2009	Student	1
county	41	2009	Supervisor / Foreman / Senior Manager	1
county	41	2009	Trader / hawker / vendor	13
county	41	2009	Unskilled manual worker	5
county	6	2009	Agriculture / farming / fishing / forestry	2
county	6	2009	Clerical or secretarial	2
county	6	2009	Mid-level professional	1
county	6	2009	Never had a job	3
county	6	2009	Retail / Shop	3
county	6	2009	Student	1
county	6	2009	Trader / hawker / vendor	1
county	6	2009	Unskilled manual worker	3
county	4	2009	Agriculture / farming / fishing / forestry	1
county	4	2009	Housewife / homemaker	4
county	4	2009	Never had a job	2
county	4	2009	Trader / hawker / vendor	1
county	13	2009	Agriculture / farming / fishing / forestry	8
county	13	2009	Artisan or skilled manual worker	1
county	13	2009	Clerical or secretarial	1
county	13	2009	Housewife / homemaker	2
county	13	2009	Never had a job	2
county	13	2009	Retail / Shop	1
county	13	2009	Security services	1
county	13	2009	Student	1
county	13	2009	Supervisor / Foreman / Senior Manager	2
county	13	2009	Trader / hawker / vendor	2
county	13	2009	Unskilled manual worker	2
county	13	2009	Upper-level professional	1
county	26	2009	Agriculture / farming / fishing / forestry	9
county	26	2009	Artisan or skilled manual worker	2
county	26	2009	Clerical or secretarial	2
county	26	2009	Housewife / homemaker	2
county	26	2009	Mid-level professional	1
county	26	2009	Never had a job	9
county	26	2009	Retail / Shop	5
county	26	2009	Security services	1
county	26	2009	Student	5
county	26	2009	Trader / hawker / vendor	6
county	26	2009	Unskilled manual worker	6
county	23	2009	Agriculture / farming / fishing / forestry	5
county	23	2009	Housewife / homemaker	7
county	23	2009	Mid-level professional	2
county	23	2009	Never had a job	8
county	23	2009	Other	1
county	23	2009	Retail / Shop	1
county	23	2009	Student	1
county	23	2009	Trader / hawker / vendor	4
county	23	2009	Unskilled manual worker	19
county	27	2009	Agriculture / farming / fishing / forestry	12
county	27	2009	Artisan or skilled manual worker	5
county	27	2009	Clerical or secretarial	1
county	27	2009	Housewife / homemaker	10
county	27	2009	Mid-level professional	4
county	27	2009	Never had a job	1
county	27	2009	Other	1
county	27	2009	Retail / Shop	1
county	27	2009	Security services	3
county	27	2009	Student	1
county	27	2009	Supervisor / Foreman / Senior Manager	1
county	27	2009	Trader / hawker / vendor	7
county	27	2009	Unskilled manual worker	6
county	27	2009	Upper-level professional	3
county	38	2009	Agriculture / farming / fishing / forestry	12
county	38	2009	Artisan or skilled manual worker	2
county	38	2009	Mid-level professional	2
county	38	2009	Never had a job	5
county	38	2009	Retail / Shop	1
county	38	2009	Student	4
county	38	2009	Trader / hawker / vendor	1
county	38	2009	Unskilled manual worker	5
county	8	2009	Agriculture / farming / fishing / forestry	6
county	8	2009	Housewife / homemaker	10
county	8	2009	Mid-level professional	5
county	8	2009	Never had a job	6
county	8	2009	Retail / Shop	2
county	8	2009	Trader / hawker / vendor	2
county	8	2009	Unskilled manual worker	1
county	24	2009	Agriculture / farming / fishing / forestry	9
county	24	2009	Housewife / homemaker	4
county	24	2009	Never had a job	2
county	24	2009	Security services	2
county	24	2009	Trader / hawker / vendor	5
county	24	2009	Unskilled manual worker	2
country	KE	2009	Agriculture / farming / fishing / forestry	523
country	KE	2009	Student	162
country	KE	2009	Unskilled manual worker	278
country	KE	2009	Artisan or skilled manual worker	189
country	KE	2009	Trader / hawker / vendor	328
country	KE	2009	Clerical or secretarial	48
country	KE	2009	Never had a job	202
country	KE	2009	Housewife / homemaker	165
country	KE	2009	Other	40
country	KE	2009	Supervisor / Foreman / Senior Manager	32
country	KE	2009	Mid-level professional	151
country	KE	2009	Upper-level professional	47
country	KE	2009	Security services	39
country	KE	2009	Don't know	2
country	KE	2009	Retail / Shop	191
\.


--
-- Name: occupation_of_respondent pk_occupation_of_respondent; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.occupation_of_respondent
    ADD CONSTRAINT pk_occupation_of_respondent PRIMARY KEY (geo_level, geo_code, geo_version, occupation_of_respondent);


--
-- PostgreSQL database dump complete
--


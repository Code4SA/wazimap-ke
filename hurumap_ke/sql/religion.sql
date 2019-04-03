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

ALTER TABLE IF EXISTS ONLY public.religion DROP CONSTRAINT IF EXISTS pk_religion;
DROP TABLE IF EXISTS public.religion;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: religion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.religion (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    religion character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: religion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.religion (geo_level, geo_code, geo_version, religion, total) FROM stdin;
county	47	2009	Catholics	851200
county	1	2009	Catholics	167700
county	2	2009	Catholics	39900
county	3	2009	Catholics	97500
county	4	2009	Catholics	8300
county	5	2009	Catholics	11600
county	6	2009	Catholics	67000
county	7	2009	Catholics	4600
county	8	2009	Catholics	1200
county	9	2009	Catholics	1200
county	10	2009	Catholics	60000
county	11	2009	Catholics	26100
county	12	2009	Catholics	337900
county	13	2009	Catholics	117000
county	14	2009	Catholics	157200
county	15	2009	Catholics	253800
county	16	2009	Catholics	430600
county	17	2009	Catholics	290300
county	18	2009	Catholics	112800
county	19	2009	Catholics	203200
county	20	2009	Catholics	175300
county	21	2009	Catholics	246800
county	22	2009	Catholics	441900
county	23	2009	Catholics	369900
county	24	2009	Catholics	191900
county	25	2009	Catholics	135100
county	26	2009	Catholics	196800
county	27	2009	Catholics	205500
county	28	2009	Catholics	189400
county	29	2009	Catholics	186200
county	30	2009	Catholics	89300
county	31	2009	Catholics	130300
county	32	2009	Catholics	312200
county	33	2009	Catholics	145200
county	34	2009	Catholics	143400
county	35	2009	Catholics	101600
county	36	2009	Catholics	132700
county	37	2009	Catholics	336300
county	38	2009	Catholics	21900
county	39	2009	Catholics	279700
county	40	2009	Catholics	274900
county	41	2009	Catholics	225100
county	42	2009	Catholics	210100
county	43	2009	Catholics	185900
county	44	2009	Catholics	199100
county	45	2009	Catholics	405100
county	46	2009	Catholics	154400
country	KE	2009	Catholics	8925100
county	47	2009	Protestants and other Christians	1862400
county	1	2009	Protestants and other Christians	387600
county	2	2009	Protestants and other Christians	152600
county	3	2009	Protestants and other Christians	528000
county	4	2009	Protestants and other Christians	30100
county	5	2009	Protestants and other Christians	32700
county	6	2009	Protestants and other Christians	181600
county	7	2009	Protestants and other Christians	9600
county	8	2009	Protestants and other Christians	1700
county	9	2009	Protestants and other Christians	1100
county	10	2009	Protestants and other Christians	24700
county	11	2009	Protestants and other Christians	14800
county	12	2009	Protestants and other Christians	943500
county	13	2009	Protestants and other Christians	233900
county	14	2009	Protestants and other Christians	334900
county	15	2009	Protestants and other Christians	688700
county	16	2009	Protestants and other Christians	627100
county	17	2009	Protestants and other Christians	557700
county	18	2009	Protestants and other Christians	430200
county	19	2009	Protestants and other Christians	454300
county	20	2009	Protestants and other Christians	327200
county	21	2009	Protestants and other Christians	658000
county	22	2009	Protestants and other Christians	1086800
county	23	2009	Protestants and other Christians	243100
county	24	2009	Protestants and other Christians	230400
county	25	2009	Protestants and other Christians	43000
county	26	2009	Protestants and other Christians	577400
county	27	2009	Protestants and other Christians	622000
county	28	2009	Protestants and other Christians	165400
county	29	2009	Protestants and other Christians	524700
county	30	2009	Protestants and other Christians	356100
county	31	2009	Protestants and other Christians	220800
county	32	2009	Protestants and other Christians	1113600
county	33	2009	Protestants and other Christians	514800
county	34	2009	Protestants and other Christians	473600
county	35	2009	Protestants and other Christians	593200
county	36	2009	Protestants and other Christians	550100
county	37	2009	Protestants and other Christians	1164900
county	38	2009	Protestants and other Christians	499200
county	39	2009	Protestants and other Christians	1026100
county	40	2009	Protestants and other Christians	420000
county	41	2009	Protestants and other Christians	553700
county	42	2009	Protestants and other Christians	674300
county	43	2009	Protestants and other Christians	726400
county	44	2009	Protestants and other Christians	667100
county	45	2009	Protestants and other Christians	717400
county	46	2009	Protestants and other Christians	430200
country	KE	2009	Protestants and other Christians	22676700
county	47	2009	Muslims	221400
county	1	2009	Muslims	337900
county	2	2009	Muslims	424000
county	3	2009	Muslims	210300
county	4	2009	Muslims	197300
county	5	2009	Muslims	52300
county	6	2009	Muslims	20900
county	7	2009	Muslims	601900
county	8	2009	Muslims	654700
county	9	2009	Muslims	1020400
county	10	2009	Muslims	132600
county	11	2009	Muslims	88100
county	12	2009	Muslims	11400
county	13	2009	Muslims	800
county	14	2009	Muslims	2500
county	15	2009	Muslims	6200
county	16	2009	Muslims	6700
county	17	2009	Muslims	4900
county	18	2009	Muslims	600
county	19	2009	Muslims	4000
county	20	2009	Muslims	2000
county	21	2009	Muslims	3000
county	22	2009	Muslims	13500
county	23	2009	Muslims	25400
county	24	2009	Muslims	2600
county	25	2009	Muslims	2200
county	26	2009	Muslims	8300
county	27	2009	Muslims	13100
county	28	2009	Muslims	1000
county	29	2009	Muslims	5000
county	30	2009	Muslims	4200
county	31	2009	Muslims	7100
county	32	2009	Muslims	19700
county	33	2009	Muslims	3900
county	34	2009	Muslims	18300
county	35	2009	Muslims	2300
county	36	2009	Muslims	600
county	37	2009	Muslims	90200
county	38	2009	Muslims	4600
county	39	2009	Muslims	19600
county	40	2009	Muslims	14100
county	41	2009	Muslims	3100
county	42	2009	Muslims	14400
county	43	2009	Muslims	5700
county	44	2009	Muslims	6400
county	45	2009	Muslims	2200
county	46	2009	Muslims	600
country	KE	2009	Muslims	4292000
county	47	2009	Others	93100
county	1	2009	Others	15500
county	2	2009	Others	12000
county	3	2009	Others	73900
county	4	2009	Others	900
county	5	2009	Others	1100
county	6	2009	Others	2300
county	7	2009	Others	200
county	8	2009	Others	200
county	9	2009	Others	200
county	10	2009	Others	68700
county	11	2009	Others	9600
county	12	2009	Others	21700
county	13	2009	Others	4300
county	14	2009	Others	8300
county	15	2009	Others	23900
county	16	2009	Others	11500
county	17	2009	Others	12200
county	18	2009	Others	14400
county	19	2009	Others	8900
county	20	2009	Others	10400
county	21	2009	Others	12200
county	22	2009	Others	25500
county	23	2009	Others	126400
county	24	2009	Others	54100
county	25	2009	Others	32400
county	26	2009	Others	15200
county	27	2009	Others	15600
county	28	2009	Others	2700
county	29	2009	Others	14300
county	30	2009	Others	77700
county	31	2009	Others	15100
county	32	2009	Others	29200
county	33	2009	Others	101100
county	34	2009	Others	22700
county	35	2009	Others	10200
county	36	2009	Others	15700
county	37	2009	Others	47400
county	38	2009	Others	20200
county	39	2009	Others	25800
county	40	2009	Others	22300
county	41	2009	Others	44800
county	42	2009	Others	47000
county	43	2009	Others	31800
county	44	2009	Others	26600
county	45	2009	Others	10000
county	46	2009	Others	3800
country	KE	2009	Others	1150000
\.


--
-- Name: religion pk_religion; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.religion
    ADD CONSTRAINT pk_religion PRIMARY KEY (geo_level, geo_code, geo_version, religion);


--
-- PostgreSQL database dump complete
--


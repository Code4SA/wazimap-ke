--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = pesayetu, public, pg_catalog;

ALTER TABLE IF EXISTS ONLY pesayetu.conditional_fund_allocations_combined DROP CONSTRAINT IF EXISTS pk_conditional_fund_allocations_combined;
DROP TABLE IF EXISTS pesayetu.conditional_fund_allocations_combined;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: conditional_fund_allocations_combined; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE pesayetu.conditional_fund_allocations_combined (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    name character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    total double precision
);

--
-- Data for Name: conditional_fund_allocations_combined; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pesayetu.conditional_fund_allocations_combined (geo_level, geo_code, geo_version, name, year, total) FROM stdin;
country	KE	2009	Kenya	2013/2014	20000000000
country	KE	2009	Kenya	2014/2015	13898673499
county	30	2009	Baringo	2013/2014	382555501
county	30	2009	Baringo	2014/2015	182876218
county	36	2009	Bomet	2013/2014	272582727
county	36	2009	Bomet	2014/2015	150769518
county	39	2009	Bungoma	2013/2014	334595329
county	39	2009	Bungoma	2014/2015	711417035
county	40	2009	Busia	2013/2014	266369417
county	40	2009	Busia	2014/2015	661134231
county	28	2009	Elgeyo-Marakwet	2013/2014	744501814
county	28	2009	Elgeyo-Marakwet	2014/2015	139362418
county	14	2009	Embu	2013/2014	557198402
county	14	2009	Embu	2014/2015	426494990
county	7	2009	Garissa	2013/2014	475032960
county	7	2009	Garissa	2014/2015	91802418
county	43	2009	Homa Bay	2013/2014	1604785613
county	43	2009	Homa Bay	2014/2015	215462418
county	11	2009	Isiolo	2013/2014	187893545
county	11	2009	Isiolo	2014/2015	91802418
county	34	2009	Kajiado	2013/2014	284382199
county	34	2009	Kajiado	2014/2015	214154418
county	37	2009	Kakamega	2013/2014	840702017
county	37	2009	Kakamega	2014/2015	955696758
county	35	2009	Kericho	2013/2014	317792977
county	35	2009	Kericho	2014/2015	120827418
county	22	2009	Kiambu	2013/2014	805574808
county	22	2009	Kiambu	2014/2015	148204518
county	3	2009	Kilifi	2013/2014	377885641
county	3	2009	Kilifi	2014/2015	142602418
county	20	2009	Kirinyaga	2013/2014	242055751
county	20	2009	Kirinyaga	2014/2015	277576292
county	45	2009	Kisii	2013/2014	635954331
county	45	2009	Kisii	2014/2015	155899518
county	42	2009	Kisumu	2013/2014	711380679
county	42	2009	Kisumu	2014/2015	210529518
county	15	2009	Kitui	2013/2014	519086118
county	15	2009	Kitui	2014/2015	299716518
county	2	2009	Kwale	2013/2014	280447997
county	2	2009	Kwale	2014/2015	168482418
county	31	2009	Laikipia	2013/2014	234821897
county	31	2009	Laikipia	2014/2015	155224518
county	5	2009	Lamu	2013/2014	99237004
county	5	2009	Lamu	2014/2015	91802418
county	16	2009	Machakos	2013/2014	523080848
county	16	2009	Machakos	2014/2015	302987289
county	17	2009	Makueni	2013/2014	354912725
county	17	2009	Makueni	2014/2015	309133344
county	9	2009	Mandera	2013/2014	230310408
county	9	2009	Mandera	2014/2015	91802418
county	10	2009	Marsabit	2013/2014	272856567
county	10	2009	Marsabit	2014/2015	91802418
county	12	2009	Meru	2013/2014	758421849
county	12	2009	Meru	2014/2015	1584004384
county	44	2009	Migori	2013/2014	490967787
county	44	2009	Migori	2014/2015	216486618
county	1	2009	Mombasa	2013/2014	545817618
county	1	2009	Mombasa	2014/2015	131729518
county	21	2009	Murang'a	2013/2014	404431503
county	21	2009	Murang'a	2014/2015	334012785
county	47	2009	Nairobi	2013/2014	390470421
county	47	2009	Nairobi	2014/2015	1605339854
county	32	2009	Nakuru	2013/2014	1024998693
county	32	2009	Nakuru	2014/2015	138214518
county	29	2009	Nandi	2013/2014	408946759
county	29	2009	Nandi	2014/2015	120799518
county	33	2009	Narok	2013/2014	278791611
county	33	2009	Narok	2014/2015	205416618
county	46	2009	Nyamira	2013/2014	278440754
county	46	2009	Nyamira	2014/2015	153902418
county	18	2009	Nyandarua	2013/2014	284911755
county	18	2009	Nyandarua	2014/2015	145774518
county	19	2009	Nyeri	2013/2014	817147697
county	19	2009	Nyeri	2014/2015	316867785
county	25	2009	Samburu	2013/2014	206938875
county	25	2009	Samburu	2014/2015	91802418
county	41	2009	Siaya	2013/2014	318012871
county	41	2009	Siaya	2014/2015	653606711
county	6	2009	Taita-Taveta	2013/2014	205852212
county	6	2009	Taita-Taveta	2014/2015	91802418
county	4	2009	Tana River	2013/2014	204478573
county	4	2009	Tana River	2014/2015	123797418
county	13	2009	Tharaka-Nithi	2013/2014	139762124
county	13	2009	Tharaka-Nithi	2014/2015	698823239
county	26	2009	Trans Nzoia	2013/2014	193134230
county	26	2009	Trans Nzoia	2014/2015	91802418
county	23	2009	Turkana	2013/2014	229995474
county	23	2009	Turkana	2014/2015	91802418
county	27	2009	Uasin Gishu	2013/2014	270261206
county	27	2009	Uasin Gishu	2014/2015	96432418
county	38	2009	Vihiga	2013/2014	196974298
county	38	2009	Vihiga	2014/2015	410456808
county	8	2009	Wajir	2013/2014	357469372
county	8	2009	Wajir	2014/2015	91802418
county	24	2009	West Pokot	2013/2014	437777043
county	24	2009	West Pokot	2014/2015	96432418
\.


--
-- Name: conditional_fund_allocations_combined pk_conditional_fund_allocations_combined; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pesayetu.conditional_fund_allocations_combined
    ADD CONSTRAINT pk_conditional_fund_allocations_combined PRIMARY KEY (geo_level, geo_code, geo_version, name, year);


--
-- PostgreSQL database dump complete
--


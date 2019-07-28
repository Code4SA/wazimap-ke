--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.passport_application DROP CONSTRAINT IF EXISTS passport_application_pkey;
DROP TABLE IF EXISTS public.passport_application;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: passport_application; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.passport_application (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    age_group character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: passport_application; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.passport_application (geo_level, geo_code, geo_version, year, age_group, total) FROM stdin;
state	1	2016	2016	0 - 17	11583
state	1	2016	2016	18 - 59	64579
state	1	2016	2016	Above 60	5509
state	1	2016	2017	0 - 17	2277
state	1	2016	2017	18 - 59	13519
state	1	2016	2017	Above 60	1136
state	2	2016	2016	0 - 17	1231
state	2	2016	2016	18 - 59	21584
state	2	2016	2016	Above 60	3032
state	2	2016	2017	0 - 17	234
state	2	2016	2017	18 - 59	4033
state	2	2016	2017	Above 60	558
state	3	2016	2016	0 - 17	5270
state	3	2016	2016	18 - 59	28725
state	3	2016	2016	Above 60	1891
state	3	2016	2017	0 - 17	1048
state	3	2016	2017	18 - 59	5810
state	3	2016	2017	Above 60	368
state	4	2016	2016	0 - 17	8731
state	4	2016	2016	18 - 59	71699
state	4	2016	2016	Above 60	4226
state	4	2016	2017	0 - 17	1687
state	4	2016	2017	18 - 59	13948
state	4	2016	2017	Above 60	793
state	5	2016	2016	0 - 17	2231
state	5	2016	2016	18 - 59	14463
state	5	2016	2016	Above 60	4027
state	5	2016	2017	0 - 17	456
state	5	2016	2017	18 - 59	3043
state	5	2016	2017	Above 60	911
state	6	2016	2016	0 - 17	4991
state	6	2016	2016	18 - 59	28614
state	6	2016	2016	Above 60	1106
state	6	2016	2017	0 - 17	1107
state	6	2016	2017	18 - 59	7229
state	6	2016	2017	Above 60	243
state	7	2016	2016	0 - 17	1855
state	7	2016	2016	18 - 59	14052
state	7	2016	2016	Above 60	812
state	7	2016	2017	0 - 17	375
state	7	2016	2017	18 - 59	2754
state	7	2016	2017	Above 60	161
state	8	2016	2016	0 - 17	1746
state	8	2016	2016	18 - 59	24948
state	8	2016	2016	Above 60	2845
state	8	2016	2017	0 - 17	337
state	8	2016	2017	18 - 59	5254
state	8	2016	2017	Above 60	622
state	9	2016	2016	0 - 17	3614
state	9	2016	2016	18 - 59	20985
state	9	2016	2016	Above 60	1169
state	9	2016	2017	0 - 17	724
state	9	2016	2017	18 - 59	4300
state	9	2016	2017	Above 60	226
state	10	2016	2016	0 - 17	25760
state	10	2016	2016	18 - 59	152203
state	10	2016	2016	Above 60	7584
state	10	2016	2017	0 - 17	5316
state	10	2016	2017	18 - 59	29855
state	10	2016	2017	Above 60	1465
state	11	2016	2016	0 - 17	2517
state	11	2016	2016	18 - 59	24185
state	11	2016	2016	Above 60	709
state	11	2016	2017	0 - 17	560
state	11	2016	2017	18 - 59	5474
state	11	2016	2017	Above 60	151
state	12	2016	2016	0 - 17	25133
state	12	2016	2016	18 - 59	88166
state	12	2016	2016	Above 60	8796
state	12	2016	2017	0 - 17	4793
state	12	2016	2017	18 - 59	14524
state	12	2016	2017	Above 60	1608
state	13	2016	2016	0 - 17	9363
state	13	2016	2016	18 - 59	40516
state	13	2016	2016	Above 60	2610
state	13	2016	2017	0 - 17	1969
state	13	2016	2017	18 - 59	8042
state	13	2016	2017	Above 60	501
state	14	2016	2016	0 - 17	11100
state	14	2016	2016	18 - 59	68697
state	14	2016	2016	Above 60	5517
state	14	2016	2017	0 - 17	2168
state	14	2016	2017	18 - 59	13616
state	14	2016	2017	Above 60	1038
state	15	2016	2016	0 - 17	73654
state	15	2016	2016	18 - 59	270291
state	15	2016	2016	Above 60	10991
state	15	2016	2017	0 - 17	13275
state	15	2016	2017	18 - 59	46165
state	15	2016	2017	Above 60	8672
state	16	2016	2016	0 - 17	1170
state	16	2016	2016	18 - 59	21528
state	16	2016	2016	Above 60	2705
state	16	2016	2017	0 - 17	223
state	16	2016	2017	18 - 59	3908
state	16	2016	2017	Above 60	497
state	17	2016	2016	0 - 17	11660
state	17	2016	2016	18 - 59	90707
state	17	2016	2016	Above 60	6944
state	17	2016	2017	0 - 17	2204
state	17	2016	2017	18 - 59	16512
state	17	2016	2017	Above 60	1226
state	18	2016	2016	0 - 17	2912
state	18	2016	2016	18 - 59	40619
state	18	2016	2016	Above 60	4213
state	18	2016	2017	0 - 17	545
state	18	2016	2017	18 - 59	7588
state	18	2016	2017	Above 60	835
state	19	2016	2016	0 - 17	11040
state	19	2016	2016	18 - 59	81214
state	19	2016	2016	Above 60	6296
state	19	2016	2017	0 - 17	2137
state	19	2016	2017	18 - 59	14338
state	19	2016	2017	Above 60	1152
state	20	2016	2016	0 - 17	14587
state	20	2016	2016	18 - 59	112864
state	20	2016	2016	Above 60	12602
state	20	2016	2017	0 - 17	2941
state	20	2016	2017	18 - 59	20743
state	20	2016	2017	Above 60	2489
state	21	2016	2016	0 - 17	5505
state	21	2016	2016	18 - 59	53839
state	21	2016	2016	Above 60	5469
state	21	2016	2017	0 - 17	820
state	21	2016	2017	18 - 59	9567
state	21	2016	2017	Above 60	965
state	22	2016	2016	0 - 17	687
state	22	2016	2016	18 - 59	27562
state	22	2016	2016	Above 60	2418
state	22	2016	2017	0 - 17	151
state	22	2016	2017	18 - 59	5765
state	22	2016	2017	Above 60	498
state	23	2016	2016	0 - 17	5673
state	23	2016	2016	18 - 59	28344
state	23	2016	2016	Above 60	2218
state	23	2016	2017	0 - 17	1309
state	23	2016	2017	18 - 59	8108
state	23	2016	2017	Above 60	497
state	24	2016	2016	0 - 17	8077
state	24	2016	2016	18 - 59	46488
state	24	2016	2016	Above 60	7789
state	24	2016	2017	0 - 17	1703
state	24	2016	2017	18 - 59	9887
state	24	2016	2017	Above 60	1498
state	25	2016	2016	0 - 17	247722
state	25	2016	2016	18 - 59	770643
state	25	2016	2016	Above 60	50099
state	25	2016	2017	0 - 17	50639
state	25	2016	2017	18 - 59	148250
state	25	2016	2017	Above 60	9661
state	26	2016	2016	0 - 17	713
state	26	2016	2016	18 - 59	11516
state	26	2016	2016	Above 60	762
state	26	2016	2017	0 - 17	158
state	26	2016	2017	18 - 59	2502
state	26	2016	2017	Above 60	169
state	27	2016	2016	0 - 17	1824
state	27	2016	2016	18 - 59	31817
state	27	2016	2016	Above 60	4309
state	27	2016	2017	0 - 17	369
state	27	2016	2017	18 - 59	6414
state	27	2016	2017	Above 60	962
country	NG	2016	2016	0 - 17	638858
country	NG	2016	2016	18 - 59	2829964
country	NG	2016	2016	Above 60	215466
country	NG	2016	2017	0 - 17	127882
country	NG	2016	2017	18 - 59	544473
country	NG	2016	2017	Above 60	48603
state	28	2016	2016	0 - 17	28762
state	28	2016	2016	18 - 59	94050
state	28	2016	2016	Above 60	7078
state	28	2016	2017	0 - 17	5924
state	28	2016	2017	18 - 59	18147
state	28	2016	2017	Above 60	1363
state	29	2016	2016	0 - 17	14397
state	29	2016	2016	18 - 59	66822
state	29	2016	2016	Above 60	4599
state	29	2016	2017	0 - 17	2837
state	29	2016	2017	18 - 59	12676
state	29	2016	2017	Above 60	867
state	30	2016	2016	0 - 17	18036
state	30	2016	2016	18 - 59	80607
state	30	2016	2016	Above 60	6409
state	30	2016	2017	0 - 17	3543
state	30	2016	2017	18 - 59	14847
state	30	2016	2017	Above 60	1227
state	31	2016	2016	0 - 17	41100
state	31	2016	2016	18 - 59	136880
state	31	2016	2016	Above 60	12883
state	31	2016	2017	0 - 17	8726
state	31	2016	2017	18 - 59	27974
state	31	2016	2017	Above 60	2492
state	32	2016	2016	0 - 17	4478
state	32	2016	2016	18 - 59	26751
state	32	2016	2016	Above 60	2043
state	32	2016	2017	0 - 17	897
state	32	2016	2017	18 - 59	5668
state	32	2016	2017	Above 60	451
state	33	2016	2016	0 - 17	27369
state	33	2016	2016	18 - 59	88659
state	33	2016	2016	Above 60	4900
state	33	2016	2017	0 - 17	5515
state	33	2016	2017	18 - 59	16974
state	33	2016	2017	Above 60	919
state	34	2016	2016	0 - 17	2093
state	34	2016	2016	18 - 59	29961
state	34	2016	2016	Above 60	4148
state	34	2016	2017	0 - 17	458
state	34	2016	2017	18 - 59	6229
state	34	2016	2017	Above 60	968
state	35	2016	2016	0 - 17	470
state	35	2016	2016	18 - 59	15072
state	35	2016	2016	Above 60	997
state	35	2016	2017	0 - 17	89
state	35	2016	2017	18 - 59	3046
state	35	2016	2017	Above 60	202
state	36	2016	2016	0 - 17	454
state	36	2016	2016	18 - 59	10495
state	36	2016	2016	Above 60	1930
state	36	2016	2017	0 - 17	74
state	36	2016	2017	18 - 59	1999
state	36	2016	2017	Above 60	381
state	37	2016	2016	0 - 17	1350
state	37	2016	2016	18 - 59	29819
state	37	2016	2016	Above 60	3831
state	37	2016	2017	0 - 17	294
state	37	2016	2017	18 - 59	5765
state	37	2016	2017	Above 60	831
\.


--
-- Name: passport_application passport_application_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.passport_application
    ADD CONSTRAINT passport_application_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year, age_group);


--
-- PostgreSQL database dump complete
--

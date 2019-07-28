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

ALTER TABLE IF EXISTS ONLY public.population_projection DROP CONSTRAINT IF EXISTS population_projection_pkey;
DROP TABLE IF EXISTS public.population_projection;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: population_projection; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.population_projection (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    year character varying(128) NOT NULL,
    gender character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: population_projection; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.population_projection (geo_level, geo_code, geo_version, year, gender, total) FROM stdin;
state	1	2016	2007	Female	1432393
state	1	2016	2007	Male	1490858
state	1	2016	2008	Female	1471595
state	1	2016	2008	Male	1531660
state	1	2016	2009	Female	1511869
state	1	2016	2009	Male	1573578
state	1	2016	2010	Female	1553246
state	1	2016	2010	Male	1616643
state	1	2016	2011	Female	1595755
state	1	2016	2011	Male	1660887
state	1	2016	2012	Female	1639427
state	1	2016	2012	Male	1706342
state	1	2016	2013	Female	1684294
state	1	2016	2013	Male	1753041
state	1	2016	2014	Female	1730390
state	1	2016	2014	Male	1801018
state	1	2016	2015	Female	1777747
state	1	2016	2015	Male	1850308
state	1	2016	2016	Female	1826400
state	1	2016	2016	Male	1900947
state	2	2016	2007	Female	1603520
state	2	2016	2007	Male	1668970
state	2	2016	2008	Female	1650703
state	2	2016	2008	Male	1718078
state	2	2016	2009	Female	1699274
state	2	2016	2009	Male	1768632
state	2	2016	2010	Female	1749274
state	2	2016	2010	Male	1820673
state	2	2016	2011	Female	1800746
state	2	2016	2011	Male	1874246
state	2	2016	2012	Female	1853732
state	2	2016	2012	Male	1929395
state	2	2016	2013	Female	1908278
state	2	2016	2013	Male	1986167
state	2	2016	2014	Female	1964428
state	2	2016	2014	Male	2044609
state	2	2016	2015	Female	2022230
state	2	2016	2015	Male	2104770
state	2	2016	2016	Female	2081734
state	2	2016	2016	Male	2166702
state	3	2016	2007	Female	1978131
state	3	2016	2007	Male	2058871
state	3	2016	2008	Female	2046544
state	3	2016	2008	Male	2130076
state	3	2016	2009	Female	2117323
state	3	2016	2009	Male	2203744
state	3	2016	2010	Female	2190549
state	3	2016	2010	Male	2279960
state	3	2016	2011	Female	2266309
state	3	2016	2011	Male	2358811
state	3	2016	2012	Female	2344688
state	3	2016	2012	Male	2440390
state	3	2016	2013	Female	2425778
state	3	2016	2013	Male	2524790
state	3	2016	2014	Female	2509673
state	3	2016	2014	Male	2612109
state	3	2016	2015	Female	2596469
state	3	2016	2015	Male	2702447
state	3	2016	2016	Female	2686267
state	3	2016	2016	Male	2795910
state	4	2016	2007	Female	2105266
state	4	2016	2007	Male	2191195
state	4	2016	2008	Female	2165046
state	4	2016	2008	Male	2253415
state	4	2016	2009	Female	2226524
state	4	2016	2009	Male	2317402
state	4	2016	2010	Female	2289748
state	4	2016	2010	Male	2383207
state	4	2016	2011	Female	2354767
state	4	2016	2011	Male	2450880
state	4	2016	2012	Female	2421632
state	4	2016	2012	Male	2520474
state	4	2016	2013	Female	2490396
state	4	2016	2013	Male	2592044
state	4	2016	2014	Female	2561112
state	4	2016	2014	Male	2665647
state	4	2016	2015	Female	2633837
state	4	2016	2015	Male	2741340
state	4	2016	2016	Female	2708626
state	4	2016	2016	Male	2819182
state	5	2016	2007	Female	2358855
state	5	2016	2007	Male	2455135
state	5	2016	2008	Female	2440435
state	5	2016	2008	Male	2540045
state	5	2016	2009	Female	2524837
state	5	2016	2009	Male	2627891
state	5	2016	2010	Female	2612157
state	5	2016	2010	Male	2718776
state	5	2016	2011	Female	2702498
state	5	2016	2011	Male	2812804
state	5	2016	2012	Female	2795963
state	5	2016	2012	Male	2910084
state	5	2016	2013	Female	2892660
state	5	2016	2013	Male	3010728
state	5	2016	2014	Female	2992701
state	5	2016	2014	Male	3114853
state	5	2016	2015	Female	3096203
state	5	2016	2015	Male	3222578
state	5	2016	2016	Female	3203284
state	5	2016	2016	Male	3334030
state	6	2016	2007	Female	859788
state	6	2016	2007	Male	894882
state	6	2016	2008	Female	885087
state	6	2016	2008	Male	921213
state	6	2016	2009	Female	911130
state	6	2016	2009	Male	948319
state	6	2016	2010	Female	937940
state	6	2016	2010	Male	976223
state	6	2016	2011	Female	965539
state	6	2016	2011	Male	1004948
state	6	2016	2012	Female	993949
state	6	2016	2012	Male	1034518
state	6	2016	2013	Female	1023196
state	6	2016	2013	Male	1064959
state	6	2016	2014	Female	1053303
state	6	2016	2014	Male	1096295
state	6	2016	2015	Female	1084296
state	6	2016	2015	Male	1128553
state	6	2016	2016	Female	1116201
state	6	2016	2016	Male	1161760
state	7	2016	2007	Female	2147760
state	7	2016	2007	Male	2235424
state	7	2016	2008	Female	2213169
state	7	2016	2008	Male	2303502
state	7	2016	2009	Female	2280570
state	7	2016	2009	Male	2373655
state	7	2016	2010	Female	2350024
state	7	2016	2010	Male	2445943
state	7	2016	2011	Female	2421593
state	7	2016	2011	Male	2520433
state	7	2016	2012	Female	2495341
state	7	2016	2012	Male	2597192
state	7	2016	2013	Female	2571336
state	7	2016	2013	Male	2676288
state	7	2016	2014	Female	2649644
state	7	2016	2014	Male	2757793
state	7	2016	2015	Female	2730338
state	7	2016	2015	Male	2841780
state	7	2016	2016	Female	2813489
state	7	2016	2016	Male	2928326
state	8	2016	2007	Female	2114526
state	8	2016	2007	Male	2200834
state	8	2016	2008	Female	2187656
state	8	2016	2008	Male	2276949
state	8	2016	2009	Female	2263316
state	8	2016	2009	Male	2355696
state	8	2016	2010	Female	2341592
state	8	2016	2010	Male	2437167
state	8	2016	2011	Female	2422575
state	8	2016	2011	Male	2521455
state	8	2016	2012	Female	2506358
state	8	2016	2012	Male	2608659
state	8	2016	2013	Female	2593040
state	8	2016	2013	Male	2698878
state	8	2016	2014	Female	2682719
state	8	2016	2014	Male	2792218
state	8	2016	2015	Female	2775500
state	8	2016	2015	Male	2888786
state	8	2016	2016	Female	2871489
state	8	2016	2016	Male	2988693
state	9	2016	2007	Female	1459275
state	9	2016	2007	Male	1518838
state	9	2016	2008	Female	1502214
state	9	2016	2008	Male	1563529
state	9	2016	2009	Female	1546416
state	9	2016	2009	Male	1609535
state	9	2016	2010	Female	1591919
state	9	2016	2010	Male	1656895
state	9	2016	2011	Female	1638760
state	9	2016	2011	Male	1705648
state	9	2016	2012	Female	1686980
state	9	2016	2012	Male	1755836
state	9	2016	2013	Female	1736619
state	9	2016	2013	Male	1807501
state	9	2016	2014	Female	1787718
state	9	2016	2014	Male	1860686
state	9	2016	2015	Female	1840321
state	9	2016	2015	Male	1915436
state	9	2016	2016	Female	1894472
state	9	2016	2016	Male	1971797
state	10	2016	2007	Female	2080624
state	10	2016	2007	Male	2165547
state	10	2016	2008	Female	2148281
state	10	2016	2008	Male	2235966
state	10	2016	2009	Female	2218137
state	10	2016	2009	Male	2308674
state	10	2016	2010	Female	2290266
state	10	2016	2010	Male	2383746
state	10	2016	2011	Female	2364739
state	10	2016	2011	Male	2461259
state	10	2016	2012	Female	2441635
state	10	2016	2012	Male	2541293
state	10	2016	2013	Female	2521031
state	10	2016	2013	Male	2623930
state	10	2016	2014	Female	2603008
state	10	2016	2014	Male	2709254
state	10	2016	2015	Female	2687652
state	10	2016	2015	Male	2797352
state	10	2016	2016	Female	2775047
state	10	2016	2016	Male	2888315
state	11	2016	2007	Female	1096994
state	11	2016	2007	Male	1141769
state	11	2016	2008	Female	1128144
state	11	2016	2008	Male	1174190
state	11	2016	2009	Female	1160178
state	11	2016	2009	Male	1207532
state	11	2016	2010	Female	1193122
state	11	2016	2010	Male	1241821
state	11	2016	2011	Female	1227002
state	11	2016	2011	Male	1277083
state	11	2016	2012	Female	1261843
state	11	2016	2012	Male	1313347
state	11	2016	2013	Female	1297674
state	11	2016	2013	Male	1350640
state	11	2016	2014	Female	1334522
state	11	2016	2014	Male	1388993
state	11	2016	2015	Female	1372417
state	11	2016	2015	Male	1428434
state	11	2016	2016	Female	1411388
state	11	2016	2016	Male	1468996
state	12	2016	2007	Female	1627710
state	12	2016	2007	Male	1694147
state	12	2016	2008	Female	1672256
state	12	2016	2008	Male	1740512
state	12	2016	2009	Female	1718022
state	12	2016	2009	Male	1788146
state	12	2016	2010	Female	1765041
state	12	2016	2010	Male	1837083
state	12	2016	2011	Female	1813346
state	12	2016	2011	Male	1887360
state	12	2016	2012	Female	1862973
state	12	2016	2012	Male	1939013
state	12	2016	2013	Female	1913959
state	12	2016	2013	Male	1992080
state	12	2016	2014	Female	1966340
state	12	2016	2014	Male	2046598
state	12	2016	2015	Female	2020154
state	12	2016	2015	Male	2102609
state	12	2016	2016	Female	2075441
state	12	2016	2016	Male	2160153
state	13	2016	2007	Female	1212500
state	13	2016	2007	Male	1261990
state	13	2016	2008	Female	1250676
state	13	2016	2008	Male	1301724
state	13	2016	2009	Female	1290054
state	13	2016	2009	Male	1342709
state	13	2016	2010	Female	1330672
state	13	2016	2010	Male	1384985
state	13	2016	2011	Female	1372569
state	13	2016	2011	Male	1428592
state	13	2016	2012	Female	1415785
state	13	2016	2012	Male	1473572
state	13	2016	2013	Female	1460362
state	13	2016	2013	Male	1519968
state	13	2016	2014	Female	1506342
state	13	2016	2014	Male	1567825
state	13	2016	2015	Female	1553770
state	13	2016	2015	Male	1617189
state	13	2016	2016	Female	1602691
state	13	2016	2016	Male	1668107
state	14	2016	2007	Female	1650005
state	14	2016	2007	Male	1717352
state	14	2016	2008	Female	1700255
state	14	2016	2008	Male	1769653
state	14	2016	2009	Female	1752036
state	14	2016	2009	Male	1823547
state	14	2016	2010	Female	1805393
state	14	2016	2010	Male	1879083
state	14	2016	2011	Female	1860376
state	14	2016	2011	Male	1936309
state	14	2016	2012	Female	1917032
state	14	2016	2012	Male	1995279
state	14	2016	2013	Female	1975415
state	14	2016	2013	Male	2056044
state	14	2016	2014	Female	2035575
state	14	2016	2014	Male	2118660
state	14	2016	2015	Female	2097568
state	14	2016	2015	Male	2183183
state	14	2016	2016	Female	2161448
state	14	2016	2016	Male	2249670
state	15	2016	2007	Female	756214
state	15	2016	2007	Male	787080
state	15	2016	2008	Female	829916
state	15	2016	2008	Male	863790
state	15	2016	2009	Female	910801
state	15	2016	2009	Male	947976
state	15	2016	2010	Female	999569
state	15	2016	2010	Male	1040368
state	15	2016	2011	Female	1096989
state	15	2016	2011	Male	1141764
state	15	2016	2012	Female	1203903
state	15	2016	2012	Male	1253042
state	15	2016	2013	Female	1321238
state	15	2016	2013	Male	1375166
state	15	2016	2014	Female	1450008
state	15	2016	2014	Male	1509192
state	15	2016	2015	Female	1591328
state	15	2016	2015	Male	1656280
state	15	2016	2016	Female	1746422
state	15	2016	2016	Male	1817704
state	16	2016	2007	Female	1196553
state	16	2016	2007	Male	1245392
state	16	2016	2008	Female	1235462
state	16	2016	2008	Male	1285889
state	16	2016	2009	Female	1275636
state	16	2016	2009	Male	1327703
state	16	2016	2010	Female	1317117
state	16	2016	2010	Male	1370877
state	16	2016	2011	Female	1359946
state	16	2016	2011	Male	1415454
state	16	2016	2012	Female	1404168
state	17	2016	2012	Male	2427045
state	17	2016	2013	Female	2407694
state	17	2016	2013	Male	2505967
state	17	2016	2014	Female	2485986
state	17	2016	2014	Male	2587455
state	17	2016	2015	Female	2566824
state	17	2016	2015	Male	2671592
state	17	2016	2016	Female	2650290
state	17	2016	2016	Male	2758466
state	18	2016	2007	Female	2199768
state	18	2016	2007	Male	2289555
state	18	2016	2008	Female	2264495
state	18	2016	2008	Male	2356924
state	18	2016	2009	Female	2331127
state	18	2016	2009	Male	2426275
state	18	2016	2010	Female	2399720
state	18	2016	2010	Male	2497667
state	18	2016	2011	Female	2470331
state	18	2016	2011	Male	2571160
state	18	2016	2012	Female	2543019
state	18	2016	2012	Male	2646816
state	18	2016	2013	Female	2617846
state	18	2016	2013	Male	2724697
state	18	2016	2014	Female	2694875
state	18	2016	2014	Male	2804870
state	18	2016	2015	Female	2774171
state	18	2016	2015	Male	2887402
state	18	2016	2016	Female	2855800
state	18	2016	2016	Male	2972363
state	19	2016	2007	Female	3086847
state	19	2016	2007	Male	3212840
state	19	2016	2008	Female	3180855
state	19	2016	2008	Male	3310686
state	19	2016	2009	Female	3277727
state	19	2016	2009	Male	3411511
state	19	2016	2010	Female	3377548
state	19	2016	2010	Male	3515407
state	19	2016	2011	Female	3480410
state	19	2016	2011	Male	3622467
state	19	2016	2012	Female	3586404
state	19	2016	2012	Male	3732788
state	19	2016	2013	Female	3695626
state	19	2016	2013	Male	3846468
state	19	2016	2014	Female	3808175
state	19	2016	2014	Male	3963611
state	19	2016	2015	Female	3924151
state	19	2016	2015	Male	4084321
state	19	2016	2016	Female	4043659
state	19	2016	2016	Male	4208707
state	20	2016	2007	Female	4761186
state	20	2016	2007	Male	4955520
state	20	2016	2008	Female	4920926
state	20	2016	2008	Male	5121781
state	20	2016	2009	Female	5086026
state	20	2016	2009	Male	5293619
state	20	2016	2010	Female	5256665
state	20	2016	2010	Male	5471223
state	20	2016	2011	Female	5433029
state	20	2016	2011	Male	5654785
state	20	2016	2012	Female	5615310
state	20	2016	2012	Male	5844506
state	20	2016	2013	Female	5803707
state	20	2016	2013	Male	6040593
state	20	2016	2014	Female	5998424
state	20	2016	2014	Male	6243258
state	20	2016	2015	Female	6199675
state	20	2016	2015	Male	6452723
state	20	2016	2016	Female	6407677
state	20	2016	2016	Male	6669215
state	21	2016	2007	Female	2929352
state	21	2016	2007	Male	3048917
state	21	2016	2008	Female	3018564
state	21	2016	2008	Male	3141770
state	21	2016	2009	Female	3110493
state	21	2016	2009	Male	3237451
state	21	2016	2010	Female	3205221
state	21	2016	2010	Male	3336047
state	21	2016	2011	Female	3302835
state	21	2016	2011	Male	3437644
state	21	2016	2012	Female	3403421
state	21	2016	2012	Male	3542336
state	21	2016	2013	Female	3507071
state	21	2016	2013	Male	3650216
state	21	2016	2014	Female	3613877
state	21	2016	2014	Male	3761382
state	21	2016	2015	Female	3723936
state	21	2016	2015	Male	3875933
state	21	2016	2016	Female	3837346
state	21	2016	2016	Male	3993973
state	22	2016	2007	Female	1645947
state	22	2016	2007	Male	1713128
state	22	2016	2008	Female	1697770
state	22	2016	2008	Male	1767067
state	22	2016	2009	Female	1751225
state	22	2016	2009	Male	1822704
state	22	2016	2010	Female	1806363
state	22	2016	2010	Male	1880093
state	22	2016	2011	Female	1863238
state	22	2016	2011	Male	1939288
state	22	2016	2012	Female	1921903
state	22	2016	2012	Male	2000348
state	22	2016	2013	Female	1982415
state	22	2016	2013	Male	2063330
state	22	2016	2014	Female	2044832
state	22	2016	2014	Male	2128295
state	22	2016	2015	Female	2109215
state	22	2016	2015	Male	2195305
state	22	2016	2016	Female	2175624
state	22	2016	2016	Male	2264425
state	23	2016	2007	Female	1673336
state	23	2016	2007	Male	1741635
state	23	2016	2008	Female	1724296
state	23	2016	2008	Male	1794676
state	23	2016	2009	Female	1776809
state	23	2016	2009	Male	1849332
state	23	2016	2010	Female	1830921
state	23	2016	2010	Male	1905652
state	23	2016	2011	Female	1886681
state	23	2016	2011	Male	1963688
state	23	2016	2012	Female	1944139
state	23	2016	2012	Male	2023491
state	23	2016	2013	Female	2003346
state	23	2016	2013	Male	2085116
state	23	2016	2014	Female	2064357
state	23	2016	2014	Male	2148617
state	23	2016	2015	Female	2127226
state	23	2016	2015	Male	2214052
state	23	2016	2016	Female	2192010
state	23	2016	2016	Male	2281480
state	24	2016	2007	Female	1194320
state	24	2016	2007	Male	1243068
state	24	2016	2008	Female	1230693
state	24	2016	2008	Male	1280925
state	24	2016	2009	Female	1268173
state	24	2016	2009	Male	1319935
state	24	2016	2010	Female	1306795
state	24	2016	2010	Male	1360133
state	24	2016	2011	Female	1346593
state	24	2016	2011	Male	1401556
state	24	2016	2012	Female	1387602
state	24	2016	2012	Male	1444239
state	24	2016	2013	Female	1429861
state	24	2016	2013	Male	1488223
state	24	2016	2014	Female	1473407
state	24	2016	2014	Male	1533546
state	24	2016	2015	Female	1518279
state	24	2016	2015	Male	1580249
state	24	2016	2016	Female	1564517
state	24	2016	2016	Male	1628375
state	25	2016	2007	Female	4610879
state	25	2016	2007	Male	4799078
state	25	2016	2008	Female	4760813
state	25	2016	2008	Male	4955132
state	25	2016	2009	Female	4915623
state	25	2016	2009	Male	5116260
state	25	2016	2010	Female	5075467
state	25	2016	2010	Male	5282629
state	25	2016	2011	Female	5240508
state	25	2016	2011	Male	5454406
state	25	2016	2012	Female	5410916
state	25	2016	2012	Male	5631770
state	25	2016	2013	Female	5586866
state	25	2016	2013	Male	5814901
state	25	2016	2014	Female	5768537
state	25	2016	2014	Male	6003987
state	25	2016	2015	Female	5956115
state	25	2016	2015	Male	6199222
state	25	2016	2016	Female	6149793
state	25	2016	2016	Male	6400805
state	26	2016	2007	Female	943891
state	26	2016	2007	Male	982417
state	26	2016	2008	Female	972637
state	26	2016	2008	Male	1012336
state	26	2016	2009	Female	1002258
state	26	2016	2009	Male	1043166
state	26	2016	2010	Female	1032781
state	26	2016	2010	Male	1074936
state	26	2016	2011	Female	1064234
state	26	2016	2011	Male	1107672
state	26	2016	2012	Female	1096645
state	26	2016	2012	Male	1141406
state	26	2016	2013	Female	1130043
state	26	2016	2013	Male	1176167
state	26	2016	2014	Female	1164458
state	26	2016	2014	Male	1211986
state	26	2016	2015	Female	1199921
state	26	2016	2015	Male	1248897
state	26	2016	2016	Female	1236464
state	26	2016	2016	Male	1286931
state	27	2016	2007	Female	2004858
state	27	2016	2007	Male	2086689
state	27	2016	2008	Female	2074195
state	27	2016	2008	Male	2158856
state	27	2016	2009	Female	2145930
state	27	2016	2009	Male	2233519
state	27	2016	2010	Female	2220146
state	27	2016	2010	Male	2310764
state	27	2016	2011	Female	2296929
state	27	2016	2011	Male	2390681
state	27	2016	2012	Female	2376368
state	27	2016	2012	Male	2473362
state	27	2016	2013	Female	2458553
state	27	2016	2013	Male	2558902
state	27	2016	2014	Female	2543581
state	27	2016	2014	Male	2647401
state	27	2016	2015	Female	2631550
state	27	2016	2015	Male	2738960
state	27	2016	2016	Female	2722561
state	27	2016	2016	Male	2833686
country	NG	2016	2007	Female	71049158
country	NG	2016	2007	Male	73949124
country	NG	2016	2008	Female	73359499
country	NG	2016	2008	Male	76353765
country	NG	2016	2009	Female	75744967
country	NG	2016	2009	Male	78836599
country	NG	2016	2010	Female	78208005
country	NG	2016	2010	Male	81400168
country	NG	2016	2011	Female	80751134
country	NG	2016	2011	Male	84047098
country	NG	2016	2012	Female	83376959
country	NG	2016	2012	Male	86780100
country	NG	2016	2013	Female	86088170
country	NG	2016	2013	Male	89601973
country	NG	2016	2014	Female	88887542
country	NG	2016	2014	Male	92515605
country	NG	2016	2015	Female	91777944
country	NG	2016	2015	Male	95523982
country	NG	2016	2016	Female	94762333
country	NG	2016	2016	Male	98630184
state	28	2016	2007	Female	1899726
state	28	2016	2007	Male	1977266
state	28	2016	2008	Female	1963463
state	28	2016	2008	Male	2043605
state	28	2016	2009	Female	2029339
state	28	2016	2009	Male	2112169
state	28	2016	2010	Female	2097424
state	28	2016	2010	Male	2183033
state	28	2016	2011	Female	2167794
state	28	2016	2011	Male	2256275
state	28	2016	2012	Female	2240524
state	28	2016	2012	Male	2331974
state	28	2016	2013	Female	2315695
state	28	2016	2013	Male	2410213
state	28	2016	2014	Female	2393388
state	28	2016	2014	Male	2491077
state	28	2016	2015	Female	2473687
state	28	2016	2015	Male	2574654
state	28	2016	2016	Female	2556681
state	28	2016	2016	Male	2661035
state	29	2016	2007	Female	1747475
state	29	2016	2007	Male	1818801
state	29	2016	2008	Female	1800694
state	29	2016	2008	Male	1874192
state	29	2016	2009	Female	1855533
state	29	2016	2009	Male	1931269
state	29	2016	2010	Female	1912043
state	29	2016	2010	Male	1990085
state	29	2016	2011	Female	1970273
state	29	2016	2011	Male	2050692
state	29	2016	2012	Female	2030277
state	29	2016	2012	Male	2113145
state	29	2016	2013	Female	2092108
state	29	2016	2013	Male	2177500
state	29	2016	2014	Female	2155822
state	29	2016	2014	Male	2243815
state	29	2016	2015	Female	2221477
state	29	2016	2015	Male	2312149
state	29	2016	2016	Female	2289131
state	29	2016	2016	Male	2382565
state	30	2016	2007	Female	1728754
state	30	2016	2007	Male	1799316
state	30	2016	2008	Female	1784969
state	30	2016	2008	Male	1857825
state	30	2016	2009	Female	1843012
state	30	2016	2009	Male	1918237
state	30	2016	2010	Female	1902942
state	30	2016	2010	Male	1980613
state	30	2016	2011	Female	1964821
state	30	2016	2011	Male	2045018
state	30	2016	2012	Female	2028712
state	30	2016	2012	Male	2111517
state	30	2016	2013	Female	2094681
state	30	2016	2013	Male	2180178
state	30	2016	2014	Female	2162794
state	30	2016	2014	Male	2251072
state	30	2016	2015	Female	2233123
state	30	2016	2015	Male	2324271
state	30	2016	2016	Female	2305739
state	30	2016	2016	Male	2399850
state	31	2016	2007	Female	2829214
state	31	2016	2007	Male	2944693
state	31	2016	2008	Female	2927062
state	31	2016	2008	Male	3046534
state	31	2016	2009	Female	3028293
state	31	2016	2009	Male	3151897
state	31	2016	2010	Female	3133025
state	31	2016	2010	Male	3260904
state	31	2016	2011	Female	3241380
state	31	2016	2011	Male	3373681
state	31	2016	2012	Female	3353482
state	31	2016	2012	Male	3490358
state	31	2016	2013	Female	3469460
state	31	2016	2013	Male	3611071
state	31	2016	2014	Female	3589450
state	31	2016	2014	Male	3735959
state	31	2016	2015	Female	3713590
state	31	2016	2015	Male	3865165
state	31	2016	2016	Female	3842023
state	31	2016	2016	Male	3998840
state	32	2016	2007	Female	1614200
state	32	2016	2007	Male	1680086
state	32	2016	2008	Female	1658378
state	32	2016	2008	Male	1726066
state	32	2016	2009	Female	1703764
state	32	2016	2009	Male	1773305
state	32	2016	2010	Female	1750392
state	32	2016	2010	Male	1821837
state	32	2016	2011	Female	1798296
state	32	2016	2011	Male	1871696
state	32	2016	2012	Female	1847512
state	32	2016	2012	Male	1922920
state	32	2016	2013	Female	1898074
state	32	2016	2013	Male	1975547
state	32	2016	2014	Female	1950020
state	32	2016	2014	Male	2029613
state	32	2016	2015	Female	2003388
state	32	2016	2015	Male	2085159
state	32	2016	2016	Female	2058216
state	32	2016	2016	Male	2142225
state	33	2016	2007	Female	2635471
state	33	2016	2007	Male	2743041
state	33	2016	2008	Female	2726617
state	33	2016	2008	Male	2837908
state	33	2016	2009	Female	2820916
state	33	2016	2009	Male	2936056
state	33	2016	2010	Female	2918477
state	33	2016	2010	Male	3037598
state	33	2016	2011	Female	3019411
state	33	2016	2011	Male	3142652
state	33	2016	2012	Female	3123836
state	33	2016	2012	Male	3251340
state	33	2016	2013	Female	3231873
state	33	2016	2013	Male	3363786
state	33	2016	2014	Female	3343646
state	33	2016	2014	Male	3480121
state	33	2016	2015	Female	3459285
state	33	2016	2015	Male	3600480
state	33	2016	2016	Female	3578923
state	33	2016	2016	Male	3725001
state	34	2016	2007	Female	1869565
state	34	2016	2007	Male	1945874
state	34	2016	2008	Female	1926502
state	34	2016	2008	Male	2005135
state	34	2016	2009	Female	1985173
state	34	2016	2009	Male	2066200
state	34	2016	2010	Female	2045630
state	34	2016	2010	Male	2129125
state	34	2016	2011	Female	2107929
state	34	2016	2011	Male	2193967
state	34	2016	2012	Female	2172125
state	34	2016	2012	Male	2260783
state	34	2016	2013	Female	2238276
state	34	2016	2013	Male	2329634
state	34	2016	2014	Female	2306442
state	34	2016	2014	Male	2400582
state	34	2016	2015	Female	2376683
state	34	2016	2015	Male	2473691
state	34	2016	2016	Female	2449064
state	34	2016	2016	Male	2549026
state	35	2016	2007	Female	1157539
state	35	2016	2007	Male	1204785
state	35	2016	2008	Female	1191599
state	35	2016	2008	Male	1240235
state	35	2016	2009	Female	1226661
state	35	2016	2009	Male	1276729
state	35	2016	2010	Female	1262755
state	35	2016	2010	Male	1314296
state	35	2016	2011	Female	1299911
state	35	2016	2011	Male	1352969
state	35	2016	2012	Female	1338160
state	35	2016	2012	Male	1392779
state	35	2016	2013	Female	1377535
state	35	2016	2013	Male	1433761
state	35	2016	2014	Female	1418069
state	35	2016	2014	Male	1475949
state	35	2016	2015	Female	1459795
state	35	2016	2015	Male	1519378
state	35	2016	2016	Female	1502749
state	35	2016	2016	Male	1564085
state	36	2016	2007	Female	1177972
state	36	2016	2007	Male	1226052
state	36	2016	2008	Female	1219931
state	36	2016	2008	Male	1269724
state	36	2016	2009	Female	1263385
state	36	2016	2009	Male	1314951
state	36	2016	2010	Female	1308386
state	36	2016	2010	Male	1361789
state	36	2016	2011	Female	1354990
state	36	2016	2011	Male	1410296
state	36	2016	2012	Female	1403255
state	36	2016	2012	Male	1460530
state	36	2016	2013	Female	1453238
state	36	2016	2013	Male	1512554
state	36	2016	2014	Female	1505002
state	36	2016	2014	Male	1566431
state	36	2016	2015	Female	1558610
state	36	2016	2015	Male	1622227
state	36	2016	2016	Female	1614127
state	36	2016	2016	Male	1680010
state	37	2016	2007	Female	1658892
state	37	2016	2007	Male	1726602
state	37	2016	2008	Female	1712835
state	37	2016	2008	Male	1782747
state	37	2016	2009	Female	1768532
state	37	2016	2009	Male	1840717
state	37	2016	2010	Female	1826040
state	37	2016	2010	Male	1900573
state	37	2016	2011	Female	1885419
state	37	2016	2011	Male	1962374
state	37	2016	2012	Female	1946728
state	37	2016	2012	Male	2026186
state	37	2016	2013	Female	2010030
state	37	2016	2013	Male	2092073
state	37	2016	2014	Female	2075392
state	37	2016	2014	Male	2160102
state	37	2016	2015	Female	2142878
state	37	2016	2015	Male	2230343
state	37	2016	2016	Female	2212559
state	37	2016	2016	Male	2302868
\.


--
-- Name: population_projection population_projection_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.population_projection
    ADD CONSTRAINT population_projection_pkey PRIMARY KEY (geo_level, geo_code, geo_version, year, gender);


--
-- PostgreSQL database dump complete
--

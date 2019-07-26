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

ALTER TABLE IF EXISTS ONLY public.air_transportation_domestic DROP CONSTRAINT IF EXISTS air_transportation_domestic_pkey;
DROP TABLE IF EXISTS public.air_transportation_domestic;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: air_transportation_domestic; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.air_transportation_domestic (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) NOT NULL,
    name character varying(68) NOT NULL,
    month character varying(10) NOT NULL,
    depature_arrival character varying(12) NOT NULL,
    total integer
);


--
-- Data for Name: air_transportation_domestic; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.air_transportation_domestic (geo_level, geo_code, geo_version, name, month, depature_arrival, total) FROM stdin;
state	15	2016	Abuja	Jan	Arrival	141561
state	15	2016	Abuja	Jan	Departure	125077
state	15	2016	Abuja	Feb	Arrival	134656
state	15	2016	Abuja	Feb	Departure	134180
state	15	2016	Abuja	Mar	Arrival	158229
state	15	2016	Abuja	Mar	Departure	163515
state	15	2016	Abuja	Apr	Arrival	161070
state	15	2016	Abuja	Apr	Departure	157949
state	15	2016	Abuja	May	Arrival	154131
state	15	2016	Abuja	May	Departure	152451
state	15	2016	Abuja	Jun	Arrival	140681
state	15	2016	Abuja	Jun	Departure	141918
state	15	2016	Abuja	Jul	Arrival	165991
state	15	2016	Abuja	Jul	Departure	160562
state	15	2016	Abuja	Aug	Arrival	174061
state	15	2016	Abuja	Aug	Departure	173125
state	15	2016	Abuja	Sept	Arrival	164929
state	15	2016	Abuja	Sept	Departure	166297
state	15	2016	Abuja	Oct	Arrival	180883
state	15	2016	Abuja	Oct	Departure	178462
state	15	2016	Abuja	Nov	Arrival	178491
state	15	2016	Abuja	Nov	Departure	178033
state	15	2016	Abuja	Dec	Arrival	176612
state	15	2016	Abuja	Dec	Departure	200219
state	29	2016	Akure	Jan	Arrival	1103
state	29	2016	Akure	Jan	Departure	1006
state	29	2016	Akure	Feb	Arrival	3626
state	29	2016	Akure	Feb	Departure	3812
state	29	2016	Akure	Mar	Arrival	3968
state	29	2016	Akure	Mar	Departure	4168
state	29	2016	Akure	Apr	Arrival	2243
state	29	2016	Akure	Apr	Departure	2186
state	29	2016	Akure	May	Arrival	2434
state	29	2016	Akure	May	Departure	2595
state	29	2016	Akure	Jun	Arrival	2401
state	29	2016	Akure	Jun	Departure	2327
state	29	2016	Akure	Jul	Arrival	2620
state	29	2016	Akure	Jul	Departure	2616
state	29	2016	Akure	Aug	Arrival	2574
state	29	2016	Akure	Aug	Departure	2501
state	29	2016	Akure	Sept	Arrival	2861
state	29	2016	Akure	Sept	Departure	2601
state	29	2016	Akure	Oct	Arrival	2457
state	29	2016	Akure	Oct	Departure	3507
state	29	2016	Akure	Nov	Arrival	2348
state	29	2016	Akure	Nov	Departure	2257
state	29	2016	Akure	Dec	Arrival	2021
state	29	2016	Akure	Dec	Departure	2154
state	3	2016	Akwa Ibom	Jan	Arrival	6976
state	3	2016	Akwa Ibom	Jan	Departure	9046
state	3	2016	Akwa Ibom	Feb	Arrival	7588
state	3	2016	Akwa Ibom	Feb	Departure	7853
state	3	2016	Akwa Ibom	Mar	Arrival	10118
state	3	2016	Akwa Ibom	Mar	Departure	9400
state	3	2016	Akwa Ibom	Apr	Arrival	10417
state	3	2016	Akwa Ibom	Apr	Departure	11053
state	3	2016	Akwa Ibom	May	Arrival	10480
state	3	2016	Akwa Ibom	May	Departure	10941
state	3	2016	Akwa Ibom	Jun	Arrival	9200
state	3	2016	Akwa Ibom	Jun	Departure	9287
state	3	2016	Akwa Ibom	Jul	Arrival	8904
state	3	2016	Akwa Ibom	Jul	Departure	9181
state	3	2016	Akwa Ibom	Aug	Arrival	10176
state	3	2016	Akwa Ibom	Aug	Departure	10699
state	3	2016	Akwa Ibom	Sept	Arrival	10075
state	3	2016	Akwa Ibom	Sept	Departure	9541
state	3	2016	Akwa Ibom	Oct	Arrival	8687
state	3	2016	Akwa Ibom	Oct	Departure	9097
state	3	2016	Akwa Ibom	Nov	Arrival	10383
state	3	2016	Akwa Ibom	Nov	Departure	9523
state	3	2016	Akwa Ibom	Dec	Arrival	13165
state	3	2016	Akwa Ibom	Dec	Departure	11037
state	10	2016	Asaba	Jan	Arrival	681
state	10	2016	Asaba	Jan	Departure	913
state	10	2016	Asaba	Feb	Arrival	1536
state	10	2016	Asaba	Feb	Departure	1850
state	10	2016	Asaba	Mar	Arrival	1810
state	10	2016	Asaba	Mar	Departure	1643
state	10	2016	Asaba	Apr	Arrival	666
state	10	2016	Asaba	Apr	Departure	573
state	10	2016	Asaba	May	Arrival	166
state	10	2016	Asaba	May	Departure	159
state	10	2016	Asaba	Jun	Arrival	1686
state	10	2016	Asaba	Jun	Departure	1853
state	10	2016	Asaba	Jul	Arrival	2637
state	10	2016	Asaba	Jul	Departure	2351
state	10	2016	Asaba	Aug	Arrival	2723
state	10	2016	Asaba	Aug	Departure	3182
state	10	2016	Asaba	Sept	Arrival	2703
state	10	2016	Asaba	Sept	Departure	2676
state	10	2016	Asaba	Oct	Arrival	5177
state	10	2016	Asaba	Oct	Departure	5409
state	10	2016	Asaba	Nov	Arrival	7028
state	10	2016	Asaba	Nov	Departure	6670
state	10	2016	Asaba	Dec	Arrival	6388
state	10	2016	Asaba	Dec	Departure	5384
state	5	2016	Bauchi	Jan	Arrival	216
state	5	2016	Bauchi	Jan	Departure	226
state	5	2016	Bauchi	Feb	Arrival	158
state	5	2016	Bauchi	Feb	Departure	193
state	5	2016	Bauchi	Mar	Arrival	478
state	5	2016	Bauchi	Mar	Departure	362
state	5	2016	Bauchi	Apr	Arrival	883
state	5	2016	Bauchi	Apr	Departure	677
state	5	2016	Bauchi	May	Arrival	1107
state	5	2016	Bauchi	May	Departure	1911
state	5	2016	Bauchi	Jun	Arrival	1534
state	5	2016	Bauchi	Jun	Departure	1717
state	5	2016	Bauchi	Jul	Arrival	1811
state	5	2016	Bauchi	Jul	Departure	1968
state	5	2016	Bauchi	Aug	Arrival	1887
state	5	2016	Bauchi	Aug	Departure	3599
state	5	2016	Bauchi	Sept	Arrival	4756
state	5	2016	Bauchi	Sept	Departure	2205
state	5	2016	Bauchi	Oct	Arrival	1706
state	5	2016	Bauchi	Oct	Departure	1553
state	5	2016	Bauchi	Nov	Arrival	1705
state	5	2016	Bauchi	Nov	Departure	1732
state	5	2016	Bauchi	Dec	Arrival	1950
state	5	2016	Bauchi	Dec	Departure	1806
state	12	2016	Benin	Jan	Arrival	8448
state	12	2016	Benin	Jan	Departure	9629
state	12	2016	Benin	Feb	Arrival	12477
state	12	2016	Benin	Feb	Departure	12850
state	12	2016	Benin	Mar	Arrival	14036
state	12	2016	Benin	Mar	Departure	13405
state	12	2016	Benin	Apr	Arrival	13996
state	12	2016	Benin	Apr	Departure	14797
state	12	2016	Benin	May	Arrival	13018
state	12	2016	Benin	May	Departure	13263
state	12	2016	Benin	Jun	Arrival	12267
state	12	2016	Benin	Jun	Departure	12667
state	12	2016	Benin	Jul	Arrival	14299
state	12	2016	Benin	Jul	Departure	14278
state	12	2016	Benin	Aug	Arrival	14799
state	12	2016	Benin	Aug	Departure	15008
state	12	2016	Benin	Sept	Arrival	15558
state	12	2016	Benin	Sept	Departure	16170
state	12	2016	Benin	Oct	Arrival	15875
state	12	2016	Benin	Oct	Departure	16103
state	12	2016	Benin	Nov	Arrival	12530
state	12	2016	Benin	Nov	Departure	12103
state	12	2016	Benin	Dec	Arrival	11974
state	12	2016	Benin	Dec	Departure	10649
state	9	2016	Calabar	Jan	Arrival	5829
state	9	2016	Calabar	Jan	Departure	6790
state	9	2016	Calabar	Feb	Arrival	6371
state	9	2016	Calabar	Feb	Departure	6481
state	9	2016	Calabar	Mar	Arrival	7201
state	9	2016	Calabar	Mar	Departure	7188
state	9	2016	Calabar	Apr	Arrival	7500
state	9	2016	Calabar	Apr	Departure	7726
state	9	2016	Calabar	May	Arrival	7503
state	9	2016	Calabar	May	Departure	7545
state	9	2016	Calabar	Jun	Arrival	6193
state	9	2016	Calabar	Jun	Departure	6279
state	9	2016	Calabar	Jul	Arrival	6677
state	9	2016	Calabar	Jul	Departure	6629
state	9	2016	Calabar	Aug	Arrival	6906
state	9	2016	Calabar	Aug	Departure	7066
state	9	2016	Calabar	Sept	Arrival	6668
state	9	2016	Calabar	Sept	Departure	6401
state	9	2016	Calabar	Oct	Arrival	6518
state	9	2016	Calabar	Oct	Departure	7754
state	9	2016	Calabar	Nov	Arrival	6518
state	9	2016	Calabar	Nov	Departure	6854
state	9	2016	Calabar	Dec	Arrival	8028
state	9	2016	Calabar	Dec	Departure	7527
state	18	2016	Dutse	Jan	Arrival	7
state	18	2016	Dutse	Jan	Departure	27
state	18	2016	Dutse	Feb	Arrival	18
state	18	2016	Dutse	Feb	Departure	18
state	18	2016	Dutse	Mar	Arrival	26
state	18	2016	Dutse	Mar	Departure	29
state	18	2016	Dutse	Apr	Arrival	4
state	18	2016	Dutse	Apr	Departure	0
state	18	2016	Dutse	May	Arrival	49
state	18	2016	Dutse	May	Departure	54
state	18	2016	Dutse	Jun	Arrival	7
state	18	2016	Dutse	Jun	Departure	2
state	18	2016	Dutse	Jul	Arrival	79
state	18	2016	Dutse	Jul	Departure	71
state	18	2016	Dutse	Aug	Arrival	31
state	18	2016	Dutse	Aug	Departure	744
state	18	2016	Dutse	Sept	Arrival	802
state	18	2016	Dutse	Sept	Departure	59
state	18	2016	Dutse	Oct	Arrival	40
state	18	2016	Dutse	Oct	Departure	41
state	18	2016	Dutse	Nov	Arrival	0
state	18	2016	Dutse	Nov	Departure	0
state	18	2016	Dutse	Dec	Arrival	0
state	18	2016	Dutse	Dec	Departure	0
state	3	2016	Eket	Jan	Arrival	648
state	3	2016	Eket	Jan	Departure	593
state	3	2016	Eket	Feb	Arrival	1536
state	3	2016	Eket	Feb	Departure	1850
state	3	2016	Eket	Mar	Arrival	749
state	3	2016	Eket	Mar	Departure	754
state	3	2016	Eket	Apr	Arrival	499
state	3	2016	Eket	Apr	Departure	567
state	3	2016	Eket	May	Arrival	0
state	3	2016	Eket	May	Departure	0
state	3	2016	Eket	Jun	Arrival	391
state	3	2016	Eket	Jun	Departure	408
state	3	2016	Eket	Jul	Arrival	295
state	3	2016	Eket	Jul	Departure	249
state	3	2016	Eket	Aug	Arrival	185
state	3	2016	Eket	Aug	Departure	185
state	3	2016	Eket	Sept	Arrival	0
state	3	2016	Eket	Oct	Arrival	194
state	3	2016	Eket	Nov	Arrival	0
state	3	2016	Eket	Dec	Arrival	0
state	3	2016	Eket	Dec	Departure	0
state	3	2016	Eket	Nov	Departure
state	3	2016	Eket	Oct	Departure	328
state	3	2016	Eket	Sept	Departure	0
state	14	2016	Enugu	Apr	Arrival	15101
state	14	2016	Enugu	Aug	Arrival	14524
state	14	2016	Enugu	Dec	Arrival	20217
state	14	2016	Enugu	Feb	Arrival	12624
state	14	2016	Enugu	Jan	Arrival	9433
state	14	2016	Enugu	Jul	Arrival	13922
state	14	2016	Enugu	Jun	Arrival	12780
state	14	2016	Enugu	Mar	Arrival	14928
state	14	2016	Enugu	May	Arrival	13651
state	14	2016	Enugu	Nov	Arrival	14903
state	14	2016	Enugu	Oct	Arrival	14004
state	14	2016	Enugu	Sept	Arrival	14361
state	14	2016	Enugu	Apr	Departure	16256
state	14	2016	Enugu	Aug	Departure	15136
state	14	2016	Enugu	Dec	Departure	13626
state	14	2016	Enugu	Feb	Departure	13115
state	14	2016	Enugu	Jan	Departure	13222
state	14	2016	Enugu	Jul	Departure	14286
state	14	2016	Enugu	Jun	Departure	12956
state	14	2016	Enugu	Mar	Departure	13825
state	14	2016	Enugu	May	Departure	14328
state	14	2016	Enugu	Nov	Departure	14259
state	14	2016	Enugu	Oct	Departure	14979
state	14	2016	Enugu	Sept	Departure	14603
state	10	2016	Escravos	Apr	Arrival	7678
state	10	2016	Escravos	Aug	Arrival	6162
state	10	2016	Escravos	Dec	Arrival	4189
state	10	2016	Escravos	Feb	Arrival	6254
state	10	2016	Escravos	Jan	Arrival	4596
state	10	2016	Escravos	Jul	Arrival	7037
state	10	2016	Escravos	Jun	Arrival	7047
state	10	2016	Escravos	Mar	Arrival	8074
state	10	2016	Escravos	May	Arrival	7937
state	10	2016	Escravos	Nov	Arrival	7318
state	10	2016	Escravos	Oct	Arrival	6443
state	10	2016	Escravos	Sept	Arrival	7258
state	10	2016	Escravos	Apr	Departure	7233
state	10	2016	Escravos	Aug	Departure	6147
state	10	2016	Escravos	Dec	Departure	3844
state	10	2016	Escravos	Feb	Departure	5942
state	10	2016	Escravos	Jan	Departure	3882
state	10	2016	Escravos	Jul	Departure	6743
state	10	2016	Escravos	Jun	Departure	7025
state	10	2016	Escravos	Mar	Departure	7780
state	10	2016	Escravos	May	Departure	7629
state	10	2016	Escravos	Nov	Departure	7377
state	10	2016	Escravos	Oct	Departure	6445
state	10	2016	Escravos	Sept	Departure	7043
state	33	2016	Finima	Apr	Arrival	3558
state	33	2016	Finima	Aug	Arrival	2825
state	33	2016	Finima	Dec	Arrival	2481
state	33	2016	Finima	Feb	Arrival	2417
state	33	2016	Finima	Jan	Arrival	1809
state	33	2016	Finima	Jul	Arrival	2818
state	33	2016	Finima	Jun	Arrival	2887
state	33	2016	Finima	Mar	Arrival	3029
state	33	2016	Finima	May	Arrival	3038
state	33	2016	Finima	Nov	Arrival	2905
state	33	2016	Finima	Oct	Arrival	3057
state	33	2016	Finima	Sept	Arrival	2924
state	33	2016	Finima	Apr	Departure	3657
state	33	2016	Finima	Aug	Departure	3110
state	33	2016	Finima	Dec	Departure	2566
state	33	2016	Finima	Feb	Departure	2611
state	33	2016	Finima	Jan	Departure	1874
state	33	2016	Finima	Jul	Departure	3189
state	33	2016	Finima	Jun	Departure	3164
state	33	2016	Finima	Mar	Departure	3442
state	33	2016	Finima	May	Departure	3242
state	33	2016	Finima	Nov	Departure	3179
state	33	2016	Finima	Oct	Departure	3112
state	33	2016	Finima	Sept	Departure	3056
state	10	2016	Forcados	Apr	Arrival	968
state	10	2016	Forcados	Aug	Arrival	881
state	10	2016	Forcados	Dec	Arrival	0
state	10	2016	Forcados	Feb	Arrival	856
state	10	2016	Forcados	Jan	Arrival	884
state	10	2016	Forcados	Jul	Arrival	0
state	10	2016	Forcados	Jun	Arrival	984
state	10	2016	Forcados	Mar	Arrival	0
state	10	2016	Forcados	May	Arrival	1080
state	10	2016	Forcados	Nov	Arrival	1011
state	10	2016	Forcados	Oct	Arrival	1024
state	10	2016	Forcados	Sept	Arrival	0
state	10	2016	Forcados	Apr	Departure	928
state	10	2016	Forcados	Aug	Departure	823
state	10	2016	Forcados	Dec	Departure	0
state	10	2016	Forcados	Feb	Departure	789
state	10	2016	Forcados	Jan	Departure	817
state	10	2016	Forcados	Jul	Departure	0
state	10	2016	Forcados	Jun	Departure	1004
state	10	2016	Forcados	Mar	Departure	0
state	10	2016	Forcados	May	Departure	1030
state	10	2016	Forcados	Nov	Departure	937
state	10	2016	Forcados	Oct	Departure	977
state	10	2016	Forcados	Sept	Departure	0
state	16	2016	Gombe	Apr	Arrival	1754
state	16	2016	Gombe	Aug	Arrival	3276
state	16	2016	Gombe	Dec	Arrival	3802
state	16	2016	Gombe	Feb	Arrival	1324
state	16	2016	Gombe	Jan	Arrival	1115
state	16	2016	Gombe	Jul	Arrival	2230
state	16	2016	Gombe	Jun	Arrival	1940
state	16	2016	Gombe	Mar	Arrival	1669
state	16	2016	Gombe	May	Arrival	1675
state	16	2016	Gombe	Nov	Arrival	3253
state	16	2016	Gombe	Oct	Arrival	3474
state	16	2016	Gombe	Sept	Arrival	2880
state	16	2016	Gombe	Apr	Departure	1801
state	16	2016	Gombe	Aug	Departure	3082
state	16	2016	Gombe	Dec	Departure	3478
state	16	2016	Gombe	Feb	Departure	1292
state	16	2016	Gombe	Jan	Departure	1076
state	16	2016	Gombe	Jul	Departure	3456
state	16	2016	Gombe	Jun	Departure	1668
state	16	2016	Gombe	Mar	Departure	1461
state	16	2016	Gombe	May	Departure	1751
state	16	2016	Gombe	Nov	Departure	3086
state	16	2016	Gombe	Oct	Departure	3272
state	16	2016	Gombe	Sept	Departure	2588
state	31	2016	Ibadan	Apr	Arrival	3750
state	31	2016	Ibadan	Aug	Arrival	4016
state	31	2016	Ibadan	Dec	Arrival	4398
state	31	2016	Ibadan	Feb	Arrival	3069
state	31	2016	Ibadan	Jan	Arrival	3006
state	31	2016	Ibadan	Jul	Arrival	3966
state	31	2016	Ibadan	Jun	Arrival	3722
state	31	2016	Ibadan	Mar	Arrival	3987
state	31	2016	Ibadan	May	Arrival	3539
state	31	2016	Ibadan	Nov	Arrival	4090
state	31	2016	Ibadan	Oct	Arrival	4253
state	31	2016	Ibadan	Sept	Arrival	4469
state	31	2016	Ibadan	Apr	Departure	3816
state	31	2016	Ibadan	Aug	Departure	4023
state	31	2016	Ibadan	Dec	Departure	4185
state	31	2016	Ibadan	Feb	Departure	3153
state	31	2016	Ibadan	Jan	Departure	2888
state	31	2016	Ibadan	Jul	Departure	3933
state	31	2016	Ibadan	Jun	Departure	3615
state	31	2016	Ibadan	Mar	Departure	3885
state	31	2016	Ibadan	May	Departure	3464
state	31	2016	Ibadan	Nov	Departure	4181
state	31	2016	Ibadan	Oct	Departure	4181
state	31	2016	Ibadan	Sept	Departure	4511
state	24	2016	Ilorin	Apr	Arrival	4870
state	24	2016	Ilorin	Aug	Arrival	5695
state	24	2016	Ilorin	Dec	Arrival	6171
state	24	2016	Ilorin	Feb	Arrival	4147
state	24	2016	Ilorin	Jan	Arrival	3267
state	24	2016	Ilorin	Jul	Arrival	4810
state	24	2016	Ilorin	Jun	Arrival	4284
state	24	2016	Ilorin	Mar	Arrival	4686
state	24	2016	Ilorin	May	Arrival	4413
state	24	2016	Ilorin	Nov	Arrival	5222
state	24	2016	Ilorin	Oct	Arrival	4905
state	24	2016	Ilorin	Sept	Arrival	4806
state	24	2016	Ilorin	Apr	Departure	4946
state	24	2016	Ilorin	Aug	Departure	5119
state	24	2016	Ilorin	Dec	Departure	5200
state	24	2016	Ilorin	Feb	Departure	4290
state	24	2016	Ilorin	Jan	Departure	3076
state	24	2016	Ilorin	Jul	Departure	5586
state	24	2016	Ilorin	Jun	Departure	4461
state	24	2016	Ilorin	Mar	Departure	4580
state	24	2016	Ilorin	May	Departure	4611
state	24	2016	Ilorin	Nov	Departure	5006
state	24	2016	Ilorin	Oct	Departure	5003
state	24	2016	Ilorin	Sept	Departure	4813
state	32	2016	Jos	Apr	Arrival	3342
state	32	2016	Jos	Aug	Arrival	3417
state	32	2016	Jos	Dec	Arrival	3876
state	32	2016	Jos	Feb	Arrival	2575
state	32	2016	Jos	Jan	Arrival	2661
state	32	2016	Jos	Jul	Arrival	3029
state	32	2016	Jos	Jun	Arrival	3194
state	32	2016	Jos	Mar	Arrival	3055
state	32	2016	Jos	May	Arrival	3635
state	32	2016	Jos	Nov	Arrival	3274
state	32	2016	Jos	Oct	Arrival	3225
state	32	2016	Jos	Sept	Arrival	3427
state	32	2016	Jos	Apr	Departure	3290
state	32	2016	Jos	Aug	Departure	3449
state	32	2016	Jos	Dec	Departure	3612
state	32	2016	Jos	Feb	Departure	2581
state	32	2016	Jos	Jan	Departure	2482
state	32	2016	Jos	Jul	Departure	2966
state	32	2016	Jos	Jun	Departure	3033
state	32	2016	Jos	Mar	Departure	2832
state	32	2016	Jos	May	Departure	3444
state	32	2016	Jos	Nov	Departure	3114
state	32	2016	Jos	Oct	Departure	3160
state	32	2016	Jos	Sept	Departure	4277
state	19	2016	Kaduna	Apr	Arrival	8354
state	19	2016	Kaduna	Aug	Arrival	6988
state	19	2016	Kaduna	Dec	Arrival	9715
state	19	2016	Kaduna	Feb	Arrival	5580
state	19	2016	Kaduna	Jan	Arrival	6659
state	19	2016	Kaduna	Jul	Arrival	5768
state	19	2016	Kaduna	Jun	Arrival	8538
state	19	2016	Kaduna	Mar	Arrival	7039
state	19	2016	Kaduna	May	Arrival	5858
state	19	2016	Kaduna	Nov	Arrival	6731
state	19	2016	Kaduna	Oct	Arrival	5479
state	19	2016	Kaduna	Sept	Arrival	6958
state	19	2016	Kaduna	Apr	Departure	8779
state	19	2016	Kaduna	Aug	Departure	6949
state	19	2016	Kaduna	Dec	Departure	9232
state	19	2016	Kaduna	Feb	Departure	5965
state	19	2016	Kaduna	Jan	Departure	6709
state	19	2016	Kaduna	Jul	Departure	5903
state	19	2016	Kaduna	Jun	Departure	8512
state	19	2016	Kaduna	Mar	Departure	7481
state	19	2016	Kaduna	May	Departure	6277
state	19	2016	Kaduna	Nov	Departure	6588
state	19	2016	Kaduna	Oct	Departure	5585
state	19	2016	Kaduna	Sept	Departure	7301
state	20	2016	Kano	Apr	Arrival	15949
state	20	2016	Kano	Aug	Arrival	20905
state	20	2016	Kano	Dec	Arrival	20281
state	20	2016	Kano	Feb	Arrival	11189
state	20	2016	Kano	Jan	Arrival	10697
state	20	2016	Kano	Jul	Arrival	17757
state	20	2016	Kano	Jun	Arrival	17008
state	20	2016	Kano	Mar	Arrival	16211
state	20	2016	Kano	May	Arrival	15168
state	20	2016	Kano	Nov	Arrival	20705
state	20	2016	Kano	Oct	Arrival	21058
state	20	2016	Kano	Sept	Arrival	18849
state	20	2016	Kano	Apr	Departure	16331
state	20	2016	Kano	Aug	Departure	18514
state	20	2016	Kano	Dec	Departure	20648
state	20	2016	Kano	Feb	Departure	11381
state	20	2016	Kano	Jan	Departure	10940
state	20	2016	Kano	Jul	Departure	17154
state	20	2016	Kano	Jun	Departure	12469
state	20	2016	Kano	Mar	Departure	15249
state	20	2016	Kano	May	Departure	15573
state	20	2016	Kano	Nov	Departure	22267
state	20	2016	Kano	Oct	Departure	21291
state	20	2016	Kano	Sept	Departure	19798
state	21	2016	Katsina	Apr	Arrival	358
state	21	2016	Katsina	Aug	Arrival	490
state	21	2016	Katsina	Dec	Arrival	80
state	21	2016	Katsina	Feb	Arrival	262
state	21	2016	Katsina	Jan	Arrival	137
state	21	2016	Katsina	Jul	Arrival	311
state	21	2016	Katsina	Jun	Arrival	90
state	21	2016	Katsina	Mar	Arrival	81
state	21	2016	Katsina	May	Arrival	161
state	21	2016	Katsina	Nov	Arrival	101
state	21	2016	Katsina	Oct	Arrival	207
state	21	2016	Katsina	Sept	Arrival	206
state	21	2016	Katsina	Apr	Departure	330
state	21	2016	Katsina	Aug	Departure	1686
state	21	2016	Katsina	Dec	Departure	45
state	21	2016	Katsina	Feb	Departure	218
state	21	2016	Katsina	Jan	Departure	127
state	21	2016	Katsina	Jul	Departure	287
state	21	2016	Katsina	Jun	Departure	66
state	21	2016	Katsina	Mar	Departure	67
state	21	2016	Katsina	May	Departure	160
state	21	2016	Katsina	Nov	Departure	75
state	21	2016	Katsina	Oct	Departure	256
state	21	2016	Katsina	Sept	Departure	227
state	22	2016	Kebbi	Apr	Arrival	1288
state	22	2016	Kebbi	Aug	Arrival	1573
state	22	2016	Kebbi	Dec	Arrival	1771
state	22	2016	Kebbi	Feb	Arrival	841
state	22	2016	Kebbi	Jan	Arrival	932
state	22	2016	Kebbi	Jul	Arrival	1085
state	22	2016	Kebbi	Jun	Arrival	1161
state	22	2016	Kebbi	Mar	Arrival	1137
state	22	2016	Kebbi	May	Arrival	996
state	22	2016	Kebbi	Nov	Arrival	1485
state	22	2016	Kebbi	Oct	Arrival	1205
state	22	2016	Kebbi	Sept	Arrival	1454
state	22	2016	Kebbi	Apr	Departure	1247
state	22	2016	Kebbi	Aug	Departure	2104
state	22	2016	Kebbi	Dec	Departure	1583
state	22	2016	Kebbi	Feb	Departure	673
state	22	2016	Kebbi	Jan	Departure	1089
state	22	2016	Kebbi	Jul	Departure	1448
state	22	2016	Kebbi	Jun	Departure	865
state	22	2016	Kebbi	Mar	Departure	946
state	22	2016	Kebbi	May	Departure	1169
state	22	2016	Kebbi	Nov	Departure	1417
state	22	2016	Kebbi	Oct	Departure	1260
state	22	2016	Kebbi	Sept	Departure	1456
state	25	2016	Lagos	Apr	Arrival	184817
state	25	2016	Lagos	Aug	Arrival	168306
state	25	2016	Lagos	Dec	Arrival	201034
state	25	2016	Lagos	Feb	Arrival	156898
state	25	2016	Lagos	Jan	Arrival	160588
state	25	2016	Lagos	Jul	Arrival	174017
state	25	2016	Lagos	Jun	Arrival	182765
state	25	2016	Lagos	Mar	Arrival	182090
state	25	2016	Lagos	May	Arrival	169015
state	25	2016	Lagos	Nov	Arrival	187708
state	25	2016	Lagos	Oct	Arrival	192305
state	25	2016	Lagos	Sept	Arrival	178603
state	25	2016	Lagos	Apr	Departure	181923
state	25	2016	Lagos	Aug	Departure	168351
state	25	2016	Lagos	Dec	Departure	212300
state	25	2016	Lagos	Feb	Departure	156493
state	25	2016	Lagos	Jan	Departure	148261
state	25	2016	Lagos	Jul	Departure	177397
state	25	2016	Lagos	Jun	Departure	173885
state	25	2016	Lagos	Mar	Departure	178266
state	25	2016	Lagos	May	Departure	171324
state	25	2016	Lagos	Nov	Departure	187516
state	25	2016	Lagos	Oct	Departure	178479
state	25	2016	Lagos	Sept	Departure	172806
state	8	2016	Maiduguri	Apr	Arrival	7959
state	8	2016	Maiduguri	Aug	Arrival	8361
state	8	2016	Maiduguri	Dec	Arrival	9996
state	8	2016	Maiduguri	Feb	Arrival	7865
state	8	2016	Maiduguri	Jan	Arrival	7028
state	8	2016	Maiduguri	Jul	Arrival	8190
state	8	2016	Maiduguri	Jun	Arrival	6966
state	8	2016	Maiduguri	Mar	Arrival	9409
state	8	2016	Maiduguri	May	Arrival	7855
state	8	2016	Maiduguri	Nov	Arrival	9656
state	8	2016	Maiduguri	Oct	Arrival	9133
state	8	2016	Maiduguri	Sept	Arrival	8284
state	8	2016	Maiduguri	Apr	Departure	7970
state	8	2016	Maiduguri	Aug	Departure	8344
state	8	2016	Maiduguri	Dec	Departure	9438
state	8	2016	Maiduguri	Feb	Departure	7635
state	8	2016	Maiduguri	Jan	Departure	7653
state	8	2016	Maiduguri	Jul	Departure	7997
state	8	2016	Maiduguri	Jun	Departure	7024
state	8	2016	Maiduguri	Mar	Departure	9779
state	8	2016	Maiduguri	May	Departure	8007
state	8	2016	Maiduguri	Nov	Departure	9436
state	8	2016	Maiduguri	Oct	Departure	9414
state	8	2016	Maiduguri	Sept	Departure	8541
state	7	2016	Makurdi	Apr	Arrival	13
state	7	2016	Makurdi	Aug	Arrival	49
state	7	2016	Makurdi	Dec	Arrival	0
state	7	2016	Makurdi	Feb	Arrival	84
state	7	2016	Makurdi	Jan	Arrival	65
state	7	2016	Makurdi	Jul	Arrival	17
state	7	2016	Makurdi	Jun	Arrival	0
state	7	2016	Makurdi	Mar	Arrival	25
state	7	2016	Makurdi	May	Arrival	33
state	7	2016	Makurdi	Nov	Arrival	0
state	7	2016	Makurdi	Oct	Arrival	0
state	7	2016	Makurdi	Sept	Arrival	0
state	7	2016	Makurdi	Apr	Departure	20
state	7	2016	Makurdi	Aug	Departure	40
state	7	2016	Makurdi	Dec	Departure	0
state	7	2016	Makurdi	Feb	Departure	79
state	7	2016	Makurdi	Jan	Departure	69
state	7	2016	Makurdi	Jul	Departure	22
state	7	2016	Makurdi	Jun	Departure	0
state	7	2016	Makurdi	Mar	Departure	20
state	7	2016	Makurdi	May	Departure	20
state	7	2016	Makurdi	Nov	Departure	0
state	7	2016	Makurdi	Oct	Departure	0
state	7	2016	Makurdi	Sept	Departure	0
state	27	2016	Minna	Apr	Arrival	83
state	27	2016	Minna	Aug	Arrival	118
state	27	2016	Minna	Dec	Arrival	23
state	27	2016	Minna	Feb	Arrival	217
state	27	2016	Minna	Jan	Arrival	105
state	27	2016	Minna	Jul	Arrival	109
state	27	2016	Minna	Jun	Arrival	64
state	27	2016	Minna	Mar	Arrival	78
state	27	2016	Minna	May	Arrival	94
state	27	2016	Minna	Nov	Arrival	94
state	27	2016	Minna	Oct	Arrival	119
state	27	2016	Minna	Sept	Arrival	232
state	27	2016	Minna	Apr	Departure	76
state	27	2016	Minna	Aug	Departure	123
state	27	2016	Minna	Dec	Departure	36
state	27	2016	Minna	Feb	Departure	187
state	27	2016	Minna	Jan	Departure	198
state	27	2016	Minna	Jul	Departure	91
state	27	2016	Minna	Jun	Departure	64
state	27	2016	Minna	Mar	Departure	86
state	27	2016	Minna	May	Departure	108
state	27	2016	Minna	Nov	Departure	64
state	27	2016	Minna	Oct	Departure	128
state	27	2016	Minna	Sept	Departure	201
state	10	2016	Osubi	Apr	Arrival	9148
state	10	2016	Osubi	Aug	Arrival	9532
state	10	2016	Osubi	Dec	Arrival	7590
state	10	2016	Osubi	Feb	Arrival	7712
state	10	2016	Osubi	Jan	Arrival	4903
state	10	2016	Osubi	Jul	Arrival	9645
state	10	2016	Osubi	Jun	Arrival	9397
state	10	2016	Osubi	Mar	Arrival	9167
state	10	2016	Osubi	May	Arrival	9607
state	10	2016	Osubi	Nov	Arrival	9446
state	10	2016	Osubi	Oct	Arrival	1331
state	10	2016	Osubi	Sept	Arrival	0
state	10	2016	Osubi	Apr	Departure	9141
state	10	2016	Osubi	Aug	Departure	9831
state	10	2016	Osubi	Dec	Departure	7574
state	10	2016	Osubi	Feb	Departure	7532
state	10	2016	Osubi	Jan	Departure	5614
state	10	2016	Osubi	Jul	Departure	10009
state	10	2016	Osubi	Jun	Departure	8729
state	10	2016	Osubi	Mar	Departure	8628
state	10	2016	Osubi	May	Departure	9213
state	10	2016	Osubi	Nov	Departure	9886
state	10	2016	Osubi	Oct	Departure	1437
state	10	2016	Osubi	Sept	Departure	0
state	17	2016	Owerri	Apr	Arrival	21597
state	17	2016	Owerri	Aug	Arrival	23894
state	17	2016	Owerri	Dec	Arrival	33812
state	17	2016	Owerri	Feb	Arrival	17973
state	17	2016	Owerri	Jan	Arrival	17998
state	17	2016	Owerri	Jul	Arrival	20026
state	17	2016	Owerri	Jun	Arrival	19562
state	17	2016	Owerri	Mar	Arrival	20998
state	17	2016	Owerri	May	Arrival	22568
state	17	2016	Owerri	Nov	Arrival	18895
state	17	2016	Owerri	Oct	Arrival	19367
state	17	2016	Owerri	Sept	Arrival	21190
state	17	2016	Owerri	Apr	Departure	23367
state	17	2016	Owerri	Aug	Departure	22331
state	17	2016	Owerri	Dec	Departure	20145
state	17	2016	Owerri	Feb	Departure	18634
state	17	2016	Owerri	Jan	Departure	29126
state	17	2016	Owerri	Jul	Departure	20018
state	17	2016	Owerri	Jun	Departure	18962
state	17	2016	Owerri	Mar	Departure	18473
state	17	2016	Owerri	May	Departure	22515
state	17	2016	Owerri	Nov	Departure	19029
state	17	2016	Owerri	Oct	Departure	19659
state	17	2016	Owerri	Sept	Departure	20407
state	33	2016	Phc	Apr	Arrival	45363
state	33	2016	Phc	Aug	Arrival	43525
state	33	2016	Phc	Dec	Arrival	58058
state	33	2016	Phc	Feb	Arrival	38853
state	33	2016	Phc	Jan	Arrival	36959
state	33	2016	Phc	Jul	Arrival	41937
state	33	2016	Phc	Jun	Arrival	42475
state	33	2016	Phc	Mar	Arrival	42530
state	33	2016	Phc	May	Arrival	44621
state	33	2016	Phc	Nov	Arrival	47723
state	33	2016	Phc	Oct	Arrival	50010
state	33	2016	Phc	Sept	Arrival	46014
state	33	2016	Phc	Apr	Departure	46522
state	33	2016	Phc	Aug	Departure	46213
state	33	2016	Phc	Dec	Departure	50901
state	33	2016	Phc	Feb	Departure	39000
state	33	2016	Phc	Jan	Departure	38825
state	33	2016	Phc	Jul	Departure	44272
state	33	2016	Phc	Jun	Departure	41502
state	33	2016	Phc	Mar	Departure	42161
state	33	2016	Phc	May	Departure	44352
state	33	2016	Phc	Nov	Departure	48140
state	33	2016	Phc	Oct	Departure	50486
state	33	2016	Phc	Sept	Departure	42536
state	34	2016	Sokoto	Apr	Arrival	4115
state	34	2016	Sokoto	Aug	Arrival	5659
state	34	2016	Sokoto	Dec	Arrival	5232
state	34	2016	Sokoto	Feb	Arrival	3155
state	34	2016	Sokoto	Jan	Arrival	2800
state	34	2016	Sokoto	Jul	Arrival	4050
state	34	2016	Sokoto	Jun	Arrival	3643
state	34	2016	Sokoto	Mar	Arrival	3975
state	34	2016	Sokoto	May	Arrival	3467
state	34	2016	Sokoto	Nov	Arrival	4756
state	34	2016	Sokoto	Oct	Arrival	4565
state	34	2016	Sokoto	Sept	Arrival	8191
state	34	2016	Sokoto	Apr	Departure	4255
state	34	2016	Sokoto	Aug	Departure	8385
state	34	2016	Sokoto	Dec	Departure	4830
state	34	2016	Sokoto	Feb	Departure	3342
state	34	2016	Sokoto	Jan	Departure	2902
state	34	2016	Sokoto	Jul	Departure	4735
state	34	2016	Sokoto	Jun	Departure	3427
state	34	2016	Sokoto	Mar	Departure	3754
state	34	2016	Sokoto	May	Departure	3727
state	34	2016	Sokoto	Nov	Departure	4687
state	34	2016	Sokoto	Oct	Departure	4701
state	34	2016	Sokoto	Sept	Departure	4892
state	2	2016	Yola	Apr	Arrival	7837
state	2	2016	Yola	Aug	Arrival	7742
state	2	2016	Yola	Dec	Arrival	10126
state	2	2016	Yola	Feb	Arrival	5571
state	2	2016	Yola	Jan	Arrival	5939
state	2	2016	Yola	Jul	Arrival	7896
state	2	2016	Yola	Jun	Arrival	6833
state	2	2016	Yola	Mar	Arrival	7877
state	2	2016	Yola	May	Arrival	7169
state	2	2016	Yola	Nov	Arrival	8065
state	2	2016	Yola	Oct	Arrival	6830
state	2	2016	Yola	Sept	Arrival	7702
state	2	2016	Yola	Apr	Departure	8463
state	2	2016	Yola	Aug	Departure	7634
state	2	2016	Yola	Dec	Departure	8924
state	2	2016	Yola	Feb	Departure	6062
state	2	2016	Yola	Jan	Departure	6987
state	2	2016	Yola	Jul	Departure	7716
state	2	2016	Yola	Jun	Departure	6674
state	2	2016	Yola	Mar	Departure	7365
state	2	2016	Yola	May	Departure	9101
state	2	2016	Yola	Nov	Departure	8471
state	2	2016	Yola	Oct	Departure	7429
state	2	2016	Yola	Sept	Departure	7597
state	19	2016	Zaria	Apr	Arrival	0
state	19	2016	Zaria	Aug	Arrival	22
state	19	2016	Zaria	Dec	Arrival	0
state	19	2016	Zaria	Feb	Arrival	0
state	19	2016	Zaria	Jan	Arrival	9
state	19	2016	Zaria	Jul	Arrival	32
state	19	2016	Zaria	Jun	Arrival	0
state	19	2016	Zaria	Mar	Arrival	0
state	19	2016	Zaria	May	Arrival	0
state	19	2016	Zaria	Nov	Arrival	28
state	19	2016	Zaria	Oct	Arrival	4
state	19	2016	Zaria	Sept	Arrival	11
state	19	2016	Zaria	Apr	Departure	0
state	19	2016	Zaria	Aug	Departure	22
state	19	2016	Zaria	Dec	Departure	0
state	19	2016	Zaria	Feb	Departure	0
state	19	2016	Zaria	Jan	Departure	8
state	19	2016	Zaria	Jul	Departure	30
state	19	2016	Zaria	Jun	Departure	0
state	19	2016	Zaria	Mar	Departure	0
state	19	2016	Zaria	May	Departure	0
state	19	2016	Zaria	Nov	Departure	37
state	19	2016	Zaria	Oct	Departure	4
state	19	2016	Zaria	Sept	Departure	12
\.


--
-- Name: air_transportation_domestic air_transportation_domestic_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.air_transportation_domestic
    ADD CONSTRAINT air_transportation_domestic_pkey PRIMARY KEY (geo_level, geo_code, geo_version, name, month, depature_arrival);


--
-- PostgreSQL database dump complete
--
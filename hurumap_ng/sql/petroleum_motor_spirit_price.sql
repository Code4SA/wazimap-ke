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

ALTER TABLE IF EXISTS ONLY public.petroleum_motor_spirit_price DROP CONSTRAINT IF EXISTS petroleum_motor_spirit_price_pkey;
DROP TABLE IF EXISTS public.petroleum_motor_spirit_price;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: petroleum_motor_spirit_price; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.petroleum_motor_spirit_price (
    geo_code character varying(10) NOT NULL,
    geo_level character varying(15) NOT NULL,
    geo_version character varying(128) NOT NULL,
    month character varying(10) NOT NULL,
    year character varying(12) NOT NULL,
    total numeric
);


--
-- Data for Name: petroleum_motor_spirit_price; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.petroleum_motor_spirit_price (geo_code, geo_level, geo_version, month, year, total) FROM stdin;
1	state	2016	Jan	2016	129.3
1	state	2016	Apr	2017	148.5
1	state	2016	Aug	2017	144.7
1	state	2016	Dec	2017	220.4
1	state	2016	Jul	2017	147
1	state	2016	Jun	2017	149.7
1	state	2016	Mar	2017	150.4
1	state	2016	May	2017	151.9
1	state	2016	Nov	2017	147.5
1	state	2016	Oct	2017	147.86
1	state	2016	Sep	2017	144.5
1	state	2016	Apr	2018	147.55
1	state	2016	Aug	2018	147
1	state	2016	Dec	2018	144.72
1	state	2016	Feb	2018	191.13
1	state	2016	Jan	2018	227.5
1	state	2016	Jul	2018	146.5
1	state	2016	Jun	2018	146.33
1	state	2016	Mar	2018	164.5
1	state	2016	May	2018	145.45
1	state	2016	Nov	2018	150.67
1	state	2016	Oct	2018	147.67
1	state	2016	Sep	2018	146.3
1	state	2016	Apr	2019	146.29
1	state	2016	Feb	2019	145.93
1	state	2016	Jan	2019	144.65
1	state	2016	Mar	2019	146.12
1	state	2016	May	2019	145.64
2	state	2016	Jan	2016	93.5
2	state	2016	Apr	2017	156.7
2	state	2016	Aug	2017	144
2	state	2016	Dec	2017	170
2	state	2016	Jul	2017	160
2	state	2016	Jun	2017	162.5
2	state	2016	Mar	2017	153.3
2	state	2016	May	2017	160
2	state	2016	Nov	2017	145
2	state	2016	Oct	2017	146.67
2	state	2016	Sep	2017	143
2	state	2016	Apr	2018	160.33
2	state	2016	Aug	2018	148.33
2	state	2016	Dec	2018	145
2	state	2016	Feb	2018	150
2	state	2016	Jan	2018	170
2	state	2016	Jul	2018	145.29
2	state	2016	Jun	2018	145
2	state	2016	Mar	2018	173
2	state	2016	May	2018	150.11
2	state	2016	Nov	2018	149.33
2	state	2016	Oct	2018	150.83
2	state	2016	Sep	2018	150
2	state	2016	Apr	2019	146.6
2	state	2016	Feb	2019	143.78
2	state	2016	Jan	2019	145
2	state	2016	Mar	2019	145.14
2	state	2016	May	2019	145.44
3	state	2016	Jan	2016	120
3	state	2016	Apr	2017	147.5
3	state	2016	Aug	2017	144.6
3	state	2016	Dec	2017	166.5
3	state	2016	Jul	2017	145
3	state	2016	Jun	2017	149.6
3	state	2016	Mar	2017	149.3
3	state	2016	May	2017	149.4
3	state	2016	Nov	2017	150.33
3	state	2016	Oct	2017	146
3	state	2016	Sep	2017	143.3
3	state	2016	Apr	2018	154
3	state	2016	Aug	2018	145.42
3	state	2016	Dec	2018	145
3	state	2016	Feb	2018	183.89
3	state	2016	Jan	2018	201.25
3	state	2016	Jul	2018	145.58
3	state	2016	Jun	2018	145
3	state	2016	Mar	2018	164
3	state	2016	May	2018	159.44
3	state	2016	Nov	2018	144.55
3	state	2016	Oct	2018	145
3	state	2016	Sep	2018	145.5
3	state	2016	Apr	2019	145.91
3	state	2016	Feb	2019	144.78
3	state	2016	Jan	2019	145
3	state	2016	Mar	2019	145
3	state	2016	May	2019	145.5
4	state	2016	Jan	2016	119.8
4	state	2016	Apr	2017	147.7
4	state	2016	Aug	2017	144.6
4	state	2016	Dec	2017	210
4	state	2016	Jul	2017	147.1
4	state	2016	Jun	2017	148.3
4	state	2016	Mar	2017	148
4	state	2016	May	2017	147.9
4	state	2016	Nov	2017	145.86
4	state	2016	Oct	2017	145.71
4	state	2016	Sep	2017	144.1
4	state	2016	Apr	2018	151.33
4	state	2016	Aug	2018	145.14
4	state	2016	Dec	2018	145.42
4	state	2016	Feb	2018	183.67
4	state	2016	Jan	2018	211.67
4	state	2016	Jul	2018	145.85
4	state	2016	Jun	2018	151.43
4	state	2016	Mar	2018	166.88
4	state	2016	May	2018	150.87
4	state	2016	Nov	2018	145
4	state	2016	Oct	2018	145
4	state	2016	Sep	2018	144.88
4	state	2016	Apr	2019	146.9
4	state	2016	Feb	2019	144.87
4	state	2016	Jan	2019	144.9
4	state	2016	Mar	2019	144.57
4	state	2016	May	2019	145.62
5	state	2016	Jan	2016	117.3
5	state	2016	Apr	2017	150.5
5	state	2016	Aug	2017	145
5	state	2016	Dec	2017	159.75
5	state	2016	Jul	2017	145.4
5	state	2016	Jun	2017	152.5
5	state	2016	Mar	2017	147.8
5	state	2016	May	2017	147.5
5	state	2016	Nov	2017	144.9
5	state	2016	Oct	2017	147.38
5	state	2016	Sep	2017	144.6
5	state	2016	Apr	2018	144.17
5	state	2016	Aug	2018	143.89
5	state	2016	Dec	2018	144.2
5	state	2016	Feb	2018	151
5	state	2016	Jan	2018	186.88
5	state	2016	Jul	2018	145.4
5	state	2016	Jun	2018	147.9
5	state	2016	Mar	2018	145.57
5	state	2016	May	2018	144.93
5	state	2016	Nov	2018	144.46
5	state	2016	Oct	2018	144.57
5	state	2016	Sep	2018	144
5	state	2016	Apr	2019	145.67
5	state	2016	Feb	2019	144.5
5	state	2016	Jan	2019	145.25
5	state	2016	Mar	2019	143.89
5	state	2016	May	2019	144.5
6	state	2016	Jan	2016	96.1
6	state	2016	Apr	2017	159.1
6	state	2016	Aug	2017	144.8
6	state	2016	Dec	2017	172.69
6	state	2016	Jul	2017	145
6	state	2016	Jun	2017	160.4
6	state	2016	Mar	2017	161.3
6	state	2016	May	2017	153.5
6	state	2016	Nov	2017	150.5
6	state	2016	Oct	2017	147.08
6	state	2016	Sep	2017	147.1
6	state	2016	Apr	2018	158
6	state	2016	Aug	2018	151
6	state	2016	Dec	2018	150
6	state	2016	Feb	2018	206.82
6	state	2016	Jan	2018	187.14
6	state	2016	Jul	2018	151.67
6	state	2016	Jun	2018	152.92
6	state	2016	Mar	2018	178
6	state	2016	May	2018	154.62
6	state	2016	Nov	2018	147.08
6	state	2016	Oct	2018	148
6	state	2016	Sep	2018	150
6	state	2016	Apr	2019	148.64
6	state	2016	Feb	2019	145.25
6	state	2016	Jan	2019	145.78
6	state	2016	Mar	2019	145.25
6	state	2016	May	2019	146
7	state	2016	Jan	2016	121.7
7	state	2016	Apr	2017	155
7	state	2016	Aug	2017	143.5
7	state	2016	Dec	2017	172.67
7	state	2016	Jul	2017	159.1
7	state	2016	Jun	2017	151.3
7	state	2016	Mar	2017	152.5
7	state	2016	May	2017	158.2
7	state	2016	Nov	2017	145.5
7	state	2016	Oct	2017	150.83
7	state	2016	Sep	2017	143.6
7	state	2016	Apr	2018	156.25
7	state	2016	Aug	2018	145.5
7	state	2016	Dec	2018	146.6
7	state	2016	Feb	2018	155
7	state	2016	Jan	2018	223.33
7	state	2016	Jul	2018	146.3
7	state	2016	Jun	2018	146.43
7	state	2016	Mar	2018	153.53
7	state	2016	May	2018	160.31
7	state	2016	Nov	2018	150.43
7	state	2016	Oct	2018	153.33
7	state	2016	Sep	2018	150.4
7	state	2016	Apr	2019	145.83
7	state	2016	Feb	2019	146.09
7	state	2016	Jan	2019	150.09
7	state	2016	Mar	2019	144.75
7	state	2016	May	2019	143.6
8	state	2016	Jan	2016	96.4
8	state	2016	Apr	2017	160.5
8	state	2016	Aug	2017	144.5
8	state	2016	Dec	2017	159.44
8	state	2016	Jul	2017	160.5
8	state	2016	Jun	2017	152.9
8	state	2016	Mar	2017	151
8	state	2016	May	2017	160
8	state	2016	Nov	2017	147
8	state	2016	Oct	2017	145.23
8	state	2016	Sep	2017	144.4
8	state	2016	Apr	2018	160
8	state	2016	Aug	2018	157
8	state	2016	Dec	2018	149.5
8	state	2016	Feb	2018	200.29
8	state	2016	Jan	2018	185.48
8	state	2016	Jul	2018	155
8	state	2016	Jun	2018	162.17
8	state	2016	Mar	2018	169.55
8	state	2016	May	2018	166.08
8	state	2016	Nov	2018	152.92
8	state	2016	Oct	2018	152.17
8	state	2016	Sep	2018	147
8	state	2016	Apr	2019	146.82
8	state	2016	Feb	2019	145.89
8	state	2016	Jan	2019	145.63
8	state	2016	Mar	2019	146.27
8	state	2016	May	2019	144.36
9	state	2016	Jan	2016	115.2
9	state	2016	Apr	2017	147.8
9	state	2016	Aug	2017	143.4
9	state	2016	Dec	2017	207.14
9	state	2016	Jul	2017	145
9	state	2016	Jun	2017	148.4
9	state	2016	Mar	2017	148.1
9	state	2016	May	2017	149.6
9	state	2016	Nov	2017	145
9	state	2016	Oct	2017	148.4
9	state	2016	Sep	2017	144
9	state	2016	Apr	2018	154.5
9	state	2016	Aug	2018	147.92
9	state	2016	Dec	2018	145
9	state	2016	Feb	2018	187.63
9	state	2016	Jan	2018	175.38
9	state	2016	Jul	2018	145.56
9	state	2016	Jun	2018	145.75
9	state	2016	Mar	2018	174.5
9	state	2016	May	2018	151.58
9	state	2016	Nov	2018	147.55
9	state	2016	Oct	2018	149.22
9	state	2016	Sep	2018	150
9	state	2016	Apr	2019	147.41
9	state	2016	Feb	2019	145.07
9	state	2016	Jan	2019	144.69
9	state	2016	Mar	2019	146.5
9	state	2016	May	2019	145.78
10	state	2016	Jan	2016	98.5
10	state	2016	Apr	2017	145.9
10	state	2016	Aug	2017	144.7
10	state	2016	Dec	2017	175
10	state	2016	Jul	2017	145
10	state	2016	Jun	2017	145.8
10	state	2016	Mar	2017	145
10	state	2016	May	2017	145
10	state	2016	Nov	2017	145.86
10	state	2016	Oct	2017	145
10	state	2016	Sep	2017	144.6
10	state	2016	Apr	2018	146.67
10	state	2016	Aug	2018	145
10	state	2016	Dec	2018	145
10	state	2016	Feb	2018	170.71
10	state	2016	Jan	2018	202.65
10	state	2016	Jul	2018	145
10	state	2016	Jun	2018	145
10	state	2016	Mar	2018	171.5
10	state	2016	May	2018	147.69
10	state	2016	Nov	2018	144.82
10	state	2016	Oct	2018	150.67
10	state	2016	Sep	2018	150.92
10	state	2016	Apr	2019	145.27
10	state	2016	Feb	2019	145.38
10	state	2016	Jan	2019	144.85
10	state	2016	Mar	2019	145
10	state	2016	May	2019	144.73
11	state	2016	Jan	2016	132.1
11	state	2016	Apr	2017	157.5
11	state	2016	Aug	2017	144.3
11	state	2016	Dec	2017	162.5
11	state	2016	Jul	2017	147.9
11	state	2016	Jun	2017	156.4
11	state	2016	Mar	2017	152.1
11	state	2016	May	2017	152.5
11	state	2016	Nov	2017	148.57
11	state	2016	Oct	2017	148.57
11	state	2016	Sep	2017	145.5
11	state	2016	Apr	2018	147.86
11	state	2016	Aug	2018	146.14
11	state	2016	Dec	2018	145.14
11	state	2016	Feb	2018	178.13
11	state	2016	Jan	2018	220.65
11	state	2016	Jul	2018	145.88
11	state	2016	Jun	2018	146.14
11	state	2016	Mar	2018	160.83
11	state	2016	May	2018	146.14
11	state	2016	Nov	2018	145.18
11	state	2016	Oct	2018	146.57
11	state	2016	Sep	2018	145.86
11	state	2016	Apr	2019	146.14
11	state	2016	Feb	2019	145.59
11	state	2016	Jan	2019	145.31
11	state	2016	Mar	2019	145.14
11	state	2016	May	2019	146.25
12	state	2016	Jan	2016	100.3
12	state	2016	Apr	2017	150.3
12	state	2016	Aug	2017	144.8
12	state	2016	Dec	2017	170
12	state	2016	Jul	2017	145
12	state	2016	Jun	2017	145
12	state	2016	Mar	2017	149.6
12	state	2016	May	2017	145.3
12	state	2016	Nov	2017	145.75
12	state	2016	Oct	2017	145.06
12	state	2016	Sep	2017	144.9
12	state	2016	Apr	2018	152.11
12	state	2016	Aug	2018	145
12	state	2016	Dec	2018	145
12	state	2016	Feb	2018	190.31
12	state	2016	Jan	2018	220
12	state	2016	Jul	2018	145
12	state	2016	Jun	2018	145
12	state	2016	Mar	2018	172.11
12	state	2016	May	2018	145.36
12	state	2016	Nov	2018	145
12	state	2016	Oct	2018	145
12	state	2016	Sep	2018	145
12	state	2016	Apr	2019	145
12	state	2016	Feb	2019	145.33
12	state	2016	Jan	2019	145.25
12	state	2016	Mar	2019	144.77
12	state	2016	May	2019	145
13	state	2016	Jan	2016	106.1
13	state	2016	Apr	2017	145
13	state	2016	Aug	2017	144.7
13	state	2016	Dec	2017	146
13	state	2016	Jul	2017	145
13	state	2016	Jun	2017	145
13	state	2016	Mar	2017	145
13	state	2016	May	2017	145
13	state	2016	Nov	2017	146.17
13	state	2016	Oct	2017	143.73
13	state	2016	Sep	2017	143.1
13	state	2016	Apr	2018	145
13	state	2016	Aug	2018	144.23
13	state	2016	Dec	2018	145.29
13	state	2016	Feb	2018	181.18
13	state	2016	Jan	2018	160.24
13	state	2016	Jul	2018	145
13	state	2016	Jun	2018	145.32
13	state	2016	Mar	2018	173.89
13	state	2016	May	2018	147.71
13	state	2016	Nov	2018	145.47
13	state	2016	Oct	2018	144.65
13	state	2016	Sep	2018	145.94
13	state	2016	Apr	2019	145
13	state	2016	Feb	2019	143.47
13	state	2016	Jan	2019	144
13	state	2016	Mar	2019	145
13	state	2016	May	2019	144.45
14	state	2016	Jan	2016	128.3
14	state	2016	Apr	2017	152.9
14	state	2016	Aug	2017	145
14	state	2016	Dec	2017	200.5
14	state	2016	Jul	2017	149
14	state	2016	Jun	2017	154.5
14	state	2016	Mar	2017	154.5
14	state	2016	May	2017	152
14	state	2016	Nov	2017	145
14	state	2016	Oct	2017	147.17
14	state	2016	Sep	2017	145.8
14	state	2016	Apr	2018	148.91
14	state	2016	Aug	2018	146.78
14	state	2016	Dec	2018	145.24
14	state	2016	Feb	2018	163.86
14	state	2016	Jan	2018	183.12
14	state	2016	Jul	2018	149.44
14	state	2016	Jun	2018	153.05
14	state	2016	Mar	2018	169.13
14	state	2016	May	2018	150.3
14	state	2016	Nov	2018	147.29
14	state	2016	Oct	2018	146.52
14	state	2016	Sep	2018	153.88
14	state	2016	Apr	2019	146.17
14	state	2016	Feb	2019	145.31
14	state	2016	Jan	2019	145.27
14	state	2016	Mar	2019	145.41
14	state	2016	May	2019	143.55
15	state	2016	Jan	2016	99.6
15	state	2016	Apr	2017	145
15	state	2016	Aug	2017	143.5
15	state	2016	Dec	2017	146.53
15	state	2016	Jul	2017	145
15	state	2016	Jun	2017	145
15	state	2016	Mar	2017	145
15	state	2016	May	2017	145
15	state	2016	Nov	2017	144
15	state	2016	Oct	2017	144
15	state	2016	Sep	2017	142
15	state	2016	Apr	2018	144.95
15	state	2016	Aug	2018	144.6
15	state	2016	Dec	2018	144.95
15	state	2016	Feb	2018	145
15	state	2016	Jan	2018	160
15	state	2016	Jul	2018	145
15	state	2016	Jun	2018	144.5
15	state	2016	Mar	2018	145
15	state	2016	May	2018	144.96
15	state	2016	Nov	2018	144.4
15	state	2016	Oct	2018	144.56
15	state	2016	Sep	2018	144
15	state	2016	Apr	2019	144.67
15	state	2016	Feb	2019	144.5
15	state	2016	Jan	2019	144.2
15	state	2016	Mar	2019	144
15	state	2016	May	2019	144
16	state	2016	Jan	2016	99.9
16	state	2016	Apr	2017	152.7
16	state	2016	Aug	2017	144
16	state	2016	Dec	2017	160
16	state	2016	Jul	2017	152.7
16	state	2016	Jun	2017	167.5
16	state	2016	Mar	2017	145
16	state	2016	May	2017	172.5
16	state	2016	Nov	2017	145
16	state	2016	Oct	2017	144.8
16	state	2016	Sep	2017	145
16	state	2016	Apr	2018	154.43
16	state	2016	Aug	2018	147.08
16	state	2016	Dec	2018	150.2
16	state	2016	Feb	2018	153.5
16	state	2016	Jan	2018	157.73
16	state	2016	Jul	2018	142.79
16	state	2016	Jun	2018	150.25
16	state	2016	Mar	2018	154.13
16	state	2016	May	2018	153.67
16	state	2016	Nov	2018	154.72
16	state	2016	Oct	2018	151.25
16	state	2016	Sep	2018	150.1
16	state	2016	Apr	2019	145.58
16	state	2016	Feb	2019	144.63
16	state	2016	Jan	2019	145.87
16	state	2016	Mar	2019	145.92
16	state	2016	May	2019	141.08
17	state	2016	Jan	2016	131
17	state	2016	Apr	2017	148.9
17	state	2016	Aug	2017	143.4
17	state	2016	Dec	2017	160.59
17	state	2016	Jul	2017	147.4
17	state	2016	Jun	2017	147.6
17	state	2016	Mar	2017	149.5
17	state	2016	May	2017	148.8
17	state	2016	Nov	2017	144.4
17	state	2016	Oct	2017	147.75
17	state	2016	Sep	2017	145.1
17	state	2016	Apr	2018	149.4
17	state	2016	Aug	2018	145.87
17	state	2016	Dec	2018	146.18
17	state	2016	Feb	2018	200.83
17	state	2016	Jan	2018	172.92
17	state	2016	Jul	2018	150.87
17	state	2016	Jun	2018	149.77
17	state	2016	Mar	2018	173.86
17	state	2016	May	2018	149.5
17	state	2016	Nov	2018	142.5
17	state	2016	Oct	2018	145.43
17	state	2016	Sep	2018	146.43
17	state	2016	Apr	2019	146.47
17	state	2016	Feb	2019	143.18
17	state	2016	Jan	2019	145.62
17	state	2016	Mar	2019	145.71
17	state	2016	May	2019	145.68
18	state	2016	Jan	2016	104.7
18	state	2016	Apr	2017	145.6
18	state	2016	Aug	2017	143.9
18	state	2016	Dec	2017	165
18	state	2016	Jul	2017	145.7
18	state	2016	Jun	2017	145.8
18	state	2016	Mar	2017	148.3
18	state	2016	May	2017	147.3
18	state	2016	Nov	2017	145.5
18	state	2016	Oct	2017	143.8
18	state	2016	Sep	2017	145.2
18	state	2016	Apr	2018	160.46
18	state	2016	Aug	2018	145.25
18	state	2016	Dec	2018	144.21
18	state	2016	Feb	2018	150.14
18	state	2016	Jan	2018	200.26
18	state	2016	Jul	2018	146.29
18	state	2016	Jun	2018	146.29
18	state	2016	Mar	2018	180.93
18	state	2016	May	2018	154
18	state	2016	Nov	2018	144.29
18	state	2016	Oct	2018	144.29
18	state	2016	Sep	2018	150
18	state	2016	Apr	2019	145
18	state	2016	Feb	2019	145.29
18	state	2016	Jan	2019	145.69
18	state	2016	Mar	2019	144.94
18	state	2016	May	2019	145
19	state	2016	Jan	2016	95.7
19	state	2016	Apr	2017	145
19	state	2016	Aug	2017	144.8
19	state	2016	Dec	2017	162.81
19	state	2016	Jul	2017	145
19	state	2016	Jun	2017	148.8
19	state	2016	Mar	2017	153
19	state	2016	May	2017	148.7
19	state	2016	Nov	2017	145
19	state	2016	Oct	2017	144.83
19	state	2016	Sep	2017	145.5
19	state	2016	Apr	2018	153.85
19	state	2016	Aug	2018	151.48
19	state	2016	Dec	2018	145.25
19	state	2016	Feb	2018	165.86
19	state	2016	Jan	2018	215.91
19	state	2016	Jul	2018	150.75
19	state	2016	Jun	2018	150.75
19	state	2016	Mar	2018	147.29
19	state	2016	May	2018	150.81
19	state	2016	Nov	2018	156.75
19	state	2016	Oct	2018	150.75
19	state	2016	Sep	2018	150.53
19	state	2016	Apr	2019	144.69
19	state	2016	Feb	2019	146.08
19	state	2016	Jan	2019	146.22
19	state	2016	Mar	2019	144.44
19	state	2016	May	2019	144.8
20	state	2016	Jan	2016	99.1
20	state	2016	Apr	2017	147.9
20	state	2016	Aug	2017	144.2
20	state	2016	Dec	2017	165
20	state	2016	Jul	2017	145
20	state	2016	Jun	2017	145.3
20	state	2016	Mar	2017	145
20	state	2016	May	2017	145.4
20	state	2016	Nov	2017	144.93
20	state	2016	Oct	2017	144.27
20	state	2016	Sep	2017	144.6
20	state	2016	Apr	2018	145.16
20	state	2016	Aug	2018	144.89
20	state	2016	Dec	2018	144.87
20	state	2016	Feb	2018	155
20	state	2016	Jan	2018	182.14
20	state	2016	Jul	2018	144.78
20	state	2016	Jun	2018	145.79
20	state	2016	Mar	2018	147.19
20	state	2016	May	2018	144.87
20	state	2016	Nov	2018	147.79
20	state	2016	Oct	2018	145.79
20	state	2016	Sep	2018	144.87
20	state	2016	Apr	2019	145.35
20	state	2016	Feb	2019	145
20	state	2016	Jan	2019	145
20	state	2016	Mar	2019	145.21
20	state	2016	May	2019	145.35
21	state	2016	Jan	2016	95.5
21	state	2016	Apr	2017	145.8
21	state	2016	Aug	2017	144.4
21	state	2016	Dec	2017	160
21	state	2016	Jul	2017	145
21	state	2016	Jun	2017	150.3
21	state	2016	Mar	2017	145.9
21	state	2016	May	2017	145
21	state	2016	Nov	2017	144.08
21	state	2016	Oct	2017	143.73
21	state	2016	Sep	2017	144.1
21	state	2016	Apr	2018	147.83
21	state	2016	Aug	2018	144.08
21	state	2016	Dec	2018	144.31
21	state	2016	Feb	2018	160.15
21	state	2016	Jan	2018	209.32
21	state	2016	Jul	2018	144
21	state	2016	Jun	2018	144.95
21	state	2016	Mar	2018	156.67
21	state	2016	May	2018	144.82
21	state	2016	Nov	2018	144.45
21	state	2016	Oct	2018	144.45
21	state	2016	Sep	2018	143.63
21	state	2016	Apr	2019	143.5
21	state	2016	Feb	2019	145
21	state	2016	Jan	2019	145
21	state	2016	Mar	2019	145.23
21	state	2016	May	2019	142.5
22	state	2016	Jan	2016	117.1
22	state	2016	Apr	2017	160.5
22	state	2016	Aug	2017	145
22	state	2016	Dec	2017	210.08
22	state	2016	Jul	2017	145
22	state	2016	Jun	2017	157.1
22	state	2016	Mar	2017	153.8
22	state	2016	May	2017	157.9
22	state	2016	Nov	2017	145
22	state	2016	Oct	2017	148.55
22	state	2016	Sep	2017	145.6
22	state	2016	Apr	2018	163.71
22	state	2016	Aug	2018	152.94
22	state	2016	Dec	2018	146.15
22	state	2016	Feb	2018	200.25
22	state	2016	Jan	2018	181.33
22	state	2016	Jul	2018	148.42
22	state	2016	Jun	2018	158.24
22	state	2016	Mar	2018	177.65
22	state	2016	May	2018	152.22
22	state	2016	Nov	2018	158.24
22	state	2016	Oct	2018	155.24
22	state	2016	Sep	2018	150
22	state	2016	Apr	2019	147.07
22	state	2016	Feb	2019	145.56
22	state	2016	Jan	2019	146
22	state	2016	Mar	2019	146.75
22	state	2016	May	2019	146
23	state	2016	Jan	2016	127.1
23	state	2016	Apr	2017	146.5
23	state	2016	Aug	2017	144.6
23	state	2016	Dec	2017	200
23	state	2016	Jul	2017	146.7
23	state	2016	Jun	2017	148.9
23	state	2016	Mar	2017	154
23	state	2016	May	2017	148.9
23	state	2016	Nov	2017	145
23	state	2016	Oct	2017	146.67
23	state	2016	Sep	2017	144.6
23	state	2016	Apr	2018	160.79
23	state	2016	Aug	2018	150.13
23	state	2016	Dec	2018	146.67
23	state	2016	Feb	2018	194.81
23	state	2016	Jan	2018	152.83
23	state	2016	Jul	2018	148.89
23	state	2016	Jun	2018	150.91
23	state	2016	Mar	2018	163.33
23	state	2016	May	2018	159.17
23	state	2016	Nov	2018	147.86
23	state	2016	Oct	2018	148.33
23	state	2016	Sep	2018	147.15
23	state	2016	Apr	2019	147.88
23	state	2016	Feb	2019	145.5
23	state	2016	Jan	2019	145.82
23	state	2016	Mar	2019	146.09
23	state	2016	May	2019	146
24	state	2016	Jan	2016	112.6
24	state	2016	Apr	2017	148.8
24	state	2016	Aug	2017	145
24	state	2016	Dec	2017	170
24	state	2016	Jul	2017	145.9
24	state	2016	Jun	2017	145.5
24	state	2016	Mar	2017	145
24	state	2016	May	2017	153
24	state	2016	Nov	2017	145
24	state	2016	Oct	2017	145.75
24	state	2016	Sep	2017	144.1
24	state	2016	Apr	2018	145
24	state	2016	Aug	2018	152.86
24	state	2016	Dec	2018	146.11
24	state	2016	Feb	2018	156.25
24	state	2016	Jan	2018	206.18
24	state	2016	Jul	2018	147.22
24	state	2016	Jun	2018	145.83
24	state	2016	Mar	2018	160
24	state	2016	May	2018	145.73
24	state	2016	Nov	2018	145.33
24	state	2016	Oct	2018	150.89
24	state	2016	Sep	2018	145.71
24	state	2016	Apr	2019	146.86
24	state	2016	Feb	2019	145.38
24	state	2016	Jan	2019	145.62
24	state	2016	Mar	2019	144.78
24	state	2016	May	2019	146.14
25	state	2016	Jan	2016	91.1
25	state	2016	Apr	2017	147.9
25	state	2016	Aug	2017	143.3
25	state	2016	Dec	2017	149.87
25	state	2016	Jul	2017	145.3
25	state	2016	Jun	2017	145.7
25	state	2016	Mar	2017	147.5
25	state	2016	May	2017	145
25	state	2016	Nov	2017	144.33
25	state	2016	Oct	2017	144.33
25	state	2016	Sep	2017	143.2
25	state	2016	Apr	2018	148.1
25	state	2016	Aug	2018	145
25	state	2016	Dec	2018	145
25	state	2016	Feb	2018	145
25	state	2016	Jan	2018	161.43
25	state	2016	Jul	2018	145.81
25	state	2016	Jun	2018	144.91
25	state	2016	Mar	2018	155.25
25	state	2016	May	2018	145.81
25	state	2016	Nov	2018	145.05
25	state	2016	Oct	2018	145
25	state	2016	Sep	2018	147.38
25	state	2016	Apr	2019	145
25	state	2016	Feb	2019	144.88
25	state	2016	Jan	2019	144.87
25	state	2016	Mar	2019	145
25	state	2016	May	2019	144.9
26	state	2016	Jan	2016	120.5
26	state	2016	Apr	2017	149.7
26	state	2016	Aug	2017	143
26	state	2016	Dec	2017	180
26	state	2016	Jul	2017	149.4
26	state	2016	Jun	2017	146.1
26	state	2016	Mar	2017	145.9
26	state	2016	May	2017	148.1
26	state	2016	Nov	2017	144
26	state	2016	Oct	2017	145.67
26	state	2016	Sep	2017	145
26	state	2016	Apr	2018	145.92
26	state	2016	Aug	2018	146.23
26	state	2016	Dec	2018	145.36
26	state	2016	Feb	2018	150.17
26	state	2016	Jan	2018	168.13
26	state	2016	Jul	2018	145.71
26	state	2016	Jun	2018	145.14
26	state	2016	Mar	2018	165.53
26	state	2016	May	2018	145.25
26	state	2016	Nov	2018	147.87
26	state	2016	Oct	2018	145.79
26	state	2016	Sep	2018	147.14
26	state	2016	Apr	2019	146.83
26	state	2016	Feb	2019	145.26
26	state	2016	Jan	2019	145
26	state	2016	Mar	2019	146.33
26	state	2016	May	2019	145.46
27	state	2016	Jan	2016	112.3
27	state	2016	Apr	2017	147
27	state	2016	Aug	2017	144.3
27	state	2016	Dec	2017	170
27	state	2016	Jul	2017	148.4
27	state	2016	Jun	2017	148.7
27	state	2016	Mar	2017	149.4
27	state	2016	May	2017	145.6
27	state	2016	Nov	2017	145.5
27	state	2016	Oct	2017	145
27	state	2016	Sep	2017	144.3
27	state	2016	Apr	2018	145.56
27	state	2016	Aug	2018	146
27	state	2016	Dec	2018	147.27
27	state	2016	Feb	2018	155
27	state	2016	Jan	2018	176.11
27	state	2016	Jul	2018	147.27
27	state	2016	Jun	2018	147.27
27	state	2016	Mar	2018	165.38
27	state	2016	May	2018	145.88
27	state	2016	Nov	2018	146.8
27	state	2016	Oct	2018	145.5
27	state	2016	Sep	2018	145.73
27	state	2016	Apr	2019	145.91
27	state	2016	Feb	2019	145.43
27	state	2016	Jan	2019	145.38
27	state	2016	Mar	2019	144.92
27	state	2016	May	2019	146.11
28	state	2016	Jan	2016	92.5
28	state	2016	Apr	2017	145
28	state	2016	Aug	2017	143.5
28	state	2016	Dec	2017	168
28	state	2016	Jul	2017	145
28	state	2016	Jun	2017	145
28	state	2016	Mar	2017	144.9
28	state	2016	May	2017	145
28	state	2016	Nov	2017	144.73
28	state	2016	Oct	2017	144.56
28	state	2016	Sep	2017	142.9
28	state	2016	Apr	2018	145.31
28	state	2016	Aug	2018	146.13
28	state	2016	Dec	2018	145
28	state	2016	Feb	2018	147.06
28	state	2016	Jan	2018	203.25
28	state	2016	Jul	2018	147.19
28	state	2016	Jun	2018	147.19
28	state	2016	Mar	2018	169.41
28	state	2016	May	2018	146.94
28	state	2016	Nov	2018	145.07
28	state	2016	Oct	2018	144.87
28	state	2016	Sep	2018	148.05
28	state	2016	Apr	2019	145
28	state	2016	Feb	2019	143.06
28	state	2016	Jan	2019	144.44
28	state	2016	Mar	2019	145
28	state	2016	May	2019	145.12
29	state	2016	Jan	2016	120.1
29	state	2016	Apr	2017	145.2
29	state	2016	Aug	2017	143.3
29	state	2016	Dec	2017	160
29	state	2016	Jul	2017	145
29	state	2016	Jun	2017	145.3
29	state	2016	Mar	2017	146.3
29	state	2016	May	2017	145.3
29	state	2016	Nov	2017	144.9
29	state	2016	Oct	2017	145.59
29	state	2016	Sep	2017	142.9
29	state	2016	Apr	2018	145.95
29	state	2016	Aug	2018	145.78
29	state	2016	Dec	2018	145.88
29	state	2016	Feb	2018	187.05
29	state	2016	Jan	2018	219.38
29	state	2016	Jul	2018	146.76
29	state	2016	Jun	2018	145.55
29	state	2016	Mar	2018	162.38
29	state	2016	May	2018	145.33
29	state	2016	Nov	2018	145.15
29	state	2016	Oct	2018	145.32
29	state	2016	Sep	2018	145.73
29	state	2016	Apr	2019	145.5
29	state	2016	Feb	2019	145.63
29	state	2016	Jan	2019	144
29	state	2016	Mar	2019	145.18
29	state	2016	May	2019	145.11
30	state	2016	Jan	2016	100.5
30	state	2016	Apr	2017	145
30	state	2016	Aug	2017	145
30	state	2016	Dec	2017	168
30	state	2016	Jul	2017	145
30	state	2016	Jun	2017	145
30	state	2016	Mar	2017	145
30	state	2016	May	2017	145
30	state	2016	Nov	2017	144.33
30	state	2016	Oct	2017	144.47
30	state	2016	Sep	2017	142.8
30	state	2016	Apr	2018	145.86
30	state	2016	Aug	2018	144.67
30	state	2016	Dec	2018	145
30	state	2016	Feb	2018	154.33
30	state	2016	Jan	2018	228.89
30	state	2016	Jul	2018	144.8
30	state	2016	Jun	2018	145.85
30	state	2016	Mar	2018	145.44
30	state	2016	May	2018	145
30	state	2016	Nov	2018	145.23
30	state	2016	Oct	2018	145
30	state	2016	Sep	2018	147.43
30	state	2016	Apr	2019	145
30	state	2016	Feb	2019	145.89
30	state	2016	Jan	2019	148.83
30	state	2016	Mar	2019	145
30	state	2016	May	2019	145.53
31	state	2016	Jan	2016	91.5
31	state	2016	Apr	2017	145.3
31	state	2016	Aug	2017	143.2
31	state	2016	Dec	2017	167.5
31	state	2016	Jul	2017	146.1
31	state	2016	Jun	2017	145.5
31	state	2016	Mar	2017	145.7
31	state	2016	May	2017	145.3
31	state	2016	Nov	2017	145.13
31	state	2016	Oct	2017	144.31
31	state	2016	Sep	2017	143.3
31	state	2016	Apr	2018	145.11
31	state	2016	Aug	2018	144.28
31	state	2016	Dec	2018	145.56
31	state	2016	Feb	2018	165
31	state	2016	Jan	2018	199.17
31	state	2016	Jul	2018	144.72
31	state	2016	Jun	2018	144.3
31	state	2016	Mar	2018	149.12
31	state	2016	May	2018	145
31	state	2016	Nov	2018	144.89
31	state	2016	Oct	2018	144.5
31	state	2016	Sep	2018	145.79
31	state	2016	Apr	2019	145.25
31	state	2016	Feb	2019	146.5
31	state	2016	Jan	2019	150.5
31	state	2016	Mar	2019	145
31	state	2016	May	2019	144.65
32	state	2016	Jan	2016	147.5
32	state	2016	Apr	2017	146.5
32	state	2016	Aug	2017	146.4
32	state	2016	Dec	2017	170
32	state	2016	Jul	2017	145.8
32	state	2016	Jun	2017	148.5
32	state	2016	Mar	2017	149.6
32	state	2016	May	2017	145.6
32	state	2016	Nov	2017	143.6
32	state	2016	Oct	2017	145.11
32	state	2016	Sep	2017	145.3
32	state	2016	Apr	2018	145
32	state	2016	Aug	2018	145
32	state	2016	Dec	2018	145
32	state	2016	Feb	2018	174.56
32	state	2016	Jan	2018	214.23
32	state	2016	Jul	2018	145
32	state	2016	Jun	2018	146.67
32	state	2016	Mar	2018	157.86
32	state	2016	May	2018	145.75
32	state	2016	Nov	2018	146.67
32	state	2016	Oct	2018	145
32	state	2016	Sep	2018	145.66
32	state	2016	Apr	2019	145.43
32	state	2016	Feb	2019	146.55
32	state	2016	Jan	2019	146.42
32	state	2016	Mar	2019	144.43
32	state	2016	May	2019	145.71
33	state	2016	Jan	2016	102.5
33	state	2016	Apr	2017	149.6
33	state	2016	Aug	2017	145.8
33	state	2016	Dec	2017	160
33	state	2016	Jul	2017	146
33	state	2016	Jun	2017	145.6
33	state	2016	Mar	2017	151.3
33	state	2016	May	2017	157.4
33	state	2016	Nov	2017	147
33	state	2016	Oct	2017	145.35
33	state	2016	Sep	2017	145.6
33	state	2016	Apr	2018	155.94
33	state	2016	Aug	2018	145
33	state	2016	Dec	2018	145
33	state	2016	Feb	2018	194.75
33	state	2016	Jan	2018	197.5
33	state	2016	Jul	2018	145.26
33	state	2016	Jun	2018	148.58
33	state	2016	Mar	2018	165.94
33	state	2016	May	2018	150.91
33	state	2016	Nov	2018	145
33	state	2016	Oct	2018	145
33	state	2016	Sep	2018	145
33	state	2016	Apr	2019	145.56
33	state	2016	Feb	2019	144.71
33	state	2016	Jan	2019	145.35
33	state	2016	Mar	2019	145.38
33	state	2016	May	2019	145.31
34	state	2016	Jan	2016	110.5
34	state	2016	Apr	2017	150
34	state	2016	Aug	2017	145.3
34	state	2016	Dec	2017	168
34	state	2016	Jul	2017	145
34	state	2016	Jun	2017	150.7
34	state	2016	Mar	2017	152.9
34	state	2016	May	2017	157.9
34	state	2016	Nov	2017	145.88
34	state	2016	Oct	2017	146
34	state	2016	Sep	2017	143.6
34	state	2016	Apr	2018	158.33
34	state	2016	Aug	2018	145
34	state	2016	Dec	2018	144.43
34	state	2016	Feb	2018	180.33
34	state	2016	Jan	2018	205.83
34	state	2016	Jul	2018	145
34	state	2016	Jun	2018	154.2
34	state	2016	Mar	2018	162.86
34	state	2016	May	2018	158.57
34	state	2016	Nov	2018	144.2
34	state	2016	Oct	2018	144.2
34	state	2016	Sep	2018	145
34	state	2016	Apr	2019	145.71
34	state	2016	Feb	2019	145.43
34	state	2016	Jan	2019	145.14
34	state	2016	Mar	2019	145.83
34	state	2016	May	2019	145.71
35	state	2016	Jan	2016	120.7
35	state	2016	Apr	2017	158.6
35	state	2016	Aug	2017	145
35	state	2016	Dec	2017	166.11
35	state	2016	Jul	2017	157.7
35	state	2016	Jun	2017	156.3
35	state	2016	Mar	2017	148
35	state	2016	May	2017	162
35	state	2016	Nov	2017	146.66
35	state	2016	Oct	2017	145
35	state	2016	Sep	2017	146.1
35	state	2016	Apr	2018	156
35	state	2016	Aug	2018	150.29
35	state	2016	Dec	2018	150.27
35	state	2016	Feb	2018	201.29
35	state	2016	Jan	2018	164.44
35	state	2016	Jul	2018	151.82
35	state	2016	Jun	2018	150.88
35	state	2016	Mar	2018	184.38
35	state	2016	May	2018	153.89
35	state	2016	Nov	2018	155.46
35	state	2016	Oct	2018	153
35	state	2016	Sep	2018	152.86
35	state	2016	Apr	2019	147
35	state	2016	Feb	2019	150.55
35	state	2016	Jan	2019	150
35	state	2016	Mar	2019	147
35	state	2016	May	2019	145.56
36	state	2016	Jan	2016	96.8
36	state	2016	Apr	2017	158.3
36	state	2016	Aug	2017	145.3
36	state	2016	Dec	2017	166
36	state	2016	Jul	2017	170
36	state	2016	Jun	2017	168
36	state	2016	Mar	2017	161.7
36	state	2016	May	2017	156.4
36	state	2016	Nov	2017	145.75
36	state	2016	Oct	2017	152.5
36	state	2016	Sep	2017	149.7
36	state	2016	Apr	2018	154.17
36	state	2016	Aug	2018	146.25
36	state	2016	Dec	2018	143.33
36	state	2016	Feb	2018	196.11
36	state	2016	Jan	2018	171
36	state	2016	Jul	2018	148.75
36	state	2016	Jun	2018	146.25
36	state	2016	Mar	2018	166.67
36	state	2016	May	2018	153.33
36	state	2016	Nov	2018	150.77
36	state	2016	Oct	2018	146.25
36	state	2016	Sep	2018	146.25
36	state	2016	Apr	2019	147.82
36	state	2016	Feb	2019	145.08
36	state	2016	Jan	2019	145.73
36	state	2016	Mar	2019	147.55
36	state	2016	May	2019	145.64
37	state	2016	Jan	2016	91.6
37	state	2016	Apr	2017	145.3
37	state	2016	Aug	2017	145.4
37	state	2016	Dec	2017	170
37	state	2016	Jul	2017	145.9
37	state	2016	Jun	2017	146.3
37	state	2016	Mar	2017	147
37	state	2016	May	2017	146.8
37	state	2016	Nov	2017	144.7
37	state	2016	Oct	2017	144.94
37	state	2016	Sep	2017	144.2
37	state	2016	Apr	2018	158.14
37	state	2016	Aug	2018	148.14
37	state	2016	Dec	2018	146.63
37	state	2016	Feb	2018	155
37	state	2016	Jan	2018	159.12
37	state	2016	Jul	2018	147.72
37	state	2016	Jun	2018	147.72
37	state	2016	Mar	2018	152.35
37	state	2016	May	2018	154.12
37	state	2016	Nov	2018	147.72
37	state	2016	Oct	2018	147.72
37	state	2016	Sep	2018	147.1
37	state	2016	Apr	2019	144.43
37	state	2016	Feb	2019	145.5
37	state	2016	Jan	2019	144.56
37	state	2016	Mar	2019	144.39
37	state	2016	May	2019	144.43
\.


--
-- Name: petroleum_motor_spirit_price petroleum_motor_spirit_price_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.petroleum_motor_spirit_price
    ADD CONSTRAINT petroleum_motor_spirit_price_pkey PRIMARY KEY (geo_level, geo_code, geo_version, month, year);


--
-- PostgreSQL database dump complete
--

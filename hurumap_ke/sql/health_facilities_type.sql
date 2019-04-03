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

ALTER TABLE IF EXISTS ONLY public.health_facilities_type DROP CONSTRAINT IF EXISTS health_facilities_type_pkey;
DROP TABLE IF EXISTS public.health_facilities_type;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: health_facilities_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.health_facilities_type (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    type character varying(128) NOT NULL,
    total integer NOT NULL
);


--
-- Data for Name: health_facilities_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.health_facilities_type (geo_level, geo_code, type, total) FROM stdin;
country	KE	Stand Alone VCT Centre	174
country	KE	Health Training Institution	7
country	KE	Sub District Hospital	137
country	KE	Rural Health Training Centre	1
country	KE	Regional Blood Transfusion Centre	2
country	KE	Radiology Unit	9
country	KE	Provincial General Hospital	9
country	KE	Other Hospital	246
country	KE	Nursing Hospital	199
country	KE	Unlisted	23
country	KE	National Referral Hospital	3
country	KE	Medical Clinic	3183
country	KE	Medical Centre	29
country	KE	Maternity Home	49
country	KE	Stand Alone Labs	57
country	KE	Health Project	8
country	KE	Health Programme	14
country	KE	Health Centre	1107
country	KE	Stand Alone Funeral Home	1
country	KE	Eye Clinic	3
country	KE	Eye Centre	10
country	KE	District Hospital	138
country	KE	District Health Office	4
country	KE	Dispensary	4624
country	KE	Dental Clinic	30
country	KE	Blood Bank	1
county	30	Dispensary	188
county	30	District Hospital	4
county	30	Health Centre	21
county	30	Medical Clinic	13
county	30	Nursing Home	1
county	30	Other Hospital	2
county	30	Sub District Hospital	1
county	30	Health Training Institution	1
county	30	Stand Alone VCT Centre	1
county	36	Dispensary	112
county	36	District Health Office	1
county	36	District Hospital	1
county	36	Health Centre 	15
county	36	Medical Clinic	2
county	36	Other Hospital	2
county	36	Sub District Hospital	2
county	36	Stand Alone VCT Centre	3
county	39	Dispensary	98
county	39	District Hospital	6
county	39	Health Centre	18
county	39	Stand Alone Labs	1
county	39	Medical Clinic	37
county	39	Other Hospital	1
county	39	Sub District Hospital	5
county	39	Stand Alone VCT Centre	1
county	40	Dispensary	54
county	40	District Hospital	5
county	40	Health Centre	14
county	40	Medical Clinic	17
county	40	Nursing Home	4
county	40	Other Hospital	1
county	40	Sub District Hospital	1
county	40	VCT Centre	1
county	28	Dispensary	90
county	28	District Hospital	2
county	28	Health Centre	22
county	28	Medical Clinic	3
county	28	Other Hospital	2
county	28	Sub District Hospital	5
county	14	Dispensary	93
county	14	District Health Office	1
county	14	District Hospital	2
county	14	Health Centre	13
county	14	Maternity Home	1
county	14	Medical Clinic	50
county	14	Nursing Home	3
county	14	Other Hospital	4
county	14	Provincial General Hospital	1
county	14	Regional Blood Transfusion Centre	1
county	14	Sub District Hospital	2
county	14	Health Training Institution  	1
county	14	Stand Alone VCT Centre 	0
county	7	Dispensary	62
county	7	District Hospital	3
county	7	Health Centre	22
county	7	Medical Centre	1
county	7	Medical Clinic	54
county	7	Nursing Home	6
county	7	Other Hospital	6
county	7	Provincial General Hospital	1
county	7	Sub District Hospital	4
county	43	Dispensary	123
county	43	District Hospital	5
county	43	Health Centre	48
county	43	Medical Centre	1
county	43	Medical Clinic	20
county	43	Nursing Home	6
county	43	Other Hospital	1
county	43	Sub District Hospital	7
county	43	Stand Alone VCT Centre	15
county	11	Dispensary	37
county	11	District Hospital	2
county	11	Health Centre	5
county	11	Medical Clinic	3
county	11	Nursing Home	2
county	11	Other Hospital	1
county	34	Dental Clinic	5
county	34	Dispensary	91
county	34	District Hospital	2
county	34	Health Centre	28
county	34	Health Project	1
county	34	Stand Alone Labs	1
county	34	Maternity Home	3
county	34	Medical Centre	1
county	34	Medical Clinic	143
county	34	Nursing Home	11
county	34	Other Hospital	9
county	34	Radiology Unit	1
county	34	Sub District Hospital	1
county	34	Stand Alone VCT Centre	5
county	37	Dispensary	120
county	37	District Hospital	4
county	37	Health Centre	48
county	37	Health Programme	1
county	37	Maternity Home	1
county	37	Medical Clinic	69
county	37	Nursing Home	9
county	37	Other Hospital	4
county	37	Provincial General Hospital	1
county	37	Sub District Hospital	7
county	37	Stand Alone VCT Centre	3
county	35	Dispensary	152
county	35	District Hospital	4
county	35	Health Centre	14
county	35	Medical Centre	1
county	35	Medical Clinic	10
county	35	Unlisted	1
county	35	Other Hospital	8
county	35	Sub District Hospital	3
county	35	Stand Alone VCT Centre	5
county	22	Dispensary	135
county	22	District Hospital	3
county	22	Health Centre	40
county	22	Health Programme	1
county	22	Maternity Home	3
county	22	Medical Centre	1
county	22	Medical Clinic	242
county	22	Nursing Home	11
county	22	Other Hospital	24
county	22	Provincial General Hospital	1
county	22	Sub District Hospital	4
county	22	Stand Alone VCT Centre	6
county	3	Dispensary	102
county	3	District Hospital	3
county	3	Health Centre	16
county	3	Medical Clinic	120
county	3	Nursing Home	6
county	3	Other Hospital	5
county	3	Sub District Hospital	2
county	3	Stand Alone VCT Centre	3
county	20	Dental Clinic	1
county	20	Dispensary	65
county	20	District Hospital	1
county	20	Eye Centre	2
county	20	Health Centre	25
county	20	Stand Alone Labs	19
county	20	Maternity Home	1
county	20	Medical Clinic	114
county	20	Unlisted	1
county	20	Nursing Home	9
county	20	Other Hospital	1
county	20	Radiology Unit	1
county	20	Sub District Hospital	3
county	45	Dispensary	85
county	45	District Hospital	8
county	45	Health Centre	27
county	45	Medical Clinic	22
county	45	Nursing Home	4
county	45	Other Hospital	7
county	45	Sub District Hospital	7
county	45	Stand Alone VCT Centre	1
county	42	Dispensary	92
county	42	District Hospital	3
county	42	Health Centre	32
county	42	Health Programme	1
county	42	Medical Clinic	34
county	42	Nursing Home	6
county	42	Other Hospital	12
county	42	Provincial General Hospital	1
county	42	Sub District Hospital	7
county	42	Stand Alone VCT Centre	1
county	15	Dispensary	269
county	15	District Hospital	3
county	15	Health Centre	37
county	15	Medical Centre	1
county	15	Medical Clinic	61
county	15	Nursing Home	13
county	15	Other Hospital	3
county	15	Sub District Hospital	8
county	2	Dispensary	68
county	2	District Hospital	3
county	2	Health Centre	10
county	2	Medical Clinic	28
county	2	Unlisted	1
county	2	Other Hospital	2
county	2	Stand Alone VCT Centre	3
county	31	Dispensary	65
county	31	District Hospital	3
county	31	Health Centre	9
county	31	Health Programme	1
county	31	Medical Centre	1
county	31	Medical Clinic	25
county	31	Unlisted	1
county	31	Nursing Home	2
county	31	Other Hospital	4
county	31	Sub District Hospital	1
county	31	Stand Alone VCT Centre	3
county	5	Dispensary	22
county	5	District Hospital	1
county	5	Health Centre	5
county	5	Medical Clinic	13
county	5	Nursing Home	1
county	5	Sub District Hospital	2
county	5	Stand Alone VCT Centre	1
county	16	Dispensary	151
county	16	District Hospital	5
county	16	Health Centre	31
county	16	Maternity Home	3
county	16	Medical Clinic	146
county	16	Unlisted	1
county	16	Nursing Home	3
county	16	Other Hospital	3
county	16	Provincial General Hospital	1
county	16	Stand Alone VCT Centre	9
county	17	Dispensary	170
county	17	District Hospital	4
county	17	Health Centre	26
county	17	Medical Centre	1
county	17	Medical Clinic	39
county	17	Nursing Home	5
county	17	Other Hospital	3
county	17	Sub District Hospital	6
county	17	Stand Alone VCT Centre	3
county	9	Dispensary	28
county	9	District Hospital	3
county	9	Health Centre	21
county	9	Medical Clinic	21
county	9	Nursing Home	9
county	9	Sub District Hospital	2
county	10	Dispensary	65
county	10	District Hospital	2
county	10	Health Centre	18
county	10	Stand Alone Labs	2
county	10	Medical Centre	1
county	10	Medical Clinic	21
county	10	Nursing Home	3
county	10	Other Hospital	2
county	12	Dental Clinic	3
county	12	Dispensary	144
county	12	District Health Office	1
county	12	District Hospital	5
county	12	Eye Centre	1
county	12	Eye Clinic	1
county	12	Stand Alone Funeral Home	1
county	12	Health Centre	28
county	12	Stand Alone Labs	9
county	12	Maternity Home	3
county	12	Medical Centre	3
county	12	Medical Clinic	218
county	12	Unlisted	14
county	12	Nursing Home	5
county	12	Other Hospital	10
county	12	Radiology Unit	2
county	12	Sub District Hospital	9
county	12	Health Training Institution	1
county	12	Stand Alone VCT Centre	2
county	44	Dispensary	112
county	44	District Hospital	4
county	44	Health Centre	25
county	44	Health Project	2
county	44	Maternity Home	1
county	44	Medical Clinic	42
county	44	Nursing Home	6
county	44	Other Hospital	8
county	44	Sub District Hospital	6
county	44	Stand Alone VCT Centre	7
county	1	Dispensary	43
county	1	District Hospital	2
county	1	Health Centre	12
county	1	Health Programme	1
county	1	Maternity Home	2
county	1	Medical Centre	1
county	1	Medical Clinic	220
county	1	Nursing Home	10
county	1	Other Hospital	16
county	1	Provincial General Hospital	1
county	1	Regional Blood Transfusion Centre	1
county	1	Stand Alone VCT Centre	9
county	21	Dispensary	130
county	21	District Hospital	2
county	21	Health Centre	17
county	21	Stand Alone Labs	1
county	21	Maternity Home	1
county	21	Medical Centre	1
county	21	Medical Clinic	118
county	21	Nursing Home	3
county	21	Other Hospital	3
county	21	Sub District Hospital	5
county	47	Dental Clinic	10
county	47	Dispensary	195
county	47	District Health Office	1
county	47	District Hospital	3
county	47	Eye Centre	2
county	47	Eye Clinic	1
county	47	Health Centre	90
county	47	Health Programme	5
county	47	Health Project	3
county	47	Stand Alone Labs	13
county	47	Maternity Home	15
county	47	Medical Centre	10
county	47	Medical Clinic	440
county	47	National Referral Hospital	2
county	47	Nursing Home	25
county	47	Other Hospital	39
county	47	Radiology Unit	1
county	47	Health Training Institution	3
county	47	Stand Alone VCT Centre	55
county	32	Dispensary	161
county	32	District Hospital	3
county	32	Health Centre	47
county	32	Health Project	2
county	32	Laboratory (Stand-alone)	1
county	32	Maternity Home	7
county	32	Medical Clinic	159
county	32	Unlisted	1
county	32	Nursing Home	12
county	32	Other Hospital	16
county	32	Provincial General Hospital	1
county	32	Sub District Hospital	3
county	32	Stand Alone VCT Centre	10
county	29	Dispensary	153
county	29	District Hospital	2
county	29	Health Centre	19
county	29	Health Programme	1
county	29	Medical Clinic	17
county	29	Other Hospital	2
county	29	Rural Health Training Centre	1
county	29	Sub District Hospital	3
county	29	Stand Alone VCT Centre	7
county	33	Dispensary	108
county	33	District Hospital	3
county	33	Health Centre	26
county	33	Maternity Home	1
county	33	Medical Clinic	15
county	33	Nursing Home	1
county	33	Other Hospital	5
county	33	Sub District Hospital	1
county	33	Stand Alone VCT Centre	3
county	46	Dispensary	58
county	46	District Hospital	3
county	46	Health Centre	44
county	46	Medical Clinic	23
county	46	Nursing Home	3
county	46	Sub District Hospital	5
county	18	Dispensary	49
county	18	District Hospital	1
county	18	Health Centre	24
county	18	Maternity Home	1
county	18	Medical Centre	1
county	18	Medical Clinic	66
county	18	Other Hospital	2
county	18	Sub District Hospital	1
county	19	Dental Clinic	7
county	19	Dispensary	129
county	19	District Hospital	2
county	19	Eye Centre	4
county	19	Health Centre	24
county	19	Stand Alone Labs 	9
county	19	Maternity Home	3
county	19	Medical Clinic	248
county	19	Nursing Home	3
county	19	Other Hospital	5
county	19	Provincial General Hospital	1
county	19	Radiology Unit	3
county	19	Sub District Hospital	2
county	19	Stand Alone VCT Centre	2
county	25	Dispensary	73
county	25	District Hospital	1
county	25	Health Centre	5
county	25	Medical Clinic	15
county	25	Other Hospital	1
county	25	SubDistrict Hospital	1
county	41	Dispensary	99
county	41	District Hospital	2
county	41	Health Centre	39
county	41	Maternity Home	1
county	41	Medical Clinic	17
county	41	Nursing Home	1
county	41	Other Hospital	6
county	41	Sub District Hospital	4
county	41	Stand Alone VCT Centre	5
county	6	Dispensary	47
county	6	District Hospital	3
county	6	Health Centre	17
county	6	Medical Clinic	19
county	6	Nursing Home	1
county	6	Other Hospital	2
county	6	Sub District Hospital	2
county	4	Dispensary	49
county	4	District Hospital	2
county	4	Health Centre	5
county	4	Maternity Home	1
county	4	Medical Clinic	8
county	13	Dispensary	70
county	13	District Hospital	3
county	13	Health Centre	13
county	13	Medical Centre	1
county	13	Medical Clinic	35
county	13	Other Hospital	4
county	13	Sub District Hospital	1
county	13	Stand Alone VCT Centre	1
county	26	Dental Clinic	4
county	26	Dispensary	56
county	26	District Hospital	3
county	26	Eye Clinic	1
county	26	Health Centre	9
county	26	Health Programme	1
county	26	Laboratory (Stand-alone)	1
county	26	Medical Clinic	62
county	26	Unlisted	3
county	26	Nursing Home	2
county	26	Other Hospital	5
county	26	Radiology Unit	1
county	26	Sub District Hospital	1
county	26	Stand Alone VCT Centre	2
county	23	Dispensary	111
county	23	District Hospital	3
county	23	Health Centre	17
county	23	Health Programme	2
county	23	Medical Clinic	25
county	23	Other Hospital	2
county	23	Sub District Hospital	2
county	23	Health Training Institution	1
county	23	Stand Alone VCT Centre	1
county	27	Blood Bank	1
county	27	Dispensary	102
county	27	District Hospital	2
county	27	Health Centre	26
county	27	Maternity Home	1
county	27	Medical Clinic	42
county	27	National Referral Hospital	1
county	27	Nursing Home	1
county	27	Other Hospital	9
county	27	Sub District Hospital	1
county	27	Stand Alone VCT Centre 	2
county	38	Dispensary	29
county	38	District Hospital	1
county	38	Eye Centre	1
county	38	Health Centre	21
county	38	Medical Centre	2
county	38	Medical Clinic	30
county	38	Nursing Home	2
county	38	Other Hospital	2
county	38	Sub District Hospital	2
county	38	Stand Alone VCT Centre	3
county	8	Dispensary	72
county	8	District Hospital	4
county	8	Health Centre	27
county	8	Medical Centre	1
county	8	Medical Clinic	42
county	8	Nursing Home	4
county	8	Other Hospital	1
county	8	Sub District Hospital	6
county	24	Dispensary	97
county	24	District Hospital	2
county	24	Health Centre	7
county	24	Medical Clinic	15
county	24	Other Hospital	1
county	24	Sub District Hospital	2
\.


--
-- Name: health_facilities_type health_facilities_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.health_facilities_type
    ADD CONSTRAINT health_facilities_type_pkey PRIMARY KEY (geo_level, geo_code, type, total);


--
-- PostgreSQL database dump complete
--


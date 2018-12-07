--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

ALTER TABLE IF EXISTS ONLY public.pay_bribe_for_treatment_at_public_clinic_or_hospital DROP CONSTRAINT IF EXISTS pk_pay_bribe_for_treatment_at_public_clinic_or_hospital;
DROP TABLE IF EXISTS public.pay_bribe_for_treatment_at_public_clinic_or_hospital;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: pay_bribe_for_treatment_at_public_clinic_or_hospital; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pay_bribe_for_treatment_at_public_clinic_or_hospital (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    pay_bribe_for_treatment_at_public_clinic_or_hospital character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: pay_bribe_for_treatment_at_public_clinic_or_hospital; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.pay_bribe_for_treatment_at_public_clinic_or_hospital (geo_level, geo_code, geo_version, pay_bribe_for_treatment_at_public_clinic_or_hospital, total) FROM stdin;
region	114	2014	A Few times	34
region	114	2014	Never	326
region	114	2014	No contact	195
region	114	2014	Often	35
region	114	2014	Once or Twice	74
region	115	2014	A Few times	51
region	115	2014	Don't know	3
region	115	2014	Never	287
region	115	2014	No contact	170
region	115	2014	Often	30
region	115	2014	Once or Twice	83
region	116	2014	A Few times	27
region	116	2014	Never	336
region	116	2014	No contact	99
region	116	2014	Often	12
region	116	2014	Once or Twice	30
region	117	2014	A Few times	17
region	117	2014	Never	413
region	117	2014	No contact	134
region	117	2014	Often	5
region	117	2014	Once or Twice	39
country	UG	2014	Often	82
country	UG	2014	Never	1362
country	UG	2014	A Few times	129
country	UG	2014	Once or Twice	226
country	UG	2014	No contact	598
country	UG	2014	Don't know	3
\.


--
-- Name: pay_bribe_for_treatment_at_public_clinic_or_hospital pk_pay_bribe_for_treatment_at_public_clinic_or_hospital; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pay_bribe_for_treatment_at_public_clinic_or_hospital
    ADD CONSTRAINT pk_pay_bribe_for_treatment_at_public_clinic_or_hospital PRIMARY KEY (geo_level, geo_code, geo_version, pay_bribe_for_treatment_at_public_clinic_or_hospital);


--
-- PostgreSQL database dump complete
--


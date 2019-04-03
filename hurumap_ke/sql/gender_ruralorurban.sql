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

ALTER TABLE IF EXISTS ONLY public.gender_ruralorurban DROP CONSTRAINT IF EXISTS gender_ruralorurban_pkey;
DROP TABLE IF EXISTS public.gender_ruralorurban;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: gender_ruralorurban; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gender_ruralorurban (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    gender character varying(128) NOT NULL,
    "rural or urban" character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: gender_ruralorurban; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.gender_ruralorurban (geo_level, geo_code, gender, "rural or urban", total) FROM stdin;
\.


--
-- Name: gender_ruralorurban gender_ruralorurban_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gender_ruralorurban
    ADD CONSTRAINT gender_ruralorurban_pkey PRIMARY KEY (geo_level, geo_code, gender, "rural or urban");


--
-- PostgreSQL database dump complete
--


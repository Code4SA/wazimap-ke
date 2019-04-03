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

ALTER TABLE IF EXISTS ONLY public.positive_image_of_china DROP CONSTRAINT IF EXISTS pk_positive_image_of_china;
DROP TABLE IF EXISTS public.positive_image_of_china;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: positive_image_of_china; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.positive_image_of_china (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    positive_image_of_china character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: positive_image_of_china; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.positive_image_of_china (geo_level, geo_code, geo_version, positive_image_of_china, total) FROM stdin;
county	30	2009	China's business investment	10
county	30	2009	China's investment in infrastructure in the country	11
county	30	2009	Don't know / Haven't heard enough	1
county	30	2009	Non-interference in the internal affairs of African countries	3
county	30	2009	The quality or cost of Chinese products	7
county	36	2009	China's business investment	12
county	36	2009	China's investment in infrastructure in the country	21
county	36	2009	China's support for the country in international affairs	1
county	36	2009	Don't know / Haven't heard enough	2
county	36	2009	Non-interference in the internal affairs of African countries	2
county	36	2009	Some other factor	1
county	36	2009	The quality or cost of Chinese products	9
county	39	2009	An appreciation of the Chinese people, culture and language	1
county	39	2009	China's business investment	5
county	39	2009	China's investment in infrastructure in the country	41
county	39	2009	China's support for the country in international affairs	1
county	39	2009	Don't know / Haven't heard enough	8
county	39	2009	Non-interference in the internal affairs of African countries	4
county	39	2009	None of these	1
county	39	2009	The quality or cost of Chinese products	19
county	40	2009	An appreciation of the Chinese people, culture and language	1
county	40	2009	China's business investment	5
county	40	2009	China's investment in infrastructure in the country	19
county	40	2009	China's support for the country in international affairs	1
county	40	2009	Don't know / Haven't heard enough	2
county	40	2009	Non-interference in the internal affairs of African countries	3
county	40	2009	None of these	3
county	40	2009	Some other factor	2
county	40	2009	The quality or cost of Chinese products	4
county	28	2009	China's business investment	5
county	28	2009	China's investment in infrastructure in the country	7
county	28	2009	Don't know / Haven't heard enough	2
county	28	2009	The quality or cost of Chinese products	2
county	14	2009	China's business investment	6
county	14	2009	China's investment in infrastructure in the country	19
county	14	2009	Don't know / Haven't heard enough	3
county	14	2009	Non-interference in the internal affairs of African countries	1
county	14	2009	The quality or cost of Chinese products	11
county	7	2009	China's business investment	1
county	7	2009	China's investment in infrastructure in the country	21
county	7	2009	Don't know / Haven't heard enough	10
county	43	2009	China's business investment	4
county	43	2009	China's investment in infrastructure in the country	29
county	43	2009	Don't know / Haven't heard enough	14
county	43	2009	None of these	2
county	43	2009	Some other factor	5
county	43	2009	The quality or cost of Chinese products	2
county	11	2009	China's investment in infrastructure in the country	4
county	11	2009	Don't know / Haven't heard enough	4
county	34	2009	China's business investment	14
county	34	2009	China's investment in infrastructure in the country	20
county	34	2009	China's support for the country in international affairs	1
county	34	2009	Don't know / Haven't heard enough	3
county	34	2009	Non-interference in the internal affairs of African countries	2
county	34	2009	None of these	1
county	34	2009	The quality or cost of Chinese products	7
county	37	2009	An appreciation of the Chinese people, culture and language	3
county	37	2009	China's business investment	8
county	37	2009	China's investment in infrastructure in the country	46
county	37	2009	China's support for the country in international affairs	1
county	37	2009	Don't know / Haven't heard enough	12
county	37	2009	Non-interference in the internal affairs of African countries	5
county	37	2009	None of these	6
county	37	2009	Some other factor	4
county	37	2009	The quality or cost of Chinese products	11
county	35	2009	China's business investment	5
county	35	2009	China's investment in infrastructure in the country	29
county	35	2009	Don't know / Haven't heard enough	1
county	35	2009	The quality or cost of Chinese products	5
county	22	2009	An appreciation of the Chinese people, culture and language	1
county	22	2009	China's business investment	13
county	22	2009	China's investment in infrastructure in the country	88
county	22	2009	China's support for the country in international affairs	2
county	22	2009	Don't know / Haven't heard enough	2
county	22	2009	Non-interference in the internal affairs of African countries	1
county	22	2009	The quality or cost of Chinese products	13
county	3	2009	China's business investment	6
county	3	2009	China's investment in infrastructure in the country	40
county	3	2009	Don't know / Haven't heard enough	7
county	3	2009	Non-interference in the internal affairs of African countries	2
county	3	2009	The quality or cost of Chinese products	9
county	20	2009	China's business investment	2
county	20	2009	China's investment in infrastructure in the country	31
county	20	2009	China's support for the country in international affairs	3
county	20	2009	Don't know / Haven't heard enough	1
county	20	2009	The quality or cost of Chinese products	3
county	45	2009	China's business investment	11
county	45	2009	China's investment in infrastructure in the country	28
county	45	2009	China's support for the country in international affairs	1
county	45	2009	Don't know / Haven't heard enough	17
county	45	2009	The quality or cost of Chinese products	15
county	42	2009	China's business investment	6
county	42	2009	China's investment in infrastructure in the country	39
county	42	2009	Don't know / Haven't heard enough	5
county	42	2009	None of these	3
county	42	2009	Some other factor	1
county	42	2009	The quality or cost of Chinese products	2
county	15	2009	China's business investment	11
county	15	2009	China's investment in infrastructure in the country	26
county	15	2009	Don't know / Haven't heard enough	15
county	15	2009	Non-interference in the internal affairs of African countries	1
county	15	2009	The quality or cost of Chinese products	3
county	2	2009	China's business investment	4
county	2	2009	China's investment in infrastructure in the country	24
county	2	2009	Don't know / Haven't heard enough	5
county	2	2009	Non-interference in the internal affairs of African countries	4
county	2	2009	The quality or cost of Chinese products	3
county	31	2009	China's business investment	3
county	31	2009	China's investment in infrastructure in the country	11
county	31	2009	China's support for the country in international affairs	2
county	31	2009	Don't know / Haven't heard enough	6
county	31	2009	Non-interference in the internal affairs of African countries	1
county	31	2009	The quality or cost of Chinese products	1
county	5	2009	China's business investment	1
county	5	2009	China's investment in infrastructure in the country	7
county	16	2009	China's business investment	9
county	16	2009	China's investment in infrastructure in the country	32
county	16	2009	China's support for the country in international affairs	2
county	16	2009	Don't know / Haven't heard enough	16
county	16	2009	Non-interference in the internal affairs of African countries	2
county	16	2009	The quality or cost of Chinese products	11
county	17	2009	China's business investment	9
county	17	2009	China's investment in infrastructure in the country	31
county	17	2009	China's support for the country in international affairs	2
county	17	2009	Don't know / Haven't heard enough	8
county	17	2009	Non-interference in the internal affairs of African countries	2
county	17	2009	The quality or cost of Chinese products	4
county	9	2009	China's business investment	3
county	9	2009	China's investment in infrastructure in the country	26
county	9	2009	Don't know / Haven't heard enough	11
county	9	2009	Non-interference in the internal affairs of African countries	2
county	9	2009	Some other factor	1
county	9	2009	The quality or cost of Chinese products	5
county	10	2009	An appreciation of the Chinese people, culture and language	1
county	10	2009	China's business investment	2
county	10	2009	China's investment in infrastructure in the country	7
county	10	2009	Don't know / Haven't heard enough	6
county	12	2009	China's business investment	15
county	12	2009	China's investment in infrastructure in the country	48
county	12	2009	China's support for the country in international affairs	1
county	12	2009	Don't know / Haven't heard enough	7
county	12	2009	Non-interference in the internal affairs of African countries	3
county	12	2009	The quality or cost of Chinese products	11
county	44	2009	China's business investment	11
county	44	2009	China's investment in infrastructure in the country	16
county	44	2009	China's support for the country in international affairs	1
county	44	2009	Don't know / Haven't heard enough	9
county	44	2009	None of these	1
county	44	2009	The quality or cost of Chinese products	10
county	1	2009	China's business investment	4
county	1	2009	China's investment in infrastructure in the country	52
county	1	2009	Don't know / Haven't heard enough	2
county	1	2009	Non-interference in the internal affairs of African countries	3
county	1	2009	None of these	1
county	1	2009	The quality or cost of Chinese products	10
county	21	2009	China's business investment	4
county	21	2009	China's investment in infrastructure in the country	47
county	21	2009	China's support for the country in international affairs	1
county	21	2009	Don't know / Haven't heard enough	2
county	21	2009	Non-interference in the internal affairs of African countries	2
county	21	2009	The quality or cost of Chinese products	8
county	47	2009	China's business investment	19
county	47	2009	China's investment in infrastructure in the country	181
county	47	2009	China's support for the country in international affairs	2
county	47	2009	Don't know / Haven't heard enough	10
county	47	2009	Non-interference in the internal affairs of African countries	15
county	47	2009	None of these	1
county	47	2009	Some other factor	1
county	47	2009	The quality or cost of Chinese products	19
county	32	2009	China's business investment	16
county	32	2009	China's investment in infrastructure in the country	65
county	32	2009	China's support for the country in international affairs	2
county	32	2009	Don't know / Haven't heard enough	6
county	32	2009	Non-interference in the internal affairs of African countries	5
county	32	2009	The quality or cost of Chinese products	10
county	29	2009	China's business investment	16
county	29	2009	China's investment in infrastructure in the country	22
county	29	2009	Don't know / Haven't heard enough	2
county	29	2009	Non-interference in the internal affairs of African countries	1
county	29	2009	Some other factor	1
county	29	2009	The quality or cost of Chinese products	6
county	33	2009	An appreciation of the Chinese people, culture and language	1
county	33	2009	China's business investment	7
county	33	2009	China's investment in infrastructure in the country	26
county	33	2009	Don't know / Haven't heard enough	2
county	33	2009	Non-interference in the internal affairs of African countries	3
county	33	2009	The quality or cost of Chinese products	9
county	46	2009	China's business investment	6
county	46	2009	China's investment in infrastructure in the country	19
county	46	2009	Don't know / Haven't heard enough	9
county	46	2009	None of these	2
county	46	2009	The quality or cost of Chinese products	4
county	18	2009	An appreciation of the Chinese people, culture and language	1
county	18	2009	China's business investment	1
county	18	2009	China's investment in infrastructure in the country	34
county	18	2009	China's support for the country in international affairs	1
county	18	2009	Don't know / Haven't heard enough	1
county	18	2009	Non-interference in the internal affairs of African countries	1
county	18	2009	The quality or cost of Chinese products	1
county	19	2009	China's business investment	2
county	19	2009	China's investment in infrastructure in the country	40
county	19	2009	Don't know / Haven't heard enough	1
county	19	2009	Non-interference in the internal affairs of African countries	2
county	19	2009	The quality or cost of Chinese products	3
county	25	2009	China's business investment	2
county	25	2009	China's investment in infrastructure in the country	2
county	25	2009	Don't know / Haven't heard enough	2
county	25	2009	The quality or cost of Chinese products	2
county	41	2009	China's business investment	9
county	41	2009	China's investment in infrastructure in the country	24
county	41	2009	China's support for the country in international affairs	1
county	41	2009	Don't know / Haven't heard enough	10
county	41	2009	None of these	1
county	41	2009	The quality or cost of Chinese products	3
county	6	2009	China's business investment	1
county	6	2009	China's investment in infrastructure in the country	9
county	6	2009	Don't know / Haven't heard enough	2
county	6	2009	Non-interference in the internal affairs of African countries	2
county	6	2009	The quality or cost of Chinese products	2
county	4	2009	China's business investment	1
county	4	2009	China's investment in infrastructure in the country	2
county	4	2009	Don't know / Haven't heard enough	5
county	13	2009	China's business investment	5
county	13	2009	China's investment in infrastructure in the country	9
county	13	2009	China's support for the country in international affairs	4
county	13	2009	Don't know / Haven't heard enough	2
county	13	2009	Non-interference in the internal affairs of African countries	1
county	13	2009	The quality or cost of Chinese products	3
county	26	2009	An appreciation of the Chinese people, culture and language	1
county	26	2009	China's business investment	5
county	26	2009	China's investment in infrastructure in the country	23
county	26	2009	Don't know / Haven't heard enough	7
county	26	2009	Non-interference in the internal affairs of African countries	4
county	26	2009	None of these	2
county	26	2009	The quality or cost of Chinese products	6
county	23	2009	China's business investment	17
county	23	2009	China's investment in infrastructure in the country	9
county	23	2009	Don't know / Haven't heard enough	7
county	23	2009	The quality or cost of Chinese products	15
county	27	2009	China's business investment	18
county	27	2009	China's investment in infrastructure in the country	25
county	27	2009	Don't know / Haven't heard enough	2
county	27	2009	Non-interference in the internal affairs of African countries	1
county	27	2009	The quality or cost of Chinese products	10
county	38	2009	An appreciation of the Chinese people, culture and language	1
county	38	2009	China's business investment	1
county	38	2009	China's investment in infrastructure in the country	16
county	38	2009	China's support for the country in international affairs	1
county	38	2009	Don't know / Haven't heard enough	3
county	38	2009	Non-interference in the internal affairs of African countries	2
county	38	2009	The quality or cost of Chinese products	8
county	8	2009	China's business investment	2
county	8	2009	China's investment in infrastructure in the country	13
county	8	2009	Don't know / Haven't heard enough	12
county	8	2009	Non-interference in the internal affairs of African countries	2
county	8	2009	The quality or cost of Chinese products	3
county	24	2009	An appreciation of the Chinese people, culture and language	1
county	24	2009	China's business investment	9
county	24	2009	China's investment in infrastructure in the country	5
county	24	2009	Don't know / Haven't heard enough	4
county	24	2009	The quality or cost of Chinese products	5
country	KE	2009	Don't know / Haven't heard enough	268
country	KE	2009	Non-interference in the internal affairs of African countries	82
country	KE	2009	The quality or cost of Chinese products	294
country	KE	2009	An appreciation of the Chinese people, culture and language	12
country	KE	2009	Some other factor	16
country	KE	2009	China's support for the country in international affairs	31
country	KE	2009	China's investment in infrastructure in the country	1344
country	KE	2009	China's business investment	326
country	KE	2009	None of these	24
\.


--
-- Name: positive_image_of_china pk_positive_image_of_china; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.positive_image_of_china
    ADD CONSTRAINT pk_positive_image_of_china PRIMARY KEY (geo_level, geo_code, geo_version, positive_image_of_china);


--
-- PostgreSQL database dump complete
--


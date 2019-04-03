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

ALTER TABLE IF EXISTS ONLY public.negative_image_of_china DROP CONSTRAINT IF EXISTS pk_negative_image_of_china;
DROP TABLE IF EXISTS public.negative_image_of_china;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: negative_image_of_china; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.negative_image_of_china (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL,
    negative_image_of_china character varying(128) NOT NULL,
    total integer
);


--
-- Data for Name: negative_image_of_china; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.negative_image_of_china (geo_level, geo_code, geo_version, negative_image_of_china, total) FROM stdin;
county	30	2009	China's extraction of resources from Africa	2
county	30	2009	China's willingness to cooperate with undemocratic rulers	2
county	30	2009	Don't know / Haven't heard enough	1
county	30	2009	Land grabbing by Chinese individuals or businesses	2
county	30	2009	Taking jobs or business from the locals	1
county	30	2009	The behavior of Chinese citizens in the country	1
county	30	2009	The quality of Chinese products	23
county	36	2009	China's extraction of resources from Africa	9
county	36	2009	Don't know / Haven't heard enough	6
county	36	2009	Taking jobs or business from the locals	8
county	36	2009	The behavior of Chinese citizens in the country	4
county	36	2009	The quality of Chinese products	21
county	39	2009	China's extraction of resources from Africa	4
county	39	2009	China's willingness to cooperate with undemocratic rulers	3
county	39	2009	Don't know / Haven't heard enough	12
county	39	2009	Land grabbing by Chinese individuals or businesses	2
county	39	2009	None of these	4
county	39	2009	Some other factor	1
county	39	2009	Taking jobs or business from the locals	5
county	39	2009	The behavior of Chinese citizens in the country	7
county	39	2009	The quality of Chinese products	42
county	40	2009	China's extraction of resources from Africa	4
county	40	2009	China's willingness to cooperate with undemocratic rulers	2
county	40	2009	Don't know / Haven't heard enough	5
county	40	2009	Land grabbing by Chinese individuals or businesses	4
county	40	2009	None of these	2
county	40	2009	Some other factor	1
county	40	2009	Taking jobs or business from the locals	7
county	40	2009	The behavior of Chinese citizens in the country	3
county	40	2009	The quality of Chinese products	12
county	28	2009	China's extraction of resources from Africa	1
county	28	2009	Don't know / Haven't heard enough	2
county	28	2009	Land grabbing by Chinese individuals or businesses	2
county	28	2009	Taking jobs or business from the locals	1
county	28	2009	The quality of Chinese products	10
county	14	2009	China's extraction of resources from Africa	1
county	14	2009	China's willingness to cooperate with undemocratic rulers	1
county	14	2009	Don't know / Haven't heard enough	7
county	14	2009	None of these	1
county	14	2009	Taking jobs or business from the locals	6
county	14	2009	The behavior of Chinese citizens in the country	1
county	14	2009	The quality of Chinese products	23
county	7	2009	China's extraction of resources from Africa	7
county	7	2009	Don't know / Haven't heard enough	15
county	7	2009	The quality of Chinese products	10
county	43	2009	China's extraction of resources from Africa	2
county	43	2009	China's willingness to cooperate with undemocratic rulers	1
county	43	2009	Don't know / Haven't heard enough	14
county	43	2009	Land grabbing by Chinese individuals or businesses	2
county	43	2009	Taking jobs or business from the locals	4
county	43	2009	The behavior of Chinese citizens in the country	9
county	43	2009	The quality of Chinese products	24
county	11	2009	Don't know / Haven't heard enough	4
county	11	2009	Land grabbing by Chinese individuals or businesses	1
county	11	2009	Taking jobs or business from the locals	1
county	11	2009	The quality of Chinese products	2
county	34	2009	China's extraction of resources from Africa	2
county	34	2009	Don't know / Haven't heard enough	5
county	34	2009	Land grabbing by Chinese individuals or businesses	4
county	34	2009	Taking jobs or business from the locals	6
county	34	2009	The behavior of Chinese citizens in the country	3
county	34	2009	The quality of Chinese products	28
county	37	2009	China's extraction of resources from Africa	7
county	37	2009	China's willingness to cooperate with undemocratic rulers	3
county	37	2009	Don't know / Haven't heard enough	14
county	37	2009	Land grabbing by Chinese individuals or businesses	7
county	37	2009	None of these	2
county	37	2009	Some other factor	6
county	37	2009	Taking jobs or business from the locals	10
county	37	2009	The behavior of Chinese citizens in the country	5
county	37	2009	The quality of Chinese products	42
county	35	2009	China's extraction of resources from Africa	2
county	35	2009	Don't know / Haven't heard enough	4
county	35	2009	Land grabbing by Chinese individuals or businesses	1
county	35	2009	Taking jobs or business from the locals	5
county	35	2009	The behavior of Chinese citizens in the country	5
county	35	2009	The quality of Chinese products	23
county	22	2009	China's extraction of resources from Africa	6
county	22	2009	China's willingness to cooperate with undemocratic rulers	3
county	22	2009	Don't know / Haven't heard enough	3
county	22	2009	Land grabbing by Chinese individuals or businesses	4
county	22	2009	None of these	2
county	22	2009	Taking jobs or business from the locals	25
county	22	2009	The behavior of Chinese citizens in the country	7
county	22	2009	The quality of Chinese products	70
county	3	2009	China's willingness to cooperate with undemocratic rulers	1
county	3	2009	Don't know / Haven't heard enough	16
county	3	2009	Land grabbing by Chinese individuals or businesses	14
county	3	2009	None of these	1
county	3	2009	Some other factor	1
county	3	2009	Taking jobs or business from the locals	2
county	3	2009	The behavior of Chinese citizens in the country	7
county	3	2009	The quality of Chinese products	22
county	20	2009	China's extraction of resources from Africa	1
county	20	2009	China's willingness to cooperate with undemocratic rulers	4
county	20	2009	Don't know / Haven't heard enough	2
county	20	2009	Taking jobs or business from the locals	5
county	20	2009	The behavior of Chinese citizens in the country	7
county	20	2009	The quality of Chinese products	21
county	45	2009	China's extraction of resources from Africa	4
county	45	2009	Don't know / Haven't heard enough	26
county	45	2009	None of these	2
county	45	2009	Taking jobs or business from the locals	6
county	45	2009	The behavior of Chinese citizens in the country	4
county	45	2009	The quality of Chinese products	30
county	42	2009	China's extraction of resources from Africa	6
county	42	2009	Don't know / Haven't heard enough	8
county	42	2009	Land grabbing by Chinese individuals or businesses	2
county	42	2009	Some other factor	1
county	42	2009	Taking jobs or business from the locals	2
county	42	2009	The behavior of Chinese citizens in the country	7
county	42	2009	The quality of Chinese products	30
county	15	2009	China's extraction of resources from Africa	2
county	15	2009	China's willingness to cooperate with undemocratic rulers	4
county	15	2009	Don't know / Haven't heard enough	15
county	15	2009	Land grabbing by Chinese individuals or businesses	1
county	15	2009	Taking jobs or business from the locals	5
county	15	2009	The behavior of Chinese citizens in the country	1
county	15	2009	The quality of Chinese products	28
county	2	2009	China's extraction of resources from Africa	2
county	2	2009	China's willingness to cooperate with undemocratic rulers	2
county	2	2009	Don't know / Haven't heard enough	11
county	2	2009	Land grabbing by Chinese individuals or businesses	2
county	2	2009	Some other factor	3
county	2	2009	Taking jobs or business from the locals	3
county	2	2009	The behavior of Chinese citizens in the country	3
county	2	2009	The quality of Chinese products	14
county	31	2009	China's willingness to cooperate with undemocratic rulers	1
county	31	2009	Don't know / Haven't heard enough	8
county	31	2009	Land grabbing by Chinese individuals or businesses	1
county	31	2009	Taking jobs or business from the locals	3
county	31	2009	The behavior of Chinese citizens in the country	1
county	31	2009	The quality of Chinese products	10
county	5	2009	China's extraction of resources from Africa	1
county	5	2009	Don't know / Haven't heard enough	4
county	5	2009	Land grabbing by Chinese individuals or businesses	1
county	5	2009	Some other factor	1
county	5	2009	The quality of Chinese products	1
county	16	2009	China's extraction of resources from Africa	3
county	16	2009	China's willingness to cooperate with undemocratic rulers	4
county	16	2009	Don't know / Haven't heard enough	22
county	16	2009	Land grabbing by Chinese individuals or businesses	3
county	16	2009	None of these	1
county	16	2009	Taking jobs or business from the locals	5
county	16	2009	The behavior of Chinese citizens in the country	1
county	16	2009	The quality of Chinese products	33
county	17	2009	China's extraction of resources from Africa	2
county	17	2009	China's willingness to cooperate with undemocratic rulers	1
county	17	2009	Don't know / Haven't heard enough	14
county	17	2009	None of these	3
county	17	2009	Some other factor	1
county	17	2009	Taking jobs or business from the locals	7
county	17	2009	The behavior of Chinese citizens in the country	9
county	17	2009	The quality of Chinese products	19
county	9	2009	China's extraction of resources from Africa	5
county	9	2009	China's willingness to cooperate with undemocratic rulers	2
county	9	2009	Don't know / Haven't heard enough	15
county	9	2009	Land grabbing by Chinese individuals or businesses	1
county	9	2009	None of these	1
county	9	2009	The behavior of Chinese citizens in the country	4
county	9	2009	The quality of Chinese products	20
county	10	2009	Don't know / Haven't heard enough	7
county	10	2009	Land grabbing by Chinese individuals or businesses	2
county	10	2009	Taking jobs or business from the locals	1
county	10	2009	The quality of Chinese products	6
county	12	2009	China's extraction of resources from Africa	4
county	12	2009	China's willingness to cooperate with undemocratic rulers	15
county	12	2009	Don't know / Haven't heard enough	19
county	12	2009	Land grabbing by Chinese individuals or businesses	3
county	12	2009	None of these	3
county	12	2009	Some other factor	1
county	12	2009	Taking jobs or business from the locals	2
county	12	2009	The behavior of Chinese citizens in the country	1
county	12	2009	The quality of Chinese products	37
county	44	2009	China's extraction of resources from Africa	6
county	44	2009	China's willingness to cooperate with undemocratic rulers	1
county	44	2009	Don't know / Haven't heard enough	11
county	44	2009	Land grabbing by Chinese individuals or businesses	4
county	44	2009	Taking jobs or business from the locals	1
county	44	2009	The behavior of Chinese citizens in the country	4
county	44	2009	The quality of Chinese products	21
county	1	2009	China's extraction of resources from Africa	2
county	1	2009	China's willingness to cooperate with undemocratic rulers	1
county	1	2009	Don't know / Haven't heard enough	10
county	1	2009	Land grabbing by Chinese individuals or businesses	4
county	1	2009	None of these	1
county	1	2009	Some other factor	3
county	1	2009	Taking jobs or business from the locals	3
county	1	2009	The behavior of Chinese citizens in the country	13
county	1	2009	The quality of Chinese products	35
county	21	2009	China's willingness to cooperate with undemocratic rulers	3
county	21	2009	Don't know / Haven't heard enough	9
county	21	2009	Land grabbing by Chinese individuals or businesses	2
county	21	2009	None of these	2
county	21	2009	Taking jobs or business from the locals	17
county	21	2009	The behavior of Chinese citizens in the country	8
county	21	2009	The quality of Chinese products	23
county	47	2009	China's extraction of resources from Africa	43
county	47	2009	China's willingness to cooperate with undemocratic rulers	8
county	47	2009	Don't know / Haven't heard enough	31
county	47	2009	Land grabbing by Chinese individuals or businesses	4
county	47	2009	None of these	13
county	47	2009	Some other factor	2
county	47	2009	Taking jobs or business from the locals	32
county	47	2009	The behavior of Chinese citizens in the country	21
county	47	2009	The quality of Chinese products	94
county	32	2009	China's extraction of resources from Africa	7
county	32	2009	Don't know / Haven't heard enough	19
county	32	2009	Land grabbing by Chinese individuals or businesses	5
county	32	2009	None of these	3
county	32	2009	Taking jobs or business from the locals	18
county	32	2009	The behavior of Chinese citizens in the country	9
county	32	2009	The quality of Chinese products	43
county	29	2009	China's extraction of resources from Africa	4
county	29	2009	China's willingness to cooperate with undemocratic rulers	1
county	29	2009	Don't know / Haven't heard enough	6
county	29	2009	Land grabbing by Chinese individuals or businesses	3
county	29	2009	None of these	3
county	29	2009	Taking jobs or business from the locals	1
county	29	2009	The behavior of Chinese citizens in the country	2
county	29	2009	The quality of Chinese products	28
county	33	2009	China's extraction of resources from Africa	4
county	33	2009	Don't know / Haven't heard enough	9
county	33	2009	Land grabbing by Chinese individuals or businesses	3
county	33	2009	None of these	2
county	33	2009	Taking jobs or business from the locals	9
county	33	2009	The behavior of Chinese citizens in the country	3
county	33	2009	The quality of Chinese products	18
county	46	2009	China's extraction of resources from Africa	2
county	46	2009	Don't know / Haven't heard enough	10
county	46	2009	None of these	1
county	46	2009	Taking jobs or business from the locals	4
county	46	2009	The behavior of Chinese citizens in the country	4
county	46	2009	The quality of Chinese products	19
county	18	2009	China's extraction of resources from Africa	3
county	18	2009	China's willingness to cooperate with undemocratic rulers	2
county	18	2009	Don't know / Haven't heard enough	3
county	18	2009	Taking jobs or business from the locals	5
county	18	2009	The behavior of Chinese citizens in the country	6
county	18	2009	The quality of Chinese products	21
county	19	2009	China's extraction of resources from Africa	4
county	19	2009	China's willingness to cooperate with undemocratic rulers	1
county	19	2009	Don't know / Haven't heard enough	3
county	19	2009	Land grabbing by Chinese individuals or businesses	1
county	19	2009	Taking jobs or business from the locals	5
county	19	2009	The behavior of Chinese citizens in the country	4
county	19	2009	The quality of Chinese products	30
county	25	2009	China's extraction of resources from Africa	1
county	25	2009	Don't know / Haven't heard enough	2
county	25	2009	The quality of Chinese products	5
county	41	2009	China's extraction of resources from Africa	4
county	41	2009	China's willingness to cooperate with undemocratic rulers	1
county	41	2009	Don't know / Haven't heard enough	15
county	41	2009	Some other factor	3
county	41	2009	Taking jobs or business from the locals	5
county	41	2009	The behavior of Chinese citizens in the country	1
county	41	2009	The quality of Chinese products	19
county	6	2009	China's extraction of resources from Africa	3
county	6	2009	Don't know / Haven't heard enough	3
county	6	2009	Land grabbing by Chinese individuals or businesses	1
county	6	2009	None of these	1
county	6	2009	Taking jobs or business from the locals	1
county	6	2009	The behavior of Chinese citizens in the country	4
county	6	2009	The quality of Chinese products	3
county	4	2009	Don't know / Haven't heard enough	6
county	4	2009	The quality of Chinese products	2
county	13	2009	China's extraction of resources from Africa	3
county	13	2009	China's willingness to cooperate with undemocratic rulers	1
county	13	2009	Don't know / Haven't heard enough	5
county	13	2009	Land grabbing by Chinese individuals or businesses	4
county	13	2009	Taking jobs or business from the locals	3
county	13	2009	The behavior of Chinese citizens in the country	2
county	13	2009	The quality of Chinese products	6
county	26	2009	China's extraction of resources from Africa	3
county	26	2009	China's willingness to cooperate with undemocratic rulers	2
county	26	2009	Don't know / Haven't heard enough	11
county	26	2009	Land grabbing by Chinese individuals or businesses	3
county	26	2009	None of these	3
county	26	2009	Some other factor	4
county	26	2009	Taking jobs or business from the locals	3
county	26	2009	The behavior of Chinese citizens in the country	4
county	26	2009	The quality of Chinese products	15
county	23	2009	China's extraction of resources from Africa	11
county	23	2009	China's willingness to cooperate with undemocratic rulers	1
county	23	2009	Don't know / Haven't heard enough	9
county	23	2009	None of these	2
county	23	2009	Taking jobs or business from the locals	2
county	23	2009	The quality of Chinese products	23
county	27	2009	China's extraction of resources from Africa	6
county	27	2009	Don't know / Haven't heard enough	5
county	27	2009	Land grabbing by Chinese individuals or businesses	1
county	27	2009	Some other factor	1
county	27	2009	Taking jobs or business from the locals	4
county	27	2009	The behavior of Chinese citizens in the country	1
county	27	2009	The quality of Chinese products	38
county	38	2009	China's extraction of resources from Africa	3
county	38	2009	China's willingness to cooperate with undemocratic rulers	3
county	38	2009	Don't know / Haven't heard enough	3
county	38	2009	Land grabbing by Chinese individuals or businesses	5
county	38	2009	Taking jobs or business from the locals	5
county	38	2009	The behavior of Chinese citizens in the country	2
county	38	2009	The quality of Chinese products	11
county	8	2009	China's extraction of resources from Africa	3
county	8	2009	Don't know / Haven't heard enough	16
county	8	2009	Taking jobs or business from the locals	1
county	8	2009	The behavior of Chinese citizens in the country	2
county	8	2009	The quality of Chinese products	10
county	24	2009	China's extraction of resources from Africa	2
county	24	2009	Don't know / Haven't heard enough	4
county	24	2009	Land grabbing by Chinese individuals or businesses	1
county	24	2009	Taking jobs or business from the locals	2
county	24	2009	The behavior of Chinese citizens in the country	1
county	24	2009	The quality of Chinese products	14
country	KE	2009	Some other factor	29
country	KE	2009	The quality of Chinese products	1079
country	KE	2009	The behavior of Chinese citizens in the country	181
country	KE	2009	Taking jobs or business from the locals	241
country	KE	2009	Don't know / Haven't heard enough	449
country	KE	2009	None of these	53
country	KE	2009	China's extraction of resources from Africa	191
country	KE	2009	Land grabbing by Chinese individuals or businesses	100
country	KE	2009	China's willingness to cooperate with undemocratic rulers	74
\.


--
-- Name: negative_image_of_china pk_negative_image_of_china; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.negative_image_of_china
    ADD CONSTRAINT pk_negative_image_of_china PRIMARY KEY (geo_level, geo_code, geo_version, negative_image_of_china);


--
-- PostgreSQL database dump complete
--


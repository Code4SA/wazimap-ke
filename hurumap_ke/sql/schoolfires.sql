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

ALTER TABLE IF EXISTS ONLY public.schoolfires DROP CONSTRAINT IF EXISTS pk_schoolfires;
DROP TABLE IF EXISTS public.schoolfires;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: schoolfires; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schoolfires (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    total integer NOT NULL,
    schoolfires text NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: schoolfires; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.schoolfires (geo_level, geo_code, total, schoolfires, geo_version) FROM stdin;
county	1	0	""	2009
county	2	0	""	2009
county	3	2	"Ganze Girls Secondary School,Malindi High"	2009
county	4	1	"Madogo Secondary School"	2009
county	5	1	"Mpeketoni Boys Secondary School"	2009
county	6	0	""	2009
county	7	0	""	2009
county	8	0	""	2009
county	9	0	""	2009
county	10	1	"Marsabit High School"	2009
county	11	2	"Merti Muslim Girls Secondary,Garba Tulla High School"	2009
county	12	5	"Mikinduri Girls' High school,St Angelic Girls Secondary School,Ruiga Girls,Gikuma,St Pius X Seminary"	2009
county	13	3	"Nturiri,Kanjianduthi,Iruma"	2009
county	14	7	"St Philip Mochuneke,St Ngunyumu,Kirimari,Kiangungi,Karaba,Kanyambora,Embu High"	2009
county	15	4	"St Luke Boys High High,Ndatani Girls,Mitamisyi Secondary,Kalimani"	2009
county	16	5	"Mbukuni,Matungulu,Masii Boys High School,Kathangani,Mokowe Mixed Secondary"	2009
county	17	2	"Mwaani Girls,Darajani Secondary School"	2009
county	18	0	""	2009
county	19	4	"Mwiyogo Girls,Wamagana Girls,Watuka High School,Giakabii High School (burnt twice in two weeks)"	2009
county	20	1	"Wanguru Secondary"	2009
county	21	3	"Rarakwa Girls Secondary,Kahithe,Igikiro"	2009
county	22	6	"Muhoho High,Stephjoy (last year),Komothai Girls,Komothai Boys,Kamandura Girls,Kiamworia Girls Secondary School"	2009
county	23	0	""	2009
county	24	1	"Chewoyet High "	2009
county	25	0	""	2009
county	26	2	"St Theresa's Bikeke Girls,St Francis Suwerwa Secondary"	2009
county	27	9	"Ngara Falls Girls,Tembelio,Sosiyu,99. Moiben,Kipkabus,Kimoning,Arnessens,AIC Torochmoi,Leseru High School"	2009
county	28	2	"St Francis Kimuron Secondary,St Patrick's School Iten"	2009
county	29	1	"Kilibwon High"	2009
county	30	1	"Kabarnet High"	2009
county	31	1	"Nyahururu High School"	2009
county	32	9	"Kiambogo Secondary,Shiners Boys High,PCEA Kambala Girls,Michina,Mau Narok,Kirobon Girls,Kirobon Boys,Kambala Girls Secondary,ELCK Kongoi Girls"	2009
county	33	5	"Ntulele Secondary,Maasai Mara Secondary,Ololunga Boys,Narok Boys,St Stephen Secondary"	2009
county	34	0	""	2009
county	35	8	"Chepsir,Kericho High,Lelu,Londiani,Tengecha Boys High,Longisa High School,Kabartegan Boys High School"	2009
county	36	2	"Ndanai,Kaplong Boys Secondary"	2009
county	37	0	""	2009
county	38	1	"Kaimosi Boys"	2009
county	39	3	"Kaptama High School,St Francis Kimuron Secondary,Kapsokwony Boys"	2009
county	40	1	"Nambale High School"	2009
county	41	0	""	2009
county	42	0	""	2009
county	43	3	"Adega Mixed Secondary,Wangapala High School,Atela Mixed Secondary"	2009
county	44	5	"Isebania High,Awendo Excellent,Kodero Bara Boys,Mukuyu Mixed Secondary School,Uriri High School"	2009
county	45	11	"Itibo Boys High School,St Mary’s Nyamagwa Girls High School,St Peter's Nyamesocho Secondary, St John's Nyamagwa Boys,Nyamagwa Catholic Girls Secondary,Nyamache Boys Secondary,Naikuru,Magena Boys Secondary,Machongo PAG,Itierio Girls School, Itierio Boys School"	2009
county	46	11	"Omobera SDA Girls,Bosco Nyabiosi Secondary,St Charles Lwanga Nyansabakwa,St Andrews Kaggwa Boys Primary,Rigoma Girls,Mochenwa SDA Mixed,Matutu SDA Secondary (private),Matongo Nyamira,Makairo DEB Secondary,Geke Mixed Secondary School,Bonyunyu Secondary School"	2009
county	47	3	"Ruthumitu Secondary School, Lang'ata High School,Sunshine Secondary School"	2009
country	KE	126	""	2009
\.


--
-- Name: schoolfires pk_schoolfires; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schoolfires
    ADD CONSTRAINT pk_schoolfires PRIMARY KEY (geo_level, geo_code, geo_version, schoolfires);


--
-- PostgreSQL database dump complete
--


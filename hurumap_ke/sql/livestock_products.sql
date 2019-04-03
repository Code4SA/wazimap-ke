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

ALTER TABLE IF EXISTS ONLY public.livestock_products DROP CONSTRAINT IF EXISTS pk_livestock_products;
DROP TABLE IF EXISTS public.livestock_products;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: livestock_products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.livestock_products (
    geo_level character varying(15) NOT NULL,
    geo_code character varying(10) NOT NULL,
    livestock_products character varying(128) NOT NULL,
    total double precision NOT NULL,
    geo_version character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Data for Name: livestock_products; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.livestock_products (geo_level, geo_code, livestock_products, total, geo_version) FROM stdin;
county	26	mik (kg)	106000	2009
county	26	beef (kg)	1780	2009
county	26	wool (kg)	0	2009
county	26	goat meat (kg)	100	2009
county	26	mutton (kg)	400	2009
county	26	pork (kg)	3.5	2009
county	26	rabbit meat (kg)	1.89999999999999991	2009
county	26	poultry meat (kg)	98	2009
county	26	camel meat (kg)	0	2009
county	26	honey (kg)	90	2009
county	26	wax (kg)	0	2009
county	26	eggs (tray)	16686.2000000000007	2009
county	26	hides (no)	0	2009
county	26	skin (no)	0	2009
county	24	mik (kg)	8596.79999999999927	2009
county	24	beef (kg)	5475	2009
county	24	wool (kg)	88.2000000000000028	2009
county	24	goat meat (kg)	243	2009
county	24	mutton (kg)	207.900000000000006	2009
county	24	pork (kg)	0.599999999999999978	2009
county	24	rabbit meat (kg)	0.900000000000000022	2009
county	24	poultry meat (kg)	128.199999999999989	2009
county	24	camel meat (kg)	7.70000000000000018	2009
county	24	honey (kg)	162.800000000000011	2009
county	24	wax (kg)	16.3000000000000007	2009
county	24	eggs (tray)	2878	2009
county	24	hides (no)	66.7000000000000028	2009
county	24	skin (no)	17.1999999999999993	2009
county	31	mik (kg)	40920	2009
county	31	beef (kg)	3115.30000000000018	2009
county	31	wool (kg)	7	2009
county	31	goat meat (kg)	666	2009
county	31	mutton (kg)	702	2009
county	31	pork (kg)	76.7000000000000028	2009
county	31	rabbit meat (kg)	9.19999999999999929	2009
county	31	poultry meat (kg)	299.100000000000023	2009
county	31	camel meat (kg)	162	2009
county	31	honey (kg)	261.300000000000011	2009
county	31	wax (kg)	87.0999999999999943	2009
county	31	eggs (tray)	448.699999999999989	2009
county	31	hides (no)	0	2009
county	31	skin (no)	0	2009
county	34	mik (kg)	16166.7000000000007	2009
county	34	beef (kg)	2450.69999999999982	2009
county	34	wool (kg)	0	2009
county	34	goat meat (kg)	439.699999999999989	2009
county	34	mutton (kg)	327.899999999999977	2009
county	34	pork (kg)	34.5	2009
county	34	rabbit meat (kg)	9.30000000000000071	2009
county	34	poultry meat (kg)	1003.60000000000002	2009
county	34	camel meat (kg)	2.39999999999999991	2009
county	34	honey (kg)	31.5	2009
county	34	wax (kg)	0.699999999999999956	2009
county	34	eggs (tray)	65.7000000000000028	2009
county	34	hides (no)	0	2009
county	34	skin (no)	0	2009
county	15	mik (kg)	17804.7000000000007	2009
county	15	beef (kg)	5804.39999999999964	2009
county	15	wool (kg)	0	2009
county	15	goat meat (kg)	2448.90000000000009	2009
county	15	mutton (kg)	132.400000000000006	2009
county	15	pork (kg)	21.3000000000000007	2009
county	15	rabbit meat (kg)	0.800000000000000044	2009
county	15	poultry meat (kg)	4450.69999999999982	2009
county	15	camel meat (kg)	0	2009
county	15	honey (kg)	867.700000000000045	2009
county	15	wax (kg)	114.799999999999997	2009
county	15	eggs (tray)	513.399999999999977	2009
county	15	hides (no)	6.90000000000000036	2009
county	15	skin (no)	239.699999999999989	2009
county	16	mik (kg)	50208.8000000000029	2009
county	16	beef (kg)	8122.69999999999982	2009
county	16	wool (kg)	0	2009
county	16	goat meat (kg)	1078.20000000000005	2009
county	16	mutton (kg)	268.699999999999989	2009
county	16	pork (kg)	379	2009
county	16	rabbit meat (kg)	28.1999999999999993	2009
county	16	poultry meat (kg)	1774.70000000000005	2009
county	16	camel meat (kg)	0	2009
county	16	honey (kg)	170.5	2009
county	16	wax (kg)	304	2009
county	16	eggs (tray)	8210.29999999999927	2009
county	16	hides (no)	99	2009
county	16	skin (no)	10.5	2009
county	17	mik (kg)	32735.4000000000015	2009
county	17	beef (kg)	2395.69999999999982	2009
county	17	wool (kg)	0	2009
county	17	goat meat (kg)	316.300000000000011	2009
county	17	mutton (kg)	28.5	2009
county	17	pork (kg)	3.5	2009
county	17	rabbit meat (kg)	3.39999999999999991	2009
county	17	poultry meat (kg)	315.5	2009
county	17	camel meat (kg)	1.30000000000000004	2009
county	17	honey (kg)	167.099999999999994	2009
county	17	wax (kg)	16.6999999999999993	2009
county	17	eggs (tray)	424.300000000000011	2009
county	17	hides (no)	14.4000000000000004	2009
county	17	skin (no)	44.2000000000000028	2009
county	7	mik (kg)	13755.7999999999993	2009
county	7	beef (kg)	2565.19999999999982	2009
county	7	wool (kg)	0	2009
county	7	goat meat (kg)	1083.90000000000009	2009
county	7	mutton (kg)	141.199999999999989	2009
county	7	pork (kg)	0	2009
county	7	rabbit meat (kg)	0	2009
county	7	poultry meat (kg)	127.799999999999997	2009
county	7	camel meat (kg)	4903.30000000000018	2009
county	7	honey (kg)	9.09999999999999964	2009
county	7	wax (kg)	0	2009
county	7	eggs (tray)	565.100000000000023	2009
county	7	hides (no)	0	2009
county	7	skin (no)	0	2009
county	5	mik (kg)	1850	2009
county	5	beef (kg)	31	2009
county	5	wool (kg)	0	2009
county	5	goat meat (kg)	83.5	2009
county	5	mutton (kg)	122.099999999999994	2009
county	5	pork (kg)	0	2009
county	5	rabbit meat (kg)	0.200000000000000011	2009
county	5	poultry meat (kg)	7.70000000000000018	2009
county	5	camel meat (kg)	0	2009
county	5	honey (kg)	26.5	2009
county	5	wax (kg)	2	2009
county	5	eggs (tray)	21.8000000000000007	2009
county	5	hides (no)	0	2009
county	5	skin (no)	0	2009
county	4	mik (kg)	57973.0999999999985	2009
county	4	beef (kg)	569.799999999999955	2009
county	4	wool (kg)	0	2009
county	4	goat meat (kg)	382.699999999999989	2009
county	4	mutton (kg)	150.800000000000011	2009
county	4	pork (kg)	0	2009
county	4	rabbit meat (kg)	0.699999999999999956	2009
county	4	poultry meat (kg)	35.6000000000000014	2009
county	4	camel meat (kg)	159.800000000000011	2009
county	4	honey (kg)	25.1999999999999993	2009
county	4	wax (kg)	2.60000000000000009	2009
county	4	eggs (tray)	418.699999999999989	2009
county	4	hides (no)	0	2009
county	4	skin (no)	0	2009
county	8	mik (kg)	83330.3000000000029	2009
county	8	beef (kg)	487.399999999999977	2009
county	8	wool (kg)	0	2009
county	8	goat meat (kg)	1537.59999999999991	2009
county	8	mutton (kg)	1317.90000000000009	2009
county	8	pork (kg)	0	2009
county	8	rabbit meat (kg)	0	2009
county	8	poultry meat (kg)	38.3999999999999986	2009
county	8	camel meat (kg)	1988.79999999999995	2009
county	8	honey (kg)	3.39999999999999991	2009
county	8	wax (kg)	0.100000000000000006	2009
county	8	eggs (tray)	2947.09999999999991	2009
county	8	hides (no)	0	2009
county	8	skin (no)	0	2009
county	1	mik (kg)	1195.09999999999991	2009
county	1	beef (kg)	229.400000000000006	2009
county	1	wool (kg)	0	2009
county	1	goat meat (kg)	2.20000000000000018	2009
county	1	mutton (kg)	2	2009
county	1	pork (kg)	3.39999999999999991	2009
county	1	rabbit meat (kg)	0.400000000000000022	2009
county	1	poultry meat (kg)	545.299999999999955	2009
county	1	camel meat (kg)	0	2009
county	1	honey (kg)	0.5	2009
county	1	wax (kg)	0	2009
county	1	eggs (tray)	2612.19999999999982	2009
county	1	hides (no)	2.29999999999999982	2009
county	1	skin (no)	3.79999999999999982	2009
county	6	mik (kg)	17230.4000000000015	2009
county	6	beef (kg)	1075	2009
county	6	wool (kg)	0	2009
county	6	goat meat (kg)	159	2009
county	6	mutton (kg)	31.1000000000000014	2009
county	6	pork (kg)	6.79999999999999982	2009
county	6	rabbit meat (kg)	0.699999999999999956	2009
county	6	poultry meat (kg)	251.900000000000006	2009
county	6	camel meat (kg)	4.29999999999999982	2009
county	6	honey (kg)	21.1999999999999993	2009
county	6	wax (kg)	1.89999999999999991	2009
county	6	eggs (tray)	261.199999999999989	2009
county	6	hides (no)	0	2009
county	6	skin (no)	0	2009
county	2	mik (kg)	3142.69999999999982	2009
county	2	beef (kg)	2009.09999999999991	2009
county	2	wool (kg)	0	2009
county	2	goat meat (kg)	230.599999999999994	2009
county	2	mutton (kg)	60.8999999999999986	2009
county	2	pork (kg)	2	2009
county	2	rabbit meat (kg)	0.299999999999999989	2009
county	2	poultry meat (kg)	207.5	2009
county	2	camel meat (kg)	1.5	2009
county	2	honey (kg)	1	2009
county	2	wax (kg)	0.299999999999999989	2009
county	2	eggs (tray)	70.2000000000000028	2009
county	2	hides (no)	96.0999999999999943	2009
county	2	skin (no)	71.2000000000000028	2009
county	3	mik (kg)	44969.1999999999971	2009
county	3	beef (kg)	2196.80000000000018	2009
county	3	wool (kg)	0	2009
county	3	goat meat (kg)	731	2009
county	3	mutton (kg)	82.0999999999999943	2009
county	3	pork (kg)	0.299999999999999989	2009
county	3	rabbit meat (kg)	0.100000000000000006	2009
county	3	poultry meat (kg)	228	2009
county	3	camel meat (kg)	0.200000000000000011	2009
county	3	honey (kg)	36.7999999999999972	2009
county	3	wax (kg)	0.699999999999999956	2009
county	3	eggs (tray)	1174.90000000000009	2009
county	3	hides (no)	0	2009
county	3	skin (no)	0	2009
county	21	mik (kg)	167609.700000000012	2009
county	21	beef (kg)	2692.30000000000018	2009
county	21	wool (kg)	0	2009
county	21	goat meat (kg)	168.400000000000006	2009
county	21	mutton (kg)	33.7999999999999972	2009
county	21	pork (kg)	34	2009
county	21	rabbit meat (kg)	0	2009
county	21	poultry meat (kg)	1617.59999999999991	2009
county	21	camel meat (kg)	0	2009
county	21	honey (kg)	93.7000000000000028	2009
county	21	wax (kg)	9.30000000000000071	2009
county	21	eggs (tray)	1952.70000000000005	2009
county	21	hides (no)	0	2009
county	21	skin (no)	0	2009
county	14	mik (kg)	34859	2009
county	14	beef (kg)	979.5	2009
county	14	wool (kg)	0	2009
county	14	goat meat (kg)	263.399999999999977	2009
county	14	mutton (kg)	76.2000000000000028	2009
county	14	pork (kg)	146.199999999999989	2009
county	14	rabbit meat (kg)	2.20000000000000018	2009
county	14	poultry meat (kg)	209.699999999999989	2009
county	14	camel meat (kg)	0	2009
county	14	honey (kg)	458.300000000000011	2009
county	14	wax (kg)	17.8000000000000007	2009
county	14	eggs (tray)	17685.7999999999993	2009
county	14	hides (no)	0	2009
county	14	skin (no)	0	2009
county	20	mik (kg)	77122.3000000000029	2009
county	20	beef (kg)	1070.09999999999991	2009
county	20	wool (kg)	0	2009
county	20	goat meat (kg)	65.2000000000000028	2009
county	20	mutton (kg)	9.5	2009
county	20	pork (kg)	24.8000000000000007	2009
county	20	rabbit meat (kg)	13	2009
county	20	poultry meat (kg)	2684	2009
county	20	camel meat (kg)	0	2009
county	20	honey (kg)	29.1000000000000014	2009
county	20	wax (kg)	0	2009
county	20	eggs (tray)	676.100000000000023	2009
county	20	hides (no)	0	2009
county	20	skin (no)	0	2009
county	19	mik (kg)	175747.899999999994	2009
county	19	beef (kg)	2599	2009
county	19	wool (kg)	0	2009
county	19	goat meat (kg)	395.399999999999977	2009
county	19	mutton (kg)	714.600000000000023	2009
county	19	pork (kg)	265.600000000000023	2009
county	19	rabbit meat (kg)	0	2009
county	19	poultry meat (kg)	250.5	2009
county	19	camel meat (kg)	0	2009
county	19	honey (kg)	17.1999999999999993	2009
county	19	wax (kg)	0	2009
county	19	eggs (tray)	9345.29999999999927	2009
county	19	hides (no)	41.8999999999999986	2009
county	19	skin (no)	14.4000000000000004	2009
county	27	mik (kg)	196083.100000000006	2009
county	27	beef (kg)	487	2009
county	27	wool (kg)	0	2009
county	27	goat meat (kg)	17.1000000000000014	2009
county	27	mutton (kg)	49.7999999999999972	2009
county	27	pork (kg)	53.5	2009
county	27	rabbit meat (kg)	3.20000000000000018	2009
county	27	poultry meat (kg)	14.0999999999999996	2009
county	27	camel meat (kg)	0	2009
county	27	honey (kg)	187.800000000000011	2009
county	27	wax (kg)	15.9000000000000004	2009
county	27	eggs (tray)	5390.19999999999982	2009
county	27	hides (no)	89.2999999999999972	2009
county	27	skin (no)	38.7999999999999972	2009
county	13	mik (kg)	34246.5999999999985	2009
county	13	beef (kg)	819	2009
county	13	wool (kg)	0	2009
county	13	goat meat (kg)	113.799999999999997	2009
county	13	mutton (kg)	93.0999999999999943	2009
county	13	pork (kg)	16.5	2009
county	13	rabbit meat (kg)	25.8000000000000007	2009
county	13	poultry meat (kg)	269	2009
county	13	camel meat (kg)	0	2009
county	13	honey (kg)	1382	2009
county	13	wax (kg)	0	2009
county	13	eggs (tray)	589.5	2009
county	13	hides (no)	29.5	2009
county	13	skin (no)	14.6999999999999993	2009
county	12	mik (kg)	120200	2009
county	12	beef (kg)	4000	2009
county	12	wool (kg)	19.8000000000000007	2009
county	12	goat meat (kg)	1425	2009
county	12	mutton (kg)	681	2009
county	12	pork (kg)	83.5	2009
county	12	rabbit meat (kg)	6.20000000000000018	2009
county	12	poultry meat (kg)	103.700000000000003	2009
county	12	camel meat (kg)	0	2009
county	12	honey (kg)	191.599999999999994	2009
county	12	wax (kg)	0	2009
county	12	eggs (tray)	985	2009
county	12	hides (no)	0	2009
county	12	skin (no)	0	2009
county	11	mik (kg)	3811.40000000000009	2009
county	11	beef (kg)	540	2009
county	11	wool (kg)	0	2009
county	11	goat meat (kg)	214	2009
county	11	mutton (kg)	233	2009
county	11	pork (kg)	0	2009
county	11	rabbit meat (kg)	0	2009
county	11	poultry meat (kg)	20	2009
county	11	camel meat (kg)	0	2009
county	11	honey (kg)	32	2009
county	11	wax (kg)	0	2009
county	11	eggs (tray)	900	2009
county	11	hides (no)	2.20000000000000018	2009
county	11	skin (no)	0	2009
county	10	mik (kg)	4131	2009
county	10	beef (kg)	7036.5	2009
county	10	wool (kg)	0	2009
county	10	goat meat (kg)	5752.69999999999982	2009
county	10	mutton (kg)	4395.60000000000036	2009
county	10	pork (kg)	0	2009
county	10	rabbit meat (kg)	0	2009
county	10	poultry meat (kg)	26.5	2009
county	10	camel meat (kg)	3415.30000000000018	2009
county	10	honey (kg)	34.7000000000000028	2009
county	10	wax (kg)	0.100000000000000006	2009
county	10	eggs (tray)	773.899999999999977	2009
county	10	hides (no)	61.2000000000000028	2009
county	10	skin (no)	9.19999999999999929	2009
county	33	mik (kg)	16854.2999999999993	2009
county	33	beef (kg)	2402	2009
county	33	wool (kg)	649	2009
county	33	goat meat (kg)	835.799999999999955	2009
county	33	mutton (kg)	2289.80000000000018	2009
county	33	pork (kg)	0	2009
county	33	rabbit meat (kg)	1.60000000000000009	2009
county	33	poultry meat (kg)	1395.90000000000009	2009
county	33	camel meat (kg)	0	2009
county	33	honey (kg)	231.699999999999989	2009
county	33	wax (kg)	9.09999999999999964	2009
county	33	eggs (tray)	1074.59999999999991	2009
county	33	hides (no)	58	2009
county	33	skin (no)	5.59999999999999964	2009
county	36	mik (kg)	72488.8999999999942	2009
county	36	beef (kg)	1292.90000000000009	2009
county	36	wool (kg)	0	2009
county	36	goat meat (kg)	32.2999999999999972	2009
county	36	mutton (kg)	30.6000000000000014	2009
county	36	pork (kg)	0	2009
county	36	rabbit meat (kg)	2.20000000000000018	2009
county	36	poultry meat (kg)	375.800000000000011	2009
county	36	camel meat (kg)	0	2009
county	36	honey (kg)	95.4000000000000057	2009
county	36	wax (kg)	14.1999999999999993	2009
county	36	eggs (tray)	2049.09999999999991	2009
county	36	hides (no)	0	2009
county	36	skin (no)	0	2009
county	46	mik (kg)	9810.10000000000036	2009
county	46	beef (kg)	447	2009
county	46	wool (kg)	0	2009
county	46	goat meat (kg)	267.800000000000011	2009
county	46	mutton (kg)	36.8999999999999986	2009
county	46	pork (kg)	152.099999999999994	2009
county	46	rabbit meat (kg)	41.6000000000000014	2009
county	46	poultry meat (kg)	518.899999999999977	2009
county	46	camel meat (kg)	0	2009
county	46	honey (kg)	289.600000000000023	2009
county	46	wax (kg)	20.1000000000000014	2009
county	46	eggs (tray)	8609.70000000000073	2009
county	46	hides (no)	20	2009
county	46	skin (no)	10.5	2009
county	45	mik (kg)	182819.799999999988	2009
county	45	beef (kg)	1674	2009
county	45	wool (kg)	0	2009
county	45	goat meat (kg)	426.399999999999977	2009
county	45	mutton (kg)	64.5999999999999943	2009
county	45	pork (kg)	5.20000000000000018	2009
county	45	rabbit meat (kg)	0	2009
county	45	poultry meat (kg)	1648.59999999999991	2009
county	45	camel meat (kg)	0	2009
county	45	honey (kg)	66.0999999999999943	2009
county	45	wax (kg)	21.8000000000000007	2009
county	45	eggs (tray)	1682.40000000000009	2009
county	45	hides (no)	46	2009
county	45	skin (no)	18.1000000000000014	2009
county	42	mik (kg)	24730	2009
county	42	beef (kg)	2768.09999999999991	2009
county	42	wool (kg)	0	2009
county	42	goat meat (kg)	12603	2009
county	42	mutton (kg)	13241	2009
county	42	pork (kg)	19579	2009
county	42	rabbit meat (kg)	0.200000000000000011	2009
county	42	poultry meat (kg)	33354	2009
county	42	camel meat (kg)	0	2009
county	42	honey (kg)	34.7000000000000028	2009
county	42	wax (kg)	2.79999999999999982	2009
county	42	eggs (tray)	723.899999999999977	2009
county	42	hides (no)	0	2009
county	42	skin (no)	0	2009
county	44	mik (kg)	43574.5999999999985	2009
county	44	beef (kg)	6536.10000000000036	2009
county	44	wool (kg)	0	2009
county	44	goat meat (kg)	815.899999999999977	2009
county	44	mutton (kg)	1331.5	2009
county	44	pork (kg)	96.2999999999999972	2009
county	44	rabbit meat (kg)	0	2009
county	44	poultry meat (kg)	1728.09999999999991	2009
county	44	camel meat (kg)	0	2009
county	44	honey (kg)	67.2000000000000028	2009
county	44	wax (kg)	11.5	2009
county	44	eggs (tray)	2548	2009
county	44	hides (no)	76.7000000000000028	2009
county	44	skin (no)	74.7000000000000028	2009
county	43	mik (kg)	38051.8000000000029	2009
county	43	beef (kg)	4655.39999999999964	2009
county	43	wool (kg)	0	2009
county	43	goat meat (kg)	893.600000000000023	2009
county	43	mutton (kg)	2455.5	2009
county	43	pork (kg)	37.1000000000000014	2009
county	43	rabbit meat (kg)	10.4000000000000004	2009
county	43	poultry meat (kg)	924.100000000000023	2009
county	43	camel meat (kg)	0	2009
county	43	honey (kg)	133.199999999999989	2009
county	43	wax (kg)	0.100000000000000006	2009
county	43	eggs (tray)	573.399999999999977	2009
county	43	hides (no)	0	2009
county	43	skin (no)	0	2009
county	25	mik (kg)	7124	2009
county	25	beef (kg)	270.300000000000011	2009
county	25	wool (kg)	0	2009
county	25	goat meat (kg)	141.300000000000011	2009
county	25	mutton (kg)	76	2009
county	25	pork (kg)	0	2009
county	25	rabbit meat (kg)	0	2009
county	25	poultry meat (kg)	6.29999999999999982	2009
county	25	camel meat (kg)	306.800000000000011	2009
county	25	honey (kg)	159.900000000000006	2009
county	25	wax (kg)	11.5999999999999996	2009
county	25	eggs (tray)	19.1000000000000014	2009
county	25	hides (no)	161.599999999999994	2009
county	25	skin (no)	12.8000000000000007	2009
county	18	mik (kg)	225827.600000000006	2009
county	18	beef (kg)	1797.79999999999995	2009
county	18	wool (kg)	164.400000000000006	2009
county	18	goat meat (kg)	13102	2009
county	18	mutton (kg)	37930.3000000000029	2009
county	18	pork (kg)	16303	2009
county	18	rabbit meat (kg)	10	2009
county	18	poultry meat (kg)	18740.9000000000015	2009
county	18	camel meat (kg)	0	2009
county	18	honey (kg)	11449.5	2009
county	18	wax (kg)	0	2009
county	18	eggs (tray)	31829.9000000000015	2009
county	18	hides (no)	32.2999999999999972	2009
county	18	skin (no)	55.5	2009
county	22	mik (kg)	334000.299999999988	2009
county	22	beef (kg)	2206.90000000000009	2009
county	22	wool (kg)	24.8000000000000007	2009
county	22	goat meat (kg)	15828.7000000000007	2009
county	22	mutton (kg)	19798.4000000000015	2009
county	22	pork (kg)	2340.09999999999991	2009
county	22	rabbit meat (kg)	107.799999999999997	2009
county	22	poultry meat (kg)	2731.19999999999982	2009
county	22	camel meat (kg)	0	2009
county	22	honey (kg)	76.7000000000000028	2009
county	22	wax (kg)	3.39999999999999991	2009
county	22	eggs (tray)	10056.5	2009
county	22	hides (no)	35.1000000000000014	2009
county	22	skin (no)	36	2009
county	41	mik (kg)	24308.5	2009
county	41	beef (kg)	2688.09999999999991	2009
county	41	wool (kg)	0	2009
county	41	goat meat (kg)	639.700000000000045	2009
county	41	mutton (kg)	312.5	2009
county	41	pork (kg)	132.5	2009
county	41	rabbit meat (kg)	60.5	2009
county	41	poultry meat (kg)	1609.40000000000009	2009
county	41	camel meat (kg)	0	2009
county	41	honey (kg)	436.600000000000023	2009
county	41	wax (kg)	8.09999999999999964	2009
county	41	eggs (tray)	630.5	2009
county	41	hides (no)	0	2009
county	41	skin (no)	0	2009
county	39	mik (kg)	225855.799999999988	2009
county	39	beef (kg)	3903.09999999999991	2009
county	39	wool (kg)	0	2009
county	39	goat meat (kg)	32.8999999999999986	2009
county	39	mutton (kg)	59.6000000000000014	2009
county	39	pork (kg)	31.1999999999999993	2009
county	39	rabbit meat (kg)	0	2009
county	39	poultry meat (kg)	725.700000000000045	2009
county	39	camel meat (kg)	0	2009
county	39	honey (kg)	184.400000000000006	2009
county	39	wax (kg)	7.5	2009
county	39	eggs (tray)	4398.5	2009
county	39	hides (no)	24.3999999999999986	2009
county	39	skin (no)	134.199999999999989	2009
county	37	mik (kg)	101984.600000000006	2009
county	37	beef (kg)	5892.19999999999982	2009
county	37	wool (kg)	0	2009
county	37	goat meat (kg)	115.099999999999994	2009
county	37	mutton (kg)	259.5	2009
county	37	pork (kg)	494.899999999999977	2009
county	37	rabbit meat (kg)	0	2009
county	37	poultry meat (kg)	362.600000000000023	2009
county	37	camel meat (kg)	0	2009
county	37	honey (kg)	112.799999999999997	2009
county	37	wax (kg)	3.20000000000000018	2009
county	37	eggs (tray)	1399.29999999999995	2009
county	37	hides (no)	0	2009
county	37	skin (no)	63.7000000000000028	2009
county	38	mik (kg)	27060.7999999999993	2009
county	38	beef (kg)	35.3999999999999986	2009
county	38	wool (kg)	0	2009
county	38	goat meat (kg)	34.2000000000000028	2009
county	38	mutton (kg)	6.79999999999999982	2009
county	38	pork (kg)	32.2000000000000028	2009
county	38	rabbit meat (kg)	4.20000000000000018	2009
county	38	poultry meat (kg)	14.9000000000000004	2009
county	38	camel meat (kg)	0	2009
county	38	honey (kg)	66	2009
county	38	wax (kg)	1.60000000000000009	2009
county	38	eggs (tray)	620.799999999999955	2009
county	38	hides (no)	5.59999999999999964	2009
county	38	skin (no)	30.8000000000000007	2009
county	29	mik (kg)	142375.899999999994	2009
county	29	beef (kg)	839.299999999999955	2009
county	29	wool (kg)	0	2009
county	29	goat meat (kg)	25.1999999999999993	2009
county	29	mutton (kg)	117.5	2009
county	29	pork (kg)	0	2009
county	29	rabbit meat (kg)	0	2009
county	29	poultry meat (kg)	0	2009
county	29	camel meat (kg)	0	2009
county	29	honey (kg)	189.099999999999994	2009
county	29	wax (kg)	1.89999999999999991	2009
county	29	eggs (tray)	6962.39999999999964	2009
county	29	hides (no)	14.9000000000000004	2009
county	29	skin (no)	6.09999999999999964	2009
county	30	mik (kg)	24454.9000000000015	2009
county	30	beef (kg)	1823.70000000000005	2009
county	30	wool (kg)	0.5	2009
county	30	goat meat (kg)	1073.09999999999991	2009
county	30	mutton (kg)	250.599999999999994	2009
county	30	pork (kg)	4.70000000000000018	2009
county	30	rabbit meat (kg)	0	2009
county	30	poultry meat (kg)	452.600000000000023	2009
county	30	camel meat (kg)	27.3000000000000007	2009
county	30	honey (kg)	567.5	2009
county	30	wax (kg)	0.800000000000000044	2009
county	30	eggs (tray)	997.700000000000045	2009
county	30	hides (no)	0	2009
county	30	skin (no)	0	2009
county	32	mik (kg)	296398.700000000012	2009
county	32	beef (kg)	3355.19999999999982	2009
county	32	wool (kg)	82.7999999999999972	2009
county	32	goat meat (kg)	116.400000000000006	2009
county	32	mutton (kg)	249.199999999999989	2009
county	32	pork (kg)	21.1999999999999993	2009
county	32	rabbit meat (kg)	0	2009
county	32	poultry meat (kg)	0	2009
county	32	camel meat (kg)	0	2009
county	32	honey (kg)	313.199999999999989	2009
county	32	wax (kg)	18.3000000000000007	2009
county	32	eggs (tray)	5144.5	2009
county	32	hides (no)	0	2009
county	32	skin (no)	0	2009
county	35	mik (kg)	155000	2009
county	35	beef (kg)	1711.79999999999995	2009
county	35	wool (kg)	0	2009
county	35	goat meat (kg)	128.900000000000006	2009
county	35	mutton (kg)	121	2009
county	35	pork (kg)	5	2009
county	35	rabbit meat (kg)	0	2009
county	35	poultry meat (kg)	0	2009
county	35	camel meat (kg)	0	2009
county	35	honey (kg)	61.1000000000000014	2009
county	35	wax (kg)	0.699999999999999956	2009
county	35	eggs (tray)	1253.29999999999995	2009
county	35	hides (no)	0	2009
county	35	skin (no)	0	2009
county	28	mik (kg)	46512.5	2009
county	28	beef (kg)	532.899999999999977	2009
county	28	wool (kg)	224.699999999999989	2009
county	28	goat meat (kg)	201.5	2009
county	28	mutton (kg)	215	2009
county	28	pork (kg)	0.100000000000000006	2009
county	28	rabbit meat (kg)	0	2009
county	28	poultry meat (kg)	26.8999999999999986	2009
county	28	camel meat (kg)	0	2009
county	28	honey (kg)	186.800000000000011	2009
county	28	wax (kg)	3.10000000000000009	2009
county	28	eggs (tray)	8600	2009
county	28	hides (no)	0	2009
county	28	skin (no)	0	2009
county	47	mik (kg)	38762.1999999999971	2009
county	47	beef (kg)	2421.5	2009
county	47	wool (kg)	0	2009
county	47	goat meat (kg)	382.100000000000023	2009
county	47	mutton (kg)	1286.5	2009
county	47	pork (kg)	1423.90000000000009	2009
county	47	rabbit meat (kg)	0	2009
county	47	poultry meat (kg)	910	2009
county	47	camel meat (kg)	0	2009
county	47	honey (kg)	53.8999999999999986	2009
county	47	wax (kg)	5.79999999999999982	2009
county	47	eggs (tray)	1626	2009
county	47	hides (no)	139.900000000000006	2009
county	47	skin (no)	7.70000000000000018	2009
county	23	mik (kg)	52601.3000000000029	2009
county	23	beef (kg)	313.199999999999989	2009
county	23	wool (kg)	0	2009
county	23	goat meat (kg)	1073.29999999999995	2009
county	23	mutton (kg)	456.800000000000011	2009
county	23	pork (kg)	3	2009
county	23	rabbit meat (kg)	0	2009
county	23	poultry meat (kg)	0.900000000000000022	2009
county	23	camel meat (kg)	240	2009
county	23	honey (kg)	103.099999999999994	2009
county	23	wax (kg)	0	2009
county	23	eggs (tray)	244.099999999999994	2009
county	23	hides (no)	264.199999999999989	2009
county	23	skin (no)	4	2009
county	9	mik (kg)	15769.2000000000007	2009
county	9	beef (kg)	717.600000000000023	2009
county	9	wool (kg)	0	2009
county	9	goat meat (kg)	1251.79999999999995	2009
county	9	mutton (kg)	517.600000000000023	2009
county	9	pork (kg)	0	2009
county	9	rabbit meat (kg)	0	2009
county	9	poultry meat (kg)	17.3999999999999986	2009
county	9	camel meat (kg)	1076.79999999999995	2009
county	9	honey (kg)	5.5	2009
county	9	wax (kg)	0.100000000000000006	2009
county	9	eggs (tray)	155	2009
county	9	hides (no)	0	2009
county	9	skin (no)	0	2009
county	40	mik (kg)	13813	2009
county	40	beef (kg)	6635	2009
county	40	wool (kg)	0	2009
county	40	goat meat (kg)	252	2009
county	40	mutton (kg)	220	2009
county	40	pork (kg)	987	2009
county	40	rabbit meat (kg)	3.29999999999999982	2009
county	40	poultry meat (kg)	791.200000000000045	2009
county	40	camel meat (kg)	0	2009
county	40	honey (kg)	350	2009
county	40	wax (kg)	0	2009
county	40	eggs (tray)	4389	2009
county	40	hides (no)	0	2009
county	40	skin (no)	0	2009
country	KE	mik (kg)	3429868.70000000019	2009
country	KE	beef (kg)	113450.300000000003	2009
country	KE	wool (kg)	1261.20000000000005	2009
country	KE	goat meat (kg)	68190.6000000000058	2009
country	KE	mutton (kg)	91589.6000000000058	2009
country	KE	pork (kg)	42804.3000000000029	2009
country	KE	rabbit meat (kg)	348.399999999999977	2009
country	KE	poultry meat (kg)	81042.6999999999971	2009
country	KE	camel meat (kg)	12297.5	2009
country	KE	honey (kg)	19534.7999999999993	2009
country	KE	wax (kg)	736.299999999999955	2009
country	KE	eggs (tray)	171183.899999999994	2009
country	KE	hides (no)	1388.09999999999991	2009
country	KE	skin (no)	923.5	2009
\.


--
-- Name: livestock_products pk_livestock_products; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.livestock_products
    ADD CONSTRAINT pk_livestock_products PRIMARY KEY (geo_level, geo_code, geo_version, livestock_products);


--
-- PostgreSQL database dump complete
--


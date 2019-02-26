--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;
SET row_security = off;

DROP TABLE IF EXISTS public.town_district_land_traded_statistic_2018;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: town_district_land_traded_statistic_2018; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.town_district_land_traded_statistic_2018 (
    geo_level character varying(50) NOT NULL,
    geo_code character varying(10) NOT NULL,
    geo_version character varying(128) DEFAULT ''::character varying NOT NULL,
    town_name character varying(128) NOT NULL,
    statistic character varying(128) NOT NULL,
    total numeric
);


--
-- Data for Name: town_district_land_traded_statistic_2018; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.town_district_land_traded_statistic_2018 (geo_level, geo_code, geo_version, town_name, statistic, total) FROM stdin;
district	DC10	2016	Aberdeen	number of transactions	1
district	DC32	2016	Acornhoek Bushbuckridge	number of transactions	3
district	DC10	2016	Albany	number of transactions	18
district	DC4	2016	Albertinia HesseQua	number of transactions	3
district	DC10	2016	Alexandria Ndlambe	number of transactions	14
district	DC14	2016	Aliwal-Noord Maletsiwai	number of transactions	11
district	DC35	2016	Alldays Blouberg	number of transactions	30
district	DC30	2016	Amsterdam Mkhondo	number of transactions	47
district	DC29	2016	Ballito KwaDukuza	number of transactions	34
district	DC9	2016	Barkley-Wes Dikgatlong	number of transactions	13
district	DC14	2016	Barkly-Oos Senqu	number of transactions	10
district	DC10	2016	Bathurst Ndlambe	number of transactions	11
district	DC5	2016	Beaufort-Wes	number of transactions	15
district	DC12	2016	Bedford Amathole	number of transactions	8
district	DC30	2016	Bethal Gonovan Mbeki	number of transactions	93
district	DC19	2016	Bethlehem Dihlabeng	number of transactions	24
district	DC16	2016	Bethulie	number of transactions	3
municipality	MAN	2016	Bloemfontein Mangaung	number of transactions	57
district	DC39	2016	Bloemhof Lekwa-Tecma	number of transactions	45
district	DC18	2016	Boshof Tokologo	number of transactions	43
district	DC18	2016	Bothaville Nala	number of transactions	28
district	DC18	2016	Brandfort Masilonyana	number of transactions	17
district	DC39	2016	Bray Kagisano-Molopo	number of transactions	7
district	DC3	2016	Bredasdorp Cape Aqulhas	number of transactions	17
district	DC7	2016	Britstown	number of transactions	9
district	DC18	2016	Bultfontein Tswelopele	number of transactions	12
district	DC47	2016	Burgersfort Thubatse	number of transactions	49
district	DC3	2016	Caledon (Overberg) Theewaterskloof	number of transactions	45
district	DC4	2016	Calitzdorp Kannaland	number of transactions	21
district	DC6	2016	Calvinia Hantam	number of transactions	24
municipality	CPT	2016	Cape Town	number of transactions	6
district	DC48	2016	Carletonville Merafong	number of transactions	134
district	DC7	2016	Carnavon Kareeberg	number of transactions	7
district	DC12	2016	Cathcart Amahlathi	number of transactions	6
district	DC2	2016	Ceres Witzenberg	number of transactions	21
district	DC1	2016	Clanwilliam Cederberg	number of transactions	24
district	DC19	2016	Clocolan Setso	number of transactions	4
district	DC7	2016	Colesberg Umsombomvu	number of transactions	8
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	number of transactions	74
district	DC13	2016	Cradock Inxuba Yethemba	number of transactions	8
district	DC38	2016	Delareyville Tswaing	number of transactions	51
district	DC34	2016	Dendron Makhado (Louis Trichardt)	number of transactions	62
district	DC38	2016	Derdepoort	number of transactions	11
district	DC16	2016	Dewetsdorp Naledi	number of transactions	8
district	DC7	2016	Douglas Siyancuma	number of transactions	4
district	DC16	2016	Edenburg Kopanong	number of transactions	6
district	DC14	2016	Elliot Sakhiszwe	number of transactions	9
district	DC36	2016	Ellisras Lephalale	number of transactions	33
municipality	DC40	2016	Ewbank	number of transactions	1
district	DC16	2016	Fauresmith Kopanong	number of transactions	17
district	DC19	2016	Ficksburg Setso	number of transactions	12
district	DC12	2016	Fort Beaufort Raymond Mhlaba	number of transactions	3
district	DC19	2016	Fouriesburg Dikabeng	number of transactions	10
district	DC20	2016	Frankfort Mafube	number of transactions	21
district	DC6	2016	Fraserburg Karoo Hoogland	number of transactions	8
district	DC4	2016	George	number of transactions	33
district	DC6	2016	Gordonia	number of transactions	32
district	DC10	2016	Graaff-Reinet Camdeboo	number of transactions	6
district	DC7	2016	Hanover Emthanjeni	number of transactions	4
district	DC19	2016	Harrismith Maluti-A-Phofung	number of transactions	26
district	DC20	2016	Heilbron Ngwathe	number of transactions	28
district	DC24	2016	Helpmekaar uMzinyathi	number of transactions	9
district	DC18	2016	Hoopstad Tswelopele	number of transactions	8
district	DC7	2016	Hopetown Thembelihle	number of transactions	12
district	DC10	2016	Humansdorp Kouga	number of transactions	35
district	DC16	2016	Jacobsdal Letsemeng	number of transactions	5
district	DC10	2016	Jansenville Ikwezi	number of transactions	6
district	DC10	2016	Joubertina Kou-Kamma	number of transactions	10
district	DC27	2016	Jozini Mkuze	number of transactions	2
district	DC8	2016	Kenhardt Kai !Garib	number of transactions	20
district	DC9	2016	Kimberley / HAY Frances Baard	number of transactions	39
municipality	BUF	2016	King Williams Town Baffalo City	number of transactions	5
district	DC4	2016	Knysna	number of transactions	20
district	DC43	2016	Kokstad	number of transactions	15
district	DC32	2016	Komatipoort Nkomazi	number of transactions	40
district	DC12	2016	Komga Great Kei	number of transactions	10
district	DC20	2016	Koppies Ngwathe	number of transactions	7
district	DC20	2016	Kroonstad Moqhaka	number of transactions	21
district	DC45	2016	Kuruman Ga-Segonyana	number of transactions	29
district	DC4	2016	Ladismith Kannaland	number of transactions	25
district	DC19	2016	Ladybrand Mantsopa	number of transactions	14
district	DC23	2016	Ladysmith Emnambithi	number of transactions	35
district	DC5	2016	Laingsburg	number of transactions	2
district	DC30	2016	Leandra Gonovan Mbeki	number of transactions	54
district	DC19	2016	Lindley Nketoana	number of transactions	26
district	DC26	2016	Louwsburg Abaqulusi	number of transactions	11
district	DC14	2016	Maclear Elundini	number of transactions	12
district	DC38	2016	Mahikeng	number of transactions	19
district	DC1	2016	Malmesbury Swartland	number of transactions	29
district	DC37	2016	Marikana (Rustenburg) Bonjala	number of transactions	215
district	DC36	2016	Marken	number of transactions	21
district	DC19	2016	Marquard Setso	number of transactions	13
district	DC44	2016	Matatiele	number of transactions	2
district	DC13	2016	Middelburg EC Inxuba Yethemba	number of transactions	9
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	number of transactions	125
district	DC39	2016	Moloporivier Bophirima	number of transactions	4
district	DC13	2016	Molteno Inkwanca	number of transactions	2
district	DC2	2016	Montagu Langeberg	number of transactions	26
district	DC4	2016	Mosselbaai	number of transactions	21
district	DC15	2016	Mthatha King Sabata Dalindyebo	number of transactions	7
district	DC5	2016	Murraysburg	number of transactions	4
district	DC34	2016	Musina	number of transactions	9
district	DC6	2016	Namakwa	number of transactions	21
district	DC32	2016	Nelspruit Mbombela	number of transactions	117
district	DC25	2016	Newcastle	number of transactions	16
municipality	EKU	2016	Nigel Ekurhuleni	number of transactions	66
district	DC36	2016	Nylstroom Modimolle	number of transactions	134
district	DC18	2016	Odendaalsrus Matjhabeng	number of transactions	2
municipality	BUF	2016	Oos-Londen Baffalo City	number of transactions	39
district	DC4	2016	Oudtshoorn	number of transactions	29
district	DC2	2016	Paarl/Wel Drakenstein	number of transactions	21
district	DC20	2016	Parys Ngwathe	number of transactions	13
district	DC10	2016	Pearston Blue Crane	number of transactions	4
district	DC33	2016	Phalaborwa Ba-Phalaborwa	number of transactions	4
district	DC16	2016	Philipolis Kopanong	number of transactions	4
district	DC7	2016	Phillipstown Renosterberg	number of transactions	2
district	DC22	2016	Pietermaritzburg Msunduzi	number of transactions	110
district	DC1	2016	Piketberg Bergriver	number of transactions	28
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	number of transactions	2
district	DC21	2016	Port Shepstone Ray Nkonyeni	number of transactions	25
municipality	TSH	2016	Pretoria Tshwane	number of transactions	218
district	DC7	2016	Prieska Siyathemba	number of transactions	6
district	DC5	2016	Prins Albert	number of transactions	10
district	DC13	2016	Queenstown Lukanji	number of transactions	3
district	DC16	2016	Reddersburg Kopanong	number of transactions	7
district	DC19	2016	Reitz Nketoana	number of transactions	21
district	DC39	2016	Reivilo Thaung	number of transactions	21
district	DC4	2016	Riversdal Hessequa	number of transactions	46
district	DC2	2016	Robertson Breede /Winelands	number of transactions	13
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	number of transactions	24
district	DC16	2016	Rouxville Mohokare	number of transactions	11
district	DC19	2016	Senekal Setsoto	number of transactions	24
district	DC16	2016	Smithfield Mohkare	number of transactions	2
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	number of transactions	68
district	DC10	2016	Somerset-Oos Blue Crane	number of transactions	15
district	DC27	2016	St Lucia Mtubatuba	number of transactions	4
district	DC2	2016	Stellenbosch	number of transactions	14
district	DC14	2016	Steynsburg Gariep	number of transactions	4
district	DC10	2016	Steytlerville Dr Beyers Naude	number of transactions	3
district	DC12	2016	Stutterheim Amahlathi	number of transactions	5
district	DC6	2016	Sutherland	number of transactions	9
district	DC3	2016	Swellendam	number of transactions	24
district	DC13	2016	Tarkastad Tsolwana	number of transactions	17
municipality	MAN	2016	Thaba Nchu	number of transactions	10
district	DC36	2016	Thabazimbi	number of transactions	53
district	DC18	2016	Theunissen Masilonyana	number of transactions	21
district	DC2	2016	Tulbagh	number of transactions	8
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	number of transactions	34
district	DC26	2016	Ulundi	number of transactions	12
district	DC43	2016	Underberg KwaSani	number of transactions	40
district	DC44	2016	Uniondale	number of transactions	12
district	DC35	2016	Usutu	number of transactions	5
district	DC25	2016	Utrecht eMadlangeni	number of transactions	43
district	DC9	2016	Vaalharts Phokwane	number of transactions	28
district	DC1	2016	Vanrynsdorp Matzikama	number of transactions	17
district	DC18	2016	Ventersburg Matjhabeng	number of transactions	11
district	DC7	2016	Victoria-Wes Umbuntu	number of transactions	3
district	DC20	2016	Viljoenskroon Moqhaka	number of transactions	9
municipality	DC40	2016	Vostershoop	number of transactions	1
district	DC19	2016	Vrede Phumelela	number of transactions	34
district	DC20	2016	Vredefort Ngwathe	number of transactions	14
district	DC39	2016	Vryburg Naledi	number of transactions	36
municipality	MAN	2016	Wepener Naledi	number of transactions	10
district	DC18	2016	Wesselsbron Nala	number of transactions	5
district	DC10	2016	Willomore Baviaans	number of transactions	5
district	DC18	2016	Winburg Masilonyana	number of transactions	12
district	DC14	2016	Wodehouse	number of transactions	12
district	DC40	2016	Wolmaransstad Maquassi	number of transactions	22
district	DC2	2016	Worcester Breede Valley	number of transactions	23
district	DC16	2016	Zastron Mohokare	number of transactions	10
district	DC38	2016	Zeerust Ramotshere	number of transactions	79
district	DC10	2016	Aberdeen	total hectare traded	2046
district	DC32	2016	Acornhoek Bushbuckridge	total hectare traded	2121
district	DC10	2016	Albany	total hectare traded	6005
district	DC4	2016	Albertinia HesseQua	total hectare traded	2494
district	DC10	2016	Alexandria Ndlambe	total hectare traded	4727
district	DC14	2016	Aliwal-Noord Maletsiwai	total hectare traded	9257
district	DC35	2016	Alldays Blouberg	total hectare traded	24012
district	DC30	2016	Amsterdam Mkhondo	total hectare traded	17268
district	DC29	2016	Ballito KwaDukuza	total hectare traded	3780
district	DC9	2016	Barkley-Wes Dikgatlong	total hectare traded	18622
district	DC14	2016	Barkly-Oos Senqu	total hectare traded	7774
district	DC10	2016	Bathurst Ndlambe	total hectare traded	2949
district	DC5	2016	Beaufort-Wes	total hectare traded	44242
district	DC12	2016	Bedford Amathole	total hectare traded	9926
district	DC30	2016	Bethal Gonovan Mbeki	total hectare traded	25902
district	DC19	2016	Bethlehem Dihlabeng	total hectare traded	6433
district	DC16	2016	Bethulie	total hectare traded	2321
municipality	MAN	2016	Bloemfontein Mangaung	total hectare traded	24298
district	DC39	2016	Bloemhof Lekwa-Tecma	total hectare traded	17002
district	DC18	2016	Boshof Tokologo	total hectare traded	26007
district	DC18	2016	Bothaville Nala	total hectare traded	9702
district	DC18	2016	Brandfort Masilonyana	total hectare traded	5588
district	DC39	2016	Bray Kagisano-Molopo	total hectare traded	12104
district	DC3	2016	Bredasdorp Cape Aqulhas	total hectare traded	2658
district	DC7	2016	Britstown	total hectare traded	32993
district	DC18	2016	Bultfontein Tswelopele	total hectare traded	3837
district	DC47	2016	Burgersfort Thubatse	total hectare traded	16935
district	DC3	2016	Caledon (Overberg) Theewaterskloof	total hectare traded	6098
district	DC4	2016	Calitzdorp Kannaland	total hectare traded	3936
district	DC6	2016	Calvinia Hantam	total hectare traded	64873
municipality	CPT	2016	Cape Town	total hectare traded	4629
district	DC48	2016	Carletonville Merafong	total hectare traded	24457
district	DC7	2016	Carnavon Kareeberg	total hectare traded	54739
district	DC12	2016	Cathcart Amahlathi	total hectare traded	4347
district	DC2	2016	Ceres Witzenberg	total hectare traded	36352
district	DC1	2016	Clanwilliam Cederberg	total hectare traded	14796
district	DC19	2016	Clocolan Setso	total hectare traded	2467
district	DC7	2016	Colesberg Umsombomvu	total hectare traded	21047
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	total hectare traded	21980
district	DC13	2016	Cradock Inxuba Yethemba	total hectare traded	18313
district	DC38	2016	Delareyville Tswaing	total hectare traded	17072
district	DC34	2016	Dendron Makhado (Louis Trichardt)	total hectare traded	17252
district	DC38	2016	Derdepoort	total hectare traded	8976
district	DC16	2016	Dewetsdorp Naledi	total hectare traded	5941
district	DC7	2016	Douglas Siyancuma	total hectare traded	143
district	DC16	2016	Edenburg Kopanong	total hectare traded	3347
district	DC14	2016	Elliot Sakhiszwe	total hectare traded	2383
district	DC36	2016	Ellisras Lephalale	total hectare traded	20393
municipality	DC40	2016	Ewbank	total hectare traded	2730
district	DC16	2016	Fauresmith Kopanong	total hectare traded	7291
district	DC19	2016	Ficksburg Setso	total hectare traded	2972
district	DC12	2016	Fort Beaufort Raymond Mhlaba	total hectare traded	3425
district	DC19	2016	Fouriesburg Dikabeng	total hectare traded	1825
district	DC20	2016	Frankfort Mafube	total hectare traded	8308
district	DC6	2016	Fraserburg Karoo Hoogland	total hectare traded	29003
district	DC4	2016	George	total hectare traded	3954
district	DC6	2016	Gordonia	total hectare traded	92478
district	DC10	2016	Graaff-Reinet Camdeboo	total hectare traded	16837
district	DC7	2016	Hanover Emthanjeni	total hectare traded	8476
district	DC19	2016	Harrismith Maluti-A-Phofung	total hectare traded	14968
district	DC20	2016	Heilbron Ngwathe	total hectare traded	34423
district	DC24	2016	Helpmekaar uMzinyathi	total hectare traded	3448
district	DC18	2016	Hoopstad Tswelopele	total hectare traded	2622
district	DC7	2016	Hopetown Thembelihle	total hectare traded	14307
district	DC10	2016	Humansdorp Kouga	total hectare traded	7339
district	DC16	2016	Jacobsdal Letsemeng	total hectare traded	3386
district	DC10	2016	Jansenville Ikwezi	total hectare traded	8808
district	DC10	2016	Joubertina Kou-Kamma	total hectare traded	801
district	DC27	2016	Jozini Mkuze	total hectare traded	29
district	DC8	2016	Kenhardt Kai !Garib	total hectare traded	52739
district	DC9	2016	Kimberley / HAY Frances Baard	total hectare traded	56313
municipality	BUF	2016	King Williams Town Baffalo City	total hectare traded	3862
district	DC4	2016	Knysna	total hectare traded	3147
district	DC43	2016	Kokstad	total hectare traded	7289
district	DC32	2016	Komatipoort Nkomazi	total hectare traded	8500
district	DC12	2016	Komga Great Kei	total hectare traded	3566
district	DC20	2016	Koppies Ngwathe	total hectare traded	1581
district	DC20	2016	Kroonstad Moqhaka	total hectare traded	7501
district	DC45	2016	Kuruman Ga-Segonyana	total hectare traded	54843
district	DC4	2016	Ladismith Kannaland	total hectare traded	13063
district	DC19	2016	Ladybrand Mantsopa	total hectare traded	3234
district	DC23	2016	Ladysmith Emnambithi	total hectare traded	15547
district	DC5	2016	Laingsburg	total hectare traded	1510
district	DC30	2016	Leandra Gonovan Mbeki	total hectare traded	12521
district	DC19	2016	Lindley Nketoana	total hectare traded	9327
district	DC26	2016	Louwsburg Abaqulusi	total hectare traded	8345
district	DC14	2016	Maclear Elundini	total hectare traded	7649
district	DC38	2016	Mahikeng	total hectare traded	9740
district	DC1	2016	Malmesbury Swartland	total hectare traded	12376
district	DC37	2016	Marikana (Rustenburg) Bonjala	total hectare traded	18236
district	DC36	2016	Marken	total hectare traded	18631
district	DC19	2016	Marquard Setso	total hectare traded	3760
district	DC44	2016	Matatiele	total hectare traded	570
district	DC13	2016	Middelburg EC Inxuba Yethemba	total hectare traded	19282
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	total hectare traded	27217
district	DC39	2016	Moloporivier Bophirima	total hectare traded	7354
district	DC13	2016	Molteno Inkwanca	total hectare traded	981
district	DC2	2016	Montagu Langeberg	total hectare traded	10073
district	DC4	2016	Mosselbaai	total hectare traded	2755
district	DC15	2016	Mthatha King Sabata Dalindyebo	total hectare traded	3384
district	DC5	2016	Murraysburg	total hectare traded	12476
district	DC34	2016	Musina	total hectare traded	1976
district	DC6	2016	Namakwa	total hectare traded	56665
district	DC32	2016	Nelspruit Mbombela	total hectare traded	22791
district	DC25	2016	Newcastle	total hectare traded	4784
municipality	EKU	2016	Nigel Ekurhuleni	total hectare traded	7185
district	DC36	2016	Nylstroom Modimolle	total hectare traded	27501
district	DC18	2016	Odendaalsrus Matjhabeng	total hectare traded	295
municipality	BUF	2016	Oos-Londen Baffalo City	total hectare traded	1609
district	DC4	2016	Oudtshoorn	total hectare traded	21533
district	DC2	2016	Paarl/Wel Drakenstein	total hectare traded	1019
district	DC20	2016	Parys Ngwathe	total hectare traded	1817
district	DC10	2016	Pearston Blue Crane	total hectare traded	2338
district	DC33	2016	Phalaborwa Ba-Phalaborwa	total hectare traded	84
district	DC16	2016	Philipolis Kopanong	total hectare traded	5156
district	DC7	2016	Phillipstown Renosterberg	total hectare traded	3520
district	DC22	2016	Pietermaritzburg Msunduzi	total hectare traded	18465
district	DC1	2016	Piketberg Bergriver	total hectare traded	13906
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	total hectare traded	206
district	DC21	2016	Port Shepstone Ray Nkonyeni	total hectare traded	2360
municipality	TSH	2016	Pretoria Tshwane	total hectare traded	9385
district	DC7	2016	Prieska Siyathemba	total hectare traded	18572
district	DC5	2016	Prins Albert	total hectare traded	18477
district	DC13	2016	Queenstown Lukanji	total hectare traded	2750
district	DC16	2016	Reddersburg Kopanong	total hectare traded	4641
district	DC19	2016	Reitz Nketoana	total hectare traded	6506
district	DC39	2016	Reivilo Thaung	total hectare traded	12109
district	DC4	2016	Riversdal Hessequa	total hectare traded	10596
district	DC2	2016	Robertson Breede /Winelands	total hectare traded	1213
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	total hectare traded	10903
district	DC16	2016	Rouxville Mohokare	total hectare traded	7839
district	DC19	2016	Senekal Setsoto	total hectare traded	7578
district	DC16	2016	Smithfield Mohkare	total hectare traded	1604
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	total hectare traded	5684
district	DC10	2016	Somerset-Oos Blue Crane	total hectare traded	14610
district	DC27	2016	St Lucia Mtubatuba	total hectare traded	210
district	DC2	2016	Stellenbosch	total hectare traded	1068
district	DC14	2016	Steynsburg Gariep	total hectare traded	2680
district	DC10	2016	Steytlerville Dr Beyers Naude	total hectare traded	3236
district	DC12	2016	Stutterheim Amahlathi	total hectare traded	1833
district	DC6	2016	Sutherland	total hectare traded	21867
district	DC3	2016	Swellendam	total hectare traded	7075
district	DC13	2016	Tarkastad Tsolwana	total hectare traded	22423
municipality	MAN	2016	Thaba Nchu	total hectare traded	4240
district	DC36	2016	Thabazimbi	total hectare traded	23050
district	DC18	2016	Theunissen Masilonyana	total hectare traded	5085
district	DC2	2016	Tulbagh	total hectare traded	837
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	total hectare traded	17500
district	DC26	2016	Ulundi	total hectare traded	16295
district	DC43	2016	Underberg KwaSani	total hectare traded	13181
district	DC44	2016	Uniondale	total hectare traded	14093
district	DC35	2016	Usutu	total hectare traded	5056
district	DC25	2016	Utrecht eMadlangeni	total hectare traded	21377
district	DC9	2016	Vaalharts Phokwane	total hectare traded	1085
district	DC1	2016	Vanrynsdorp Matzikama	total hectare traded	16814
district	DC18	2016	Ventersburg Matjhabeng	total hectare traded	2877
district	DC7	2016	Victoria-Wes Umbuntu	total hectare traded	8338
district	DC20	2016	Viljoenskroon Moqhaka	total hectare traded	4807
municipality	DC40	2016	Vostershoop	total hectare traded	482
district	DC19	2016	Vrede Phumelela	total hectare traded	13900
district	DC20	2016	Vredefort Ngwathe	total hectare traded	2525
district	DC39	2016	Vryburg Naledi	total hectare traded	22830
municipality	MAN	2016	Wepener Naledi	total hectare traded	5168
district	DC18	2016	Wesselsbron Nala	total hectare traded	1391
district	DC10	2016	Willomore Baviaans	total hectare traded	5606
district	DC26	2016	Ulundi	average price	\N
district	DC18	2016	Winburg Masilonyana	total hectare traded	5574
district	DC14	2016	Wodehouse	total hectare traded	22674
district	DC40	2016	Wolmaransstad Maquassi	total hectare traded	5707
district	DC2	2016	Worcester Breede Valley	total hectare traded	20916
district	DC16	2016	Zastron Mohokare	total hectare traded	5786
district	DC38	2016	Zeerust Ramotshere	total hectare traded	19906
district	DC10	2016	Aberdeen	lowest price per hectare	2796
district	DC32	2016	Acornhoek Bushbuckridge	lowest price per hectare	1117
district	DC10	2016	Albany	lowest price per hectare	3214
district	DC4	2016	Albertinia HesseQua	lowest price per hectare	588
district	DC10	2016	Alexandria Ndlambe	lowest price per hectare	3552
district	DC14	2016	Aliwal-Noord Maletsiwai	lowest price per hectare	3376
district	DC35	2016	Alldays Blouberg	lowest price per hectare	2933
district	DC30	2016	Amsterdam Mkhondo	lowest price per hectare	1485
district	DC29	2016	Ballito KwaDukuza	lowest price per hectare	3846
district	DC9	2016	Barkley-Wes Dikgatlong	lowest price per hectare	992
district	DC14	2016	Barkly-Oos Senqu	lowest price per hectare	2065
district	DC10	2016	Bathurst Ndlambe	lowest price per hectare	5158
district	DC5	2016	Beaufort-Wes	lowest price per hectare	1244
district	DC12	2016	Bedford Amathole	lowest price per hectare	2133
district	DC30	2016	Bethal Gonovan Mbeki	lowest price per hectare	2071
district	DC19	2016	Bethlehem Dihlabeng	lowest price per hectare	543
district	DC16	2016	Bethulie	lowest price per hectare	3701
municipality	MAN	2016	Bloemfontein Mangaung	lowest price per hectare	2121
district	DC39	2016	Bloemhof Lekwa-Tecma	lowest price per hectare	977
district	DC18	2016	Boshof Tokologo	lowest price per hectare	888
district	DC18	2016	Bothaville Nala	lowest price per hectare	4007
district	DC18	2016	Brandfort Masilonyana	lowest price per hectare	5015
district	DC39	2016	Bray Kagisano-Molopo	lowest price per hectare	3508
district	DC3	2016	Bredasdorp Cape Aqulhas	lowest price per hectare	3277
district	DC7	2016	Britstown	lowest price per hectare	124
district	DC18	2016	Bultfontein Tswelopele	lowest price per hectare	4455
district	DC47	2016	Burgersfort Thubatse	lowest price per hectare	99
district	DC3	2016	Caledon (Overberg) Theewaterskloof	lowest price per hectare	8333
district	DC4	2016	Calitzdorp Kannaland	lowest price per hectare	830
district	DC6	2016	Calvinia Hantam	lowest price per hectare	364
municipality	CPT	2016	Cape Town	lowest price per hectare	7702
district	DC48	2016	Carletonville Merafong	lowest price per hectare	332
district	DC7	2016	Carnavon Kareeberg	lowest price per hectare	913
district	DC12	2016	Cathcart Amahlathi	lowest price per hectare	6565
district	DC2	2016	Ceres Witzenberg	lowest price per hectare	114
district	DC1	2016	Clanwilliam Cederberg	lowest price per hectare	391
district	DC19	2016	Clocolan Setso	lowest price per hectare	1931
district	DC7	2016	Colesberg Umsombomvu	lowest price per hectare	893
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	lowest price per hectare	1805
district	DC13	2016	Cradock Inxuba Yethemba	lowest price per hectare	2702
district	DC38	2016	Delareyville Tswaing	lowest price per hectare	4222
district	DC34	2016	Dendron Makhado (Louis Trichardt)	lowest price per hectare	3719
district	DC38	2016	Derdepoort	lowest price per hectare	1873
district	DC16	2016	Dewetsdorp Naledi	lowest price per hectare	3214
district	DC7	2016	Douglas Siyancuma	lowest price per hectare	101471
district	DC16	2016	Edenburg Kopanong	lowest price per hectare	2710
district	DC14	2016	Elliot Sakhiszwe	lowest price per hectare	1679
district	DC36	2016	Ellisras Lephalale	lowest price per hectare	1557
municipality	DC40	2016	Ewbank	lowest price per hectare	4500
district	DC16	2016	Fauresmith Kopanong	lowest price per hectare	1191
district	DC19	2016	Ficksburg Setso	lowest price per hectare	4792
district	DC12	2016	Fort Beaufort Raymond Mhlaba	lowest price per hectare	6839
district	DC19	2016	Fouriesburg Dikabeng	lowest price per hectare	13167
district	DC20	2016	Frankfort Mafube	lowest price per hectare	7643
district	DC6	2016	Fraserburg Karoo Hoogland	lowest price per hectare	196
district	DC4	2016	George	lowest price per hectare	1009
district	DC6	2016	Gordonia	lowest price per hectare	6
district	DC10	2016	Graaff-Reinet Camdeboo	lowest price per hectare	1033
district	DC7	2016	Hanover Emthanjeni	lowest price per hectare	2440
district	DC19	2016	Harrismith Maluti-A-Phofung	lowest price per hectare	3753
district	DC20	2016	Heilbron Ngwathe	lowest price per hectare	2500
district	DC24	2016	Helpmekaar uMzinyathi	lowest price per hectare	3017
district	DC18	2016	Hoopstad Tswelopele	lowest price per hectare	12729
district	DC7	2016	Hopetown Thembelihle	lowest price per hectare	1165
district	DC10	2016	Humansdorp Kouga	lowest price per hectare	394
district	DC16	2016	Jacobsdal Letsemeng	lowest price per hectare	2837
district	DC10	2016	Jansenville Ikwezi	lowest price per hectare	2121
district	DC10	2016	Joubertina Kou-Kamma	lowest price per hectare	752
district	DC27	2016	Jozini Mkuze	lowest price per hectare	37294
district	DC8	2016	Kenhardt Kai !Garib	lowest price per hectare	600
district	DC9	2016	Kimberley / HAY Frances Baard	lowest price per hectare	1450
municipality	BUF	2016	King Williams Town Baffalo City	lowest price per hectare	532
district	DC4	2016	Knysna	lowest price per hectare	9417
district	DC43	2016	Kokstad	lowest price per hectare	3687
district	DC32	2016	Komatipoort Nkomazi	lowest price per hectare	2577
district	DC12	2016	Komga Great Kei	lowest price per hectare	6005
district	DC20	2016	Koppies Ngwathe	lowest price per hectare	9813
district	DC20	2016	Kroonstad Moqhaka	lowest price per hectare	5268
district	DC45	2016	Kuruman Ga-Segonyana	lowest price per hectare	467
district	DC4	2016	Ladismith Kannaland	lowest price per hectare	268
district	DC19	2016	Ladybrand Mantsopa	lowest price per hectare	98
district	DC23	2016	Ladysmith Emnambithi	lowest price per hectare	3675
district	DC5	2016	Laingsburg	lowest price per hectare	1855
district	DC30	2016	Leandra Gonovan Mbeki	lowest price per hectare	909
district	DC19	2016	Lindley Nketoana	lowest price per hectare	5556
district	DC26	2016	Louwsburg Abaqulusi	lowest price per hectare	15625
district	DC14	2016	Maclear Elundini	lowest price per hectare	2571
district	DC38	2016	Mahikeng	lowest price per hectare	20
district	DC1	2016	Malmesbury Swartland	lowest price per hectare	30
district	DC37	2016	Marikana (Rustenburg) Bonjala	lowest price per hectare	155
district	DC36	2016	Marken	lowest price per hectare	2993
district	DC19	2016	Marquard Setso	lowest price per hectare	5670
district	DC44	2016	Matatiele	lowest price per hectare	702
district	DC13	2016	Middelburg EC Inxuba Yethemba	lowest price per hectare	2553
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	lowest price per hectare	2381
district	DC39	2016	Moloporivier Bophirima	lowest price per hectare	4606
district	DC13	2016	Molteno Inkwanca	lowest price per hectare	2439
district	DC2	2016	Montagu Langeberg	lowest price per hectare	191
district	DC4	2016	Mosselbaai	lowest price per hectare	5907
district	DC15	2016	Mthatha King Sabata Dalindyebo	lowest price per hectare	634
district	DC5	2016	Murraysburg	lowest price per hectare	2348
district	DC34	2016	Musina	lowest price per hectare	18
district	DC6	2016	Namakwa	lowest price per hectare	151
district	DC32	2016	Nelspruit Mbombela	lowest price per hectare	1200
district	DC25	2016	Newcastle	lowest price per hectare	1523
municipality	EKU	2016	Nigel Ekurhuleni	lowest price per hectare	400
district	DC36	2016	Nylstroom Modimolle	lowest price per hectare	810
district	DC18	2016	Odendaalsrus Matjhabeng	lowest price per hectare	14195
municipality	BUF	2016	Oos-Londen Baffalo City	lowest price per hectare	8108
district	DC4	2016	Oudtshoorn	lowest price per hectare	138
district	DC2	2016	Paarl/Wel Drakenstein	lowest price per hectare	44429
district	DC20	2016	Parys Ngwathe	lowest price per hectare	410
district	DC10	2016	Pearston Blue Crane	lowest price per hectare	5006
district	DC33	2016	Phalaborwa Ba-Phalaborwa	lowest price per hectare	20048
district	DC16	2016	Philipolis Kopanong	lowest price per hectare	4198
district	DC7	2016	Phillipstown Renosterberg	lowest price per hectare	186
district	DC22	2016	Pietermaritzburg Msunduzi	lowest price per hectare	100
district	DC1	2016	Piketberg Bergriver	lowest price per hectare	629
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	lowest price per hectare	4942
district	DC21	2016	Port Shepstone Ray Nkonyeni	lowest price per hectare	8025
municipality	TSH	2016	Pretoria Tshwane	lowest price per hectare	1274
district	DC7	2016	Prieska Siyathemba	lowest price per hectare	1000
district	DC5	2016	Prins Albert	lowest price per hectare	759
district	DC13	2016	Queenstown Lukanji	lowest price per hectare	5183
district	DC16	2016	Reddersburg Kopanong	lowest price per hectare	3792
district	DC19	2016	Reitz Nketoana	lowest price per hectare	594
district	DC39	2016	Reivilo Thaung	lowest price per hectare	897
district	DC4	2016	Riversdal Hessequa	lowest price per hectare	476
district	DC2	2016	Robertson Breede /Winelands	lowest price per hectare	5019
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	lowest price per hectare	2124
district	DC16	2016	Rouxville Mohokare	lowest price per hectare	4505
district	DC19	2016	Senekal Setsoto	lowest price per hectare	5263
district	DC16	2016	Smithfield Mohkare	lowest price per hectare	6299
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	lowest price per hectare	1398
district	DC10	2016	Somerset-Oos Blue Crane	lowest price per hectare	802
district	DC27	2016	St Lucia Mtubatuba	lowest price per hectare	469
district	DC2	2016	Stellenbosch	lowest price per hectare	159600
district	DC14	2016	Steynsburg Gariep	lowest price per hectare	2762
district	DC10	2016	Steytlerville Dr Beyers Naude	lowest price per hectare	4694
district	DC12	2016	Stutterheim Amahlathi	lowest price per hectare	5324
district	DC6	2016	Sutherland	lowest price per hectare	1020
district	DC3	2016	Swellendam	lowest price per hectare	3700
district	DC13	2016	Tarkastad Tsolwana	lowest price per hectare	2869
municipality	MAN	2016	Thaba Nchu	lowest price per hectare	381
district	DC36	2016	Thabazimbi	lowest price per hectare	3568
district	DC18	2016	Theunissen Masilonyana	lowest price per hectare	1138
district	DC2	2016	Tulbagh	lowest price per hectare	11942
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	lowest price per hectare	79
district	DC26	2016	Ulundi	lowest price per hectare	73
district	DC43	2016	Underberg KwaSani	lowest price per hectare	4167
district	DC44	2016	Uniondale	lowest price per hectare	2341
district	DC35	2016	Usutu	lowest price per hectare	3369
district	DC25	2016	Utrecht eMadlangeni	lowest price per hectare	1350
district	DC9	2016	Vaalharts Phokwane	lowest price per hectare	60417
district	DC1	2016	Vanrynsdorp Matzikama	lowest price per hectare	371
district	DC18	2016	Ventersburg Matjhabeng	lowest price per hectare	6431
district	DC7	2016	Victoria-Wes Umbuntu	lowest price per hectare	2077
district	DC20	2016	Viljoenskroon Moqhaka	lowest price per hectare	10608
municipality	DC40	2016	Vostershoop	lowest price per hectare	8299
district	DC19	2016	Vrede Phumelela	lowest price per hectare	9
district	DC20	2016	Vredefort Ngwathe	lowest price per hectare	9000
district	DC39	2016	Vryburg Naledi	lowest price per hectare	1730
municipality	MAN	2016	Wepener Naledi	lowest price per hectare	2706
district	DC18	2016	Wesselsbron Nala	lowest price per hectare	13310
district	DC10	2016	Willomore Baviaans	lowest price per hectare	1166
district	DC18	2016	Winburg Masilonyana	lowest price per hectare	6977
district	DC14	2016	Wodehouse	lowest price per hectare	270
district	DC40	2016	Wolmaransstad Maquassi	lowest price per hectare	4938
district	DC2	2016	Worcester Breede Valley	lowest price per hectare	67
district	DC16	2016	Zastron Mohokare	lowest price per hectare	2249
district	DC38	2016	Zeerust Ramotshere	lowest price per hectare	1280
district	DC10	2016	Aberdeen	highest price per hectare	2796
district	DC32	2016	Acornhoek Bushbuckridge	highest price per hectare	50400
district	DC10	2016	Albany	highest price per hectare	69091
district	DC4	2016	Albertinia HesseQua	highest price per hectare	6848
district	DC10	2016	Alexandria Ndlambe	highest price per hectare	47368
district	DC14	2016	Aliwal-Noord Maletsiwai	highest price per hectare	24570
district	DC35	2016	Alldays Blouberg	highest price per hectare	71429
district	DC30	2016	Amsterdam Mkhondo	highest price per hectare	492000
district	DC29	2016	Ballito KwaDukuza	highest price per hectare	11742988
district	DC9	2016	Barkley-Wes Dikgatlong	highest price per hectare	7779
district	DC14	2016	Barkly-Oos Senqu	highest price per hectare	23667
district	DC10	2016	Bathurst Ndlambe	highest price per hectare	90909
district	DC5	2016	Beaufort-Wes	highest price per hectare	43182
district	DC12	2016	Bedford Amathole	highest price per hectare	250000
district	DC30	2016	Bethal Gonovan Mbeki	highest price per hectare	194915
district	DC19	2016	Bethlehem Dihlabeng	highest price per hectare	583333
district	DC16	2016	Bethulie	highest price per hectare	12886
municipality	MAN	2016	Bloemfontein Mangaung	highest price per hectare	10438627
district	DC39	2016	Bloemhof Lekwa-Tecma	highest price per hectare	90517
district	DC18	2016	Boshof Tokologo	highest price per hectare	30998
district	DC18	2016	Bothaville Nala	highest price per hectare	62849
district	DC18	2016	Brandfort Masilonyana	highest price per hectare	85714
district	DC39	2016	Bray Kagisano-Molopo	highest price per hectare	7438
district	DC3	2016	Bredasdorp Cape Aqulhas	highest price per hectare	1250000
district	DC7	2016	Britstown	highest price per hectare	4101
district	DC18	2016	Bultfontein Tswelopele	highest price per hectare	48495
district	DC47	2016	Burgersfort Thubatse	highest price per hectare	948276
district	DC3	2016	Caledon (Overberg) Theewaterskloof	highest price per hectare	847059
district	DC4	2016	Calitzdorp Kannaland	highest price per hectare	100000
district	DC6	2016	Calvinia Hantam	highest price per hectare	2851
municipality	CPT	2016	Cape Town	highest price per hectare	225000
district	DC48	2016	Carletonville Merafong	highest price per hectare	6546450
district	DC7	2016	Carnavon Kareeberg	highest price per hectare	2466
district	DC12	2016	Cathcart Amahlathi	highest price per hectare	56818
district	DC2	2016	Ceres Witzenberg	highest price per hectare	200000
district	DC1	2016	Clanwilliam Cederberg	highest price per hectare	167857
district	DC19	2016	Clocolan Setso	highest price per hectare	24702
district	DC7	2016	Colesberg Umsombomvu	highest price per hectare	130435
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	highest price per hectare	400000
district	DC13	2016	Cradock Inxuba Yethemba	highest price per hectare	153901
district	DC38	2016	Delareyville Tswaing	highest price per hectare	38095
district	DC34	2016	Dendron Makhado (Louis Trichardt)	highest price per hectare	239032
district	DC38	2016	Derdepoort	highest price per hectare	15067
district	DC16	2016	Dewetsdorp Naledi	highest price per hectare	12903
district	DC7	2016	Douglas Siyancuma	highest price per hectare	241935
district	DC16	2016	Edenburg Kopanong	highest price per hectare	8359
district	DC14	2016	Elliot Sakhiszwe	highest price per hectare	43135
district	DC36	2016	Ellisras Lephalale	highest price per hectare	80000
municipality	DC40	2016	Ewbank	highest price per hectare	4500
district	DC16	2016	Fauresmith Kopanong	highest price per hectare	59829
district	DC19	2016	Ficksburg Setso	highest price per hectare	41638
district	DC12	2016	Fort Beaufort Raymond Mhlaba	highest price per hectare	8497
district	DC19	2016	Fouriesburg Dikabeng	highest price per hectare	215909
district	DC20	2016	Frankfort Mafube	highest price per hectare	28902
district	DC6	2016	Fraserburg Karoo Hoogland	highest price per hectare	2487
district	DC4	2016	George	highest price per hectare	200000
district	DC6	2016	Gordonia	highest price per hectare	400000
district	DC10	2016	Graaff-Reinet Camdeboo	highest price per hectare	37313
district	DC7	2016	Hanover Emthanjeni	highest price per hectare	5937
district	DC19	2016	Harrismith Maluti-A-Phofung	highest price per hectare	44737
district	DC20	2016	Heilbron Ngwathe	highest price per hectare	60000
district	DC24	2016	Helpmekaar uMzinyathi	highest price per hectare	130920
district	DC18	2016	Hoopstad Tswelopele	highest price per hectare	53318
district	DC7	2016	Hopetown Thembelihle	highest price per hectare	260288
district	DC10	2016	Humansdorp Kouga	highest price per hectare	791667
district	DC16	2016	Jacobsdal Letsemeng	highest price per hectare	6667
district	DC10	2016	Jansenville Ikwezi	highest price per hectare	3378
district	DC10	2016	Joubertina Kou-Kamma	highest price per hectare	320551
district	DC27	2016	Jozini Mkuze	highest price per hectare	40962
district	DC8	2016	Kenhardt Kai !Garib	highest price per hectare	276364
district	DC9	2016	Kimberley / HAY Frances Baard	highest price per hectare	1086957
municipality	BUF	2016	King Williams Town Baffalo City	highest price per hectare	382514
district	DC4	2016	Knysna	highest price per hectare	353000
district	DC43	2016	Kokstad	highest price per hectare	235000
district	DC32	2016	Komatipoort Nkomazi	highest price per hectare	350649
district	DC12	2016	Komga Great Kei	highest price per hectare	32500
district	DC20	2016	Koppies Ngwathe	highest price per hectare	29483
district	DC20	2016	Kroonstad Moqhaka	highest price per hectare	27695
district	DC45	2016	Kuruman Ga-Segonyana	highest price per hectare	54000
district	DC4	2016	Ladismith Kannaland	highest price per hectare	66667
district	DC19	2016	Ladybrand Mantsopa	highest price per hectare	20179
district	DC23	2016	Ladysmith Emnambithi	highest price per hectare	210000
district	DC5	2016	Laingsburg	highest price per hectare	2450
district	DC30	2016	Leandra Gonovan Mbeki	highest price per hectare	133333
district	DC19	2016	Lindley Nketoana	highest price per hectare	73333
district	DC26	2016	Louwsburg Abaqulusi	highest price per hectare	166333
district	DC14	2016	Maclear Elundini	highest price per hectare	14501
district	DC38	2016	Mahikeng	highest price per hectare	40909
district	DC1	2016	Malmesbury Swartland	highest price per hectare	475000
district	DC37	2016	Marikana (Rustenburg) Bonjala	highest price per hectare	5865752
district	DC36	2016	Marken	highest price per hectare	69892
district	DC19	2016	Marquard Setso	highest price per hectare	14233
district	DC44	2016	Matatiele	highest price per hectare	702
district	DC13	2016	Middelburg EC Inxuba Yethemba	highest price per hectare	6027
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	highest price per hectare	519545
district	DC39	2016	Moloporivier Bophirima	highest price per hectare	6492
district	DC13	2016	Molteno Inkwanca	highest price per hectare	3998
district	DC2	2016	Montagu Langeberg	highest price per hectare	230000
district	DC4	2016	Mosselbaai	highest price per hectare	227273
district	DC15	2016	Mthatha King Sabata Dalindyebo	highest price per hectare	17256
district	DC5	2016	Murraysburg	highest price per hectare	29470
district	DC34	2016	Musina	highest price per hectare	2615732
district	DC6	2016	Namakwa	highest price per hectare	45714
district	DC32	2016	Nelspruit Mbombela	highest price per hectare	1130435
district	DC25	2016	Newcastle	highest price per hectare	54545
municipality	EKU	2016	Nigel Ekurhuleni	highest price per hectare	8858025
district	DC36	2016	Nylstroom Modimolle	highest price per hectare	335294
district	DC18	2016	Odendaalsrus Matjhabeng	highest price per hectare	76316
municipality	BUF	2016	Oos-Londen Baffalo City	highest price per hectare	461538
district	DC4	2016	Oudtshoorn	highest price per hectare	414126
district	DC2	2016	Paarl/Wel Drakenstein	highest price per hectare	2619031
district	DC20	2016	Parys Ngwathe	highest price per hectare	619048
district	DC10	2016	Pearston Blue Crane	highest price per hectare	62136
district	DC33	2016	Phalaborwa Ba-Phalaborwa	highest price per hectare	117000
district	DC16	2016	Philipolis Kopanong	highest price per hectare	8630
district	DC7	2016	Phillipstown Renosterberg	highest price per hectare	12249
district	DC22	2016	Pietermaritzburg Msunduzi	highest price per hectare	2166000
district	DC1	2016	Piketberg Bergriver	highest price per hectare	128070
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	highest price per hectare	25000
district	DC21	2016	Port Shepstone Ray Nkonyeni	highest price per hectare	350000
municipality	TSH	2016	Pretoria Tshwane	highest price per hectare	10504286
district	DC7	2016	Prieska Siyathemba	highest price per hectare	290000
district	DC5	2016	Prins Albert	highest price per hectare	68627
district	DC13	2016	Queenstown Lukanji	highest price per hectare	50000
district	DC16	2016	Reddersburg Kopanong	highest price per hectare	8389
district	DC19	2016	Reitz Nketoana	highest price per hectare	37037
district	DC39	2016	Reivilo Thaung	highest price per hectare	678788
district	DC4	2016	Riversdal Hessequa	highest price per hectare	342105
district	DC2	2016	Robertson Breede /Winelands	highest price per hectare	460000
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	highest price per hectare	119403
district	DC16	2016	Rouxville Mohokare	highest price per hectare	27027
district	DC19	2016	Senekal Setsoto	highest price per hectare	108333
district	DC16	2016	Smithfield Mohkare	highest price per hectare	17953
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	highest price per hectare	538462
district	DC10	2016	Somerset-Oos Blue Crane	highest price per hectare	134454
district	DC27	2016	St Lucia Mtubatuba	highest price per hectare	175000
district	DC2	2016	Stellenbosch	highest price per hectare	3159091
district	DC14	2016	Steynsburg Gariep	highest price per hectare	186842
district	DC10	2016	Steytlerville Dr Beyers Naude	highest price per hectare	6826
district	DC12	2016	Stutterheim Amahlathi	highest price per hectare	26824
district	DC6	2016	Sutherland	highest price per hectare	2788
district	DC3	2016	Swellendam	highest price per hectare	354167
district	DC13	2016	Tarkastad Tsolwana	highest price per hectare	89400
municipality	MAN	2016	Thaba Nchu	highest price per hectare	10592
district	DC36	2016	Thabazimbi	highest price per hectare	766650
district	DC18	2016	Theunissen Masilonyana	highest price per hectare	128031
district	DC2	2016	Tulbagh	highest price per hectare	305085
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	highest price per hectare	651515
district	DC26	2016	Ulundi	highest price per hectare	75224
district	DC43	2016	Underberg KwaSani	highest price per hectare	275000
district	DC44	2016	Uniondale	highest price per hectare	189145
district	DC35	2016	Usutu	highest price per hectare	24236
district	DC25	2016	Utrecht eMadlangeni	highest price per hectare	76190
district	DC9	2016	Vaalharts Phokwane	highest price per hectare	1451000
district	DC1	2016	Vanrynsdorp Matzikama	highest price per hectare	266667
district	DC18	2016	Ventersburg Matjhabeng	highest price per hectare	17641
district	DC7	2016	Victoria-Wes Umbuntu	highest price per hectare	6288
district	DC20	2016	Viljoenskroon Moqhaka	highest price per hectare	165524
municipality	DC40	2016	Vostershoop	highest price per hectare	8299
district	DC19	2016	Vrede Phumelela	highest price per hectare	23051
district	DC20	2016	Vredefort Ngwathe	highest price per hectare	37791
district	DC39	2016	Vryburg Naledi	highest price per hectare	112500
municipality	MAN	2016	Wepener Naledi	highest price per hectare	11050
district	DC18	2016	Wesselsbron Nala	highest price per hectare	53587
district	DC10	2016	Willomore Baviaans	highest price per hectare	7143
district	DC18	2016	Winburg Masilonyana	highest price per hectare	17771
district	DC14	2016	Wodehouse	highest price per hectare	7440
district	DC40	2016	Wolmaransstad Maquassi	highest price per hectare	42647
district	DC2	2016	Worcester Breede Valley	highest price per hectare	545455
district	DC16	2016	Zastron Mohokare	highest price per hectare	17205
district	DC38	2016	Zeerust Ramotshere	highest price per hectare	140824
district	DC10	2016	Aberdeen	average price per hectare	2796
district	DC32	2016	Acornhoek Bushbuckridge	average price per hectare	30353
district	DC10	2016	Albany	average price per hectare	18208
district	DC4	2016	Albertinia HesseQua	average price per hectare	4476
district	DC10	2016	Alexandria Ndlambe	average price per hectare	23680
district	DC14	2016	Aliwal-Noord Maletsiwai	average price per hectare	7760
district	DC35	2016	Alldays Blouberg	average price per hectare	12897
district	DC30	2016	Amsterdam Mkhondo	average price per hectare	44379
district	DC29	2016	Ballito KwaDukuza	average price per hectare	178243
district	DC9	2016	Barkley-Wes Dikgatlong	average price per hectare	4721
district	DC14	2016	Barkly-Oos Senqu	average price per hectare	6404
district	DC10	2016	Bathurst Ndlambe	average price per hectare	24962
district	DC5	2016	Beaufort-Wes	average price per hectare	2095
district	DC12	2016	Bedford Amathole	average price per hectare	52294
district	DC30	2016	Bethal Gonovan Mbeki	average price per hectare	24627
district	DC19	2016	Bethlehem Dihlabeng	average price per hectare	58015
district	DC16	2016	Bethulie	average price per hectare	8323
municipality	MAN	2016	Bloemfontein Mangaung	average price per hectare	21342
district	DC39	2016	Bloemhof Lekwa-Tecma	average price per hectare	6930
district	DC18	2016	Boshof Tokologo	average price per hectare	8500
district	DC18	2016	Bothaville Nala	average price per hectare	22152
district	DC18	2016	Brandfort Masilonyana	average price per hectare	10572
district	DC39	2016	Bray Kagisano-Molopo	average price per hectare	5050
district	DC3	2016	Bredasdorp Cape Aqulhas	average price per hectare	180782
district	DC7	2016	Britstown	average price per hectare	1424
district	DC18	2016	Bultfontein Tswelopele	average price per hectare	22918
district	DC47	2016	Burgersfort Thubatse	average price per hectare	51862
district	DC3	2016	Caledon (Overberg) Theewaterskloof	average price per hectare	160693
district	DC4	2016	Calitzdorp Kannaland	average price per hectare	30800
district	DC6	2016	Calvinia Hantam	average price per hectare	1267
municipality	CPT	2016	Cape Town	average price per hectare	82287
district	DC48	2016	Carletonville Merafong	average price per hectare	52512
district	DC7	2016	Carnavon Kareeberg	average price per hectare	1998
district	DC12	2016	Cathcart Amahlathi	average price per hectare	8922
district	DC2	2016	Ceres Witzenberg	average price per hectare	34528
district	DC1	2016	Clanwilliam Cederberg	average price per hectare	15565
district	DC19	2016	Clocolan Setso	average price per hectare	14589
district	DC7	2016	Colesberg Umsombomvu	average price per hectare	20806
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	average price per hectare	14994
district	DC13	2016	Cradock Inxuba Yethemba	average price per hectare	47683
district	DC38	2016	Delareyville Tswaing	average price per hectare	11363
district	DC34	2016	Dendron Makhado (Louis Trichardt)	average price per hectare	21330
district	DC38	2016	Derdepoort	average price per hectare	7903
district	DC16	2016	Dewetsdorp Naledi	average price per hectare	5695
district	DC7	2016	Douglas Siyancuma	average price per hectare	166565
district	DC16	2016	Edenburg Kopanong	average price per hectare	4010
district	DC14	2016	Elliot Sakhiszwe	average price per hectare	13788
district	DC36	2016	Ellisras Lephalale	average price per hectare	8502
municipality	DC40	2016	Ewbank	average price per hectare	4500
district	DC16	2016	Fauresmith Kopanong	average price per hectare	8478
district	DC19	2016	Ficksburg Setso	average price per hectare	10914
district	DC12	2016	Fort Beaufort Raymond Mhlaba	average price per hectare	7859
district	DC19	2016	Fouriesburg Dikabeng	average price per hectare	62088
district	DC20	2016	Frankfort Mafube	average price per hectare	17227
district	DC6	2016	Fraserburg Karoo Hoogland	average price per hectare	1057
district	DC4	2016	George	average price per hectare	51841
district	DC6	2016	Gordonia	average price per hectare	35655
district	DC10	2016	Graaff-Reinet Camdeboo	average price per hectare	3308
district	DC7	2016	Hanover Emthanjeni	average price per hectare	4186
district	DC19	2016	Harrismith Maluti-A-Phofung	average price per hectare	12673
district	DC20	2016	Heilbron Ngwathe	average price per hectare	11838
district	DC24	2016	Helpmekaar uMzinyathi	average price per hectare	28986
district	DC18	2016	Hoopstad Tswelopele	average price per hectare	27059
district	DC7	2016	Hopetown Thembelihle	average price per hectare	36400
district	DC10	2016	Humansdorp Kouga	average price per hectare	44407
district	DC16	2016	Jacobsdal Letsemeng	average price per hectare	5242
district	DC10	2016	Jansenville Ikwezi	average price per hectare	2867
district	DC10	2016	Joubertina Kou-Kamma	average price per hectare	61966
district	DC27	2016	Jozini Mkuze	average price per hectare	39191
district	DC8	2016	Kenhardt Kai !Garib	average price per hectare	56216
district	DC9	2016	Kimberley / HAY Frances Baard	average price per hectare	6325
municipality	BUF	2016	King Williams Town Baffalo City	average price per hectare	79900
district	DC4	2016	Knysna	average price per hectare	124688
district	DC43	2016	Kokstad	average price per hectare	71248
district	DC32	2016	Komatipoort Nkomazi	average price per hectare	73559
district	DC12	2016	Komga Great Kei	average price per hectare	13807
district	DC20	2016	Koppies Ngwathe	average price per hectare	15188
district	DC20	2016	Kroonstad Moqhaka	average price per hectare	12689
district	DC45	2016	Kuruman Ga-Segonyana	average price per hectare	4086
district	DC4	2016	Ladismith Kannaland	average price per hectare	10470
district	DC19	2016	Ladybrand Mantsopa	average price per hectare	6209
district	DC23	2016	Ladysmith Emnambithi	average price per hectare	26276
district	DC5	2016	Laingsburg	average price per hectare	2153
district	DC30	2016	Leandra Gonovan Mbeki	average price per hectare	16112
district	DC19	2016	Lindley Nketoana	average price per hectare	12828
district	DC26	2016	Louwsburg Abaqulusi	average price per hectare	84162
district	DC14	2016	Maclear Elundini	average price per hectare	6995
district	DC38	2016	Mahikeng	average price per hectare	9957
district	DC1	2016	Malmesbury Swartland	average price per hectare	42552
district	DC37	2016	Marikana (Rustenburg) Bonjala	average price per hectare	97199
district	DC36	2016	Marken	average price per hectare	11012
district	DC19	2016	Marquard Setso	average price per hectare	10809
district	DC44	2016	Matatiele	average price per hectare	702
district	DC13	2016	Middelburg EC Inxuba Yethemba	average price per hectare	4187
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	average price per hectare	45543
district	DC39	2016	Moloporivier Bophirima	average price per hectare	5643
district	DC13	2016	Molteno Inkwanca	average price per hectare	3219
district	DC2	2016	Montagu Langeberg	average price per hectare	17685
district	DC4	2016	Mosselbaai	average price per hectare	71158
district	DC15	2016	Mthatha King Sabata Dalindyebo	average price per hectare	9264
district	DC5	2016	Murraysburg	average price per hectare	9440
district	DC34	2016	Musina	average price per hectare	702949
district	DC6	2016	Namakwa	average price per hectare	939
district	DC32	2016	Nelspruit Mbombela	average price per hectare	37593
district	DC25	2016	Newcastle	average price per hectare	11697
municipality	EKU	2016	Nigel Ekurhuleni	average price per hectare	158781
district	DC36	2016	Nylstroom Modimolle	average price per hectare	19838
district	DC18	2016	Odendaalsrus Matjhabeng	average price per hectare	45255
municipality	BUF	2016	Oos-Londen Baffalo City	average price per hectare	71679
district	DC4	2016	Oudtshoorn	average price per hectare	23981
district	DC2	2016	Paarl/Wel Drakenstein	average price per hectare	596252
district	DC20	2016	Parys Ngwathe	average price per hectare	124888
district	DC10	2016	Pearston Blue Crane	average price per hectare	32739
district	DC33	2016	Phalaborwa Ba-Phalaborwa	average price per hectare	81881
district	DC16	2016	Philipolis Kopanong	average price per hectare	6578
district	DC7	2016	Phillipstown Renosterberg	average price per hectare	3870
district	DC22	2016	Pietermaritzburg Msunduzi	average price per hectare	52298
district	DC1	2016	Piketberg Bergriver	average price per hectare	24762
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	average price per hectare	8252
district	DC21	2016	Port Shepstone Ray Nkonyeni	average price per hectare	57249
municipality	TSH	2016	Pretoria Tshwane	average price per hectare	135419
district	DC7	2016	Prieska Siyathemba	average price per hectare	59414
district	DC5	2016	Prins Albert	average price per hectare	2844
district	DC13	2016	Queenstown Lukanji	average price per hectare	10115
district	DC16	2016	Reddersburg Kopanong	average price per hectare	5545
district	DC19	2016	Reitz Nketoana	average price per hectare	10604
district	DC39	2016	Reivilo Thaung	average price per hectare	49162
district	DC4	2016	Riversdal Hessequa	average price per hectare	23637
district	DC2	2016	Robertson Breede /Winelands	average price per hectare	147549
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	average price per hectare	28746
district	DC16	2016	Rouxville Mohokare	average price per hectare	10073
district	DC19	2016	Senekal Setsoto	average price per hectare	9267
district	DC16	2016	Smithfield Mohkare	average price per hectare	12126
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	average price per hectare	50866
district	DC10	2016	Somerset-Oos Blue Crane	average price per hectare	21084
district	DC27	2016	St Lucia Mtubatuba	average price per hectare	65472
district	DC2	2016	Stellenbosch	average price per hectare	440461
district	DC14	2016	Steynsburg Gariep	average price per hectare	48985
district	DC10	2016	Steytlerville Dr Beyers Naude	average price per hectare	5489
district	DC12	2016	Stutterheim Amahlathi	average price per hectare	13646
district	DC6	2016	Sutherland	average price per hectare	1918
district	DC3	2016	Swellendam	average price per hectare	69301
district	DC13	2016	Tarkastad Tsolwana	average price per hectare	9938
municipality	MAN	2016	Thaba Nchu	average price per hectare	6268
district	DC36	2016	Thabazimbi	average price per hectare	13710
district	DC18	2016	Theunissen Masilonyana	average price per hectare	21077
district	DC2	2016	Tulbagh	average price per hectare	73756
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	average price per hectare	85102
district	DC26	2016	Ulundi	average price per hectare	25408
district	DC43	2016	Underberg KwaSani	average price per hectare	60390
district	DC44	2016	Uniondale	average price per hectare	9054
district	DC35	2016	Usutu	average price per hectare	13507
district	DC25	2016	Utrecht eMadlangeni	average price per hectare	10588
district	DC9	2016	Vaalharts Phokwane	average price per hectare	259324
district	DC1	2016	Vanrynsdorp Matzikama	average price per hectare	26730
district	DC18	2016	Ventersburg Matjhabeng	average price per hectare	11946
district	DC7	2016	Victoria-Wes Umbuntu	average price per hectare	3936
district	DC20	2016	Viljoenskroon Moqhaka	average price per hectare	47608
municipality	DC40	2016	Vostershoop	average price per hectare	8299
district	DC19	2016	Vrede Phumelela	average price per hectare	12601
district	DC20	2016	Vredefort Ngwathe	average price per hectare	17070
district	DC39	2016	Vryburg Naledi	average price per hectare	8296
municipality	MAN	2016	Wepener Naledi	average price per hectare	5888
district	DC18	2016	Wesselsbron Nala	average price per hectare	27529
district	DC10	2016	Willomore Baviaans	average price per hectare	4681
district	DC18	2016	Winburg Masilonyana	average price per hectare	9166
district	DC14	2016	Wodehouse	average price per hectare	5240
district	DC40	2016	Wolmaransstad Maquassi	average price per hectare	14081
district	DC2	2016	Worcester Breede Valley	average price per hectare	50718
district	DC16	2016	Zastron Mohokare	average price per hectare	5073
district	DC38	2016	Zeerust Ramotshere	average price per hectare	15345
district	DC10	2016	Aberdeen	price trends per hectare	\N
district	DC32	2016	Acornhoek Bushbuckridge	price trends per hectare	-3451
district	DC10	2016	Albany	price trends per hectare	-1831
district	DC4	2016	Albertinia HesseQua	price trends per hectare	-231
district	DC10	2016	Alexandria Ndlambe	price trends per hectare	1245
district	DC14	2016	Aliwal-Noord Maletsiwai	price trends per hectare	-676
district	DC35	2016	Alldays Blouberg	price trends per hectare	152
district	DC30	2016	Amsterdam Mkhondo	price trends per hectare	616
district	DC29	2016	Ballito KwaDukuza	price trends per hectare	-36090
district	DC9	2016	Barkley-Wes Dikgatlong	price trends per hectare	-241
district	DC14	2016	Barkly-Oos Senqu	price trends per hectare	142
district	DC10	2016	Bathurst Ndlambe	price trends per hectare	2107
district	DC5	2016	Beaufort-Wes	price trends per hectare	-46
district	DC12	2016	Bedford Amathole	price trends per hectare	-5903
district	DC30	2016	Bethal Gonovan Mbeki	price trends per hectare	1730
district	DC19	2016	Bethlehem Dihlabeng	price trends per hectare	10052
district	DC16	2016	Bethulie	price trends per hectare	978
municipality	MAN	2016	Bloemfontein Mangaung	price trends per hectare	4989
district	DC39	2016	Bloemhof Lekwa-Tecma	price trends per hectare	-252
district	DC18	2016	Boshof Tokologo	price trends per hectare	73
district	DC18	2016	Bothaville Nala	price trends per hectare	564
district	DC18	2016	Brandfort Masilonyana	price trends per hectare	-230
district	DC39	2016	Bray Kagisano-Molopo	price trends per hectare	12
district	DC3	2016	Bredasdorp Cape Aqulhas	price trends per hectare	-41901
district	DC7	2016	Britstown	price trends per hectare	-145
district	DC18	2016	Bultfontein Tswelopele	price trends per hectare	2117
district	DC47	2016	Burgersfort Thubatse	price trends per hectare	-1174
district	DC3	2016	Caledon (Overberg) Theewaterskloof	price trends per hectare	5070
district	DC4	2016	Calitzdorp Kannaland	price trends per hectare	-6291
district	DC6	2016	Calvinia Hantam	price trends per hectare	80
municipality	CPT	2016	Cape Town	price trends per hectare	4681
district	DC48	2016	Carletonville Merafong	price trends per hectare	5360
district	DC7	2016	Carnavon Kareeberg	price trends per hectare	-79
district	DC12	2016	Cathcart Amahlathi	price trends per hectare	-25
district	DC2	2016	Ceres Witzenberg	price trends per hectare	214
district	DC1	2016	Clanwilliam Cederberg	price trends per hectare	3021
district	DC19	2016	Clocolan Setso	price trends per hectare	1585
district	DC7	2016	Colesberg Umsombomvu	price trends per hectare	9571
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	price trends per hectare	489
district	DC13	2016	Cradock Inxuba Yethemba	price trends per hectare	6717
district	DC38	2016	Delareyville Tswaing	price trends per hectare	-259
district	DC34	2016	Dendron Makhado (Louis Trichardt)	price trends per hectare	-93
district	DC38	2016	Derdepoort	price trends per hectare	2
district	DC16	2016	Dewetsdorp Naledi	price trends per hectare	234
district	DC7	2016	Douglas Siyancuma	price trends per hectare	3542
district	DC16	2016	Edenburg Kopanong	price trends per hectare	545
district	DC14	2016	Elliot Sakhiszwe	price trends per hectare	2765
district	DC36	2016	Ellisras Lephalale	price trends per hectare	152
municipality	DC40	2016	Ewbank	price trends per hectare	\N
district	DC16	2016	Fauresmith Kopanong	price trends per hectare	30
district	DC19	2016	Ficksburg Setso	price trends per hectare	-95
district	DC12	2016	Fort Beaufort Raymond Mhlaba	price trends per hectare	-61
district	DC19	2016	Fouriesburg Dikabeng	price trends per hectare	6193
district	DC20	2016	Frankfort Mafube	price trends per hectare	-409
district	DC6	2016	Fraserburg Karoo Hoogland	price trends per hectare	-96
district	DC4	2016	George	price trends per hectare	-3285
district	DC6	2016	Gordonia	price trends per hectare	1742
district	DC10	2016	Graaff-Reinet Camdeboo	price trends per hectare	237
district	DC7	2016	Hanover Emthanjeni	price trends per hectare	-340
district	DC19	2016	Harrismith Maluti-A-Phofung	price trends per hectare	-15
district	DC20	2016	Heilbron Ngwathe	price trends per hectare	-323
district	DC24	2016	Helpmekaar uMzinyathi	price trends per hectare	7938
district	DC18	2016	Hoopstad Tswelopele	price trends per hectare	1473
district	DC7	2016	Hopetown Thembelihle	price trends per hectare	-9944
district	DC10	2016	Humansdorp Kouga	price trends per hectare	-6895
district	DC16	2016	Jacobsdal Letsemeng	price trends per hectare	314
district	DC10	2016	Jansenville Ikwezi	price trends per hectare	113
district	DC10	2016	Joubertina Kou-Kamma	price trends per hectare	-9267
district	DC27	2016	Jozini Mkuze	price trends per hectare	\N
district	DC8	2016	Kenhardt Kai !Garib	price trends per hectare	3128
district	DC9	2016	Kimberley / HAY Frances Baard	price trends per hectare	288
municipality	BUF	2016	King Williams Town Baffalo City	price trends per hectare	-12026
district	DC4	2016	Knysna	price trends per hectare	-3134
district	DC43	2016	Kokstad	price trends per hectare	4980
district	DC32	2016	Komatipoort Nkomazi	price trends per hectare	-7558
district	DC12	2016	Komga Great Kei	price trends per hectare	-1057
district	DC20	2016	Koppies Ngwathe	price trends per hectare	-40
district	DC20	2016	Kroonstad Moqhaka	price trends per hectare	-388
district	DC45	2016	Kuruman Ga-Segonyana	price trends per hectare	177
district	DC4	2016	Ladismith Kannaland	price trends per hectare	-1314
district	DC19	2016	Ladybrand Mantsopa	price trends per hectare	22
district	DC23	2016	Ladysmith Emnambithi	price trends per hectare	-2166
district	DC5	2016	Laingsburg	price trends per hectare	99
district	DC30	2016	Leandra Gonovan Mbeki	price trends per hectare	-265
district	DC19	2016	Lindley Nketoana	price trends per hectare	-42
district	DC26	2016	Louwsburg Abaqulusi	price trends per hectare	6891
district	DC14	2016	Maclear Elundini	price trends per hectare	-649
district	DC38	2016	Mahikeng	price trends per hectare	597
district	DC1	2016	Malmesbury Swartland	price trends per hectare	5598
district	DC37	2016	Marikana (Rustenburg) Bonjala	price trends per hectare	14898
district	DC36	2016	Marken	price trends per hectare	200
district	DC19	2016	Marquard Setso	price trends per hectare	345
district	DC44	2016	Matatiele	price trends per hectare	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	price trends per hectare	99
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	price trends per hectare	-242
district	DC39	2016	Moloporivier Bophirima	price trends per hectare	37
district	DC13	2016	Molteno Inkwanca	price trends per hectare	390
district	DC2	2016	Montagu Langeberg	price trends per hectare	1105
district	DC4	2016	Mosselbaai	price trends per hectare	2960
district	DC15	2016	Mthatha King Sabata Dalindyebo	price trends per hectare	1207
district	DC5	2016	Murraysburg	price trends per hectare	-1420
district	DC34	2016	Musina	price trends per hectare	33101
district	DC6	2016	Namakwa	price trends per hectare	24
district	DC32	2016	Nelspruit Mbombela	price trends per hectare	-2667
district	DC25	2016	Newcastle	price trends per hectare	-275
municipality	EKU	2016	Nigel Ekurhuleni	price trends per hectare	-30918
district	DC36	2016	Nylstroom Modimolle	price trends per hectare	-792
district	DC18	2016	Odendaalsrus Matjhabeng	price trends per hectare	31061
municipality	BUF	2016	Oos-Londen Baffalo City	price trends per hectare	-599
district	DC4	2016	Oudtshoorn	price trends per hectare	-4329
district	DC2	2016	Paarl/Wel Drakenstein	price trends per hectare	22672
district	DC20	2016	Parys Ngwathe	price trends per hectare	44544
district	DC10	2016	Pearston Blue Crane	price trends per hectare	2517
district	DC33	2016	Phalaborwa Ba-Phalaborwa	price trends per hectare	-11787
district	DC16	2016	Philipolis Kopanong	price trends per hectare	194
district	DC7	2016	Phillipstown Renosterberg	price trends per hectare	\N
district	DC22	2016	Pietermaritzburg Msunduzi	price trends per hectare	3707
district	DC1	2016	Piketberg Bergriver	price trends per hectare	3995
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	price trends per hectare	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	price trends per hectare	-3685
municipality	TSH	2016	Pretoria Tshwane	price trends per hectare	246
district	DC7	2016	Prieska Siyathemba	price trends per hectare	28011
district	DC5	2016	Prins Albert	price trends per hectare	-327
district	DC13	2016	Queenstown Lukanji	price trends per hectare	9865
district	DC16	2016	Reddersburg Kopanong	price trends per hectare	65
district	DC19	2016	Reitz Nketoana	price trends per hectare	-11
district	DC39	2016	Reivilo Thaung	price trends per hectare	-12898
district	DC4	2016	Riversdal Hessequa	price trends per hectare	28
district	DC2	2016	Robertson Breede /Winelands	price trends per hectare	14485
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	price trends per hectare	-2529
district	DC16	2016	Rouxville Mohokare	price trends per hectare	-345
district	DC19	2016	Senekal Setsoto	price trends per hectare	-13
district	DC16	2016	Smithfield Mohkare	price trends per hectare	-3885
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	price trends per hectare	-388
district	DC10	2016	Somerset-Oos Blue Crane	price trends per hectare	-1389
district	DC27	2016	St Lucia Mtubatuba	price trends per hectare	17813
district	DC2	2016	Stellenbosch	price trends per hectare	-41946
district	DC14	2016	Steynsburg Gariep	price trends per hectare	7131
district	DC10	2016	Steytlerville Dr Beyers Naude	price trends per hectare	147
district	DC12	2016	Stutterheim Amahlathi	price trends per hectare	-638
district	DC6	2016	Sutherland	price trends per hectare	113
district	DC3	2016	Swellendam	price trends per hectare	-5373
district	DC13	2016	Tarkastad Tsolwana	price trends per hectare	152
municipality	MAN	2016	Thaba Nchu	price trends per hectare	-793
district	DC36	2016	Thabazimbi	price trends per hectare	-450
district	DC18	2016	Theunissen Masilonyana	price trends per hectare	-1086
district	DC2	2016	Tulbagh	price trends per hectare	-520
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	price trends per hectare	7358
district	DC26	2016	Ulundi	price trends per hectare	4347
district	DC43	2016	Underberg KwaSani	price trends per hectare	1115
district	DC44	2016	Uniondale	price trends per hectare	-449
district	DC35	2016	Usutu	price trends per hectare	1079
district	DC25	2016	Utrecht eMadlangeni	price trends per hectare	207
district	DC9	2016	Vaalharts Phokwane	price trends per hectare	1954
district	DC1	2016	Vanrynsdorp Matzikama	price trends per hectare	-5439
district	DC18	2016	Ventersburg Matjhabeng	price trends per hectare	472
district	DC7	2016	Victoria-Wes Umbuntu	price trends per hectare	-285
district	DC20	2016	Viljoenskroon Moqhaka	price trends per hectare	-1263
municipality	DC40	2016	Vostershoop	price trends per hectare	\N
district	DC19	2016	Vrede Phumelela	price trends per hectare	364
district	DC20	2016	Vredefort Ngwathe	price trends per hectare	158
district	DC39	2016	Vryburg Naledi	price trends per hectare	-285
municipality	MAN	2016	Wepener Naledi	price trends per hectare	199
district	DC18	2016	Wesselsbron Nala	price trends per hectare	-3352
district	DC10	2016	Willomore Baviaans	price trends per hectare	-406
district	DC18	2016	Winburg Masilonyana	price trends per hectare	-89
district	DC14	2016	Wodehouse	price trends per hectare	462
district	DC40	2016	Wolmaransstad Maquassi	price trends per hectare	-1052
district	DC2	2016	Worcester Breede Valley	price trends per hectare	383
district	DC16	2016	Zastron Mohokare	price trends per hectare	334
district	DC38	2016	Zeerust Ramotshere	price trends per hectare	390
district	DC10	2016	Aberdeen	average trend	\N
district	DC32	2016	Acornhoek Bushbuckridge	average trend	-11.4
district	DC10	2016	Albany	average trend	-10.1
district	DC4	2016	Albertinia HesseQua	average trend	-5.2
district	DC10	2016	Alexandria Ndlambe	average trend	5.3
district	DC14	2016	Aliwal-Noord Maletsiwai	average trend	-8.7
district	DC35	2016	Alldays Blouberg	average trend	1.2
district	DC30	2016	Amsterdam Mkhondo	average trend	1.4
district	DC29	2016	Ballito KwaDukuza	average trend	-20.2
district	DC9	2016	Barkley-Wes Dikgatlong	average trend	-5.1
district	DC14	2016	Barkly-Oos Senqu	average trend	2.2
district	DC10	2016	Bathurst Ndlambe	average trend	8.4
district	DC5	2016	Beaufort-Wes	average trend	-2.2
district	DC12	2016	Bedford Amathole	average trend	-11.3
district	DC30	2016	Bethal Gonovan Mbeki	average trend	7
district	DC19	2016	Bethlehem Dihlabeng	average trend	17.3
district	DC16	2016	Bethulie	average trend	11.8
municipality	MAN	2016	Bloemfontein Mangaung	average trend	23.4
district	DC39	2016	Bloemhof Lekwa-Tecma	average trend	-3.6
district	DC18	2016	Boshof Tokologo	average trend	0.9
district	DC18	2016	Bothaville Nala	average trend	2.5
district	DC18	2016	Brandfort Masilonyana	average trend	-2.2
district	DC39	2016	Bray Kagisano-Molopo	average trend	0.2
district	DC3	2016	Bredasdorp Cape Aqulhas	average trend	-23.2
district	DC7	2016	Britstown	average trend	-10.2
district	DC18	2016	Bultfontein Tswelopele	average trend	9.2
district	DC47	2016	Burgersfort Thubatse	average trend	-2.3
district	DC3	2016	Caledon (Overberg) Theewaterskloof	average trend	3.2
district	DC4	2016	Calitzdorp Kannaland	average trend	-20.4
district	DC6	2016	Calvinia Hantam	average trend	6.3
municipality	CPT	2016	Cape Town	average trend	5.7
district	DC48	2016	Carletonville Merafong	average trend	10.2
district	DC7	2016	Carnavon Kareeberg	average trend	-4
district	DC12	2016	Cathcart Amahlathi	average trend	-0.3
district	DC2	2016	Ceres Witzenberg	average trend	0.6
district	DC1	2016	Clanwilliam Cederberg	average trend	19.4
district	DC19	2016	Clocolan Setso	average trend	10.9
district	DC7	2016	Colesberg Umsombomvu	average trend	\N
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	average trend	3.3
district	DC13	2016	Cradock Inxuba Yethemba	average trend	14.1
district	DC38	2016	Delareyville Tswaing	average trend	-2.3
district	DC34	2016	Dendron Makhado (Louis Trichardt)	average trend	-0.4
district	DC38	2016	Derdepoort	average trend	0
district	DC16	2016	Dewetsdorp Naledi	average trend	4.1
district	DC7	2016	Douglas Siyancuma	average trend	2.1
district	DC16	2016	Edenburg Kopanong	average trend	13.6
district	DC14	2016	Elliot Sakhiszwe	average trend	20.1
district	DC36	2016	Ellisras Lephalale	average trend	1.8
municipality	DC40	2016	Ewbank	average trend	\N
district	DC16	2016	Fauresmith Kopanong	average trend	0.4
district	DC19	2016	Ficksburg Setso	average trend	-0.9
district	DC12	2016	Fort Beaufort Raymond Mhlaba	average trend	-0.8
district	DC19	2016	Fouriesburg Dikabeng	average trend	10
district	DC20	2016	Frankfort Mafube	average trend	-2.4
district	DC6	2016	Fraserburg Karoo Hoogland	average trend	-9
district	DC4	2016	George	average trend	-6.3
district	DC6	2016	Gordonia	average trend	4.9
district	DC10	2016	Graaff-Reinet Camdeboo	average trend	7.2
district	DC7	2016	Hanover Emthanjeni	average trend	-8.1
district	DC19	2016	Harrismith Maluti-A-Phofung	average trend	-0.1
district	DC20	2016	Heilbron Ngwathe	average trend	-2.7
district	DC24	2016	Helpmekaar uMzinyathi	average trend	\N
district	DC18	2016	Hoopstad Tswelopele	average trend	5.4
district	DC7	2016	Hopetown Thembelihle	average trend	\N
district	DC10	2016	Humansdorp Kouga	average trend	-15.5
district	DC16	2016	Jacobsdal Letsemeng	average trend	6
district	DC10	2016	Jansenville Ikwezi	average trend	3.9
district	DC10	2016	Joubertina Kou-Kamma	average trend	-15
district	DC27	2016	Jozini Mkuze	average trend	\N
district	DC8	2016	Kenhardt Kai !Garib	average trend	5.6
district	DC9	2016	Kimberley / HAY Frances Baard	average trend	4.6
municipality	BUF	2016	King Williams Town Baffalo City	average trend	-15.1
district	DC4	2016	Knysna	average trend	-2.5
district	DC43	2016	Kokstad	average trend	7
district	DC32	2016	Komatipoort Nkomazi	average trend	-10.3
district	DC12	2016	Komga Great Kei	average trend	-7.7
district	DC20	2016	Koppies Ngwathe	average trend	-0.3
district	DC20	2016	Kroonstad Moqhaka	average trend	-3.1
district	DC45	2016	Kuruman Ga-Segonyana	average trend	4.3
district	DC4	2016	Ladismith Kannaland	average trend	-12.5
district	DC19	2016	Ladybrand Mantsopa	average trend	0.4
district	DC23	2016	Ladysmith Emnambithi	average trend	-8.2
district	DC5	2016	Laingsburg	average trend	4.6
district	DC30	2016	Leandra Gonovan Mbeki	average trend	-1.6
district	DC19	2016	Lindley Nketoana	average trend	-0.3
district	DC26	2016	Louwsburg Abaqulusi	average trend	8.2
district	DC14	2016	Maclear Elundini	average trend	-9.3
district	DC38	2016	Mahikeng	average trend	6
district	DC1	2016	Malmesbury Swartland	average trend	13.2
district	DC37	2016	Marikana (Rustenburg) Bonjala	average trend	15.3
district	DC36	2016	Marken	average trend	1.8
district	DC19	2016	Marquard Setso	average trend	3.2
district	DC44	2016	Matatiele	average trend	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	average trend	2.4
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	average trend	-0.5
district	DC39	2016	Moloporivier Bophirima	average trend	0.7
district	DC13	2016	Molteno Inkwanca	average trend	12.1
district	DC2	2016	Montagu Langeberg	average trend	6.2
district	DC4	2016	Mosselbaai	average trend	4.2
district	DC15	2016	Mthatha King Sabata Dalindyebo	average trend	13
district	DC5	2016	Murraysburg	average trend	-15
district	DC34	2016	Musina	average trend	4.7
district	DC6	2016	Namakwa	average trend	2.5
district	DC32	2016	Nelspruit Mbombela	average trend	-7.1
district	DC25	2016	Newcastle	average trend	-2.4
municipality	EKU	2016	Nigel Ekurhuleni	average trend	-19.5
district	DC36	2016	Nylstroom Modimolle	average trend	-4
district	DC18	2016	Odendaalsrus Matjhabeng	average trend	\N
municipality	BUF	2016	Oos-Londen Baffalo City	average trend	-0.8
district	DC4	2016	Oudtshoorn	average trend	-18.1
district	DC2	2016	Paarl/Wel Drakenstein	average trend	3.8
district	DC20	2016	Parys Ngwathe	average trend	\N
district	DC10	2016	Pearston Blue Crane	average trend	7.7
district	DC33	2016	Phalaborwa Ba-Phalaborwa	average trend	-14.4
district	DC16	2016	Philipolis Kopanong	average trend	3
district	DC7	2016	Phillipstown Renosterberg	average trend	\N
district	DC22	2016	Pietermaritzburg Msunduzi	average trend	7.1
district	DC1	2016	Piketberg Bergriver	average trend	16.1
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	average trend	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	average trend	-6.4
municipality	TSH	2016	Pretoria Tshwane	average trend	0.2
district	DC7	2016	Prieska Siyathemba	average trend	\N
district	DC5	2016	Prins Albert	average trend	-11.5
district	DC13	2016	Queenstown Lukanji	average trend	\N
district	DC16	2016	Reddersburg Kopanong	average trend	1.2
district	DC19	2016	Reitz Nketoana	average trend	-0.1
district	DC39	2016	Reivilo Thaung	average trend	\N
district	DC4	2016	Riversdal Hessequa	average trend	0.1
district	DC2	2016	Robertson Breede /Winelands	average trend	9.8
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	average trend	-8.8
district	DC16	2016	Rouxville Mohokare	average trend	-3.4
district	DC19	2016	Senekal Setsoto	average trend	-0.1
district	DC16	2016	Smithfield Mohkare	average trend	\N
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	average trend	-0.8
district	DC10	2016	Somerset-Oos Blue Crane	average trend	-6.6
district	DC27	2016	St Lucia Mtubatuba	average trend	\N
district	DC2	2016	Stellenbosch	average trend	-9.5
district	DC14	2016	Steynsburg Gariep	average trend	14.6
district	DC10	2016	Steytlerville Dr Beyers Naude	average trend	2.7
district	DC12	2016	Stutterheim Amahlathi	average trend	-4.7
district	DC6	2016	Sutherland	average trend	5.9
district	DC3	2016	Swellendam	average trend	-7.8
district	DC13	2016	Tarkastad Tsolwana	average trend	1.5
municipality	MAN	2016	Thaba Nchu	average trend	-12.6
district	DC36	2016	Thabazimbi	average trend	-3.3
district	DC18	2016	Theunissen Masilonyana	average trend	-5.2
district	DC2	2016	Tulbagh	average trend	-0.7
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	average trend	8.6
district	DC26	2016	Ulundi	average trend	17.1
district	DC43	2016	Underberg KwaSani	average trend	1.8
district	DC44	2016	Uniondale	average trend	-5
district	DC35	2016	Usutu	average trend	8
district	DC25	2016	Utrecht eMadlangeni	average trend	2
district	DC9	2016	Vaalharts Phokwane	average trend	0.8
district	DC1	2016	Vanrynsdorp Matzikama	average trend	-20.3
district	DC18	2016	Ventersburg Matjhabeng	average trend	4
district	DC7	2016	Victoria-Wes Umbuntu	average trend	-7.2
district	DC20	2016	Viljoenskroon Moqhaka	average trend	-2.7
municipality	DC40	2016	Vostershoop	average trend	\N
district	DC19	2016	Vrede Phumelela	average trend	2.9
district	DC20	2016	Vredefort Ngwathe	average trend	0.9
district	DC39	2016	Vryburg Naledi	average trend	-3.4
municipality	MAN	2016	Wepener Naledi	average trend	3.4
district	DC18	2016	Wesselsbron Nala	average trend	-12.2
district	DC10	2016	Willomore Baviaans	average trend	-8.7
district	DC18	2016	Winburg Masilonyana	average trend	-1
district	DC14	2016	Wodehouse	average trend	8.8
district	DC40	2016	Wolmaransstad Maquassi	average trend	-7.5
district	DC2	2016	Worcester Breede Valley	average trend	0.8
district	DC16	2016	Zastron Mohokare	average trend	6.6
district	DC38	2016	Zeerust Ramotshere	average trend	2.5
district	DC10	2016	Aberdeen	average price	\N
district	DC32	2016	Acornhoek Bushbuckridge	average price	39542
district	DC10	2016	Albany	average price	21429
district	DC4	2016	Albertinia HesseQua	average price	5990
district	DC10	2016	Alexandria Ndlambe	average price	29412
district	DC14	2016	Aliwal-Noord Maletsiwai	average price	\N
district	DC35	2016	Alldays Blouberg	average price	25455
district	DC30	2016	Amsterdam Mkhondo	average price	23937
district	DC29	2016	Ballito KwaDukuza	average price	81504
district	DC9	2016	Barkley-Wes Dikgatlong	average price	\N
district	DC14	2016	Barkly-Oos Senqu	average price	3423
district	DC10	2016	Bathurst Ndlambe	average price	5488
district	DC5	2016	Beaufort-Wes	average price	1599
district	DC12	2016	Bedford Amathole	average price	7123
district	DC30	2016	Bethal Gonovan Mbeki	average price	22225
district	DC19	2016	Bethlehem Dihlabeng	average price	12308
district	DC16	2016	Bethulie	average price	\N
municipality	MAN	2016	Bloemfontein Mangaung	average price	140799
district	DC39	2016	Bloemhof Lekwa-Tecma	average price	6947
district	DC18	2016	Boshof Tokologo	average price	6106
district	DC18	2016	Bothaville Nala	average price	15538
district	DC18	2016	Brandfort Masilonyana	average price	7014
district	DC39	2016	Bray Kagisano-Molopo	average price	6563
district	DC3	2016	Bredasdorp Cape Aqulhas	average price	77778
district	DC7	2016	Britstown	average price	\N
district	DC18	2016	Bultfontein Tswelopele	average price	35443
district	DC47	2016	Burgersfort Thubatse	average price	23809
district	DC3	2016	Caledon (Overberg) Theewaterskloof	average price	72693
district	DC4	2016	Calitzdorp Kannaland	average price	4494
district	DC6	2016	Calvinia Hantam	average price	2851
municipality	CPT	2016	Cape Town	average price	169565
district	DC48	2016	Carletonville Merafong	average price	7344
district	DC7	2016	Carnavon Kareeberg	average price	2000
district	DC12	2016	Cathcart Amahlathi	average price	\N
district	DC2	2016	Ceres Witzenberg	average price	3438
district	DC1	2016	Clanwilliam Cederberg	average price	23877
district	DC19	2016	Clocolan Setso	average price	\N
district	DC7	2016	Colesberg Umsombomvu	average price	130435
district	DC38	2016	Coligny (Lichtenburg) Ditsobotla	average price	11345
district	DC13	2016	Cradock Inxuba Yethemba	average price	65263
district	DC38	2016	Delareyville Tswaing	average price	12974
district	DC34	2016	Dendron Makhado (Louis Trichardt)	average price	21897
district	DC38	2016	Derdepoort	average price	11493
district	DC16	2016	Dewetsdorp Naledi	average price	4802
district	DC7	2016	Douglas Siyancuma	average price	241935
district	DC16	2016	Edenburg Kopanong	average price	\N
district	DC14	2016	Elliot Sakhiszwe	average price	41026
district	DC36	2016	Ellisras Lephalale	average price	8803
municipality	DC40	2016	Ewbank	average price	\N
district	DC16	2016	Fauresmith Kopanong	average price	2502
district	DC19	2016	Ficksburg Setso	average price	9965
district	DC12	2016	Fort Beaufort Raymond Mhlaba	average price	\N
district	DC19	2016	Fouriesburg Dikabeng	average price	42440
district	DC20	2016	Frankfort Mafube	average price	\N
district	DC6	2016	Fraserburg Karoo Hoogland	average price	\N
district	DC4	2016	George	average price	58626
district	DC6	2016	Gordonia	average price	3789
district	DC10	2016	Graaff-Reinet Camdeboo	average price	3417
district	DC7	2016	Hanover Emthanjeni	average price	\N
district	DC19	2016	Harrismith Maluti-A-Phofung	average price	20319
district	DC20	2016	Heilbron Ngwathe	average price	13127
district	DC24	2016	Helpmekaar uMzinyathi	average price	\N
district	DC18	2016	Hoopstad Tswelopele	average price	\N
district	DC7	2016	Hopetown Thembelihle	average price	9574
district	DC10	2016	Humansdorp Kouga	average price	9692
district	DC16	2016	Jacobsdal Letsemeng	average price	\N
district	DC10	2016	Jansenville Ikwezi	average price	3378
district	DC10	2016	Joubertina Kou-Kamma	average price	27273
district	DC27	2016	Jozini Mkuze	average price	\N
district	DC8	2016	Kenhardt Kai !Garib	average price	1363
district	DC9	2016	Kimberley / HAY Frances Baard	average price	7410
municipality	BUF	2016	King Williams Town Baffalo City	average price	9109
district	DC4	2016	Knysna	average price	136071
district	DC43	2016	Kokstad	average price	9068
district	DC32	2016	Komatipoort Nkomazi	average price	9108
district	DC12	2016	Komga Great Kei	average price	\N
district	DC20	2016	Koppies Ngwathe	average price	\N
district	DC20	2016	Kroonstad Moqhaka	average price	\N
district	DC45	2016	Kuruman Ga-Segonyana	average price	2499
district	DC4	2016	Ladismith Kannaland	average price	879
district	DC19	2016	Ladybrand Mantsopa	average price	906
district	DC23	2016	Ladysmith Emnambithi	average price	7738
district	DC5	2016	Laingsburg	average price	\N
district	DC30	2016	Leandra Gonovan Mbeki	average price	21991
district	DC19	2016	Lindley Nketoana	average price	9770
district	DC26	2016	Louwsburg Abaqulusi	average price	\N
district	DC14	2016	Maclear Elundini	average price	\N
district	DC38	2016	Mahikeng	average price	8075
district	DC1	2016	Malmesbury Swartland	average price	185856
district	DC37	2016	Marikana (Rustenburg) Bonjala	average price	85601
district	DC36	2016	Marken	average price	19045
district	DC19	2016	Marquard Setso	average price	\N
district	DC44	2016	Matatiele	average price	\N
district	DC13	2016	Middelburg EC Inxuba Yethemba	average price	4743
district	DC31	2016	Middelburg MP (Groblersdal) Nkagala	average price	58328
district	DC39	2016	Moloporivier Bophirima	average price	6492
district	DC13	2016	Molteno Inkwanca	average price	3998
district	DC2	2016	Montagu Langeberg	average price	55749
district	DC4	2016	Mosselbaai	average price	\N
district	DC15	2016	Mthatha King Sabata Dalindyebo	average price	\N
district	DC5	2016	Murraysburg	average price	3070
district	DC34	2016	Musina	average price	32011
district	DC6	2016	Namakwa	average price	1478
district	DC32	2016	Nelspruit Mbombela	average price	19841
district	DC25	2016	Newcastle	average price	5556
municipality	EKU	2016	Nigel Ekurhuleni	average price	53003
district	DC36	2016	Nylstroom Modimolle	average price	17244
district	DC18	2016	Odendaalsrus Matjhabeng	average price	\N
municipality	BUF	2016	Oos-Londen Baffalo City	average price	79787
district	DC4	2016	Oudtshoorn	average price	26951
district	DC2	2016	Paarl/Wel Drakenstein	average price	\N
district	DC20	2016	Parys Ngwathe	average price	\N
district	DC10	2016	Pearston Blue Crane	average price	\N
district	DC33	2016	Phalaborwa Ba-Phalaborwa	average price	\N
district	DC16	2016	Philipolis Kopanong	average price	\N
district	DC7	2016	Phillipstown Renosterberg	average price	\N
district	DC22	2016	Pietermaritzburg Msunduzi	average price	36420
district	DC1	2016	Piketberg Bergriver	average price	35242
municipality	NMA	2016	Port Elizabeth Nelson Mendela Metropolitan	average price	\N
district	DC21	2016	Port Shepstone Ray Nkonyeni	average price	20273
municipality	TSH	2016	Pretoria Tshwane	average price	52235
district	DC7	2016	Prieska Siyathemba	average price	\N
district	DC5	2016	Prins Albert	average price	\N
district	DC13	2016	Queenstown Lukanji	average price	\N
district	DC16	2016	Reddersburg Kopanong	average price	\N
district	DC19	2016	Reitz Nketoana	average price	15000
district	DC39	2016	Reivilo Thaung	average price	2996
district	DC4	2016	Riversdal Hessequa	average price	22388
district	DC2	2016	Robertson Breede /Winelands	average price	460000
district	DC36	2016	Roedtan Bela-Bela (Warmbad)	average price	6649
district	DC16	2016	Rouxville Mohokare	average price	17896
district	DC19	2016	Senekal Setsoto	average price	10025
district	DC16	2016	Smithfield Mohkare	average price	6299
district	DC35	2016	Soekmekaar Morebeng (Tzaneen)	average price	60704
district	DC10	2016	Somerset-Oos Blue Crane	average price	3003
district	DC27	2016	St Lucia Mtubatuba	average price	\N
district	DC2	2016	Stellenbosch	average price	\N
district	DC14	2016	Steynsburg Gariep	average price	\N
district	DC10	2016	Steytlerville Dr Beyers Naude	average price	6826
district	DC12	2016	Stutterheim Amahlathi	average price	\N
district	DC6	2016	Sutherland	average price	2411
district	DC3	2016	Swellendam	average price	24525
district	DC13	2016	Tarkastad Tsolwana	average price	6035
municipality	MAN	2016	Thaba Nchu	average price	\N
district	DC36	2016	Thabazimbi	average price	7964
district	DC18	2016	Theunissen Masilonyana	average price	3000
district	DC2	2016	Tulbagh	average price	105224
municipality	NMA	2016	Uitenhage Nelson Mandela Metro	average price	87
district	DC43	2016	Underberg KwaSani	average price	24774
district	DC44	2016	Uniondale	average price	17302
district	DC35	2016	Usutu	average price	\N
district	DC25	2016	Utrecht eMadlangeni	average price	10217
district	DC9	2016	Vaalharts Phokwane	average price	300000
district	DC1	2016	Vanrynsdorp Matzikama	average price	7819
district	DC18	2016	Ventersburg Matjhabeng	average price	16667
district	DC7	2016	Victoria-Wes Umbuntu	average price	\N
district	DC20	2016	Viljoenskroon Moqhaka	average price	13793
municipality	DC40	2016	Vostershoop	average price	8299
district	DC19	2016	Vrede Phumelela	average price	15241
district	DC20	2016	Vredefort Ngwathe	average price	10210
district	DC39	2016	Vryburg Naledi	average price	8273
municipality	MAN	2016	Wepener Naledi	average price	5195
district	DC18	2016	Wesselsbron Nala	average price	\N
district	DC10	2016	Willomore Baviaans	average price	\N
district	DC18	2016	Winburg Masilonyana	average price	\N
district	DC14	2016	Wodehouse	average price	\N
district	DC40	2016	Wolmaransstad Maquassi	average price	11263
district	DC2	2016	Worcester Breede Valley	average price	64933
district	DC16	2016	Zastron Mohokare	average price	8315
district	DC38	2016	Zeerust Ramotshere	average price	6311
\.


--
-- PostgreSQL database dump complete
--


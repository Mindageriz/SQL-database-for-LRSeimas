// IKELIAMI SEIMO NARIAI:
INSERT INTO SEIMO_NARYS (
    SEIMO_NARIO_ID, VARDAS, PAVARDE, GIMIMO_DATA,
    IGALIOJIMO_PRADZIA, IGALIOJIMO_PABAIGA, PAREIGOS
)
VALUES (
    1, 'Linas', 'Saudargas',
    TO_DATE('1954-08-21', 'YYYY-MM-DD'),
    TO_DATE('2024-01-01', 'YYYY-MM-DD'),
    TO_DATE('2028-01-01', 'YYYY-MM-DD'),
    'Pirmininkas'
);
INSERT INTO SEIMO_NARYS (
    SEIMO_NARIO_ID, VARDAS, PAVARDE, GIMIMO_DATA,
    IGALIOJIMO_PRADZIA, IGALIOJIMO_PABAIGA, PAREIGOS
)
VALUES (
    2, 'Agnė', 'Širinskienė',
    TO_DATE('1975-03-10', 'YYYY-MM-DD'),
    TO_DATE('2024-01-01', 'YYYY-MM-DD'),
    TO_DATE('2028-01-01', 'YYYY-MM-DD'),
    'Narė'
);
INSERT INTO SEIMO_NARYS (
    SEIMO_NARIO_ID, VARDAS, PAVARDE, GIMIMO_DATA,
    IGALIOJIMO_PRADZIA, IGALIOJIMO_PABAIGA, PAREIGOS
)
VALUES (
    3, 'Vytautas', 'Bakaitis',
    TO_DATE('1980-11-05', 'YYYY-MM-DD'),
    TO_DATE('2024-01-01', 'YYYY-MM-DD'),
    TO_DATE('2028-01-01', 'YYYY-MM-DD'),
    'Vicepirmininkas'
);
INSERT INTO SEIMO_NARYS (
    SEIMO_NARIO_ID, VARDAS, PAVARDE, GIMIMO_DATA,
    IGALIOJIMO_PRADZIA, IGALIOJIMO_PABAIGA, PAREIGOS
)
VALUES (
    4, 'Dalia', 'Petrauskienė',
    TO_DATE('1968-06-15', 'YYYY-MM-DD'),
    TO_DATE('2024-01-01', 'YYYY-MM-DD'),
    TO_DATE('2028-01-01', 'YYYY-MM-DD'),
    'Narė'
);
INSERT INTO SEIMO_NARYS (
    SEIMO_NARIO_ID, VARDAS, PAVARDE, GIMIMO_DATA,
    IGALIOJIMO_PRADZIA, IGALIOJIMO_PABAIGA, PAREIGOS
)
VALUES (
    5, 'Mantas', 'Jakštas',
    TO_DATE('1982-02-03', 'YYYY-MM-DD'),
    TO_DATE('2024-01-01', 'YYYY-MM-DD'),
    TO_DATE('2028-01-01', 'YYYY-MM-DD'),
    'Narys'
);
INSERT INTO SEIMO_NARYS (
    SEIMO_NARIO_ID, VARDAS, PAVARDE, GIMIMO_DATA,
    IGALIOJIMO_PRADZIA, IGALIOJIMO_PABAIGA, PAREIGOS
)
VALUES (
    6, 'Ieva', 'Balčiūnaitė',
    TO_DATE('1990-12-20', 'YYYY-MM-DD'),
    TO_DATE('2024-01-01', 'YYYY-MM-DD'),
    TO_DATE('2028-01-01', 'YYYY-MM-DD'),
    'Narė'
);
INSERT INTO SEIMO_NARYS (
    SEIMO_NARIO_ID, VARDAS, PAVARDE, GIMIMO_DATA,
    IGALIOJIMO_PRADZIA, IGALIOJIMO_PABAIGA, PAREIGOS
)
VALUES (
    7, 'Jonas', 'Milius',
    TO_DATE('1970-07-12', 'YYYY-MM-DD'),
    TO_DATE('2024-01-01', 'YYYY-MM-DD'),
    TO_DATE('2028-01-01', 'YYYY-MM-DD'),
    'Narys'
);
INSERT INTO SEIMO_NARYS (
    SEIMO_NARIO_ID, VARDAS, PAVARDE, GIMIMO_DATA,
    IGALIOJIMO_PRADZIA, IGALIOJIMO_PABAIGA, PAREIGOS
)
VALUES (
    8, 'Rūta', 'Kvietkauskaitė',
    TO_DATE('1987-09-29', 'YYYY-MM-DD'),
    TO_DATE('2024-01-01', 'YYYY-MM-DD'),
    TO_DATE('2028-01-01', 'YYYY-MM-DD'),
    'Narė'
);
SELECT * FROM SEIMO_NARYS;
// IKELIAMOS PARTIJOS:
INSERT INTO PARTIJA (
    PARTIJOS_ID, KOALICIJOS_ID, PAVADINIMAS, IKURIMO_DATA
)
VALUES (
    1, NULL, 'Tėvynės sąjunga – Lietuvos krikščionys demokratai', 
    TO_DATE('1993-05-01', 'YYYY-MM-DD')
);
INSERT INTO PARTIJA (
    PARTIJOS_ID, KOALICIJOS_ID, PAVADINIMAS, IKURIMO_DATA
)
VALUES (
    2, NULL, 'Lietuvos valstiečių ir žaliųjų sąjunga',
    TO_DATE('2001-10-15', 'YYYY-MM-DD')
);
INSERT INTO PARTIJA (
    PARTIJOS_ID, KOALICIJOS_ID, PAVADINIMAS, IKURIMO_DATA
)
VALUES (
    3, NULL, 'Laisvės partija',
    TO_DATE('2019-06-01', 'YYYY-MM-DD')
);
SELECT * FROM PARTIJA;
// SEIMO NARIAI PRISKIRIAMI PARTIJOMS:
UPDATE SEIMO_NARYS SET PARTIJOS_ID = 1 WHERE SEIMO_NARIO_ID = 1;
UPDATE SEIMO_NARYS SET PARTIJOS_ID = 2 WHERE SEIMO_NARIO_ID = 2;
UPDATE SEIMO_NARYS SET PARTIJOS_ID = 3 WHERE SEIMO_NARIO_ID = 3;
UPDATE SEIMO_NARYS SET PARTIJOS_ID = 1 WHERE SEIMO_NARIO_ID = 4;
UPDATE SEIMO_NARYS SET PARTIJOS_ID = 2 WHERE SEIMO_NARIO_ID = 5;
UPDATE SEIMO_NARYS SET PARTIJOS_ID = 3 WHERE SEIMO_NARIO_ID = 6;
INSERT INTO Komitetas (Komiteto_ID, Pavadinimas)
VALUES (1, 'Švietimo komitetas');

INSERT INTO Komitetas (Komiteto_ID, Pavadinimas)
VALUES (2, 'Sveikatos apsaugos komitetas');

INSERT INTO Komitetas (Komiteto_ID, Pavadinimas)
VALUES (3, 'Aplinkos apsaugos komitetas');
UPDATE SEIMO_NARYS SET KOMITETO_ID = 1 WHERE SEIMO_NARIO_ID = 1;
UPDATE SEIMO_NARYS SET KOMITETO_ID = 2 WHERE SEIMO_NARIO_ID = 2;
UPDATE SEIMO_NARYS SET KOMITETO_ID = 3 WHERE SEIMO_NARIO_ID = 3;
UPDATE SEIMO_NARYS SET KOMITETO_ID = 1 WHERE SEIMO_NARIO_ID = 4;
UPDATE SEIMO_NARYS SET KOMITETO_ID = 2 WHERE SEIMO_NARIO_ID = 5;
UPDATE SEIMO_NARYS SET KOMITETO_ID = 3 WHERE SEIMO_NARIO_ID = 6;
UPDATE SEIMO_NARYS SET KOMITETO_ID = 1 WHERE SEIMO_NARIO_ID = 7;
UPDATE SEIMO_NARYS SET KOMITETO_ID = 2 WHERE SEIMO_NARIO_ID = 8;
INSERT ALL
  INTO Seimo_Nario_Darbo_Ataskaita (
    Ataskaitos_ID, Seimo_Nario_ID, Pateikimo_Data,
    Laikotarpio_Pradzios_Data, Laikotarpio_Pabaigos_Data, Turinys
  ) VALUES (
    1, 1, TO_DATE('2025-01-15', 'YYYY-MM-DD'),
    TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2024-12-31', 'YYYY-MM-DD'),
    '2024 m. antroje pusėje aktyviai dalyvavau visose Seimo sesijose, komitetų ir komisijų posėdžiuose. Daugiausia dėmesio skyriau švietimo, regionų plėtros bei jaunimo politikos klausimams. Prisidėjau prie Švietimo įstatymo pakeitimų, siekiančių didinti mokytojų atlyginimus ir gerinti mokyklų infrastruktūrą regionuose. Lankiausi įvairiuose šalies miestuose ir miesteliuose, kur susitikau su bendruomenėmis, mokyklų vadovais ir pedagogais. Surengiau ne vieną viešą diskusiją apie mokytojų rengimą ir profesinį tobulinimą. Prisidėjau prie įstatymų iniciatyvų, kuriomis siekiama skatinti jaunų specialistų grįžimą į regionus. Nuo liepos iki gruodžio taip pat vykdžiau parlamentinę kontrolę, pateikiau kelis paklausimus ministerijoms dėl švietimo politikos įgyvendinimo. Rengiau periodines ataskaitas apie Seimo veiklą gyventojams, atsakinėjau į jų klausimus ir pastabas. Nemažai dėmesio skyriau dalyvavimui tarptautiniuose renginiuose, kuriuose atstovavau Lietuvai švietimo klausimais. Taip pat organizavau labdaros akciją vaikams iš socialiai pažeidžiamų šeimų.'
  )
  INTO Seimo_Nario_Darbo_Ataskaita (
    Ataskaitos_ID, Seimo_Nario_ID, Pateikimo_Data,
    Laikotarpio_Pradzios_Data, Laikotarpio_Pabaigos_Data, Turinys
  ) VALUES (
    2, 2, TO_DATE('2025-01-20', 'YYYY-MM-DD'),
    TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2024-12-31', 'YYYY-MM-DD'),
    'Per ataskaitinį laikotarpį nuosekliai dirbau su sveikatos apsaugos ir socialinių reikalų klausimais. Dalyvavau rengiant pasiūlymus dėl sveikatos priežiūros paslaugų prieinamumo didinimo regionuose, ypač mažose savivaldybėse, kuriose trūksta šeimos gydytojų ir specialistų. Inicijavau diskusijas dėl sveikatos paslaugų reformos, kuria siekiama užtikrinti kokybiškas paslaugas visiems piliečiams, nepriklausomai nuo jų gyvenamosios vietos. Susitikimuose su medikų bendruomene išklausiau jų įžvalgas ir problemas, kurios buvo įtrauktos į siūlymus ministerijai. Taip pat aktyviai bendravau su socialinių paslaugų teikėjais ir nevyriausybinėmis organizacijomis, kurios padeda senjorams ir žmonėms su negalia. Prisidėjau prie teisės aktų pakeitimų, kuriais numatoma didesnė parama globos namams bei dienos centrams. Regionuose organizavau gyventojų priėmimus, kurių metu aptarėme įvairias socialines problemas. Stengiausi užtikrinti, kad kiekvienas gyventojas būtų išgirstas, o jo problemos - tinkamai sprendžiamos per teisėkūros procesą. Tai buvo pusmetis intensyvaus, bet prasmingo darbo žmonių labui.'
  )
  INTO Seimo_Nario_Darbo_Ataskaita (
    Ataskaitos_ID, Seimo_Nario_ID, Pateikimo_Data,
    Laikotarpio_Pradzios_Data, Laikotarpio_Pabaigos_Data, Turinys
  ) VALUES (
    3, 3, TO_DATE('2025-01-25', 'YYYY-MM-DD'),
    TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2024-12-31', 'YYYY-MM-DD'),
    'Ataskaitiniu laikotarpiu pagrindinis mano veiklos prioritetas buvo aplinkos apsauga, žaliųjų technologijų plėtra ir klimato kaitos švelninimas. Rengiau ir teikiau Seimui teisės aktų projektus, kuriais siekiama skatinti atsinaujinančių energijos šaltinių naudojimą, didinti viešojo transporto elektrifikaciją bei skatinti gyventojus pereiti prie mažiau taršaus gyvenimo būdo. Dalyvavau konferencijose, kuriose diskutavome apie Lietuvos vaidmenį ES žaliajame kurse ir būtinybę skubiai mažinti šiltnamio efektą sukeliančių dujų emisijas. Mano iniciatyva buvo pradėta parama mažoms įmonėms, kurios diegia žaliąsias inovacijas. Taip pat rengiau susitikimus su aplinkosaugos organizacijomis ir aktyvistais, kad kartu formuotume tvarią politiką. Prisidėjau prie informacijos sklaidos apie atliekų rūšiavimą, organizavau edukacinius renginius mokyklose ir bendruomenėse. Seimo komitete tvirtinome naujas aplinkosaugos programas, kurios bus įgyvendinamos artimiausiais metais. Šis pusmetis patvirtino, kad nuoseklus ir bendradarbiavimu grįstas darbas leidžia pasiekti realių pokyčių mūsų aplinkoje ir visuomenėje.'
  )
SELECT * FROM dual;
INSERT ALL
  INTO pateikia_siulyma (
    Seimo_nario_ID, Siulymo_ID, Turinys
  ) VALUES (
    1, 1, TO_CLOB('Siūloma pakeisti 5 straipsnio 3 dalies formuluotę, siekiant aiškiau reglamentuoti savivaldybių atsakomybę švietimo įstaigų infrastruktūros priežiūros klausimais. Šis pakeitimas padėtų išvengti skirtingo teisės akto interpretavimo ir užtikrintų vienodesnį jų taikymą visoje Lietuvoje.')
  )
  INTO pateikia_siulyma (
    Seimo_nario_ID, Siulymo_ID, Turinys
  ) VALUES (
    2, 2, 
    TO_CLOB('Pasiūlymas numatyti papildomas nuostatas, reglamentuojančias socialinių paslaugų teikimą regionuose. Tai padėtų užtikrinti, kad net ir mažiausios bendruomenės turėtų prieigą prie kokybiškų paslaugų. Siūloma įteisinti valstybės paramos mechanizmą mažoms savivaldybėms.')
  )
  INTO pateikia_siulyma (
    Seimo_nario_ID, Siulymo_ID, Turinys
  ) VALUES (
    3, 3, TO_CLOB('Teikiamas pasiūlymas išbraukti 2 straipsnio 4 dalį kaip perteklinę ir sukelią nesusipratimų taikant praktiką. Šis straipsnis dubliuoja jau galiojančias nuostatas kituose teisės aktuose, todėl yra siūlomas kaip naikintinas.')
  )
SELECT * FROM dual;

INSERT ALL
  INTO ISTATYMAS (
    ISTATYMO_ID, PAVADINIMAS, ISIGALIOJIMO_DATA
  ) VALUES (
    1, 'Švietimo įstatymo pakeitimas', TO_DATE('2025-04-01', 'YYYY-MM-DD')
  )
  INTO ISTATYMAS (
    ISTATYMO_ID, PAVADINIMAS, ISIGALIOJIMO_DATA
  ) VALUES (
    2, 'Sveikatos priežiūros įstatymas', TO_DATE('2025-05-15', 'YYYY-MM-DD')
  )
  INTO ISTATYMAS (
    ISTATYMO_ID, PAVADINIMAS, ISIGALIOJIMO_DATA
  ) VALUES (
    3, 'Aplinkos apsaugos įstatymas', TO_DATE('2025-06-10', 'YYYY-MM-DD')
  )
SELECT * FROM dual;




ALTER TABLE komiteto_POSEDIS MODIFY trukme NUMBER;




INSERT INTO SEIMO_POSEDIS (
    SEIMO_POSEDZIO_ID, data, trukme, Protokolas
)
VALUES (
    1, TO_DATE('2024-01-15', 'YYYY-MM-DD'), 180,
    'Eilinis posėdis, kuriame svarstytas švietimo sistemos finansavimo didinimo įstatymo projektas. Dalyvavo visi komitetų atstovai, balsavimas vyko 15:45.'
);

INSERT INTO SEIMO_POSEDIS (
    SEIMO_POSEDZIO_ID, data, trukme, Protokolas
)
VALUES (
    2, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 240,
    'Neeilinis posėdis, sušauktas svarstyti ekstremalios situacijos teisinio reguliavimo pakeitimų. Patvirtinti skubūs sprendimai dėl civilinės saugos. Dalyvavo Prezidentūra.'
);

INSERT INTO SEIMO_POSEDIS (
    SEIMO_POSEDZIO_ID, data, trukme, Protokolas
)
VALUES (
    3, TO_DATE('2024-04-22', 'YYYY-MM-DD'), 90,
    'Uždaras posėdis dėl nacionalinio saugumo klausimų. Protokolas įslaptintas, dalyvavo tik Nacionalinio saugumo ir gynybos komitetas bei VSD atstovai.'
);

INSERT INTO KOMITETO_POSEDIS (
    KOMITETO_POSEDZIO_ID, data, trukme, Protokolas
)
VALUES (
    1,
    TO_DATE('2024-02-05', 'YYYY-MM-DD'),
    120,
    'Socialinių reikalų ir darbo komiteto posėdyje aptarti pensijų indeksavimo mechanizmo pokyčiai ir jų įgyvendinimo terminas.'
);

INSERT INTO KOMITETO_POSEDIS (
    KOMITETO_POSEDZIO_ID, data, trukme, Protokolas
)
VALUES (
    2,
    TO_DATE('2024-03-12', 'YYYY-MM-DD'),
    90,
    'Teisės ir teisėtvarkos komitetas svarstė Administracinių nusižengimų kodekso 58 straipsnio pakeitimo projektą bei pateikė išvadas Seimo Teisės departamentui.'
);

INSERT INTO KOMITETO_POSEDIS (
    KOMITETO_POSEDZIO_ID, data, trukme, Protokolas
)
VALUES (
    3,
    TO_DATE('2024-04-08', 'YYYY-MM-DD'),
    135,
    'Aplinkos apsaugos komiteto posėdyje analizuotas Klimato kaitos švelninimo planas 2025–2030 m., pateiktos Aplinkos ministerijos ir NVO pastabos.'
);

INSERT INTO SPAUDOS_KONFERENCIJA (
    SPAUDOS_KONFERENCIJOS_ID, data, tema, papildoma_info
)
VALUES (
    1,
    TO_DATE('2024-01-18', 'YYYY-MM-DD'),
    'Švietimo reformos eiga',
    'Seimo Švietimo ir mokslo komitetas pristatė mokyklų tinklo pertvarkos rezultatus bei planuojamus pokyčius mokytojų kvalifikacijos kėlimo srityje.'
);

INSERT INTO SPAUDOS_KONFERENCIJA (
    SPAUDOS_KONFERENCIJOS_ID, data, tema, papildoma_info
)
VALUES (
    2,
    TO_DATE('2024-03-22', 'YYYY-MM-DD'),
    'Valstybinio biudžeto įgyvendinimas',
    'Finansų ministrė pateikė ataskaitą apie 2023 metų biudžeto vykdymą, pabrėždama efektyvesnį ES lėšų įsisavinimą ir mažėjantį deficitą.'
);

INSERT INTO SPAUDOS_KONFERENCIJA (
    SPAUDOS_KONFERENCIJOS_ID, data, tema, papildoma_info
)
VALUES (
    3,
    TO_DATE('2024-04-15', 'YYYY-MM-DD'),
    'Energetinės nepriklausomybės stiprinimas',
    'Energetikos komitetas kartu su ministerijos atstovais pristatė strategiją dėl žaliosios energijos plėtros ir nacionalinio saugumo stiprinimo energetikos srityje.'
);

-- Komiteto posėdis 1
INSERT INTO POSEDZIU_VIESINIMAS (
    VIESINIMO_ID, KOMITETO_POSEDZIO_ID, turinys, viesinimo_data
)
VALUES (
    1,
    1, -- KOMITETO_POSEDZIO_ID 1
    'Pateikti pasiūlymai dėl socialinio draudimo reformos.',
    TO_DATE('2024-01-20', 'YYYY-MM-DD')
);

-- Komiteto posėdis 2
INSERT INTO POSEDZIU_VIESINIMAS (
    VIESINIMO_ID, KOMITETO_POSEDZIO_ID, turinys, viesinimo_data
)
VALUES (
    2,
    2, -- KOMITETO_POSEDZIO_ID 2
    'Teisės ir teisėtvarkos komiteto svarstymai dėl administracinių nusižengimų kodekso.',
    TO_DATE('2024-03-15', 'YYYY-MM-DD')
);

-- Komiteto posėdis 3
INSERT INTO POSEDZIU_VIESINIMAS (
    VIESINIMO_ID, KOMITETO_POSEDZIO_ID, turinys, viesinimo_data
)
VALUES (
    3,
    3, -- KOMITETO_POSEDZIO_ID 3
    'Aplinkos apsaugos komitetas pristatė klimato kaitos švelninimo planą.',
    TO_DATE('2024-04-10', 'YYYY-MM-DD')
);

-- Seimo posėdis 1
INSERT INTO POSEDZIU_VIESINIMAS (
    VIESINIMO_ID, SEIMO_POSEDZIO_ID, turinys, viesinimo_data
)
VALUES (
    4,
    1, -- SEIMO_POSEDZIO_ID 1
    'Seimo posėdyje svarstytas biudžeto projektas ir mokesčių reformos klausimai.',
    TO_DATE('2024-02-07', 'YYYY-MM-DD')
);

-- Seimo posėdis 2
INSERT INTO POSEDZIU_VIESINIMAS (
    VIESINIMO_ID, SEIMO_POSEDZIO_ID, turinys, viesinimo_data
)
VALUES (
    5,
    2, -- SEIMO_POSEDZIO_ID 2
    'Seimo posėdis apie Nacionalinio saugumo strategijos pakeitimus.',
    TO_DATE('2024-03-08', 'YYYY-MM-DD')
);

-- Seimo posėdis 3
INSERT INTO POSEDZIU_VIESINIMAS (
    VIESINIMO_ID, SEIMO_POSEDZIO_ID, turinys, viesinimo_data
)
VALUES (
    6,
    3, -- SEIMO_POSEDZIO_ID 3
    'Seimo posėdis dėl švietimo reformos priemonių įgyvendinimo.',
    TO_DATE('2024-04-12', 'YYYY-MM-DD')
);
ALTER TABLE SEIMO_POSEDIS
DROP COLUMN VIESINIMO_ID;
ALTER TABLE KOMITETO_POSEDIS
DROP COLUMN VIESINIMO_ID;

INSERT INTO DALYVAUJA_KP (KOMITETO_POSEDZIO_ID, SEIMO_NARIO_ID)
VALUES (1, 1);

INSERT INTO DALYVAUJA_KP (KOMITETO_POSEDZIO_ID, SEIMO_NARIO_ID)
VALUES (1, 2);

INSERT INTO DALYVAUJA_KP (KOMITETO_POSEDZIO_ID, SEIMO_NARIO_ID)
VALUES (2, 3);

INSERT INTO DALYVAUJA_KP (KOMITETO_POSEDZIO_ID, SEIMO_NARIO_ID)
VALUES (3, 5);

INSERT INTO DALYVAUJA_SP (SEIMO_POSEDZIO_ID, SEIMO_NARIO_ID)
VALUES (1, 1);

INSERT INTO DALYVAUJA_SP (SEIMO_POSEDZIO_ID, SEIMO_NARIO_ID)
VALUES (1, 3);

INSERT INTO DALYVAUJA_SP (SEIMO_POSEDZIO_ID, SEIMO_NARIO_ID)
VALUES (2, 2);

INSERT INTO DALYVAUJA_SP (SEIMO_POSEDZIO_ID, SEIMO_NARIO_ID)
VALUES (3, 4);

INSERT INTO DALYVAUJA_SK (SPAUDOS_KONFERENCIJOS_ID, SEIMO_NARIO_ID)
VALUES (1, 6);

INSERT INTO DALYVAUJA_SK (SPAUDOS_KONFERENCIJOS_ID, SEIMO_NARIO_ID)
VALUES (2, 7);

INSERT INTO DALYVAUJA_SK (SPAUDOS_KONFERENCIJOS_ID, SEIMO_NARIO_ID)
VALUES (3, 8);

-- Balsavimas dėl Siūlymo 1
INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (1, 1, 1, 'Už');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (2, 1, 2, 'Už');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (3, 1, 3, 'Prieš');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (4, 1, 4, 'Už');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (5, 1, 5, 'Susilaikė');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (6, 1, 6, 'Už');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (7, 1, 7, 'Už');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (8, 1, 8, 'Prieš');

-- Balsavimas dėl Siūlymo 2
INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (9, 2, 1, 'Už');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (10, 2, 2, 'Už');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (11, 2, 3, 'Už');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (12, 2, 4, 'Susilaikė');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (13, 2, 5, 'Už');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (14, 2, 6, 'Prieš');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (15, 2, 7, 'Už');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (16, 2, 8, 'Už');

-- Balsavimas dėl Siūlymo 3
INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (17, 3, 1, 'Prieš');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (18, 3, 2, 'Už');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (19, 3, 3, 'Susilaikė');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (20, 3, 4, 'Už');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (21, 3, 5, 'Prieš');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (22, 3, 6, 'Prieš');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (23, 3, 7, 'Už');

INSERT INTO BALSAI (BALSO_ID, SIULYMO_ID, SEIMO_NARIO_ID, PASIRINKIMAS)
VALUES (24, 3, 8, 'Už');

ALTER TABLE "ISTATYMO PAKEITIMAI" RENAME TO "ISTATYMO_PAKEITIMAI";

-- Pakeitimas dėl įstatymo 1
INSERT INTO ISTATYMO_PAKEITIMAI (I_PAKEITIMO_ID, ISTATYMO_ID, PAKEITIMAI, ISIGALIOJIMO_DATA)
VALUES (1, 1, 'Pakeistas 1 straipsnis dėl mokesčių lengvatų', TO_DATE('2024-06-01', 'YYYY-MM-DD'));

INSERT INTO ISTATYMO_PAKEITIMAI (I_PAKEITIMO_ID, ISTATYMO_ID, PAKEITIMAI, ISIGALIOJIMO_DATA)
VALUES (2, 1, 'Pridėtas papildomas paragrafas dėl finansinės pagalbos', TO_DATE('2024-08-15', 'YYYY-MM-DD'));

-- Pakeitimas dėl įstatymo 2
INSERT INTO ISTATYMO_PAKEITIMAI (I_PAKEITIMO_ID, ISTATYMO_ID, PAKEITIMAI, ISIGALIOJIMO_DATA)
VALUES (3, 2, 'Pakeistas 3 straipsnis dėl darbo sąlygų reguliavimo', TO_DATE('2024-07-01', 'YYYY-MM-DD'));

INSERT INTO ISTATYMO_PAKEITIMAI (I_PAKEITIMO_ID, ISTATYMO_ID, PAKEITIMAI, ISIGALIOJIMO_DATA)
VALUES (4, 2, 'Pakeistas 5 straipsnis dėl darbuotojų teisės į mokymus', TO_DATE('2024-09-01', 'YYYY-MM-DD'));

-- Pakeitimas dėl įstatymo 3
INSERT INTO ISTATYMO_PAKEITIMAI (I_PAKEITIMO_ID, ISTATYMO_ID, PAKEITIMAI, ISIGALIOJIMO_DATA)
VALUES (5, 3, 'Pakeistas 2 straipsnis dėl aplinkosaugos taisyklių', TO_DATE('2024-10-01', 'YYYY-MM-DD'));

INSERT INTO ISTATYMO_PAKEITIMAI (I_PAKEITIMO_ID, ISTATYMO_ID, PAKEITIMAI, ISIGALIOJIMO_DATA)
VALUES (6, 3, 'Pridėtas naujas straipsnis dėl taršos mažinimo programų', TO_DATE('2024-12-15', 'YYYY-MM-DD'));

-- Pakeitimas dėl projekto 1
INSERT INTO PROJEKTO_PAKEITIMAI (P_PAKEITIMO_ID, PROJEKTO_ID, PAKEITIMAI, ISIGALIOJIMO_DATA)
VALUES (1, 1, 'Pakeistas projekto 1 apimtis, įtrauktos papildomos paslaugos', TO_DATE('2024-05-01', 'YYYY-MM-DD'));

INSERT INTO PROJEKTO_PAKEITIMAI (P_PAKEITIMO_ID, PROJEKTO_ID, PAKEITIMAI, ISIGALIOJIMO_DATA)
VALUES (2, 1, 'Pakeistas biudžetas, padidinta finansavimas technologijų vystymui', TO_DATE('2024-07-01', 'YYYY-MM-DD'));

-- Pakeitimas dėl projekto 2
INSERT INTO PROJEKTO_PAKEITIMAI (P_PAKEITIMO_ID, PROJEKTO_ID, PAKEITIMAI, ISIGALIOJIMO_DATA)
VALUES (3, 2, 'Pridėta nauja komanda projekto vykdymui', TO_DATE('2024-06-01', 'YYYY-MM-DD'));

INSERT INTO PROJEKTO_PAKEITIMAI (P_PAKEITIMO_ID, PROJEKTO_ID, PAKEITIMAI, ISIGALIOJIMO_DATA)
VALUES (4, 2, 'Pakeista projekto vykdymo data, pratęstas laikotarpis iki 2025 m.', TO_DATE('2024-08-15', 'YYYY-MM-DD'));

-- Pakeitimas dėl projekto 3
INSERT INTO PROJEKTO_PAKEITIMAI (P_PAKEITIMO_ID, PROJEKTO_ID, PAKEITIMAI, ISIGALIOJIMO_DATA)
VALUES (5, 3, 'Pakeistas projekto tikslas ir uždaviniai, įtraukta naujų klientų aptarnavimo metodų', TO_DATE('2024-09-01', 'YYYY-MM-DD'));

INSERT INTO PROJEKTO_PAKEITIMAI (P_PAKEITIMO_ID, PROJEKTO_ID, PAKEITIMAI, ISIGALIOJIMO_DATA)
VALUES (6, 3, 'Pakeistas finansavimas, daugiau lėšų skirta rinkodarai', TO_DATE('2024-11-01', 'YYYY-MM-DD'));





//LOADED:
SELECT * FROM SEIMO_NARYS;
SELECT * FROM PARTIJA;
SELECT * FROM KOALICIJA;
SELECT * FROM KOMITETAS;
SELECT * FROM SEIMO_NARIO_DARBO_ATASKAITA;
SELECT * FROM ISTATYMAS;
SELECT * FROM PROJEKTAS;
SELECT * FROM SIULYMAS;
SELECT * FROM PATEIKIA_SIULYMA;
SELECT * FROM SEIMO_POSEDIS; 
SELECT * FROM KOMITETO_POSEDIS; 
SELECT * FROM SPAUDOS_KONFERENCIJA;
SELECT * FROM POSEDZIU_VIESINIMAS;
SELECT * FROM DALYVAUJA_KP;
SELECT * FROM DALYVAUJA_SK;
SELECT * FROM DALYVAUJA_SP;
SELECT * FROM BALSAI;
SELECT * FROM ISTATYMO_PAKEITIMAI;
SELECT * FROM PROJEKTO_PAKEITIMAI;

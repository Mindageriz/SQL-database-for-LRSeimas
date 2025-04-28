/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     24/04/2025 00:24:00                          */
/*==============================================================*/


alter table BALSAI
   drop constraint FK_BALSAI_BALSUOJA_SEIMO_NA;

alter table BALSAI
   drop constraint FK_BALSAI_SKAICIUOJ_SIULYMAS;

alter table DALYVAUJA_KP
   drop constraint FK_DALKP2;

alter table DALYVAUJA_KP
   drop constraint FK_DAL_KP1;

alter table DALYVAUJA_SK
   drop constraint FK_DAL_SK2;

alter table DALYVAUJA_SK
   drop constraint FK_DAL_SK1;

alter table DALYVAUJA_SP
   drop constraint FK_DAL_SP1;

alter table DALYVAUJA_SP
   drop constraint FK_DAL_SP2;

alter table ISTATYMO_PAKEITMAI
   drop constraint FK_ISTATYMO_ISTATYMAS_ISTATYMA;

alter table KOMITETO_POSEDIS
   drop constraint "FK_KPviesinimasVIENAS";

alter table PARTIJA
   drop constraint FK_PARTIJA_SUSIJUNGI_KOALICIJ;

alter table PATEIKIA_SIULYMA
   drop constraint FK_PATEIKIA_PATEIKIA__SIULYMAS;

alter table PATEIKIA_SIULYMA
   drop constraint FK_PATEIKIA_PATEIKIA__SEIMO_NA;

alter table POSEDZIU_VIESINIMAS
   drop constraint "FK_KPviesinimasDU";

alter table POSEDZIU_VIESINIMAS
   drop constraint "FK_SPviesinimasDU";

alter table PROJEKTO_PAKEITIMAI
   drop constraint FK_PROJEKTO_PROJEKTAS_PROJEKTA;

alter table SEIMO_NARIO_DARBO_ATASKAITA
   drop constraint FK_SEIMO_NA_PATEIKIA_SEIMO_NA;

alter table SEIMO_NARYS
   drop constraint FK_SEIMO_NA_PRIKLAUSO_KOMITETA;

alter table SEIMO_NARYS
   drop constraint FK_SEIMO_NA_PRIKLAUSO_PARTIJA;

alter table SEIMO_POSEDIS
   drop constraint "FK_SPviesinimasVIENAS";

alter table SIULYMAS
   drop constraint FK_SIULYMAS_ISTATYMO__ISTATYMA;

alter table SIULYMAS
   drop constraint FK_SIULYMAS_PROJEKTO__PROJEKTA;

drop index BALSUOJA_FK;

drop index SKAICIUOJAMI_FK;

drop table BALSAI cascade constraints;

drop index DALYVAUJA_KP_FK;

drop index DALYVAUJA_KP2_FK;

drop table DALYVAUJA_KP cascade constraints;

drop index DALYVAUJA_SK_FK;

drop index DALYVAUJA_SK2_FK;

drop table DALYVAUJA_SK cascade constraints;

drop index DALYVAUJA_SP_FK;

drop index DALYVAUJA_SP2_FK;

drop table DALYVAUJA_SP cascade constraints;

drop table ISTATYMAS cascade constraints;

drop index ISTATYMAS_TURI_PAKEITIMUS_FK;

drop table ISTATYMO_PAKEITMAI cascade constraints;

drop table KOALICIJA cascade constraints;

drop table KOMITETAS cascade constraints;

drop index KP_VIESINAMAS_FK;

drop table KOMITETO_POSEDIS cascade constraints;

drop index SUSIJUNGIA_FK;

drop table PARTIJA cascade constraints;

drop index PATEIKIA_SIULYMA_FK;

drop index PATEIKIA_SIULYMA2_FK;

drop table PATEIKIA_SIULYMA cascade constraints;

drop index SP_VIESINAMAS2_FK;

drop index KP_VIESINAMAS2_FK;

drop table POSEDZIU_VIESINIMAS cascade constraints;

drop table PROJEKTAS cascade constraints;

drop index PROJEKTAS_TURI_PAKEITIMUS_FK;

drop table PROJEKTO_PAKEITIMAI cascade constraints;

drop index PATEIKIA_FK;

drop table SEIMO_NARIO_DARBO_ATASKAITA cascade constraints;

drop index PRIKLAUSO_KOMITETUI_FK;

drop index PRIKLAUSO_PARTIJAI_FK;

drop table SEIMO_NARYS cascade constraints;

drop index SP_VIESINAMAS_FK;

drop table SEIMO_POSEDIS cascade constraints;

drop index ISTATYMO_PAKEITIMAI_FK;

drop index PROJEKTO_PAKEITIMAI_FK;

drop table SIULYMAS cascade constraints;

drop table SPAUDOS_KONFERENCIJA cascade constraints;

/*==============================================================*/
/* Table: BALSAI                                                */
/*==============================================================*/
create table BALSAI 
(
   BALSO_ID             CHAR(10)             not null,
   SIULYMO_ID           INTEGER,
   SEIMO_NARIO_ID       INTEGER              not null,
   PASIRINKIMAS         VARCHAR2(1024)       not null,
   constraint PK_BALSAI primary key (BALSO_ID)
);

/*==============================================================*/
/* Index: SKAICIUOJAMI_FK                                       */
/*==============================================================*/
create index SKAICIUOJAMI_FK on BALSAI (
   SIULYMO_ID ASC
);

/*==============================================================*/
/* Index: BALSUOJA_FK                                           */
/*==============================================================*/
create index BALSUOJA_FK on BALSAI (
   SEIMO_NARIO_ID ASC
);

/*==============================================================*/
/* Table: DALYVAUJA_KP                                          */
/*==============================================================*/
create table DALYVAUJA_KP 
(
   KOMITETO_POSEDZIO_ID INTEGER              not null,
   SEIMO_NARIO_ID       INTEGER              not null,
   constraint PK_DALYVAUJA_KP primary key (KOMITETO_POSEDZIO_ID, SEIMO_NARIO_ID)
);

/*==============================================================*/
/* Index: DALYVAUJA_KP2_FK                                      */
/*==============================================================*/
create index DALYVAUJA_KP2_FK on DALYVAUJA_KP (
   SEIMO_NARIO_ID ASC
);

/*==============================================================*/
/* Index: DALYVAUJA_KP_FK                                       */
/*==============================================================*/
create index DALYVAUJA_KP_FK on DALYVAUJA_KP (
   KOMITETO_POSEDZIO_ID ASC
);

/*==============================================================*/
/* Table: DALYVAUJA_SK                                          */
/*==============================================================*/
create table DALYVAUJA_SK 
(
   SPAUDOS_KONFERENCIJOS_ID INTEGER              not null,
   SEIMO_NARIO_ID       INTEGER              not null,
   constraint PK_DALYVAUJA_SK primary key (SPAUDOS_KONFERENCIJOS_ID, SEIMO_NARIO_ID)
);

/*==============================================================*/
/* Index: DALYVAUJA_SK2_FK                                      */
/*==============================================================*/
create index DALYVAUJA_SK2_FK on DALYVAUJA_SK (
   SEIMO_NARIO_ID ASC
);

/*==============================================================*/
/* Index: DALYVAUJA_SK_FK                                       */
/*==============================================================*/
create index DALYVAUJA_SK_FK on DALYVAUJA_SK (
   SPAUDOS_KONFERENCIJOS_ID ASC
);

/*==============================================================*/
/* Table: DALYVAUJA_SP                                          */
/*==============================================================*/
create table DALYVAUJA_SP 
(
   SEIMO_NARIO_ID       INTEGER              not null,
   SEIMO_POSEDZIO_ID    INTEGER              not null,
   constraint PK_DALYVAUJA_SP primary key (SEIMO_NARIO_ID, SEIMO_POSEDZIO_ID)
);

/*==============================================================*/
/* Index: DALYVAUJA_SP2_FK                                      */
/*==============================================================*/
create index DALYVAUJA_SP2_FK on DALYVAUJA_SP (
   SEIMO_POSEDZIO_ID ASC
);

/*==============================================================*/
/* Index: DALYVAUJA_SP_FK                                       */
/*==============================================================*/
create index DALYVAUJA_SP_FK on DALYVAUJA_SP (
   SEIMO_NARIO_ID ASC
);

/*==============================================================*/
/* Table: ISTATYMAS                                             */
/*==============================================================*/
create table ISTATYMAS 
(
   ISTATYMO_ID          INTEGER              not null,
   PAVADINIMAS          VARCHAR2(1024)       not null,
   ISIGALIOJIMO_DATA    DATE                 not null,
   constraint PK_ISTATYMAS primary key (ISTATYMO_ID)
);

/*==============================================================*/
/* Table: ISTATYMO_PAKEITMAI                                    */
/*==============================================================*/
create table ISTATYMO_PAKEITMAI 
(
   I_PAKEITIMO_ID       INTEGER              not null,
   ISTATYMO_ID          INTEGER              not null,
   PAKEITIMAI           CLOB                 not null,
   ISIGALIOJIMO_DATA    DATE,
   constraint PK_ISTATYMO_PAKEITMAI primary key (I_PAKEITIMO_ID)
);

/*==============================================================*/
/* Index: ISTATYMAS_TURI_PAKEITIMUS_FK                          */
/*==============================================================*/
create index ISTATYMAS_TURI_PAKEITIMUS_FK on ISTATYMO_PAKEITMAI (
   ISTATYMO_ID ASC
);

/*==============================================================*/
/* Table: KOALICIJA                                             */
/*==============================================================*/
create table KOALICIJA 
(
   KOALICIJOS_ID        INTEGER              not null,
   SUDARYMO_DATA        DATE                 not null,
   constraint PK_KOALICIJA primary key (KOALICIJOS_ID)
);

/*==============================================================*/
/* Table: KOMITETAS                                             */
/*==============================================================*/
create table KOMITETAS 
(
   KOMITETO_ID          INTEGER              not null,
   PAVADINIMAS          VARCHAR2(1024)       not null,
   constraint PK_KOMITETAS primary key (KOMITETO_ID)
);

/*==============================================================*/
/* Table: KOMITETO_POSEDIS                                      */
/*==============================================================*/
create table KOMITETO_POSEDIS 
(
   KOMITETO_POSEDZIO_ID INTEGER              not null,
   VIESINIMO_ID         INTEGER,
   DATA                 DATE                 not null,
   PROTOKOLAS           CLOB                 not null,
   TRUKME               DATE                 not null,
   constraint PK_KOMITETO_POSEDIS primary key (KOMITETO_POSEDZIO_ID)
);

/*==============================================================*/
/* Index: KP_VIESINAMAS_FK                                      */
/*==============================================================*/
create index KP_VIESINAMAS_FK on KOMITETO_POSEDIS (
   VIESINIMO_ID ASC
);

/*==============================================================*/
/* Table: PARTIJA                                               */
/*==============================================================*/
create table PARTIJA 
(
   PARTIJOS_ID          INTEGER              not null,
   KOALICIJOS_ID        INTEGER,
   PAVADINIMAS          VARCHAR2(1024)       not null,
   IKURIMO_DATA         DATE                 not null,
   constraint PK_PARTIJA primary key (PARTIJOS_ID)
);

/*==============================================================*/
/* Index: SUSIJUNGIA_FK                                         */
/*==============================================================*/
create index SUSIJUNGIA_FK on PARTIJA (
   KOALICIJOS_ID ASC
);

/*==============================================================*/
/* Table: PATEIKIA_SIULYMA                                      */
/*==============================================================*/
create table PATEIKIA_SIULYMA 
(
   SEIMO_NARIO_ID       INTEGER              not null,
   SIULYMO_ID           INTEGER              not null,
   TURINYS              VARCHAR2(1024)       not null,
   constraint PK_PATEIKIA_SIULYMA primary key (SEIMO_NARIO_ID, SIULYMO_ID)
);

/*==============================================================*/
/* Index: PATEIKIA_SIULYMA2_FK                                  */
/*==============================================================*/
create index PATEIKIA_SIULYMA2_FK on PATEIKIA_SIULYMA (
   SEIMO_NARIO_ID ASC
);

/*==============================================================*/
/* Index: PATEIKIA_SIULYMA_FK                                   */
/*==============================================================*/
create index PATEIKIA_SIULYMA_FK on PATEIKIA_SIULYMA (
   SIULYMO_ID ASC
);

/*==============================================================*/
/* Table: POSEDZIU_VIESINIMAS                                   */
/*==============================================================*/
create table POSEDZIU_VIESINIMAS 
(
   VIESINIMO_ID         INTEGER              not null,
   KOMITETO_POSEDZIO_ID INTEGER,
   SEIMO_POSEDZIO_ID    INTEGER,
   TURINYS              CLOB                 not null,
   VIESINIMO_DATA       DATE                 not null,
   constraint PK_POSEDZIU_VIESINIMAS primary key (VIESINIMO_ID)
);

/*==============================================================*/
/* Index: KP_VIESINAMAS2_FK                                     */
/*==============================================================*/
create index KP_VIESINAMAS2_FK on POSEDZIU_VIESINIMAS (
   KOMITETO_POSEDZIO_ID ASC
);

/*==============================================================*/
/* Index: SP_VIESINAMAS2_FK                                     */
/*==============================================================*/
create index SP_VIESINAMAS2_FK on POSEDZIU_VIESINIMAS (
   SEIMO_POSEDZIO_ID ASC
);

/*==============================================================*/
/* Table: PROJEKTAS                                             */
/*==============================================================*/
create table PROJEKTAS 
(
   PROJEKTO_ID          INTEGER              not null,
   PAVADINIMAS          VARCHAR2(1024)       not null,
   PRADZIOS_DATA        DATE                 not null,
   constraint PK_PROJEKTAS primary key (PROJEKTO_ID)
);

/*==============================================================*/
/* Table: PROJEKTO_PAKEITIMAI                                   */
/*==============================================================*/
create table PROJEKTO_PAKEITIMAI 
(
   P_PAKEITIMO_ID       INTEGER              not null,
   PROJEKTO_ID          INTEGER              not null,
   PAKEITIMAI           CLOB                 not null,
   ISIGALIOJIMO_DATA    DATE                 not null,
   constraint PK_PROJEKTO_PAKEITIMAI primary key (P_PAKEITIMO_ID)
);

/*==============================================================*/
/* Index: PROJEKTAS_TURI_PAKEITIMUS_FK                          */
/*==============================================================*/
create index PROJEKTAS_TURI_PAKEITIMUS_FK on PROJEKTO_PAKEITIMAI (
   PROJEKTO_ID ASC
);

/*==============================================================*/
/* Table: SEIMO_NARIO_DARBO_ATASKAITA                           */
/*==============================================================*/
create table SEIMO_NARIO_DARBO_ATASKAITA 
(
   ATASKAITOS_ID        INTEGER              not null,
   SEIMO_NARIO_ID       INTEGER              not null,
   PATEIKIMO_DATA       TIMESTAMP            not null,
   LAIKOTARPIO_PRADZIOS_DATA DATE                 not null,
   LAIKOTARPIO_PABAIGOS_DATA DATE                 not null,
   TURINYS              CLOB                 not null,
   constraint PK_SEIMO_NARIO_DARBO_ATASKAITA primary key (ATASKAITOS_ID)
);

/*==============================================================*/
/* Index: PATEIKIA_FK                                           */
/*==============================================================*/
create index PATEIKIA_FK on SEIMO_NARIO_DARBO_ATASKAITA (
   SEIMO_NARIO_ID ASC
);

/*==============================================================*/
/* Table: SEIMO_NARYS                                           */
/*==============================================================*/
create table SEIMO_NARYS 
(
   SEIMO_NARIO_ID       INTEGER              not null,
   PARTIJOS_ID          INTEGER,
   KOMITETO_ID          INTEGER,
   VARDAS               VARCHAR2(1024)       not null,
   PAVARDE              VARCHAR2(1024)       not null,
   GIMIMO_DATA          DATE                 not null,
   IGALIOJIMO_PRADZIA   DATE                 not null,
   IGALIOJIMO_PABAIGA   DATE                 not null,
   PAREIGOS             VARCHAR2(1024),
   constraint PK_SEIMO_NARYS primary key (SEIMO_NARIO_ID)
);

/*==============================================================*/
/* Index: PRIKLAUSO_PARTIJAI_FK                                 */
/*==============================================================*/
create index PRIKLAUSO_PARTIJAI_FK on SEIMO_NARYS (
   PARTIJOS_ID ASC
);

/*==============================================================*/
/* Index: PRIKLAUSO_KOMITETUI_FK                                */
/*==============================================================*/
create index PRIKLAUSO_KOMITETUI_FK on SEIMO_NARYS (
   KOMITETO_ID ASC
);

/*==============================================================*/
/* Table: SEIMO_POSEDIS                                         */
/*==============================================================*/
create table SEIMO_POSEDIS 
(
   SEIMO_POSEDZIO_ID    INTEGER              not null,
   VIESINIMO_ID         INTEGER,
   DATA                 DATE                 not null,
   TRUKME               DATE                 not null,
   PROTOKOLAS           CLOB                 not null,
   constraint PK_SEIMO_POSEDIS primary key (SEIMO_POSEDZIO_ID)
);

/*==============================================================*/
/* Index: SP_VIESINAMAS_FK                                      */
/*==============================================================*/
create index SP_VIESINAMAS_FK on SEIMO_POSEDIS (
   VIESINIMO_ID ASC
);

/*==============================================================*/
/* Table: SIULYMAS                                              */
/*==============================================================*/
create table SIULYMAS 
(
   SIULYMO_ID           INTEGER              not null,
   PROJEKTO_ID          INTEGER,
   ISTATYMO_ID          INTEGER,
   SIULYMO_DATA         DATE                 not null,
   TURINYS              CLOB                 not null,
   BUSENA               VARCHAR2(1024)       not null,
   BALSAVIMO_DATA       DATE,
   NUOSPRENDIS          VARCHAR2(1024),
   constraint PK_SIULYMAS primary key (SIULYMO_ID)
);

/*==============================================================*/
/* Index: PROJEKTO_PAKEITIMAI_FK                                */
/*==============================================================*/
create index PROJEKTO_PAKEITIMAI_FK on SIULYMAS (
   PROJEKTO_ID ASC
);

/*==============================================================*/
/* Index: ISTATYMO_PAKEITIMAI_FK                                */
/*==============================================================*/
create index ISTATYMO_PAKEITIMAI_FK on SIULYMAS (
   ISTATYMO_ID ASC
);

/*==============================================================*/
/* Table: SPAUDOS_KONFERENCIJA                                  */
/*==============================================================*/
create table SPAUDOS_KONFERENCIJA 
(
   SPAUDOS_KONFERENCIJOS_ID INTEGER              not null,
   DATA                 DATE                 not null,
   TEMA                 VARCHAR2(1024)       not null,
   PAPILDOMA_INFO       CLOB,
   constraint PK_SPAUDOS_KONFERENCIJA primary key (SPAUDOS_KONFERENCIJOS_ID)
);

alter table BALSAI
   add constraint FK_BALSAI_BALSUOJA_SEIMO_NA foreign key (SEIMO_NARIO_ID)
      references SEIMO_NARYS (SEIMO_NARIO_ID);

alter table BALSAI
   add constraint FK_BALSAI_SKAICIUOJ_SIULYMAS foreign key (SIULYMO_ID)
      references SIULYMAS (SIULYMO_ID);

alter table DALYVAUJA_KP
   add constraint FK_DALKP2 foreign key (KOMITETO_POSEDZIO_ID)
      references KOMITETO_POSEDIS (KOMITETO_POSEDZIO_ID);

alter table DALYVAUJA_KP
   add constraint FK_DAL_KP1 foreign key (SEIMO_NARIO_ID)
      references SEIMO_NARYS (SEIMO_NARIO_ID);

alter table DALYVAUJA_SK
   add constraint FK_DAL_SK2 foreign key (SPAUDOS_KONFERENCIJOS_ID)
      references SPAUDOS_KONFERENCIJA (SPAUDOS_KONFERENCIJOS_ID);

alter table DALYVAUJA_SK
   add constraint FK_DAL_SK1 foreign key (SEIMO_NARIO_ID)
      references SEIMO_NARYS (SEIMO_NARIO_ID);

alter table DALYVAUJA_SP
   add constraint FK_DAL_SP1 foreign key (SEIMO_NARIO_ID)
      references SEIMO_NARYS (SEIMO_NARIO_ID);

alter table DALYVAUJA_SP
   add constraint FK_DAL_SP2 foreign key (SEIMO_POSEDZIO_ID)
      references SEIMO_POSEDIS (SEIMO_POSEDZIO_ID);

alter table ISTATYMO_PAKEITMAI
   add constraint FK_ISTATYMO_ISTATYMAS_ISTATYMA foreign key (ISTATYMO_ID)
      references ISTATYMAS (ISTATYMO_ID);

alter table KOMITETO_POSEDIS
   add constraint "FK_KPviesinimasVIENAS" foreign key (VIESINIMO_ID)
      references POSEDZIU_VIESINIMAS (VIESINIMO_ID);

alter table PARTIJA
   add constraint FK_PARTIJA_SUSIJUNGI_KOALICIJ foreign key (KOALICIJOS_ID)
      references KOALICIJA (KOALICIJOS_ID);

alter table PATEIKIA_SIULYMA
   add constraint FK_PATEIKIA_PATEIKIA__SIULYMAS foreign key (SIULYMO_ID)
      references SIULYMAS (SIULYMO_ID);

alter table PATEIKIA_SIULYMA
   add constraint FK_PATEIKIA_PATEIKIA__SEIMO_NA foreign key (SEIMO_NARIO_ID)
      references SEIMO_NARYS (SEIMO_NARIO_ID);

alter table POSEDZIU_VIESINIMAS
   add constraint "FK_KPviesinimasDU" foreign key (KOMITETO_POSEDZIO_ID)
      references KOMITETO_POSEDIS (KOMITETO_POSEDZIO_ID);

alter table POSEDZIU_VIESINIMAS
   add constraint "FK_SPviesinimasDU" foreign key (SEIMO_POSEDZIO_ID)
      references SEIMO_POSEDIS (SEIMO_POSEDZIO_ID);

alter table PROJEKTO_PAKEITIMAI
   add constraint FK_PROJEKTO_PROJEKTAS_PROJEKTA foreign key (PROJEKTO_ID)
      references PROJEKTAS (PROJEKTO_ID);

alter table SEIMO_NARIO_DARBO_ATASKAITA
   add constraint FK_SEIMO_NA_PATEIKIA_SEIMO_NA foreign key (SEIMO_NARIO_ID)
      references SEIMO_NARYS (SEIMO_NARIO_ID);

alter table SEIMO_NARYS
   add constraint FK_SEIMO_NA_PRIKLAUSO_KOMITETA foreign key (KOMITETO_ID)
      references KOMITETAS (KOMITETO_ID);

alter table SEIMO_NARYS
   add constraint FK_SEIMO_NA_PRIKLAUSO_PARTIJA foreign key (PARTIJOS_ID)
      references PARTIJA (PARTIJOS_ID);

alter table SEIMO_POSEDIS
   add constraint "FK_SPviesinimasVIENAS" foreign key (VIESINIMO_ID)
      references POSEDZIU_VIESINIMAS (VIESINIMO_ID);

alter table SIULYMAS
   add constraint FK_SIULYMAS_ISTATYMO__ISTATYMA foreign key (ISTATYMO_ID)
      references ISTATYMAS (ISTATYMO_ID);

alter table SIULYMAS
   add constraint FK_SIULYMAS_PROJEKTO__PROJEKTA foreign key (PROJEKTO_ID)
      references PROJEKTAS (PROJEKTO_ID);


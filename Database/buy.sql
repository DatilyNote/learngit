/*==============================================================*/
/* DBMS name:      ORACLE Version 10g                           */
/* Created on:     2015-03-25 9:56:36                           */
/*==============================================================*/


alter table T_FOOD
   drop constraint FK_T_FOOD_REFERENCE_T_PROVID;

alter table T_NEWS
   drop constraint FK_T_NEWS_REFERENCE_T_ORDER;

alter table T_NEWS
   drop constraint FK_T_NEWS_REFERENCE_T_FOOD;

alter table T_ORDER
   drop constraint FK_T_ORDER_REFERENCE_T_USER;

drop table T_FOOD cascade constraints;

drop table T_NEWS cascade constraints;

drop table T_ORDER cascade constraints;

drop table T_PROVIDER cascade constraints;

drop table T_USER cascade constraints;

/*==============================================================*/
/* Table: T_FOOD                                                */
/*==============================================================*/
create table T_FOOD  (
   FODNO                INT                             not null,
   PRONO                INT,
   FODNAME              VARCHAR(20),
   FODPRICE             FLOAT,
   FODDISCOUNT          FLOAT,
   FODPHOTO             BLOB,
   constraint PK_T_FOOD primary key (FODNO)
);

comment on table T_FOOD is
'存放菜品信息';

/*==============================================================*/
/* Table: T_NEWS                                                */
/*==============================================================*/
create table T_NEWS  (
   NEWNO                INT                             not null,
   ORDNO                INT,
   FODNO                INT,
   constraint PK_T_NEWS primary key (NEWNO)
);

comment on table T_NEWS is
'存储订单的菜名';

/*==============================================================*/
/* Table: T_ORDER                                               */
/*==============================================================*/
create table T_ORDER  (
   ORDNO                INT                             not null,
   MEMNO                INT,
   ORDSTATUS            CHAR(8)                         not null,
   ODRTIME              CHAR(10),
   ORDCOMMENT           VARCHAR(50),
   constraint PK_T_ORDER primary key (ORDNO)
);

comment on table T_ORDER is
'存放订单信息';

/*==============================================================*/
/* Table: T_PROVIDER                                            */
/*==============================================================*/
create table T_PROVIDER  (
   PRONO                INT                             not null,
   PRONAME              VARCHAR(20),
   PROMANAGER           VARCHAR(20),
   PROCOMMENT           VARCHAR(50),
   constraint PK_T_PROVIDER primary key (PRONO)
);

comment on table T_PROVIDER is
'存储餐厅信息';

/*==============================================================*/
/* Table: T_USER                                                */
/*==============================================================*/
create table T_USER  (
   USERNO               INT                             not null,
   NAME                 VARCHAR(20),
   ROLE                 VARCHAR(10),
   PWD                  VARCHAR(10),
   TEL                  CHAR(11)                        not null,
   ADDRESS              VARCHAR(50)                     not null,
   "DATE"               VACHAR(10),
   constraint PK_T_USER primary key (USERNO)
);

comment on table T_USER is
'存放人员信息';

alter table T_FOOD
   add constraint FK_T_FOOD_REFERENCE_T_PROVID foreign key (PRONO)
      references T_PROVIDER (PRONO);

alter table T_NEWS
   add constraint FK_T_NEWS_REFERENCE_T_ORDER foreign key (ORDNO)
      references T_ORDER (ORDNO);

alter table T_NEWS
   add constraint FK_T_NEWS_REFERENCE_T_FOOD foreign key (FODNO)
      references T_FOOD (FODNO);

alter table T_ORDER
   add constraint FK_T_ORDER_REFERENCE_T_USER foreign key (MEMNO)
      references T_USER (USERNO);


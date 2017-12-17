/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     06/12/2017 18:39:41                          */
/*==============================================================*/


drop index USUARIO_ACCION_PERSONAL_FK;

drop index ACCION_PERSONAL_TIPO_FK;

drop index ACCION_PERSONAL_TRABAJADOR_FK;

drop index ACCION_PERSONAL_PK;

drop table ACCION_PERSONAL;

drop index CARGO_PK;

drop table CARGO;

drop index ROL_PK;

drop table ROL;

drop index ACCION_PERSONAL_SITUACION_FK;

drop index SITUACION_PK;

drop table SITUACION;

drop index TIPO_PK;

drop table TIPO;

drop index TRABAJADOR_PK;

drop table TRABAJADOR;

drop index USUARIO_PK;

drop table USUARIO;

drop index USUARIO_CARGO_FK;

drop index USUARIO_CARGO2_FK;

drop index USUARIO_CARGO_PK;

drop table USUARIO_CARGO;

drop index USUARIO_NREGISTRADO_PK;

drop table USUARIO_NREGISTRADO;

drop index USUARIO_ROL_FK;

drop index USUARIO_ROL2_FK;

drop index USUARIO_ROL_PK;

drop table USUARIO_ROL;

/*==============================================================*/
/* Table: ACCION_PERSONAL                                       */
/*==============================================================*/
create table ACCION_PERSONAL (
   FECHA_CREADA_AP      DATE                 not null,
   RESOLUCION_AP        VARCHAR(50)          not null,
   FECHA_RIGE_AP        DATE                 not null,
   EXPLICACION_AP       VARCHAR(1000)        not null,
   NUMERO_AP            VARCHAR(50)          not null,
   CEDULA_TRABAJADOR    VARCHAR(11)          not null,
   NUMERO_TIPO          INT2                 not null,
   CEDULA_USUARIO       VARCHAR(10)          not null,
   OBSERVACIONES_AP     VARCHAR(1000)        not null,
   DIGITALIZADO_AP      VARCHAR(500)         not null,
   RECTOR_AP            VARCHAR(100)         not null,
   DIRECTOR_TH_AP       VARCHAR(100)         not null,
   constraint PK_ACCION_PERSONAL primary key (NUMERO_AP, CEDULA_TRABAJADOR)
);

/*==============================================================*/
/* Index: ACCION_PERSONAL_PK                                    */
/*==============================================================*/
create unique index ACCION_PERSONAL_PK on ACCION_PERSONAL (
NUMERO_AP,
CEDULA_TRABAJADOR
);

/*==============================================================*/
/* Index: ACCION_PERSONAL_TRABAJADOR_FK                         */
/*==============================================================*/
create  index ACCION_PERSONAL_TRABAJADOR_FK on ACCION_PERSONAL (
CEDULA_TRABAJADOR
);

/*==============================================================*/
/* Index: ACCION_PERSONAL_TIPO_FK                               */
/*==============================================================*/
create  index ACCION_PERSONAL_TIPO_FK on ACCION_PERSONAL (
NUMERO_TIPO
);

/*==============================================================*/
/* Index: USUARIO_ACCION_PERSONAL_FK                            */
/*==============================================================*/
create  index USUARIO_ACCION_PERSONAL_FK on ACCION_PERSONAL (
CEDULA_USUARIO
);

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO (
   CODIGO_CARGO         INT4                 not null,
   DESCRIPCION_CARGO    VARCHAR(100)         not null,
   constraint PK_CARGO primary key (CODIGO_CARGO)
);

/*==============================================================*/
/* Index: CARGO_PK                                              */
/*==============================================================*/
create unique index CARGO_PK on CARGO (
CODIGO_CARGO
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL (
   NUMERO_ROL           INT4                 not null,
   DESCRIPCION_ROL      VARCHAR(20)          not null,
   constraint PK_ROL primary key (NUMERO_ROL)
);

/*==============================================================*/
/* Index: ROL_PK                                                */
/*==============================================================*/
create unique index ROL_PK on ROL (
NUMERO_ROL
);

/*==============================================================*/
/* Table: SITUACION                                             */
/*==============================================================*/
create table SITUACION (
   NUMERO_SITUACION     INT2                 not null,
   NUMERO_AP            VARCHAR(50)          not null,
   CEDULA_TRABAJADOR    VARCHAR(11)          not null,
   DEPENDENCIA_SITUACION VARCHAR(40)          not null,
   PUESTO_SITUACION     VARCHAR(100)         not null,
   LUGAR_SITUACION      VARCHAR(50)          not null,
   ESTADO_SITUACION     VARCHAR(50)          not null,
   PART_IND_SITUACION   INT4                 not null,
   PART_PRESU_SITUACION INT4                 not null,
   REMUNERCION_MEN_SITUACION FLOAT8               not null,
   constraint PK_SITUACION primary key (NUMERO_SITUACION)
);

/*==============================================================*/
/* Index: SITUACION_PK                                          */
/*==============================================================*/
create unique index SITUACION_PK on SITUACION (
NUMERO_SITUACION
);

/*==============================================================*/
/* Index: ACCION_PERSONAL_SITUACION_FK                          */
/*==============================================================*/
create  index ACCION_PERSONAL_SITUACION_FK on SITUACION (
NUMERO_AP,
CEDULA_TRABAJADOR
);

/*==============================================================*/
/* Table: TIPO                                                  */
/*==============================================================*/
create table TIPO (
   NUMERO_TIPO          INT2                 not null,
   DESCRIPCION_ROL      VARCHAR(20)          null,
   constraint PK_TIPO primary key (NUMERO_TIPO)
);

/*==============================================================*/
/* Index: TIPO_PK                                               */
/*==============================================================*/
create unique index TIPO_PK on TIPO (
NUMERO_TIPO
);

/*==============================================================*/
/* Table: TRABAJADOR                                            */
/*==============================================================*/
create table TRABAJADOR (
   CEDULA_TRABAJADOR    VARCHAR(11)          not null,
   NOMBRE_TRABAJADOR    VARCHAR(50)          not null,
   APELLIDO_TRABAJADOR  VARCHAR(50)          not null,
   N_AFI_IEES_TRABAJADOR INT4                 not null,
   constraint PK_TRABAJADOR primary key (CEDULA_TRABAJADOR)
);

/*==============================================================*/
/* Index: TRABAJADOR_PK                                         */
/*==============================================================*/
create unique index TRABAJADOR_PK on TRABAJADOR (
CEDULA_TRABAJADOR
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   CEDULA_USUARIO       VARCHAR(10)          not null,
   CONTRASENA_USUARIO   VARCHAR(10)          not null,
   NOMBRE_TRABAJADOR    VARCHAR(50)          not null,
   APELLIDO_TRABAJADOR  VARCHAR(50)          not null,
   constraint PK_USUARIO primary key (CEDULA_USUARIO)
);

/*==============================================================*/
/* Index: USUARIO_PK                                            */
/*==============================================================*/
create unique index USUARIO_PK on USUARIO (
CEDULA_USUARIO
);

/*==============================================================*/
/* Table: USUARIO_CARGO                                         */
/*==============================================================*/
create table USUARIO_CARGO (
   CODIGO_CARGO         INT4                 not null,
   CEDULA_USUARIO       VARCHAR(10)          not null,
   constraint PK_USUARIO_CARGO primary key (CODIGO_CARGO, CEDULA_USUARIO)
);

/*==============================================================*/
/* Index: USUARIO_CARGO_PK                                      */
/*==============================================================*/
create unique index USUARIO_CARGO_PK on USUARIO_CARGO (
CODIGO_CARGO,
CEDULA_USUARIO
);

/*==============================================================*/
/* Index: USUARIO_CARGO2_FK                                     */
/*==============================================================*/
create  index USUARIO_CARGO2_FK on USUARIO_CARGO (
CEDULA_USUARIO
);

/*==============================================================*/
/* Index: USUARIO_CARGO_FK                                      */
/*==============================================================*/
create  index USUARIO_CARGO_FK on USUARIO_CARGO (
CODIGO_CARGO
);

/*==============================================================*/
/* Table: USUARIO_NREGISTRADO                                   */
/*==============================================================*/
create table USUARIO_NREGISTRADO (
   CEDULA_USUARIO       VARCHAR(10)          not null,
   CONTRASENA_USUARIO   VARCHAR(10)          not null,
   NOMBRE_TRABAJADOR    VARCHAR(50)          not null,
   APELLIDO_TRABAJADOR  VARCHAR(50)          not null,
   TELEFONO_NREG        INT4                 not null,
   CORREO_NREG          VARCHAR(100)         not null,
   DIRECCION_NREG       VARCHAR(100)         not null,
   constraint PK_USUARIO_NREGISTRADO primary key (CEDULA_USUARIO)
);

/*==============================================================*/
/* Index: USUARIO_NREGISTRADO_PK                                */
/*==============================================================*/
create unique index USUARIO_NREGISTRADO_PK on USUARIO_NREGISTRADO (
CEDULA_USUARIO
);

/*==============================================================*/
/* Table: USUARIO_ROL                                           */
/*==============================================================*/
create table USUARIO_ROL (
   CEDULA_USUARIO       VARCHAR(10)          not null,
   NUMERO_ROL           INT4                 not null,
   constraint PK_USUARIO_ROL primary key (CEDULA_USUARIO, NUMERO_ROL)
);

/*==============================================================*/
/* Index: USUARIO_ROL_PK                                        */
/*==============================================================*/
create unique index USUARIO_ROL_PK on USUARIO_ROL (
CEDULA_USUARIO,
NUMERO_ROL
);

/*==============================================================*/
/* Index: USUARIO_ROL2_FK                                       */
/*==============================================================*/
create  index USUARIO_ROL2_FK on USUARIO_ROL (
NUMERO_ROL
);

/*==============================================================*/
/* Index: USUARIO_ROL_FK                                        */
/*==============================================================*/
create  index USUARIO_ROL_FK on USUARIO_ROL (
CEDULA_USUARIO
);

alter table ACCION_PERSONAL
   add constraint FK_ACCION_P_ACCION_PE_TIPO foreign key (NUMERO_TIPO)
      references TIPO (NUMERO_TIPO)
      on delete restrict on update restrict;

alter table ACCION_PERSONAL
   add constraint FK_ACCION_P_ACCION_PE_TRABAJAD foreign key (CEDULA_TRABAJADOR)
      references TRABAJADOR (CEDULA_TRABAJADOR)
      on delete restrict on update restrict;

alter table ACCION_PERSONAL
   add constraint FK_ACCION_P_USUARIO_A_USUARIO foreign key (CEDULA_USUARIO)
      references USUARIO (CEDULA_USUARIO)
      on delete restrict on update restrict;

alter table SITUACION
   add constraint FK_SITUACIO_ACCION_PE_ACCION_P foreign key (NUMERO_AP, CEDULA_TRABAJADOR)
      references ACCION_PERSONAL (NUMERO_AP, CEDULA_TRABAJADOR)
      on delete restrict on update restrict;

alter table USUARIO_CARGO
   add constraint FK_USUARIO__USUARIO_C_CARGO foreign key (CODIGO_CARGO)
      references CARGO (CODIGO_CARGO)
      on delete restrict on update restrict;

alter table USUARIO_CARGO
   add constraint FK_USUARIO__USUARIO_C_USUARIO foreign key (CEDULA_USUARIO)
      references USUARIO (CEDULA_USUARIO)
      on delete restrict on update restrict;

alter table USUARIO_NREGISTRADO
   add constraint FK_USUARIO__USUARIO_U_USUARIO foreign key (CEDULA_USUARIO)
      references USUARIO (CEDULA_USUARIO)
      on delete restrict on update restrict;

alter table USUARIO_ROL
   add constraint FK_USUARIO__USUARIO_R_USUARIO foreign key (CEDULA_USUARIO)
      references USUARIO (CEDULA_USUARIO)
      on delete restrict on update restrict;

alter table USUARIO_ROL
   add constraint FK_USUARIO__USUARIO_R_ROL foreign key (NUMERO_ROL)
      references ROL (NUMERO_ROL)
      on delete restrict on update restrict;


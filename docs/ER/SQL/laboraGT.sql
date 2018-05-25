
--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      GregSoft
-- Project :      RRHH v2.DM1
-- Author :       Rino
--
-- Date Created : Monday, February 26, 2018 18:12:04
-- Target DBMS : Oracle 11g
--


 GO
CREATE DATABASE LABORAGT;
 GO
 GO
 USE LABORAGT;
 GO

-- 
-- TABLE: Area 
--

CREATE TABLE Area(
    idArea        int    NOT NULL identity(1,1),
    Descripcion    int not null,
    CONSTRAINT PK4 PRIMARY KEY (idArea)
)
go

IF OBJECT_ID('Area') IS NOT NULL
    PRINT '<<< CREATED TABLE Area >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Area >>>'
go

/* 
 * TABLE: Banco 
 */

CREATE TABLE Banco(

    idBanco        int NOT NULL identity(1,1),
    descripcion    VARCHAR(40) not null,
    CONSTRAINT PK25 PRIMARY KEY (idBanco)
)
go



IF OBJECT_ID('Banco') IS NOT NULL
    PRINT '<<< CREATED TABLE Banco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Banco >>>'
go

/* 
 * TABLE: BonoColaborador 
 */

CREATE TABLE BonoColaborador(
    idBono           int     NOT NULL,
    idColaborador    int    NOT NULL,
    -- CONSTRAINT PK34 PRIMARY KEY (idBono, idColaborador)
)
go



IF OBJECT_ID('BonoColaborador') IS NOT NULL
    PRINT '<<< CREATED TABLE BonoColaborador >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE BonoColaborador >>>'
go

/* 
 * TABLE: Bonos 
 */

CREATE TABLE Bonos(
    idBono         int     NOT NULL identity(1,1),
    descripcion    VARCHAR(40) not null,
    monto          decimal(13, 2) not null,
    CONSTRAINT PK33 PRIMARY KEY (idBono)
)
go



IF OBJECT_ID('Bonos') IS NOT NULL
    PRINT '<<< CREATED TABLE Bonos >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Bonos >>>'
go

/* 
 * TABLE: Colaborador 
 */

CREATE TABLE Colaborador(
    idColaborador      int   NOT NULL identity(1,1),
    nombre1            VARCHAR(45) not null,
    nombre2            VARCHAR(45),
    nombre3            VARCHAR(45) ,
    apellido1          VARCHAR(45) not null,
    apellido2          VARCHAR(45),
    apellido3          VARCHAR(45),
    fechaNacimiento    DATE not null,
    sexo               VARCHAR(1) not null,
    idEstadoCivil      int     NOT NULL,
    idProfesion        int     NOT NULL,
    idPuesto           int     NOT NULL,
    usuario            VARCHAR(45)     NOT NULL,
    CONSTRAINT PK7 PRIMARY KEY (idColaborador)
)
go



IF OBJECT_ID('Colaborador') IS NOT NULL
    PRINT '<<< CREATED TABLE Colaborador >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Colaborador >>>'
go

/* 
 * TABLE: ColaboradorDescuento 
 */

CREATE TABLE ColaboradorDescuento(
    idColaborador      int    NOT NULL,
    idDescuento       int     NOT NULL,
    idTipoDescuento   int     NOT NULL,
    monto              decimal(13, 2) not null,
    -- CONSTRAINT PK40 PRIMARY KEY (idColaborador)
)
go

IF OBJECT_ID('ColaboradorDescuento') IS NOT NULL
    PRINT '<<< CREATED TABLE ColaboradorDescuento >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE ColaboradorDescuento >>>'
go



CREATE TABLE Credencial(
    usuario     VARCHAR(45)    NOT NULL,
    passw    VARCHAR(45) not null,
    CONSTRAINT PK45 PRIMARY KEY (usuario)
)
;


/* 
 * TABLE: CuentaDeposito 
 */

CREATE TABLE CuentaDeposito(
    idColaborador    int    NOT NULL,
    idTipoCuenta    int     NOT NULL,
    idBanco         int     NOT NULL,
   --  CONSTRAINT PK32 PRIMARY KEY (idColaborador)
)
go

IF OBJECT_ID('CuentaDeposito') IS NOT NULL
    PRINT '<<< CREATED TABLE CuentaDeposito >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE CuentaDeposito >>>'
go

/* 
 * TABLE: CuentaEmpresa 
 */

CREATE TABLE CuentaEmpresa(
    idEmpresa       int   NOT NULL,
    idTipoCuenta   int    NOT NULL,
    idBanco        int    NOT NULL,
    noCuenta        VARCHAR(20) not null,
   -- CONSTRAINT PK24 PRIMARY KEY (idEmpresa)
)
go



IF OBJECT_ID('CuentaEmpresa') IS NOT NULL
    PRINT '<<< CREATED TABLE CuentaEmpresa >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE CuentaEmpresa >>>'
go

/* 
 * TABLE: DatoFamiliar 
 */

CREATE TABLE DatoFamiliar(
    idColaborador     int    NOT NULL,
    idDatoFamiliar   int identity(1,1)    NOT NULL,
    idParentezco     int     NOT NULL,
    idProfesion      int     NOT NULL,
    nombre            VARCHAR(80) not null,
    edad             int not null,
    telefono          VARCHAR(15) not null,
    CONSTRAINT PK20 PRIMARY KEY (idDatoFamiliar)
)
go



IF OBJECT_ID('DatoFamiliar') IS NOT NULL
    PRINT '<<< CREATED TABLE DatoFamiliar >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DatoFamiliar >>>'
go

/* 
 * TABLE: DatosAcademicos 
 */

CREATE TABLE DatosAcademicos(
    idColaborador           int    NOT NULL,
    idAcademicoColaborador   int identity(1,1)     NOT NULL,
    idNivelAcademico       int     NOT NULL,
    nombreInstitucion       VARCHAR(60) not null,
    fechaInicio             DATE not null,
    fechaFinalizo           DATE not null,
    telefono                VARCHAR(15) not null,
    direccion               VARCHAR(80) not null,
    observacion             VARCHAR(200),
    idPais                  VARCHAR(3) not null,
    idDepartamento          int,
    idMunicipio             int,
    CONSTRAINT PK22 PRIMARY KEY (idAcademicoColaborador)
)
go



IF OBJECT_ID('DatosAcademicos') IS NOT NULL
    PRINT '<<< CREATED TABLE DatosAcademicos >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DatosAcademicos >>>'
go

/* 
 * TABLE: DatosLaborales 
 */

CREATE TABLE DatosLaborales(
    idColaborador    int    NOT NULL,
    idLaboral        int     NOT NULL identity(1,1),
    Empresa          VARCHAR(80) not null,
    CargoInicial     VARCHAR(40) not null,
    CargoFinal       VARCHAR(40) not null,
    Telefono         VARCHAR(15),
    JefeInmediato    VARCHAR(80) not null,
    FechaInicio      DATE not null,
    FechaFinal       DATE not null,
    MotivoRetiro     VARCHAR(200) not null,
    CONSTRAINT PK26 PRIMARY KEY (idLaboral)
)
go



IF OBJECT_ID('DatosLaborales') IS NOT NULL
    PRINT '<<< CREATED TABLE DatosLaborales >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DatosLaborales >>>'
go

/* 
 * TABLE: Departamento 
 */

CREATE TABLE Departamento(
    idPais            VARCHAR(3)     NOT NULL,
    idDepartamento    int    NOT NULL identity(1,1),
    descripcion       VARCHAR(40) not null,
    CONSTRAINT PK12 PRIMARY KEY (idDepartamento)
)
go



IF OBJECT_ID('Departamento') IS NOT NULL
    PRINT '<<< CREATED TABLE Departamento >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Departamento >>>'
go

/* 
 * TABLE: DetallePlanilla 
 */

CREATE TABLE DetallePlanilla(
    idPlanilla        int    NOT NULL,
    idColaborador     int    NOT NULL,
    idFormaPago      int     NOT NULL,
    anio              int     NOT NULL,
    mes              int     NOT NULL,
    correlativo       int    NOT NULL identity(1,1),
    Ordinario         decimal(13,2) not null,
    Bonificaciones    decimal(13,2) not null,
    Descuentos        decimal(13,2) not null,
    Impuestos         decimal(13,2) not null,
    Extras            decimal(13,2) not null,
    Total             decimal(13,2),
    CONSTRAINT PK37 PRIMARY KEY (correlativo)
)
go



IF OBJECT_ID('DetallePlanilla') IS NOT NULL
    PRINT '<<< CREATED TABLE DetallePlanilla >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DetallePlanilla >>>'
go

/* 
 * TABLE: Direcciones 
 */

CREATE TABLE Direcciones(
    idColaborador      int    NOT NULL,
    idTipoDireccion   int     NOT NULL,
    idDireccion       int     NOT NULL identity(1,1),
    descripcion        VARCHAR(40) not null,
    idPais             VARCHAR(3) not null,
    idDepartamento    int not null,
    idMunicipio       int not null,
 CONSTRAINT PK10 PRIMARY KEY (idDireccion)
)
go



IF OBJECT_ID('Direcciones') IS NOT NULL
    PRINT '<<< CREATED TABLE Direcciones >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Direcciones >>>'
go

/* 
 * TABLE: Empresa 
 */

CREATE TABLE Empresa(
    idEmpresa      int    NOT NULL identity(1,1),
    descripcion    VARCHAR(40) not null,
    NIT            VARCHAR(18) not null,
    CONSTRAINT PK5 PRIMARY KEY (idEmpresa)
)
go



IF OBJECT_ID('Empresa') IS NOT NULL
    PRINT '<<< CREATED TABLE Empresa >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Empresa >>>'
go

/* 
 * TABLE: EmpresaColaborador 
 */

CREATE TABLE EmpresaColaborador(
    idEmpresa       int     NOT NULL,
    idColaborador    int    NOT NULL,
    Activo           VARCHAR(1),
   -- CONSTRAINT PK9 PRIMARY KEY (idEmpresa, idColaborador)
)
go



IF OBJECT_ID('EmpresaColaborador') IS NOT NULL
    PRINT '<<< CREATED TABLE EmpresaColaborador >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EmpresaColaborador >>>'
go

/* 
 * TABLE: EstadoCivil 
 */

CREATE TABLE EstadoCivil(
    idEstadoCivil    int identity(1,1)    NOT NULL,
    descripcion      VARCHAR(40) not null,
    CONSTRAINT PK27 PRIMARY KEY (idEstadoCivil)
)
go



IF OBJECT_ID('EstadoCivil') IS NOT NULL
    PRINT '<<< CREATED TABLE EstadoCivil >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EstadoCivil >>>'
go

/* 
 * TABLE: formaPago 
 */

CREATE TABLE formaPago(
    idFormaPago    int     NOT NULL identity(1,1),
    descripcion    VARCHAR(40) not null,
    CONSTRAINT PK31 PRIMARY KEY (idFormaPago)
)
go



IF OBJECT_ID('formaPago') IS NOT NULL
    PRINT '<<< CREATED TABLE formaPago >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE formaPago >>>'
go

/* 
 * TABLE: Identificacion 
 */

CREATE TABLE Identificacion(
    idColaborador       int    NOT NULL,
    idIdentificacion   int  identity(1,1)   NOT NULL,
    idTipoDocumento    int     NOT NULL,
    noDocumento         VARCHAR(18) not null,
    CONSTRAINT PK44 PRIMARY KEY ( idIdentificacion)
)
go



IF OBJECT_ID('Identificacion') IS NOT NULL
    PRINT '<<< CREATED TABLE Identificacion >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Identificacion >>>'
go

/* 
 * TABLE: Impuesto 
 */

CREATE TABLE Impuesto(
    idImpuesto     int  identity(1,1)  NOT NULL,
    descripcion    VARCHAR(125) not null,
    porcentaje     decimal(5,2) not null,
    CONSTRAINT PK28 PRIMARY KEY (idImpuesto)
)
go



IF OBJECT_ID('Impuesto') IS NOT NULL
    PRINT '<<< CREATED TABLE Impuesto >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Impuesto >>>'
go

/* 
 * TABLE: Municipio 
 */

CREATE TABLE Municipio(
    idPais            VARCHAR(3)     NOT NULL,
    idDepartamento    int    NOT NULL,
    idMunicipio       int    NOT NULL identity(1,1),
    descripcion       VARCHAR(40) not null,
    CONSTRAINT PK13 PRIMARY KEY (idMunicipio)
)
go



IF OBJECT_ID('Municipio') IS NOT NULL
    PRINT '<<< CREATED TABLE Municipio >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Municipio >>>'
go

/* 
 * TABLE: NivelAcademico 
 */

CREATE TABLE NivelAcademico(
    idNivelAcademico    int    NOT NULL identity(1,1),
    descripcion         VARCHAR(70) not null,
    CONSTRAINT PK21 PRIMARY KEY (idNivelAcademico)
)
go



IF OBJECT_ID('NivelAcademico') IS NOT NULL
    PRINT '<<< CREATED TABLE NivelAcademico >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE NivelAcademico >>>'
go

/* 
 * TABLE: Pais 
 */

CREATE TABLE Pais(
    idPais         VARCHAR(3)     NOT NULL,
    descripcion    VARCHAR(40) not null,
    extension      CHAR(10),
    CONSTRAINT PK11 PRIMARY KEY (idPais)
)
go



IF OBJECT_ID('Pais') IS NOT NULL
    PRINT '<<< CREATED TABLE Pais >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Pais >>>'
go

/* 
 * TABLE: Parentezco 
 */

CREATE TABLE Parentezco(
    idParentezco    int    NOT NULL identity(1,1),
    descripcion     VARCHAR(75) not null,
    CONSTRAINT PK18 PRIMARY KEY (idParentezco)
)
go



IF OBJECT_ID('Parentezco') IS NOT NULL
    PRINT '<<< CREATED TABLE Parentezco >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Parentezco >>>'
go

/* 
 * TABLE: Permiso 
 */

CREATE TABLE Permiso(
    idPermiso      numeric(3, 0)    NOT NULL,
    descripcion    varchar(40)      NULL,
    CONSTRAINT PK48 PRIMARY KEY NONCLUSTERED (idPermiso)
)
go



IF OBJECT_ID('Permiso') IS NOT NULL
    PRINT '<<< CREATED TABLE Permiso >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Permiso >>>'
go

/* 
 * TABLE: PermisoRol 
 */

CREATE TABLE PermisoRol(
    idRol        numeric(3, 0)    NOT NULL,
    idPermiso    numeric(3, 0)    NOT NULL,
    CONSTRAINT PK51 PRIMARY KEY NONCLUSTERED (idRol, idPermiso)
)
go



IF OBJECT_ID('PermisoRol') IS NOT NULL
    PRINT '<<< CREATED TABLE PermisoRol >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE PermisoRol >>>'
go

/* 
 * TABLE: Planilla 
 */

CREATE TABLE Planilla(
    idPlanilla    int    NOT NULL identity(1,1),
    anio           int     NOT NULL,
    mes           int     NOT NULL,
    CONSTRAINT PK36 PRIMARY KEY (idPlanilla)
)
go



IF OBJECT_ID('Planilla') IS NOT NULL
    PRINT '<<< CREATED TABLE Planilla >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Planilla >>>'
go

/* 
 * TABLE: Profesion 
 */

CREATE TABLE Profesion(
    idProfesion    int    NOT NULL identity(1,1),
    descripcion    VARCHAR(125) not null,
    CONSTRAINT PK19 PRIMARY KEY (idProfesion)
)
go



IF OBJECT_ID('Profesion') IS NOT NULL
    PRINT '<<< CREATED TABLE Profesion >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Profesion >>>'
go

/* 
 * TABLE: Puesto 
 */

CREATE TABLE Puesto(
    idPuesto           int    NOT NULL identity(1,1),
    descripcion        VARCHAR(125) not null,
    sueldoOrdinario    decimal(13,2) not null,
    idArea             int     NOT NULL,
    CONSTRAINT PK3 PRIMARY KEY (idPuesto)
)
go



IF OBJECT_ID('Puesto') IS NOT NULL
    PRINT '<<< CREATED TABLE Puesto >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Puesto >>>'
go

/* 
 * TABLE: PuestoImpuesto 
 */

CREATE TABLE PuestoImpuesto(
    idImpuesto    int    NOT NULL,
    idPuesto      int    NOT NULL,
    -- CONSTRAINT PK35 PRIMARY KEY (idImpuesto, idPuesto)
)
go



IF OBJECT_ID('PuestoImpuesto') IS NOT NULL
    PRINT '<<< CREATED TABLE PuestoImpuesto >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE PuestoImpuesto >>>'
go

/* 
 * TABLE: ReferenciaColaborador 
 */

CREATE TABLE ReferenciaColaborador(
    idColaborador       int    NOT NULL ,
    idReferencia        int        NOT NULL identity(1,1),
    nombre              varCHAR(120) not null,
    telefono1           varCHAR(10) not null,
    direccion           varCHAR(120),
    edad                int not null,
    idTipoReferencia    int     NOT NULL,
    idParentezco        int     NOT NULL,
    idProfesion         int     NOT NULL,
    CONSTRAINT PK16 PRIMARY KEY (idReferencia)
)
go



IF OBJECT_ID('ReferenciaColaborador') IS NOT NULL
    PRINT '<<< CREATED TABLE ReferenciaColaborador >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE ReferenciaColaborador >>>'
go

/* 
 * TABLE: Rol 
 */

CREATE TABLE Rol(
    idRol          numeric(3, 0)    NOT NULL,
    descripcion    varchar(40)      NULL,
    CONSTRAINT PK47 PRIMARY KEY NONCLUSTERED (idRol)
)
go



IF OBJECT_ID('Rol') IS NOT NULL
    PRINT '<<< CREATED TABLE Rol >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Rol >>>'
go

/* 
 * TABLE: Servicio 
 */

CREATE TABLE Servicio(
    idServicio     int    NOT NULL identity(1,1),
    descripcion    VARCHAR(125) not null,
    CONSTRAINT PK6 PRIMARY KEY (idServicio)
)
go



IF OBJECT_ID('Servicio') IS NOT NULL
    PRINT '<<< CREATED TABLE Servicio >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Servicio >>>'
go

/* 
 * TABLE: ServicioEmpresa 
 */

CREATE TABLE ServicioEmpresa(
    idServicio    int    NOT NULL,
    idEmpresa     int    NOT NULL,
    -- CONSTRAINT PK15 PRIMARY KEY (idServicio, idEmpresa)
)
go



IF OBJECT_ID('ServicioEmpresa') IS NOT NULL
    PRINT '<<< CREATED TABLE ServicioEmpresa >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE ServicioEmpresa >>>'
go

/* 
 * TABLE: TipoCuenta 
 */

CREATE TABLE TipoCuenta(
    idTipoCuenta    int    NOT NULL identity(1,1),
    descripcion     VARCHAR(120) not null,
    CONSTRAINT PK23 PRIMARY KEY (idTipoCuenta)
)
go



IF OBJECT_ID('TipoCuenta') IS NOT NULL
    PRINT '<<< CREATED TABLE TipoCuenta >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TipoCuenta >>>'
go

/* 
 * TABLE: TipoDescuento 
 */

CREATE TABLE TipoDescuento(
    idTipoDescuento    int    NOT NULL identity(1,1),
    descripcion        VARCHAR(120) not null,
    CONSTRAINT PK39 PRIMARY KEY (idTipoDescuento)
)
go



IF OBJECT_ID('TipoDescuento') IS NOT NULL
    PRINT '<<< CREATED TABLE TipoDescuento >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TipoDescuento >>>'
go

/* 
 * TABLE: TipoDireccion 
 */

CREATE TABLE TipoDireccion(
    idTipoDireccion    int    NOT NULL identity(1,1),
    descripcion        VARCHAR(120) not null,
    CONSTRAINT PK8 PRIMARY KEY (idTipoDireccion)
)
go



IF OBJECT_ID('TipoDireccion') IS NOT NULL
    PRINT '<<< CREATED TABLE TipoDireccion >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TipoDireccion >>>'
go

/* 
 * TABLE: TipoDocumento 
 */

CREATE TABLE TipoDocumento(
    idTipoDocumento    int    NOT NULL identity(1,1),
    tipoDocumento      int not null,
    mascara            VARCHAR(18) not null,
    CONSTRAINT PK43 PRIMARY KEY (idTipoDocumento)
)
go



IF OBJECT_ID('TipoDocumento') IS NOT NULL
    PRINT '<<< CREATED TABLE TipoDocumento >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TipoDocumento >>>'
go

/* 
 * TABLE: TipoReferencia 
 */

CREATE TABLE TipoReferencia(
    idTipoReferencia    int    NOT NULL identity(1,1),
    descripcion         VARCHAR(120) not null,
    CONSTRAINT PK17 PRIMARY KEY (idTipoReferencia)
)
go



IF OBJECT_ID('TipoReferencia') IS NOT NULL
    PRINT '<<< CREATED TABLE TipoReferencia >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE TipoReferencia >>>'
go

/* 
 * TABLE: Usuario 
 */

CREATE TABLE Usuario(
    user        varchar(10)      NOT NULL,
    password    varchar(20)      NULL,
    idRol       numeric(3, 0)    NOT NULL,
    CONSTRAINT PK45 PRIMARY KEY NONCLUSTERED (user)
)
go



IF OBJECT_ID('Usuario') IS NOT NULL
    PRINT '<<< CREATED TABLE Usuario >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Usuario >>>'
go

/* 
 * TABLE: BonoColaborador 
 */

ALTER TABLE BonoColaborador ADD CONSTRAINT RefBonos47 
    FOREIGN KEY (idBono)
    REFERENCES Bonos(idBono)
go

ALTER TABLE BonoColaborador ADD CONSTRAINT RefColaborador60 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
go


/* 
 * TABLE: Colaborador 
 */

ALTER TABLE Colaborador ADD CONSTRAINT RefEstadoCivil35 
    FOREIGN KEY (idEstadoCivil)
    REFERENCES EstadoCivil(idEstadoCivil)
go

ALTER TABLE Colaborador ADD CONSTRAINT RefProfesion37 
    FOREIGN KEY (idProfesion)
    REFERENCES Profesion(idProfesion)
go

ALTER TABLE Colaborador ADD CONSTRAINT RefPuesto46 
    FOREIGN KEY (idPuesto)
    REFERENCES Puesto(idPuesto)
go

ALTER TABLE Colaborador ADD CONSTRAINT RefUsuario64 
    FOREIGN KEY (user)
    REFERENCES Usuario(user)
go


/* 
 * TABLE: ColaboradorDescuento 
 */

ALTER TABLE ColaboradorDescuento ADD CONSTRAINT RefColaborador56 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
go

ALTER TABLE ColaboradorDescuento ADD CONSTRAINT RefTipoDescuento57 
    FOREIGN KEY (idTipoDescuento)
    REFERENCES TipoDescuento(idTipoDescuento)
go


/* 
 * TABLE: CuentaDeposito 
 */

ALTER TABLE CuentaDeposito ADD CONSTRAINT RefColaborador39 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
go

ALTER TABLE CuentaDeposito ADD CONSTRAINT RefTipoCuenta42 
    FOREIGN KEY (idTipoCuenta)
    REFERENCES TipoCuenta(idTipoCuenta)
go

ALTER TABLE CuentaDeposito ADD CONSTRAINT RefBanco43 
    FOREIGN KEY (idBanco)
    REFERENCES Banco(idBanco)
go


/* 
 * TABLE: CuentaEmpresa 
 */

ALTER TABLE CuentaEmpresa ADD CONSTRAINT RefEmpresa31 
    FOREIGN KEY (idEmpresa)
    REFERENCES Empresa(idEmpresa)
go

ALTER TABLE CuentaEmpresa ADD CONSTRAINT RefTipoCuenta32 
    FOREIGN KEY (idTipoCuenta)
    REFERENCES TipoCuenta(idTipoCuenta)
go

ALTER TABLE CuentaEmpresa ADD CONSTRAINT RefBanco33 
    FOREIGN KEY (idBanco)
    REFERENCES Banco(idBanco)
go


/* 
 * TABLE: DatoFamiliar 
 */

ALTER TABLE DatoFamiliar ADD CONSTRAINT RefColaborador23 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
go

ALTER TABLE DatoFamiliar ADD CONSTRAINT RefParentezco24 
    FOREIGN KEY (idParentezco)
    REFERENCES Parentezco(idParentezco)
go

ALTER TABLE DatoFamiliar ADD CONSTRAINT RefProfesion38 
    FOREIGN KEY (idProfesion)
    REFERENCES Profesion(idProfesion)
go


/* 
 * TABLE: DatosAcademicos 
 */

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefColaborador26 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
go

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefNivelAcademico27 
    FOREIGN KEY (idNivelAcademico)
    REFERENCES NivelAcademico(idNivelAcademico)
go

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefPais28 
    FOREIGN KEY (idPais)
    REFERENCES Pais(idPais)
go

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefDepartamento29 
    FOREIGN KEY ( idDepartamento)
    REFERENCES Departamento(idDepartamento)
;

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefMunicipio30 
    FOREIGN KEY (idMunicipio)
    REFERENCES Municipio(idMunicipio)
;



/* 
 * TABLE: DatosLaborales 
 */

ALTER TABLE DatosLaborales ADD CONSTRAINT RefColaborador34 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
go


/* 
 * TABLE: Departamento 
 */

ALTER TABLE Departamento ADD CONSTRAINT RefPais8 
    FOREIGN KEY (idPais)
    REFERENCES Pais(idPais)
go


/* 
 * TABLE: DetallePlanilla 
 */

ALTER TABLE DetallePlanilla ADD CONSTRAINT RefPlanilla52 

    FOREIGN KEY (idPlanilla)
    REFERENCES Planilla(idPlanilla)
;
go


ALTER TABLE DetallePlanilla ADD CONSTRAINT RefColaborador53 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
go

ALTER TABLE DetallePlanilla ADD CONSTRAINT RefformaPago54 
    FOREIGN KEY (idFormaPago)
    REFERENCES formaPago(idFormaPago)
go


/* 
 * TABLE: Direcciones 
 */

ALTER TABLE Direcciones ADD CONSTRAINT RefPais18 
    FOREIGN KEY (idPais)
    REFERENCES Pais(idPais)
go

ALTER TABLE Direcciones ADD CONSTRAINT RefDepartamento19 

    FOREIGN KEY (idDepartamento)
    REFERENCES Departamento(idDepartamento)
;

ALTER TABLE Direcciones ADD CONSTRAINT RefMunicipio20 
    FOREIGN KEY (idMunicipio)
    REFERENCES Municipio(idMunicipio)
;
go



ALTER TABLE Direcciones ADD CONSTRAINT RefTipoDireccion5 
    FOREIGN KEY (idTipoDireccion)
    REFERENCES TipoDireccion(idTipoDireccion)
go

ALTER TABLE Direcciones ADD CONSTRAINT RefColaborador6 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
go



/* 
 * TABLE: EmpresaColaborador 
 */

ALTER TABLE EmpresaColaborador ADD CONSTRAINT RefEmpresa1 
    FOREIGN KEY (idEmpresa)
    REFERENCES Empresa(idEmpresa)
go

ALTER TABLE EmpresaColaborador ADD CONSTRAINT RefColaborador2 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
go


/* 
 * TABLE: Identificacion 
 */

ALTER TABLE Identificacion ADD CONSTRAINT RefColaborador58 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
go

ALTER TABLE Identificacion ADD CONSTRAINT RefTipoDocumento59 
    FOREIGN KEY (idTipoDocumento)
    REFERENCES TipoDocumento(idTipoDocumento)
go


/* 
 * TABLE: Municipio 
 */

ALTER TABLE Municipio ADD CONSTRAINT RefDepartamento9 
    FOREIGN KEY (idDepartamento)
    REFERENCES Departamento(idDepartamento)
;
go


/* 
 * TABLE: PermisoRol 
 */

ALTER TABLE PermisoRol ADD CONSTRAINT RefRol65 
    FOREIGN KEY (idRol)
    REFERENCES Rol(idRol)
go

ALTER TABLE PermisoRol ADD CONSTRAINT RefPermiso66 
    FOREIGN KEY (idPermiso)
    REFERENCES Permiso(idPermiso)
go


/* 
 * TABLE: Puesto 
 */

ALTER TABLE Puesto ADD CONSTRAINT RefArea49 
    FOREIGN KEY (idArea)
    REFERENCES Area(idArea)
go


/* 
 * TABLE: PuestoImpuesto 
 */

ALTER TABLE PuestoImpuesto ADD CONSTRAINT RefImpuesto50 
    FOREIGN KEY (idImpuesto)
    REFERENCES Impuesto(idImpuesto)
go

ALTER TABLE PuestoImpuesto ADD CONSTRAINT RefPuesto51 
    FOREIGN KEY (idPuesto)
    REFERENCES Puesto(idPuesto)
go


/* 
 * TABLE: ReferenciaColaborador 
 */

ALTER TABLE ReferenciaColaborador ADD CONSTRAINT RefParentezco17 
    FOREIGN KEY (idParentezco)
    REFERENCES Parentezco(idParentezco)
go

ALTER TABLE ReferenciaColaborador ADD CONSTRAINT RefProfesion36 
    FOREIGN KEY (idProfesion)
    REFERENCES Profesion(idProfesion)
go

ALTER TABLE ReferenciaColaborador ADD CONSTRAINT RefColaborador15 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
go

ALTER TABLE ReferenciaColaborador ADD CONSTRAINT RefTipoReferencia16 
    FOREIGN KEY (idTipoReferencia)
    REFERENCES TipoReferencia(idTipoReferencia)
go


/* 
 * TABLE: ServicioEmpresa 
 */

ALTER TABLE ServicioEmpresa ADD CONSTRAINT RefServicio10 
    FOREIGN KEY (idServicio)
    REFERENCES Servicio(idServicio)
go

ALTER TABLE ServicioEmpresa ADD CONSTRAINT RefEmpresa11 
    FOREIGN KEY (idEmpresa)
    REFERENCES Empresa(idEmpresa)
go


/* 
 * TABLE: Usuario 
 */

ALTER TABLE Usuario ADD CONSTRAINT RefRol67 
    FOREIGN KEY (idRol)
    REFERENCES Rol(idRol)
go



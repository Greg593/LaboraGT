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
;



-- 
-- TABLE: Banco 
--

CREATE TABLE Banco(
    idBanco        int NOT NULL identity(1,1),
    descripcion    VARCHAR(40) not null,
    CONSTRAINT PK25 PRIMARY KEY (idBanco)
)
;



-- 
-- TABLE: BonoColaborador 
--

CREATE TABLE BonoColaborador(
    idBono           int     NOT NULL,
    idColaborador    int    NOT NULL,
    -- CONSTRAINT PK34 PRIMARY KEY (idBono, idColaborador)
)
;



-- 
-- TABLE: Bonos 
--

CREATE TABLE Bonos(
    idBono         int     NOT NULL identity(1,1),
    descripcion    VARCHAR(40) not null,
    monto          decimal(13, 2) not null,
    CONSTRAINT PK33 PRIMARY KEY (idBono)
)
;



-- 
-- TABLE: Colaborador 
--

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
;



-- 
-- TABLE: ColaboradorDescuento 
--

CREATE TABLE ColaboradorDescuento(
    idColaborador      int    NOT NULL,
    idDescuento       int     NOT NULL,
    idTipoDescuento   int     NOT NULL,
    monto              decimal(13, 2) not null,
    -- CONSTRAINT PK40 PRIMARY KEY (idColaborador)
)
;



-- 
-- TABLE: Credencial 
--

CREATE TABLE Credencial(
    usuario     VARCHAR(45)    NOT NULL,
    passw    VARCHAR(45) not null,
    CONSTRAINT PK45 PRIMARY KEY (usuario)
)
;



-- 
-- TABLE: CuentaDeposito 
--

CREATE TABLE CuentaDeposito(
    idColaborador    int    NOT NULL,
    idTipoCuenta    int     NOT NULL,
    idBanco         int     NOT NULL,
   --  CONSTRAINT PK32 PRIMARY KEY (idColaborador)
)
;



-- 
-- TABLE: CuentaEmpresa 
--

CREATE TABLE CuentaEmpresa(
    idEmpresa       int   NOT NULL,
    idTipoCuenta   int    NOT NULL,
    idBanco        int    NOT NULL,
    noCuenta        VARCHAR(20) not null,
   -- CONSTRAINT PK24 PRIMARY KEY (idEmpresa)
)
;



-- 
-- TABLE: DatoFamiliar 
--

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
;



-- 
-- TABLE: DatosAcademicos 
--

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
;



-- 
-- TABLE: DatosLaborales 
--

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
;



-- 
-- TABLE: Departamento 
--

CREATE TABLE Departamento(
    idPais            VARCHAR(3)     NOT NULL,
    idDepartamento    int    NOT NULL identity(1,1),
    descripcion       VARCHAR(40) not null,
    CONSTRAINT PK12 PRIMARY KEY (idDepartamento)
)
;



-- 
-- TABLE: DetallePlanilla 
--

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
;



-- 
-- TABLE: Direcciones 
--

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
;



-- 
-- TABLE: Empresa 
--

CREATE TABLE Empresa(
    idEmpresa      int    NOT NULL identity(1,1),
    descripcion    VARCHAR(40) not null,
    NIT            VARCHAR(18) not null,
    CONSTRAINT PK5 PRIMARY KEY (idEmpresa)
)
;



-- 
-- TABLE: EmpresaColaborador 
--

CREATE TABLE EmpresaColaborador(
    idEmpresa       int     NOT NULL,
    idColaborador    int    NOT NULL,
    Activo           VARCHAR(1),
   -- CONSTRAINT PK9 PRIMARY KEY (idEmpresa, idColaborador)
)
;



-- 
-- TABLE: EstadoCivil 
--

CREATE TABLE EstadoCivil(
    idEstadoCivil    int identity(1,1)    NOT NULL,
    descripcion      VARCHAR(40) not null,
    CONSTRAINT PK27 PRIMARY KEY (idEstadoCivil)
)
;



-- 
-- TABLE: formaPago 
--

CREATE TABLE formaPago(
    idFormaPago    int     NOT NULL identity(1,1),
    descripcion    VARCHAR(40) not null,
    CONSTRAINT PK31 PRIMARY KEY (idFormaPago)
)
;



-- 
-- TABLE: Identificacion 
--

CREATE TABLE Identificacion(
    idColaborador       int    NOT NULL,
    idIdentificacion   int  identity(1,1)   NOT NULL,
    idTipoDocumento    int     NOT NULL,
    noDocumento         VARCHAR(18) not null,
    CONSTRAINT PK44 PRIMARY KEY ( idIdentificacion)
)
;



-- 
-- TABLE: Impuesto 
--

CREATE TABLE Impuesto(
    idImpuesto     int  identity(1,1)  NOT NULL,
    descripcion    VARCHAR(125) not null,
    porcentaje     decimal(5,2) not null,
    CONSTRAINT PK28 PRIMARY KEY (idImpuesto)
)
;



-- 
-- TABLE: Municipio 
--

CREATE TABLE Municipio(
    idPais            VARCHAR(3)     NOT NULL,
    idDepartamento    int    NOT NULL,
    idMunicipio       int    NOT NULL identity(1,1),
    descripcion       VARCHAR(40) not null,
    CONSTRAINT PK13 PRIMARY KEY (idMunicipio)
)
;



-- 
-- TABLE: NivelAcademico 
--

CREATE TABLE NivelAcademico(
    idNivelAcademico    int    NOT NULL identity(1,1),
    descripcion         VARCHAR(70) not null,
    CONSTRAINT PK21 PRIMARY KEY (idNivelAcademico)
)
;



-- 
-- TABLE: Pais 
--

CREATE TABLE Pais(
    idPais         VARCHAR(3)     NOT NULL,
    descripcion    VARCHAR(40) not null,
    extension      CHAR(10),
    CONSTRAINT PK11 PRIMARY KEY (idPais)
)
;



-- 
-- TABLE: Parentezco 
--

CREATE TABLE Parentezco(
    idParentezco    int    NOT NULL identity(1,1),
    descripcion     VARCHAR(75) not null,
    CONSTRAINT PK18 PRIMARY KEY (idParentezco)
)
;



-- 
-- TABLE: Planilla 
--

CREATE TABLE Planilla(
    idPlanilla    int    NOT NULL identity(1,1),
    anio           int     NOT NULL,
    mes           int     NOT NULL,
    CONSTRAINT PK36 PRIMARY KEY (idPlanilla)
)
;



-- 
-- TABLE: Profesion 
--

CREATE TABLE Profesion(
    idProfesion    int    NOT NULL identity(1,1),
    descripcion    VARCHAR(125) not null,
    CONSTRAINT PK19 PRIMARY KEY (idProfesion)
)
;



-- 
-- TABLE: Puesto 
--

CREATE TABLE Puesto(
    idPuesto           int    NOT NULL identity(1,1),
    descripcion        VARCHAR(125) not null,
    sueldoOrdinario    decimal(13,2) not null,
    idArea             int     NOT NULL,
    CONSTRAINT PK3 PRIMARY KEY (idPuesto)
)
;



-- 
-- TABLE: PuestoImpuesto 
--

CREATE TABLE PuestoImpuesto(
    idImpuesto    int    NOT NULL,
    idPuesto      int    NOT NULL,
    -- CONSTRAINT PK35 PRIMARY KEY (idImpuesto, idPuesto)
)
;



-- 
-- TABLE: ReferenciaColaborador 
--

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
;



-- 
-- TABLE: Servicio 
--

CREATE TABLE Servicio(
    idServicio     int    NOT NULL identity(1,1),
    descripcion    VARCHAR(125) not null,
    CONSTRAINT PK6 PRIMARY KEY (idServicio)
)
;



-- 
-- TABLE: ServicioEmpresa 
--

CREATE TABLE ServicioEmpresa(
    idServicio    int    NOT NULL,
    idEmpresa     int    NOT NULL,
    -- CONSTRAINT PK15 PRIMARY KEY (idServicio, idEmpresa)
)
;



-- 
-- TABLE: TipoCuenta 
--

CREATE TABLE TipoCuenta(
    idTipoCuenta    int    NOT NULL identity(1,1),
    descripcion     VARCHAR(120) not null,
    CONSTRAINT PK23 PRIMARY KEY (idTipoCuenta)
)
;



-- 
-- TABLE: TipoDescuento 
--

CREATE TABLE TipoDescuento(
    idTipoDescuento    int    NOT NULL identity(1,1),
    descripcion        VARCHAR(120) not null,
    CONSTRAINT PK39 PRIMARY KEY (idTipoDescuento)
)
;



-- 
-- TABLE: TipoDireccion 
--

CREATE TABLE TipoDireccion(
    idTipoDireccion    int    NOT NULL identity(1,1),
    descripcion        VARCHAR(120) not null,
    CONSTRAINT PK8 PRIMARY KEY (idTipoDireccion)
)
;



-- 
-- TABLE: TipoDocumento 
--

CREATE TABLE TipoDocumento(
    idTipoDocumento    int    NOT NULL identity(1,1),
    tipoDocumento      int not null,
    mascara            VARCHAR(18) not null,
    CONSTRAINT PK43 PRIMARY KEY (idTipoDocumento)
)
;



-- 
-- TABLE: TipoReferencia 
--

CREATE TABLE TipoReferencia(
    idTipoReferencia    int    NOT NULL identity(1,1),
    descripcion         VARCHAR(120) not null,
    CONSTRAINT PK17 PRIMARY KEY (idTipoReferencia)
)
;



-- 
-- TABLE: BonoColaborador 
--

ALTER TABLE BonoColaborador ADD CONSTRAINT RefBonos47 
    FOREIGN KEY (idBono)
    REFERENCES Bonos(idBono)
;

ALTER TABLE BonoColaborador ADD CONSTRAINT RefColaborador60 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;


-- 
-- TABLE: Colaborador 
--

ALTER TABLE Colaborador ADD CONSTRAINT RefCredencial64 
    FOREIGN KEY (usuario)
    REFERENCES Credencial(usuario)
;

ALTER TABLE Colaborador ADD CONSTRAINT RefEstadoCivil35 
    FOREIGN KEY (idEstadoCivil)
    REFERENCES EstadoCivil(idEstadoCivil)
;

ALTER TABLE Colaborador ADD CONSTRAINT RefProfesion37 
    FOREIGN KEY (idProfesion)
    REFERENCES Profesion(idProfesion)
;

ALTER TABLE Colaborador ADD CONSTRAINT RefPuesto46 
    FOREIGN KEY (idPuesto)
    REFERENCES Puesto(idPuesto)
;


-- 
-- TABLE: ColaboradorDescuento 
--

ALTER TABLE ColaboradorDescuento ADD CONSTRAINT RefColaborador56 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE ColaboradorDescuento ADD CONSTRAINT RefTipoDescuento57 
    FOREIGN KEY (idTipoDescuento)
    REFERENCES TipoDescuento(idTipoDescuento)
;


-- 
-- TABLE: CuentaDeposito 
--

ALTER TABLE CuentaDeposito ADD CONSTRAINT RefColaborador39 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE CuentaDeposito ADD CONSTRAINT RefTipoCuenta42 
    FOREIGN KEY (idTipoCuenta)
    REFERENCES TipoCuenta(idTipoCuenta)
;

ALTER TABLE CuentaDeposito ADD CONSTRAINT RefBanco43 
    FOREIGN KEY (idBanco)
    REFERENCES Banco(idBanco)
;


-- 
-- TABLE: CuentaEmpresa 
--

ALTER TABLE CuentaEmpresa ADD CONSTRAINT RefEmpresa31 
    FOREIGN KEY (idEmpresa)
    REFERENCES Empresa(idEmpresa)
;

ALTER TABLE CuentaEmpresa ADD CONSTRAINT RefTipoCuenta32 
    FOREIGN KEY (idTipoCuenta)
    REFERENCES TipoCuenta(idTipoCuenta)
;

ALTER TABLE CuentaEmpresa ADD CONSTRAINT RefBanco33 
    FOREIGN KEY (idBanco)
    REFERENCES Banco(idBanco)
;


-- 
-- TABLE: DatoFamiliar 
--

ALTER TABLE DatoFamiliar ADD CONSTRAINT RefColaborador23 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE DatoFamiliar ADD CONSTRAINT RefParentezco24 
    FOREIGN KEY (idParentezco)
    REFERENCES Parentezco(idParentezco)
;

ALTER TABLE DatoFamiliar ADD CONSTRAINT RefProfesion38 
    FOREIGN KEY (idProfesion)
    REFERENCES Profesion(idProfesion)
;


-- 
-- TABLE: DatosAcademicos 
--

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefColaborador26 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefNivelAcademico27 
    FOREIGN KEY (idNivelAcademico)
    REFERENCES NivelAcademico(idNivelAcademico)
;

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefPais28 
    FOREIGN KEY (idPais)
    REFERENCES Pais(idPais)
;

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefDepartamento29 
    FOREIGN KEY ( idDepartamento)
    REFERENCES Departamento(idDepartamento)
;

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefMunicipio30 
    FOREIGN KEY (idMunicipio)
    REFERENCES Municipio(idMunicipio)
;


-- 
-- TABLE: DatosLaborales 
--

ALTER TABLE DatosLaborales ADD CONSTRAINT RefColaborador34 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;


-- 
-- TABLE: Departamento 
--

ALTER TABLE Departamento ADD CONSTRAINT RefPais8 
    FOREIGN KEY (idPais)
    REFERENCES Pais(idPais)
;


-- 
-- TABLE: DetallePlanilla 
--

ALTER TABLE DetallePlanilla ADD CONSTRAINT RefPlanilla52 
    FOREIGN KEY (idPlanilla)
    REFERENCES Planilla(idPlanilla)
;

ALTER TABLE DetallePlanilla ADD CONSTRAINT RefColaborador53 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE DetallePlanilla ADD CONSTRAINT RefformaPago54 
    FOREIGN KEY (idFormaPago)
    REFERENCES formaPago(idFormaPago)
;


-- 
-- TABLE: Direcciones 
--

ALTER TABLE Direcciones ADD CONSTRAINT RefTipoDireccion5 
    FOREIGN KEY (idTipoDireccion)
    REFERENCES TipoDireccion(idTipoDireccion)
;

ALTER TABLE Direcciones ADD CONSTRAINT RefColaborador6 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE Direcciones ADD CONSTRAINT RefPais18 
    FOREIGN KEY (idPais)
    REFERENCES Pais(idPais)
;

ALTER TABLE Direcciones ADD CONSTRAINT RefDepartamento19 
    FOREIGN KEY (idDepartamento)
    REFERENCES Departamento(idDepartamento)
;

ALTER TABLE Direcciones ADD CONSTRAINT RefMunicipio20 
    FOREIGN KEY (idMunicipio)
    REFERENCES Municipio(idMunicipio)
;


-- 
-- TABLE: EmpresaColaborador 
--

ALTER TABLE EmpresaColaborador ADD CONSTRAINT RefEmpresa1 
    FOREIGN KEY (idEmpresa)
    REFERENCES Empresa(idEmpresa)
;

ALTER TABLE EmpresaColaborador ADD CONSTRAINT RefColaborador2 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;


-- 
-- TABLE: Identificacion 
--

ALTER TABLE Identificacion ADD CONSTRAINT RefColaborador58 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE Identificacion ADD CONSTRAINT RefTipoDocumento59 
    FOREIGN KEY (idTipoDocumento)
    REFERENCES TipoDocumento(idTipoDocumento)
;


-- 
-- TABLE: Municipio 
--

ALTER TABLE Municipio ADD CONSTRAINT RefDepartamento9 
    FOREIGN KEY (idDepartamento)
    REFERENCES Departamento(idDepartamento)
;


-- 
-- TABLE: Puesto 
--

ALTER TABLE Puesto ADD CONSTRAINT RefArea49 
    FOREIGN KEY (idArea)
    REFERENCES Area(idArea)
;


-- 
-- TABLE: PuestoImpuesto 
--

ALTER TABLE PuestoImpuesto ADD CONSTRAINT RefImpuesto50 
    FOREIGN KEY (idImpuesto)
    REFERENCES Impuesto(idImpuesto)
;

ALTER TABLE PuestoImpuesto ADD CONSTRAINT RefPuesto51 
    FOREIGN KEY (idPuesto)
    REFERENCES Puesto(idPuesto)
;


-- 
-- TABLE: ReferenciaColaborador 
--

ALTER TABLE ReferenciaColaborador ADD CONSTRAINT RefColaborador15 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE ReferenciaColaborador ADD CONSTRAINT RefTipoReferencia16 
    FOREIGN KEY (idTipoReferencia)
    REFERENCES TipoReferencia(idTipoReferencia)
;

ALTER TABLE ReferenciaColaborador ADD CONSTRAINT RefParentezco17 
    FOREIGN KEY (idParentezco)
    REFERENCES Parentezco(idParentezco)
;

ALTER TABLE ReferenciaColaborador ADD CONSTRAINT RefProfesion36 
    FOREIGN KEY (idProfesion)
    REFERENCES Profesion(idProfesion)
;


-- 
-- TABLE: ServicioEmpresa 
--

ALTER TABLE ServicioEmpresa ADD CONSTRAINT RefServicio10 
    FOREIGN KEY (idServicio)
    REFERENCES Servicio(idServicio)
;

ALTER TABLE ServicioEmpresa ADD CONSTRAINT RefEmpresa11 
    FOREIGN KEY (idEmpresa)
    REFERENCES Empresa(idEmpresa)
;



--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      GregSoft
-- Project :      RRHH v2.DM1
-- Author :       Rino
--
-- Date Created : Monday, February 26, 2018 18:12:04
-- Target DBMS : Oracle 11g
--

DROP TABLE Area CASCADE CONSTRAINTS
;
DROP TABLE Banco CASCADE CONSTRAINTS
;
DROP TABLE BonoColaborador CASCADE CONSTRAINTS
;
DROP TABLE Bonos CASCADE CONSTRAINTS
;
DROP TABLE Colaborador CASCADE CONSTRAINTS
;
DROP TABLE ColaboradorDescuento CASCADE CONSTRAINTS
;
DROP TABLE Credencial CASCADE CONSTRAINTS
;
DROP TABLE CuentaDeposito CASCADE CONSTRAINTS
;
DROP TABLE CuentaEmpresa CASCADE CONSTRAINTS
;
DROP TABLE DatoFamiliar CASCADE CONSTRAINTS
;
DROP TABLE DatosAcademicos CASCADE CONSTRAINTS
;
DROP TABLE DatosLaborales CASCADE CONSTRAINTS
;
DROP TABLE Departamento CASCADE CONSTRAINTS
;
DROP TABLE DetallePlanilla CASCADE CONSTRAINTS
;
DROP TABLE Direcciones CASCADE CONSTRAINTS
;
DROP TABLE Empresa CASCADE CONSTRAINTS
;
DROP TABLE EmpresaColaborador CASCADE CONSTRAINTS
;
DROP TABLE EstadoCivil CASCADE CONSTRAINTS
;
DROP TABLE formaPago CASCADE CONSTRAINTS
;
DROP TABLE Identificacion CASCADE CONSTRAINTS
;
DROP TABLE Impuesto CASCADE CONSTRAINTS
;
DROP TABLE Municipio CASCADE CONSTRAINTS
;
DROP TABLE NivelAcademico CASCADE CONSTRAINTS
;
DROP TABLE Pais CASCADE CONSTRAINTS
;
DROP TABLE Parentezco CASCADE CONSTRAINTS
;
DROP TABLE Planilla CASCADE CONSTRAINTS
;
DROP TABLE Profesion CASCADE CONSTRAINTS
;
DROP TABLE Puesto CASCADE CONSTRAINTS
;
DROP TABLE PuestoImpuesto CASCADE CONSTRAINTS
;
DROP TABLE ReferenciaColaborador CASCADE CONSTRAINTS
;
DROP TABLE Servicio CASCADE CONSTRAINTS
;
DROP TABLE ServicioEmpresa CASCADE CONSTRAINTS
;
DROP TABLE TipoCuenta CASCADE CONSTRAINTS
;
DROP TABLE TipoDescuento CASCADE CONSTRAINTS
;
DROP TABLE TipoDireccion CASCADE CONSTRAINTS
;
DROP TABLE TipoDocumento CASCADE CONSTRAINTS
;
DROP TABLE TipoReferencia CASCADE CONSTRAINTS
;

-- 
-- TABLE: Area 
--

CREATE TABLE Area(
    idArea         NUMBER(3, 0)    NOT NULL,
    Descripcion    VARCHAR2(40),
    CONSTRAINT PK4 PRIMARY KEY (idArea)
)
;



-- 
-- TABLE: Banco 
--

CREATE TABLE Banco(
    idBanco        NUMBER(3, 0)    NOT NULL,
    descripcion    VARCHAR2(40),
    CONSTRAINT PK25 PRIMARY KEY (idBanco)
)
;



-- 
-- TABLE: BonoColaborador 
--

CREATE TABLE BonoColaborador(
    idBono           NUMBER(3, 0)     NOT NULL,
    idColaborador    NUMBER(15, 0)    NOT NULL,
    CONSTRAINT PK34 PRIMARY KEY (idBono, idColaborador)
)
;



-- 
-- TABLE: Bonos 
--

CREATE TABLE Bonos(
    idBono         NUMBER(3, 0)     NOT NULL,
    descripcion    VARCHAR2(40),
    monto          NUMBER(13, 2),
    CONSTRAINT PK33 PRIMARY KEY (idBono)
)
;



-- 
-- TABLE: Colaborador 
--

CREATE TABLE Colaborador(
    idColaborador      NUMBER(15, 0)    NOT NULL,
    nombre1            VARCHAR2(30),
    nombre2            VARCHAR2(30),
    nombre3            VARCHAR2(30),
    apellido1          VARCHAR2(30),
    apellido2          VARCHAR2(30),
    apellido3          VARCHAR2(30),
    fechaNacimiento    DATE,
    sexo               VARCHAR2(1),
    idEstadoCivil      NUMBER(3, 0)     NOT NULL,
    idProfesion        NUMBER(3, 0)     NOT NULL,
    idPuesto           NUMBER(3, 0)     NOT NULL,
    usuario            VARCHAR2(10)     NOT NULL,
    CONSTRAINT PK7 PRIMARY KEY (idColaborador)
)
;



-- 
-- TABLE: ColaboradorDescuento 
--

CREATE TABLE ColaboradorDescuento(
    idColaborador      NUMBER(15, 0)    NOT NULL,
    idDescuento        NUMBER(3, 0)     NOT NULL,
    idTipoDescuento    NUMBER(3, 0)     NOT NULL,
    monto              NUMBER(13, 2),
    CONSTRAINT PK40 PRIMARY KEY (idColaborador, idDescuento)
)
;



-- 
-- TABLE: Credencial 
--

CREATE TABLE Credencial(
    usuario     VARCHAR2(10)    NOT NULL,
    password    VARCHAR2(20),
    CONSTRAINT PK45 PRIMARY KEY (usuario)
)
;



-- 
-- TABLE: CuentaDeposito 
--

CREATE TABLE CuentaDeposito(
    idColaborador    NUMBER(15, 0)    NOT NULL,
    idTipoCuenta     NUMBER(2, 0)     NOT NULL,
    idBanco          NUMBER(3, 0)     NOT NULL,
    CONSTRAINT PK32 PRIMARY KEY (idColaborador)
)
;



-- 
-- TABLE: CuentaEmpresa 
--

CREATE TABLE CuentaEmpresa(
    idEmpresa       NUMBER(5, 0)    NOT NULL,
    idTipoCuenta    NUMBER(2, 0)    NOT NULL,
    idBanco         NUMBER(3, 0)    NOT NULL,
    noCuenta        VARCHAR2(20),
    CONSTRAINT PK24 PRIMARY KEY (idEmpresa)
)
;



-- 
-- TABLE: DatoFamiliar 
--

CREATE TABLE DatoFamiliar(
    idColaborador     NUMBER(15, 0)    NOT NULL,
    idDatoFamiliar    NUMBER(3, 0)     NOT NULL,
    idParentezco      NUMBER(3, 0)     NOT NULL,
    idProfesion       NUMBER(3, 0)     NOT NULL,
    nombre            VARCHAR2(80),
    edad              NUMBER(3, 0),
    telefono          VARCHAR2(15),
    CONSTRAINT PK20 PRIMARY KEY (idColaborador, idDatoFamiliar)
)
;



-- 
-- TABLE: DatosAcademicos 
--

CREATE TABLE DatosAcademicos(
    idColaborador           NUMBER(15, 0)    NOT NULL,
    idAdemicoColaborador    NUMBER(3, 0)     NOT NULL,
    idNivelAcademico        NUMBER(3, 0)     NOT NULL,
    nombreInstitucion       VARCHAR2(60),
    fechaInicio             DATE,
    fechaFinalizo           DATE,
    telefono                VARCHAR2(15),
    direccion               VARCHAR2(80),
    observacion             VARCHAR2(200),
    idPais                  VARCHAR2(3),
    idDepartamento          NUMBER(3, 0),
    idMunicipio             NUMBER(3, 0),
    CONSTRAINT PK22 PRIMARY KEY (idColaborador, idAdemicoColaborador)
)
;



-- 
-- TABLE: DatosLaborales 
--

CREATE TABLE DatosLaborales(
    idColaborador    NUMBER(15, 0)    NOT NULL,
    idLaboral        NUMBER(3, 0)     NOT NULL,
    Empresa          VARCHAR2(80),
    CargoInicial     VARCHAR2(40),
    CargoFinal       VARCHAR2(40),
    Telefono         VARCHAR2(15),
    JefeInmediato    VARCHAR2(80),
    FechaInicio      DATE,
    FechaFinal       DATE,
    MotivoRetiro     VARCHAR2(200),
    CONSTRAINT PK26 PRIMARY KEY (idColaborador, idLaboral)
)
;



-- 
-- TABLE: Departamento 
--

CREATE TABLE Departamento(
    idPais            VARCHAR2(3)     NOT NULL,
    idDepartamento    NUMBER(3, 0)    NOT NULL,
    descripcion       VARCHAR2(40),
    CONSTRAINT PK12 PRIMARY KEY (idPais, idDepartamento)
)
;



-- 
-- TABLE: DetallePlanilla 
--

CREATE TABLE DetallePlanilla(
    idPlanilla        NUMBER(15, 0)    NOT NULL,
    idColaborador     NUMBER(15, 0)    NOT NULL,
    idFormaPago       NUMBER(3, 0)     NOT NULL,
    año               NUMBER(4, 0)     NOT NULL,
    mes               NUMBER(2, 0)     NOT NULL,
    correlativo       NUMBER(15, 0)    NOT NULL,
    Ordinario         NUMBER(13, 2),
    Bonificaciones    NUMBER(13, 2),
    Descuentos        NUMBER(13, 2),
    Impuestos         NUMBER(13, 2),
    Extras            NUMBER(13, 2),
    Total             NUMBER(13, 2),
    CONSTRAINT PK37 PRIMARY KEY (idPlanilla, idColaborador, idFormaPago, año, mes, correlativo)
)
;



-- 
-- TABLE: Direcciones 
--

CREATE TABLE Direcciones(
    idColaborador      NUMBER(15, 0)    NOT NULL,
    idTipoDireccion    NUMBER(3, 0)     NOT NULL,
    idDireccion        NUMBER(3, 0)     NOT NULL,
    descripcion        VARCHAR2(40),
    idPais             VARCHAR2(3),
    idDepartamento     NUMBER(3, 0),
    idMunicipio        NUMBER(3, 0),
    CONSTRAINT PK10 PRIMARY KEY (idColaborador, idTipoDireccion, idDireccion)
)
;



-- 
-- TABLE: Empresa 
--

CREATE TABLE Empresa(
    idEmpresa      NUMBER(5, 0)    NOT NULL,
    descripcion    VARCHAR2(40),
    NIT            VARCHAR2(18),
    CONSTRAINT PK5 PRIMARY KEY (idEmpresa)
)
;



-- 
-- TABLE: EmpresaColaborador 
--

CREATE TABLE EmpresaColaborador(
    idEmpresa        NUMBER(5, 0)     NOT NULL,
    idColaborador    NUMBER(15, 0)    NOT NULL,
    Activo           VARCHAR2(1),
    CONSTRAINT PK9 PRIMARY KEY (idEmpresa, idColaborador)
)
;



-- 
-- TABLE: EstadoCivil 
--

CREATE TABLE EstadoCivil(
    idEstadoCivil    NUMBER(3, 0)    NOT NULL,
    descripcion      VARCHAR2(40),
    CONSTRAINT PK27 PRIMARY KEY (idEstadoCivil)
)
;



-- 
-- TABLE: formaPago 
--

CREATE TABLE formaPago(
    idFormaPago    NUMBER(3, 0)    NOT NULL,
    descripcion    VARCHAR2(40),
    CONSTRAINT PK31 PRIMARY KEY (idFormaPago)
)
;



-- 
-- TABLE: Identificacion 
--

CREATE TABLE Identificacion(
    idColaborador       NUMBER(15, 0)    NOT NULL,
    idIdentificacion    NUMBER(3, 0)     NOT NULL,
    idTipoDocumento     NUMBER(3, 0)     NOT NULL,
    noDocumento         VARCHAR2(18),
    CONSTRAINT PK44 PRIMARY KEY (idColaborador, idIdentificacion)
)
;



-- 
-- TABLE: Impuesto 
--

CREATE TABLE Impuesto(
    idImpuesto     NUMBER(3, 0)    NOT NULL,
    descripcion    VARCHAR2(40),
    porcentaje     NUMBER(5, 3),
    CONSTRAINT PK28 PRIMARY KEY (idImpuesto)
)
;



-- 
-- TABLE: Municipio 
--

CREATE TABLE Municipio(
    idPais            VARCHAR2(3)     NOT NULL,
    idDepartamento    NUMBER(3, 0)    NOT NULL,
    idMunicipio       NUMBER(3, 0)    NOT NULL,
    descripcion       VARCHAR2(40),
    CONSTRAINT PK13 PRIMARY KEY (idPais, idDepartamento, idMunicipio)
)
;



-- 
-- TABLE: NivelAcademico 
--

CREATE TABLE NivelAcademico(
    idNivelAcademico    NUMBER(3, 0)    NOT NULL,
    descripcion         VARCHAR2(40),
    CONSTRAINT PK21 PRIMARY KEY (idNivelAcademico)
)
;



-- 
-- TABLE: Pais 
--

CREATE TABLE Pais(
    idPais         VARCHAR2(3)     NOT NULL,
    descripcion    VARCHAR2(40),
    extension      CHAR(10),
    CONSTRAINT PK11 PRIMARY KEY (idPais)
)
;



-- 
-- TABLE: Parentezco 
--

CREATE TABLE Parentezco(
    idParentezco    NUMBER(3, 0)    NOT NULL,
    descripcion     VARCHAR2(40),
    CONSTRAINT PK18 PRIMARY KEY (idParentezco)
)
;



-- 
-- TABLE: Planilla 
--

CREATE TABLE Planilla(
    idPlanilla    NUMBER(15, 0)    NOT NULL,
    año           NUMBER(4, 0)     NOT NULL,
    mes           NUMBER(2, 0)     NOT NULL,
    CONSTRAINT PK36 PRIMARY KEY (idPlanilla, año, mes)
)
;



-- 
-- TABLE: Profesion 
--

CREATE TABLE Profesion(
    idProfesion    NUMBER(3, 0)    NOT NULL,
    descripcion    VARCHAR2(40),
    CONSTRAINT PK19 PRIMARY KEY (idProfesion)
)
;



-- 
-- TABLE: Puesto 
--

CREATE TABLE Puesto(
    idPuesto           NUMBER(3, 0)     NOT NULL,
    descripcion        VARCHAR2(40),
    sueldoOrdinario    NUMBER(13, 2),
    idArea             NUMBER(3, 0)     NOT NULL,
    CONSTRAINT PK3 PRIMARY KEY (idPuesto)
)
;



-- 
-- TABLE: PuestoImpuesto 
--

CREATE TABLE PuestoImpuesto(
    idImpuesto    NUMBER(3, 0)    NOT NULL,
    idPuesto      NUMBER(3, 0)    NOT NULL,
    CONSTRAINT PK35 PRIMARY KEY (idImpuesto, idPuesto)
)
;



-- 
-- TABLE: ReferenciaColaborador 
--

CREATE TABLE ReferenciaColaborador(
    idColaborador       NUMBER(15, 0)    NOT NULL,
    idReferencia        CHAR(10)         NOT NULL,
    nombre              CHAR(10),
    telefono1           CHAR(10),
    direccion           CHAR(10),
    edad                CHAR(10),
    idTipoReferencia    NUMBER(3, 0)     NOT NULL,
    idParentezco        NUMBER(3, 0)     NOT NULL,
    idProfesion         NUMBER(3, 0)     NOT NULL,
    CONSTRAINT PK16 PRIMARY KEY (idColaborador, idReferencia)
)
;



-- 
-- TABLE: Servicio 
--

CREATE TABLE Servicio(
    idServicio     NUMBER(3, 0)    NOT NULL,
    descripcion    VARCHAR2(40),
    CONSTRAINT PK6 PRIMARY KEY (idServicio)
)
;



-- 
-- TABLE: ServicioEmpresa 
--

CREATE TABLE ServicioEmpresa(
    idServicio    NUMBER(3, 0)    NOT NULL,
    idEmpresa     NUMBER(5, 0)    NOT NULL,
    CONSTRAINT PK15 PRIMARY KEY (idServicio, idEmpresa)
)
;



-- 
-- TABLE: TipoCuenta 
--

CREATE TABLE TipoCuenta(
    idTipoCuenta    NUMBER(2, 0)    NOT NULL,
    descripcion     VARCHAR2(40),
    CONSTRAINT PK23 PRIMARY KEY (idTipoCuenta)
)
;



-- 
-- TABLE: TipoDescuento 
--

CREATE TABLE TipoDescuento(
    idTipoDescuento    NUMBER(3, 0)    NOT NULL,
    descripcion        VARCHAR2(40),
    CONSTRAINT PK39 PRIMARY KEY (idTipoDescuento)
)
;



-- 
-- TABLE: TipoDireccion 
--

CREATE TABLE TipoDireccion(
    idTipoDireccion    NUMBER(3, 0)    NOT NULL,
    descripcion        VARCHAR2(40),
    CONSTRAINT PK8 PRIMARY KEY (idTipoDireccion)
)
;



-- 
-- TABLE: TipoDocumento 
--

CREATE TABLE TipoDocumento(
    idTipoDocumento    NUMBER(3, 0)    NOT NULL,
    tipoDocumento      NUMBER(3, 0),
    mascara            VARCHAR2(18),
    CONSTRAINT PK43 PRIMARY KEY (idTipoDocumento)
)
;



-- 
-- TABLE: TipoReferencia 
--

CREATE TABLE TipoReferencia(
    idTipoReferencia    NUMBER(3, 0)    NOT NULL,
    descripcion         VARCHAR2(40),
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
    FOREIGN KEY (idPais, idDepartamento)
    REFERENCES Departamento(idPais, idDepartamento)
;

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefMunicipio30 
    FOREIGN KEY (idPais, idDepartamento, idMunicipio)
    REFERENCES Municipio(idPais, idDepartamento, idMunicipio)
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
    FOREIGN KEY (idPlanilla, año, mes)
    REFERENCES Planilla(idPlanilla, año, mes)
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
    FOREIGN KEY (idPais, idDepartamento)
    REFERENCES Departamento(idPais, idDepartamento)
;

ALTER TABLE Direcciones ADD CONSTRAINT RefMunicipio20 
    FOREIGN KEY (idPais, idDepartamento, idMunicipio)
    REFERENCES Municipio(idPais, idDepartamento, idMunicipio)
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
    FOREIGN KEY (idPais, idDepartamento)
    REFERENCES Departamento(idPais, idDepartamento)
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



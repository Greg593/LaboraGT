--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      GregSoft
-- Project :      RRHH v2.DM1
-- Author :       Rino
--
-- Date Created : Wednesday, February 21, 2018 22:31:23
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
    idArea         CHAR(10)    NOT NULL,
    Descripcion    CHAR(10),
    CONSTRAINT PK4 PRIMARY KEY (idArea)
)
;



-- 
-- TABLE: Banco 
--

CREATE TABLE Banco(
    idBanco        CHAR(10)    NOT NULL,
    descripcion    CHAR(10),
    CONSTRAINT PK25 PRIMARY KEY (idBanco)
)
;



-- 
-- TABLE: BonoColaborador 
--

CREATE TABLE BonoColaborador(
    idBono           CHAR(10)    NOT NULL,
    idColaborador    CHAR(10)    NOT NULL,
    CONSTRAINT PK34 PRIMARY KEY (idBono, idColaborador)
)
;



-- 
-- TABLE: Bonos 
--

CREATE TABLE Bonos(
    idBono         CHAR(10)    NOT NULL,
    descripcion    CHAR(10),
    monto          CHAR(10),
    CONSTRAINT PK33 PRIMARY KEY (idBono)
)
;



-- 
-- TABLE: Colaborador 
--

CREATE TABLE Colaborador(
    idColaborador      CHAR(10)    NOT NULL,
    nombre1            CHAR(10),
    nombre2            CHAR(10),
    nombre3            CHAR(10),
    apellido1          CHAR(10),
    apellido2          CHAR(10),
    apellido3          CHAR(10),
    fechaNacimiento    CHAR(10),
    sexo               CHAR(10),
    idEstadoCivil      CHAR(10)    NOT NULL,
    idProfesion        CHAR(10)    NOT NULL,
    idPuesto           CHAR(10)    NOT NULL,
    CONSTRAINT PK7 PRIMARY KEY (idColaborador)
)
;



-- 
-- TABLE: ColaboradorDescuento 
--

CREATE TABLE ColaboradorDescuento(
    idColaborador      CHAR(10)    NOT NULL,
    idDescuento        CHAR(10)    NOT NULL,
    idTipoDescuento    CHAR(10)    NOT NULL,
    monto              CHAR(10),
    CONSTRAINT PK40 PRIMARY KEY (idColaborador, idDescuento)
)
;



-- 
-- TABLE: CuentaDeposito 
--

CREATE TABLE CuentaDeposito(
    idColaborador    CHAR(10)    NOT NULL,
    idTipoCuenta     CHAR(10)    NOT NULL,
    idBanco          CHAR(10)    NOT NULL,
    CONSTRAINT PK32 PRIMARY KEY (idColaborador)
)
;



-- 
-- TABLE: CuentaEmpresa 
--

CREATE TABLE CuentaEmpresa(
    idEmpresa       CHAR(10)    NOT NULL,
    idTipoCuenta    CHAR(10)    NOT NULL,
    noCuenta        CHAR(10),
    idBanco         CHAR(10)    NOT NULL,
    CONSTRAINT PK24 PRIMARY KEY (idEmpresa)
)
;



-- 
-- TABLE: DatoFamiliar 
--

CREATE TABLE DatoFamiliar(
    idColaborador     CHAR(10)    NOT NULL,
    idDatoFamiliar    CHAR(10)    NOT NULL,
    idParentezco      CHAR(10)    NOT NULL,
    nombre            CHAR(10),
    edad              CHAR(10),
    telefono          CHAR(10),
    idProfesion       CHAR(10)    NOT NULL,
    CONSTRAINT PK20 PRIMARY KEY (idColaborador, idDatoFamiliar)
)
;



-- 
-- TABLE: DatosAcademicos 
--

CREATE TABLE DatosAcademicos(
    idColaborador           CHAR(10)    NOT NULL,
    idAdemicoColaborador    CHAR(10)    NOT NULL,
    idNivelAcademico        CHAR(10)    NOT NULL,
    nombreInstitucion       CHAR(10),
    fechaInicio             CHAR(10),
    fechaFinalizo           CHAR(10),
    telefono                CHAR(10),
    direccion               CHAR(10),
    observacion             CHAR(10),
    idPais                  CHAR(10),
    idDepartamento          CHAR(10),
    idMunicipio             CHAR(10),
    CONSTRAINT PK22 PRIMARY KEY (idColaborador, idAdemicoColaborador)
)
;



-- 
-- TABLE: DatosLaborales 
--

CREATE TABLE DatosLaborales(
    idColaborador    CHAR(10)    NOT NULL,
    idLaboral        CHAR(10)    NOT NULL,
    Empresa          CHAR(10),
    CargoInicial     CHAR(10),
    CargoFinal       CHAR(10),
    Telefono         CHAR(10),
    JefeInmediato    CHAR(10),
    FechaInicio      CHAR(10),
    FechaFinal       CHAR(10),
    MotivoRetiro     CHAR(10),
    CONSTRAINT PK26 PRIMARY KEY (idColaborador, idLaboral)
)
;



-- 
-- TABLE: Departamento 
--

CREATE TABLE Departamento(
    idDepartamento    CHAR(10)    NOT NULL,
    idPais            CHAR(10)    NOT NULL,
    descripcion       CHAR(10),
    CONSTRAINT PK12 PRIMARY KEY (idDepartamento, idPais)
)
;



-- 
-- TABLE: DetallePlanilla 
--

CREATE TABLE DetallePlanilla(
    idPlanilla        CHAR(10)    NOT NULL,
    idColaborador     CHAR(10)    NOT NULL,
    idFormaPago       CHAR(10)    NOT NULL,
    año               CHAR(10)    NOT NULL,
    mes               CHAR(10)    NOT NULL,
    correlativo       CHAR(10)    NOT NULL,
    Ordinario         CHAR(10),
    Bonificaciones    CHAR(10),
    Descuentos        CHAR(10),
    Impuestos         CHAR(10),
    Extras            CHAR(10),
    Total             CHAR(10),
    CONSTRAINT PK37 PRIMARY KEY (idPlanilla, idColaborador, idFormaPago, año, mes, correlativo)
)
;



-- 
-- TABLE: Direcciones 
--

CREATE TABLE Direcciones(
    idColaborador      CHAR(10)    NOT NULL,
    idDireccion        CHAR(10)    NOT NULL,
    idTipoDireccion    CHAR(10)    NOT NULL,
    descripcion        CHAR(10),
    idPais             CHAR(10),
    idDepartamento     CHAR(10),
    idMunicipio        CHAR(10),
    CONSTRAINT PK10 PRIMARY KEY (idColaborador, idDireccion, idTipoDireccion)
)
;



-- 
-- TABLE: Empresa 
--

CREATE TABLE Empresa(
    idEmpresa      CHAR(10)    NOT NULL,
    descripcion    CHAR(10),
    NIT            CHAR(10),
    CONSTRAINT PK5 PRIMARY KEY (idEmpresa)
)
;



-- 
-- TABLE: EmpresaColaborador 
--

CREATE TABLE EmpresaColaborador(
    idEmpresa        CHAR(10)    NOT NULL,
    idColaborador    CHAR(10)    NOT NULL,
    Activo           CHAR(10),
    CONSTRAINT PK9 PRIMARY KEY (idEmpresa, idColaborador)
)
;



-- 
-- TABLE: EstadoCivil 
--

CREATE TABLE EstadoCivil(
    idEstadoCivil    CHAR(10)    NOT NULL,
    descripcion      CHAR(10),
    CONSTRAINT PK27 PRIMARY KEY (idEstadoCivil)
)
;



-- 
-- TABLE: formaPago 
--

CREATE TABLE formaPago(
    idFormaPago    CHAR(10)    NOT NULL,
    descripcion    CHAR(10),
    CONSTRAINT PK31 PRIMARY KEY (idFormaPago)
)
;



-- 
-- TABLE: Identificacion 
--

CREATE TABLE Identificacion(
    idColaborador       CHAR(10)    NOT NULL,
    idIdentificacion    CHAR(10)    NOT NULL,
    idTipoDocumento     CHAR(10)    NOT NULL,
    noDocumento         CHAR(10),
    CONSTRAINT PK44 PRIMARY KEY (idColaborador, idIdentificacion)
)
;



-- 
-- TABLE: Impuesto 
--

CREATE TABLE Impuesto(
    idImpuesto     CHAR(10)    NOT NULL,
    descripcion    CHAR(10),
    porcentaje     CHAR(10),
    CONSTRAINT PK28 PRIMARY KEY (idImpuesto)
)
;



-- 
-- TABLE: Municipio 
--

CREATE TABLE Municipio(
    idMunicipio       CHAR(10)    NOT NULL,
    idDepartamento    CHAR(10)    NOT NULL,
    idPais            CHAR(10)    NOT NULL,
    descripcion       CHAR(10),
    CONSTRAINT PK13 PRIMARY KEY (idMunicipio, idDepartamento, idPais)
)
;



-- 
-- TABLE: NivelAcademico 
--

CREATE TABLE NivelAcademico(
    idNivelAcademico    CHAR(10)    NOT NULL,
    descripcion         CHAR(10),
    CONSTRAINT PK21 PRIMARY KEY (idNivelAcademico)
)
;



-- 
-- TABLE: Pais 
--

CREATE TABLE Pais(
    idPais         CHAR(10)    NOT NULL,
    descripcion    CHAR(10),
    CONSTRAINT PK11 PRIMARY KEY (idPais)
)
;



-- 
-- TABLE: Parentezco 
--

CREATE TABLE Parentezco(
    idParentezco    CHAR(10)    NOT NULL,
    descripcion     CHAR(10),
    CONSTRAINT PK18 PRIMARY KEY (idParentezco)
)
;



-- 
-- TABLE: Planilla 
--

CREATE TABLE Planilla(
    idPlanilla    CHAR(10)    NOT NULL,
    año           CHAR(10)    NOT NULL,
    mes           CHAR(10)    NOT NULL,
    CONSTRAINT PK36 PRIMARY KEY (idPlanilla, año, mes)
)
;



-- 
-- TABLE: Profesion 
--

CREATE TABLE Profesion(
    idProfesion    CHAR(10)    NOT NULL,
    descripcion    CHAR(10),
    CONSTRAINT PK19 PRIMARY KEY (idProfesion)
)
;



-- 
-- TABLE: Puesto 
--

CREATE TABLE Puesto(
    idPuesto           CHAR(10)    NOT NULL,
    descripcion        CHAR(10),
    sueldoOrdinario    CHAR(10),
    idArea             CHAR(10)    NOT NULL,
    CONSTRAINT PK3 PRIMARY KEY (idPuesto)
)
;



-- 
-- TABLE: PuestoImpuesto 
--

CREATE TABLE PuestoImpuesto(
    idImpuesto    CHAR(10)    NOT NULL,
    idPuesto      CHAR(10)    NOT NULL,
    CONSTRAINT PK35 PRIMARY KEY (idImpuesto, idPuesto)
)
;



-- 
-- TABLE: ReferenciaColaborador 
--

CREATE TABLE ReferenciaColaborador(
    idColaborador       CHAR(10)    NOT NULL,
    idReferencia        CHAR(10)    NOT NULL,
    nombre              CHAR(10),
    telefono1           CHAR(10),
    direccion           CHAR(10),
    edad                CHAR(10),
    idTipoReferencia    CHAR(10)    NOT NULL,
    idParentezco        CHAR(10)    NOT NULL,
    idProfesion         CHAR(10)    NOT NULL,
    CONSTRAINT PK16 PRIMARY KEY (idColaborador, idReferencia)
)
;



-- 
-- TABLE: Servicio 
--

CREATE TABLE Servicio(
    idServicio     CHAR(10)    NOT NULL,
    descripcion    CHAR(10),
    CONSTRAINT PK6 PRIMARY KEY (idServicio)
)
;



-- 
-- TABLE: ServicioEmpresa 
--

CREATE TABLE ServicioEmpresa(
    idServicio    CHAR(10)    NOT NULL,
    idEmpresa     CHAR(10)    NOT NULL,
    CONSTRAINT PK15 PRIMARY KEY (idServicio, idEmpresa)
)
;



-- 
-- TABLE: TipoCuenta 
--

CREATE TABLE TipoCuenta(
    idTipoCuenta    CHAR(10)    NOT NULL,
    descripcion     CHAR(10),
    CONSTRAINT PK23 PRIMARY KEY (idTipoCuenta)
)
;



-- 
-- TABLE: TipoDescuento 
--

CREATE TABLE TipoDescuento(
    idTipoDescuento    CHAR(10)    NOT NULL,
    descripcion        CHAR(10),
    CONSTRAINT PK39 PRIMARY KEY (idTipoDescuento)
)
;



-- 
-- TABLE: TipoDireccion 
--

CREATE TABLE TipoDireccion(
    idTipoDireccion    CHAR(10)    NOT NULL,
    descripcion        CHAR(10),
    CONSTRAINT PK8 PRIMARY KEY (idTipoDireccion)
)
;



-- 
-- TABLE: TipoDocumento 
--

CREATE TABLE TipoDocumento(
    idTipoDocumento    CHAR(10)    NOT NULL,
    tipoDocumento      CHAR(10),
    mascara            CHAR(10),
    CONSTRAINT PK43 PRIMARY KEY (idTipoDocumento)
)
;



-- 
-- TABLE: TipoReferencia 
--

CREATE TABLE TipoReferencia(
    idTipoReferencia    CHAR(10)    NOT NULL,
    descripcion         CHAR(10),
    CONSTRAINT PK17 PRIMARY KEY (idTipoReferencia)
)
;



-- 
-- TABLE: BonoColaborador 
--

ALTER TABLE BonoColaborador ADD CONSTRAINT RefBonos471 
    FOREIGN KEY (idBono)
    REFERENCES Bonos(idBono)
;

ALTER TABLE BonoColaborador ADD CONSTRAINT RefColaborador601 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;


-- 
-- TABLE: Colaborador 
--

ALTER TABLE Colaborador ADD CONSTRAINT RefEstadoCivil351 
    FOREIGN KEY (idEstadoCivil)
    REFERENCES EstadoCivil(idEstadoCivil)
;

ALTER TABLE Colaborador ADD CONSTRAINT RefProfesion371 
    FOREIGN KEY (idProfesion)
    REFERENCES Profesion(idProfesion)
;

ALTER TABLE Colaborador ADD CONSTRAINT RefPuesto461 
    FOREIGN KEY (idPuesto)
    REFERENCES Puesto(idPuesto)
;


-- 
-- TABLE: ColaboradorDescuento 
--

ALTER TABLE ColaboradorDescuento ADD CONSTRAINT RefColaborador561 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE ColaboradorDescuento ADD CONSTRAINT RefTipoDescuento571 
    FOREIGN KEY (idTipoDescuento)
    REFERENCES TipoDescuento(idTipoDescuento)
;


-- 
-- TABLE: CuentaDeposito 
--

ALTER TABLE CuentaDeposito ADD CONSTRAINT RefColaborador391 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE CuentaDeposito ADD CONSTRAINT RefTipoCuenta421 
    FOREIGN KEY (idTipoCuenta)
    REFERENCES TipoCuenta(idTipoCuenta)
;

ALTER TABLE CuentaDeposito ADD CONSTRAINT RefBanco431 
    FOREIGN KEY (idBanco)
    REFERENCES Banco(idBanco)
;


-- 
-- TABLE: CuentaEmpresa 
--

ALTER TABLE CuentaEmpresa ADD CONSTRAINT RefEmpresa311 
    FOREIGN KEY (idEmpresa)
    REFERENCES Empresa(idEmpresa)
;

ALTER TABLE CuentaEmpresa ADD CONSTRAINT RefTipoCuenta321 
    FOREIGN KEY (idTipoCuenta)
    REFERENCES TipoCuenta(idTipoCuenta)
;

ALTER TABLE CuentaEmpresa ADD CONSTRAINT RefBanco331 
    FOREIGN KEY (idBanco)
    REFERENCES Banco(idBanco)
;


-- 
-- TABLE: DatoFamiliar 
--

ALTER TABLE DatoFamiliar ADD CONSTRAINT RefColaborador231 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE DatoFamiliar ADD CONSTRAINT RefParentezco241 
    FOREIGN KEY (idParentezco)
    REFERENCES Parentezco(idParentezco)
;

ALTER TABLE DatoFamiliar ADD CONSTRAINT RefProfesion381 
    FOREIGN KEY (idProfesion)
    REFERENCES Profesion(idProfesion)
;


-- 
-- TABLE: DatosAcademicos 
--

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefColaborador261 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefNivelAcademico271 
    FOREIGN KEY (idNivelAcademico)
    REFERENCES NivelAcademico(idNivelAcademico)
;

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefPais281 
    FOREIGN KEY (idPais)
    REFERENCES Pais(idPais)
;

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefDepartamento291 
    FOREIGN KEY (idDepartamento, idPais)
    REFERENCES Departamento(idDepartamento, idPais)
;

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefMunicipio301 
    FOREIGN KEY (idMunicipio, idDepartamento, idPais)
    REFERENCES Municipio(idMunicipio, idDepartamento, idPais)
;


-- 
-- TABLE: DatosLaborales 
--

ALTER TABLE DatosLaborales ADD CONSTRAINT RefColaborador341 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;


-- 
-- TABLE: Departamento 
--

ALTER TABLE Departamento ADD CONSTRAINT RefPais81 
    FOREIGN KEY (idPais)
    REFERENCES Pais(idPais)
;


-- 
-- TABLE: DetallePlanilla 
--

ALTER TABLE DetallePlanilla ADD CONSTRAINT RefPlanilla521 
    FOREIGN KEY (idPlanilla, año, mes)
    REFERENCES Planilla(idPlanilla, año, mes)
;

ALTER TABLE DetallePlanilla ADD CONSTRAINT RefColaborador531 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE DetallePlanilla ADD CONSTRAINT RefformaPago541 
    FOREIGN KEY (idFormaPago)
    REFERENCES formaPago(idFormaPago)
;


-- 
-- TABLE: Direcciones 
--

ALTER TABLE Direcciones ADD CONSTRAINT RefTipoDireccion51 
    FOREIGN KEY (idTipoDireccion)
    REFERENCES TipoDireccion(idTipoDireccion)
;

ALTER TABLE Direcciones ADD CONSTRAINT RefColaborador61 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE Direcciones ADD CONSTRAINT RefPais181 
    FOREIGN KEY (idPais)
    REFERENCES Pais(idPais)
;

ALTER TABLE Direcciones ADD CONSTRAINT RefDepartamento191 
    FOREIGN KEY (idDepartamento, idPais)
    REFERENCES Departamento(idDepartamento, idPais)
;

ALTER TABLE Direcciones ADD CONSTRAINT RefMunicipio201 
    FOREIGN KEY (idMunicipio, idDepartamento, idPais)
    REFERENCES Municipio(idMunicipio, idDepartamento, idPais)
;


-- 
-- TABLE: EmpresaColaborador 
--

ALTER TABLE EmpresaColaborador ADD CONSTRAINT RefEmpresa12 
    FOREIGN KEY (idEmpresa)
    REFERENCES Empresa(idEmpresa)
;

ALTER TABLE EmpresaColaborador ADD CONSTRAINT RefColaborador21 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;


-- 
-- TABLE: Identificacion 
--

ALTER TABLE Identificacion ADD CONSTRAINT RefColaborador581 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE Identificacion ADD CONSTRAINT RefTipoDocumento591 
    FOREIGN KEY (idTipoDocumento)
    REFERENCES TipoDocumento(idTipoDocumento)
;


-- 
-- TABLE: Municipio 
--

ALTER TABLE Municipio ADD CONSTRAINT RefDepartamento91 
    FOREIGN KEY (idDepartamento, idPais)
    REFERENCES Departamento(idDepartamento, idPais)
;


-- 
-- TABLE: Puesto 
--

ALTER TABLE Puesto ADD CONSTRAINT RefArea491 
    FOREIGN KEY (idArea)
    REFERENCES Area(idArea)
;


-- 
-- TABLE: PuestoImpuesto 
--

ALTER TABLE PuestoImpuesto ADD CONSTRAINT RefImpuesto501 
    FOREIGN KEY (idImpuesto)
    REFERENCES Impuesto(idImpuesto)
;

ALTER TABLE PuestoImpuesto ADD CONSTRAINT RefPuesto511 
    FOREIGN KEY (idPuesto)
    REFERENCES Puesto(idPuesto)
;


-- 
-- TABLE: ReferenciaColaborador 
--

ALTER TABLE ReferenciaColaborador ADD CONSTRAINT RefColaborador151 
    FOREIGN KEY (idColaborador)
    REFERENCES Colaborador(idColaborador)
;

ALTER TABLE ReferenciaColaborador ADD CONSTRAINT RefTipoReferencia161 
    FOREIGN KEY (idTipoReferencia)
    REFERENCES TipoReferencia(idTipoReferencia)
;

ALTER TABLE ReferenciaColaborador ADD CONSTRAINT RefParentezco171 
    FOREIGN KEY (idParentezco)
    REFERENCES Parentezco(idParentezco)
;

ALTER TABLE ReferenciaColaborador ADD CONSTRAINT RefProfesion361 
    FOREIGN KEY (idProfesion)
    REFERENCES Profesion(idProfesion)
;


-- 
-- TABLE: ServicioEmpresa 
--

ALTER TABLE ServicioEmpresa ADD CONSTRAINT RefServicio101 
    FOREIGN KEY (idServicio)
    REFERENCES Servicio(idServicio)
;

ALTER TABLE ServicioEmpresa ADD CONSTRAINT RefEmpresa111 
    FOREIGN KEY (idEmpresa)
    REFERENCES Empresa(idEmpresa)
;


insert into NivelAcademico (1,"Primaria");
insert into NivelAcademico (2,"Secundaria");
insert into NivelAcademico (3,"Diversificado");
insert into NivelAcademico (4,"Universidad");
insert into NivelAcademico (5,"Otros");	
/*
 * ER/Studio 8.0 SQL Code Generation
 * Company :      GregSoft
 * Project :      RRHH v2.DM1
 * Author :       Rino
 *
 * Date Created : Tuesday, May 22, 2018 16:12:54
 * Target DBMS : Microsoft SQL Server 2008
 */

IF OBJECT_ID('Area') IS NOT NULL
BEGIN
    DROP TABLE Area
    PRINT '<<< DROPPED TABLE Area >>>'
END
go
IF OBJECT_ID('Banco') IS NOT NULL
BEGIN
    DROP TABLE Banco
    PRINT '<<< DROPPED TABLE Banco >>>'
END
go
IF OBJECT_ID('BonoColaborador') IS NOT NULL
BEGIN
    DROP TABLE BonoColaborador
    PRINT '<<< DROPPED TABLE BonoColaborador >>>'
END
go
IF OBJECT_ID('Bonos') IS NOT NULL
BEGIN
    DROP TABLE Bonos
    PRINT '<<< DROPPED TABLE Bonos >>>'
END
go
IF OBJECT_ID('Colaborador') IS NOT NULL
BEGIN
    DROP TABLE Colaborador
    PRINT '<<< DROPPED TABLE Colaborador >>>'
END
go
IF OBJECT_ID('ColaboradorDescuento') IS NOT NULL
BEGIN
    DROP TABLE ColaboradorDescuento
    PRINT '<<< DROPPED TABLE ColaboradorDescuento >>>'
END
go
IF OBJECT_ID('CuentaDeposito') IS NOT NULL
BEGIN
    DROP TABLE CuentaDeposito
    PRINT '<<< DROPPED TABLE CuentaDeposito >>>'
END
go
IF OBJECT_ID('CuentaEmpresa') IS NOT NULL
BEGIN
    DROP TABLE CuentaEmpresa
    PRINT '<<< DROPPED TABLE CuentaEmpresa >>>'
END
go
IF OBJECT_ID('DatoFamiliar') IS NOT NULL
BEGIN
    DROP TABLE DatoFamiliar
    PRINT '<<< DROPPED TABLE DatoFamiliar >>>'
END
go
IF OBJECT_ID('DatosAcademicos') IS NOT NULL
BEGIN
    DROP TABLE DatosAcademicos
    PRINT '<<< DROPPED TABLE DatosAcademicos >>>'
END
go
IF OBJECT_ID('DatosLaborales') IS NOT NULL
BEGIN
    DROP TABLE DatosLaborales
    PRINT '<<< DROPPED TABLE DatosLaborales >>>'
END
go
IF OBJECT_ID('Departamento') IS NOT NULL
BEGIN
    DROP TABLE Departamento
    PRINT '<<< DROPPED TABLE Departamento >>>'
END
go
IF OBJECT_ID('DetallePlanilla') IS NOT NULL
BEGIN
    DROP TABLE DetallePlanilla
    PRINT '<<< DROPPED TABLE DetallePlanilla >>>'
END
go
IF OBJECT_ID('Direcciones') IS NOT NULL
BEGIN
    DROP TABLE Direcciones
    PRINT '<<< DROPPED TABLE Direcciones >>>'
END
go
IF OBJECT_ID('Empresa') IS NOT NULL
BEGIN
    DROP TABLE Empresa
    PRINT '<<< DROPPED TABLE Empresa >>>'
END
go
IF OBJECT_ID('EmpresaColaborador') IS NOT NULL
BEGIN
    DROP TABLE EmpresaColaborador
    PRINT '<<< DROPPED TABLE EmpresaColaborador >>>'
END
go
IF OBJECT_ID('EstadoCivil') IS NOT NULL
BEGIN
    DROP TABLE EstadoCivil
    PRINT '<<< DROPPED TABLE EstadoCivil >>>'
END
go
IF OBJECT_ID('formaPago') IS NOT NULL
BEGIN
    DROP TABLE formaPago
    PRINT '<<< DROPPED TABLE formaPago >>>'
END
go
IF OBJECT_ID('Identificacion') IS NOT NULL
BEGIN
    DROP TABLE Identificacion
    PRINT '<<< DROPPED TABLE Identificacion >>>'
END
go
IF OBJECT_ID('Impuesto') IS NOT NULL
BEGIN
    DROP TABLE Impuesto
    PRINT '<<< DROPPED TABLE Impuesto >>>'
END
go
IF OBJECT_ID('Municipio') IS NOT NULL
BEGIN
    DROP TABLE Municipio
    PRINT '<<< DROPPED TABLE Municipio >>>'
END
go
IF OBJECT_ID('NivelAcademico') IS NOT NULL
BEGIN
    DROP TABLE NivelAcademico
    PRINT '<<< DROPPED TABLE NivelAcademico >>>'
END
go
IF OBJECT_ID('Pais') IS NOT NULL
BEGIN
    DROP TABLE Pais
    PRINT '<<< DROPPED TABLE Pais >>>'
END
go
IF OBJECT_ID('Parentezco') IS NOT NULL
BEGIN
    DROP TABLE Parentezco
    PRINT '<<< DROPPED TABLE Parentezco >>>'
END
go
IF OBJECT_ID('Permiso') IS NOT NULL
BEGIN
    DROP TABLE Permiso
    PRINT '<<< DROPPED TABLE Permiso >>>'
END
go
IF OBJECT_ID('PermisoRol') IS NOT NULL
BEGIN
    DROP TABLE PermisoRol
    PRINT '<<< DROPPED TABLE PermisoRol >>>'
END
go
IF OBJECT_ID('Planilla') IS NOT NULL
BEGIN
    DROP TABLE Planilla
    PRINT '<<< DROPPED TABLE Planilla >>>'
END
go
IF OBJECT_ID('Profesion') IS NOT NULL
BEGIN
    DROP TABLE Profesion
    PRINT '<<< DROPPED TABLE Profesion >>>'
END
go
IF OBJECT_ID('Puesto') IS NOT NULL
BEGIN
    DROP TABLE Puesto
    PRINT '<<< DROPPED TABLE Puesto >>>'
END
go
IF OBJECT_ID('PuestoImpuesto') IS NOT NULL
BEGIN
    DROP TABLE PuestoImpuesto
    PRINT '<<< DROPPED TABLE PuestoImpuesto >>>'
END
go
IF OBJECT_ID('ReferenciaColaborador') IS NOT NULL
BEGIN
    DROP TABLE ReferenciaColaborador
    PRINT '<<< DROPPED TABLE ReferenciaColaborador >>>'
END
go
IF OBJECT_ID('Rol') IS NOT NULL
BEGIN
    DROP TABLE Rol
    PRINT '<<< DROPPED TABLE Rol >>>'
END
go
IF OBJECT_ID('Servicio') IS NOT NULL
BEGIN
    DROP TABLE Servicio
    PRINT '<<< DROPPED TABLE Servicio >>>'
END
go
IF OBJECT_ID('ServicioEmpresa') IS NOT NULL
BEGIN
    DROP TABLE ServicioEmpresa
    PRINT '<<< DROPPED TABLE ServicioEmpresa >>>'
END
go
IF OBJECT_ID('TipoCuenta') IS NOT NULL
BEGIN
    DROP TABLE TipoCuenta
    PRINT '<<< DROPPED TABLE TipoCuenta >>>'
END
go
IF OBJECT_ID('TipoDescuento') IS NOT NULL
BEGIN
    DROP TABLE TipoDescuento
    PRINT '<<< DROPPED TABLE TipoDescuento >>>'
END
go
IF OBJECT_ID('TipoDireccion') IS NOT NULL
BEGIN
    DROP TABLE TipoDireccion
    PRINT '<<< DROPPED TABLE TipoDireccion >>>'
END
go
IF OBJECT_ID('TipoDocumento') IS NOT NULL
BEGIN
    DROP TABLE TipoDocumento
    PRINT '<<< DROPPED TABLE TipoDocumento >>>'
END
go
IF OBJECT_ID('TipoReferencia') IS NOT NULL
BEGIN
    DROP TABLE TipoReferencia
    PRINT '<<< DROPPED TABLE TipoReferencia >>>'
END
go
IF OBJECT_ID('Usuario') IS NOT NULL
BEGIN
    DROP TABLE Usuario
    PRINT '<<< DROPPED TABLE Usuario >>>'
END
go
/* 
 * TABLE: Area 
 */

CREATE TABLE Area(
    idArea         numeric(3, 0)    NOT NULL,
    Descripcion    varchar(40)      NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (idArea)
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
    idBanco        numeric(3, 0)    NOT NULL,
    descripcion    varchar(40)      NULL,
    CONSTRAINT PK25 PRIMARY KEY NONCLUSTERED (idBanco)
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
    idBono           numeric(3, 0)     NOT NULL,
    idColaborador    numeric(15, 0)    NOT NULL,
    CONSTRAINT PK34 PRIMARY KEY NONCLUSTERED (idBono, idColaborador)
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
    idBono         numeric(3, 0)     NOT NULL,
    descripcion    varchar(40)       NULL,
    monto          numeric(13, 2)    NULL,
    CONSTRAINT PK33 PRIMARY KEY NONCLUSTERED (idBono)
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
    idColaborador      numeric(15, 0)    NOT NULL,
    nombre1            varchar(30)       NULL,
    nombre2            varchar(30)       NULL,
    nombre3            varchar(30)       NULL,
    apellido1          varchar(30)       NULL,
    apellido2          varchar(30)       NULL,
    apellido3          varchar(30)       NULL,
    fechaNacimiento    date              NULL,
    sexo               varchar(1)        NULL,
    idEstadoCivil      numeric(3, 0)     NOT NULL,
    idProfesion        numeric(3, 0)     NOT NULL,
    idPuesto           numeric(3, 0)     NOT NULL,
    user               varchar(10)       NOT NULL,
    CONSTRAINT PK7 PRIMARY KEY NONCLUSTERED (idColaborador)
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
    idColaborador      numeric(15, 0)    NOT NULL,
    idDescuento        numeric(3, 0)     NOT NULL,
    idTipoDescuento    numeric(3, 0)     NOT NULL,
    monto              numeric(13, 2)    NULL,
    CONSTRAINT PK40 PRIMARY KEY NONCLUSTERED (idColaborador, idDescuento)
)
go



IF OBJECT_ID('ColaboradorDescuento') IS NOT NULL
    PRINT '<<< CREATED TABLE ColaboradorDescuento >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE ColaboradorDescuento >>>'
go

/* 
 * TABLE: CuentaDeposito 
 */

CREATE TABLE CuentaDeposito(
    idColaborador    numeric(15, 0)    NOT NULL,
    idTipoCuenta     numeric(2, 0)     NOT NULL,
    idBanco          numeric(3, 0)     NOT NULL,
    CONSTRAINT PK32 PRIMARY KEY NONCLUSTERED (idColaborador)
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
    idEmpresa       numeric(5, 0)    NOT NULL,
    idTipoCuenta    numeric(2, 0)    NOT NULL,
    idBanco         numeric(3, 0)    NOT NULL,
    noCuenta        varchar(20)      NULL,
    CONSTRAINT PK24 PRIMARY KEY NONCLUSTERED (idEmpresa)
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
    idColaborador     numeric(15, 0)    NOT NULL,
    idDatoFamiliar    numeric(3, 0)     NOT NULL,
    idParentezco      numeric(3, 0)     NOT NULL,
    idProfesion       numeric(3, 0)     NOT NULL,
    nombre            varchar(80)       NULL,
    edad              numeric(3, 0)     NULL,
    telefono          varchar(15)       NULL,
    CONSTRAINT PK20 PRIMARY KEY NONCLUSTERED (idColaborador, idDatoFamiliar)
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
    idColaborador           numeric(15, 0)    NOT NULL,
    idAdemicoColaborador    numeric(3, 0)     NOT NULL,
    idNivelAcademico        numeric(3, 0)     NOT NULL,
    nombreInstitucion       varchar(60)       NULL,
    fechaInicio             date              NULL,
    fechaFinalizo           date              NULL,
    telefono                varchar(15)       NULL,
    direccion               varchar(80)       NULL,
    observacion             varchar(200)      NULL,
    idPais                  varchar(3)        NULL,
    idDepartamento          numeric(3, 0)     NULL,
    idMunicipio             numeric(3, 0)     NULL,
    CONSTRAINT PK22 PRIMARY KEY NONCLUSTERED (idColaborador, idAdemicoColaborador)
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
    idColaborador    numeric(15, 0)    NOT NULL,
    idLaboral        numeric(3, 0)     NOT NULL,
    Empresa          varchar(80)       NULL,
    CargoInicial     varchar(40)       NULL,
    CargoFinal       varchar(40)       NULL,
    Telefono         varchar(15)       NULL,
    JefeInmediato    varchar(80)       NULL,
    FechaInicio      date              NULL,
    FechaFinal       date              NULL,
    MotivoRetiro     varchar(200)      NULL,
    CONSTRAINT PK26 PRIMARY KEY NONCLUSTERED (idColaborador, idLaboral)
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
    idPais            varchar(3)       NOT NULL,
    idDepartamento    numeric(3, 0)    NOT NULL,
    descripcion       varchar(40)      NULL,
    CONSTRAINT PK12 PRIMARY KEY NONCLUSTERED (idPais, idDepartamento)
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
    idPlanilla        numeric(15, 0)    NOT NULL,
    idColaborador     numeric(15, 0)    NOT NULL,
    idFormaPago       numeric(3, 0)     NOT NULL,
    año               numeric(4, 0)     NOT NULL,
    mes               numeric(2, 0)     NOT NULL,
    correlativo       numeric(15, 0)    NOT NULL,
    Ordinario         numeric(13, 2)    NULL,
    Bonificaciones    numeric(13, 2)    NULL,
    Descuentos        numeric(13, 2)    NULL,
    Impuestos         numeric(13, 2)    NULL,
    Extras            numeric(13, 2)    NULL,
    Total             numeric(13, 2)    NULL,
    CONSTRAINT PK37 PRIMARY KEY NONCLUSTERED (idPlanilla, idColaborador, idFormaPago, año, mes, correlativo)
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
    idColaborador      numeric(15, 0)    NOT NULL,
    idTipoDireccion    numeric(3, 0)     NOT NULL,
    idDireccion        numeric(3, 0)     NOT NULL,
    descripcion        varchar(40)       NULL,
    idPais             varchar(3)        NULL,
    idDepartamento     numeric(3, 0)     NULL,
    idMunicipio        numeric(3, 0)     NULL,
    CONSTRAINT PK10 PRIMARY KEY NONCLUSTERED (idColaborador, idTipoDireccion, idDireccion)
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
    idEmpresa      numeric(5, 0)    NOT NULL,
    descripcion    varchar(40)      NULL,
    NIT            varchar(18)      NULL,
    CONSTRAINT PK5 PRIMARY KEY NONCLUSTERED (idEmpresa)
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
    idEmpresa        numeric(5, 0)     NOT NULL,
    idColaborador    numeric(15, 0)    NOT NULL,
    Activo           varchar(1)        NULL,
    CONSTRAINT PK9 PRIMARY KEY NONCLUSTERED (idEmpresa, idColaborador)
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
    idEstadoCivil    numeric(3, 0)    NOT NULL,
    descripcion      varchar(40)      NULL,
    CONSTRAINT PK27 PRIMARY KEY NONCLUSTERED (idEstadoCivil)
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
    idFormaPago    numeric(3, 0)    NOT NULL,
    descripcion    varchar(40)      NULL,
    CONSTRAINT PK31 PRIMARY KEY NONCLUSTERED (idFormaPago)
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
    idColaborador       numeric(15, 0)    NOT NULL,
    idIdentificacion    numeric(3, 0)     NOT NULL,
    idTipoDocumento     numeric(3, 0)     NOT NULL,
    noDocumento         varchar(18)       NULL,
    CONSTRAINT PK44 PRIMARY KEY NONCLUSTERED (idColaborador, idIdentificacion)
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
    idImpuesto     numeric(3, 0)    NOT NULL,
    descripcion    varchar(40)      NULL,
    porcentaje     numeric(5, 3)    NULL,
    CONSTRAINT PK28 PRIMARY KEY NONCLUSTERED (idImpuesto)
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
    idPais            varchar(3)       NOT NULL,
    idDepartamento    numeric(3, 0)    NOT NULL,
    idMunicipio       numeric(3, 0)    NOT NULL,
    descripcion       varchar(40)      NULL,
    CONSTRAINT PK13 PRIMARY KEY NONCLUSTERED (idPais, idDepartamento, idMunicipio)
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
    idNivelAcademico    numeric(3, 0)    NOT NULL,
    descripcion         varchar(40)      NULL,
    CONSTRAINT PK21 PRIMARY KEY NONCLUSTERED (idNivelAcademico)
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
    idPais         varchar(3)     NOT NULL,
    descripcion    varchar(40)    NULL,
    extension      char(10)       NULL,
    CONSTRAINT PK11 PRIMARY KEY NONCLUSTERED (idPais)
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
    idParentezco    numeric(3, 0)    NOT NULL,
    descripcion     varchar(40)      NULL,
    CONSTRAINT PK18 PRIMARY KEY NONCLUSTERED (idParentezco)
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
    idPlanilla    numeric(15, 0)    NOT NULL,
    año           numeric(4, 0)     NOT NULL,
    mes           numeric(2, 0)     NOT NULL,
    CONSTRAINT PK36 PRIMARY KEY NONCLUSTERED (idPlanilla, año, mes)
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
    idProfesion    numeric(3, 0)    NOT NULL,
    descripcion    varchar(40)      NULL,
    CONSTRAINT PK19 PRIMARY KEY NONCLUSTERED (idProfesion)
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
    idPuesto           numeric(3, 0)     NOT NULL,
    descripcion        varchar(40)       NULL,
    sueldoOrdinario    numeric(13, 2)    NULL,
    idArea             numeric(3, 0)     NOT NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (idPuesto)
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
    idImpuesto    numeric(3, 0)    NOT NULL,
    idPuesto      numeric(3, 0)    NOT NULL,
    CONSTRAINT PK35 PRIMARY KEY NONCLUSTERED (idImpuesto, idPuesto)
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
    idColaborador       numeric(15, 0)    NOT NULL,
    idReferencia        char(10)          NOT NULL,
    nombre              char(10)          NULL,
    telefono1           char(10)          NULL,
    direccion           char(10)          NULL,
    edad                char(10)          NULL,
    idTipoReferencia    numeric(3, 0)     NOT NULL,
    idParentezco        numeric(3, 0)     NOT NULL,
    idProfesion         numeric(3, 0)     NOT NULL,
    CONSTRAINT PK16 PRIMARY KEY NONCLUSTERED (idColaborador, idReferencia)
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
    idServicio     numeric(3, 0)    NOT NULL,
    descripcion    varchar(40)      NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (idServicio)
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
    idServicio    numeric(3, 0)    NOT NULL,
    idEmpresa     numeric(5, 0)    NOT NULL,
    CONSTRAINT PK15 PRIMARY KEY NONCLUSTERED (idServicio, idEmpresa)
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
    idTipoCuenta    numeric(2, 0)    NOT NULL,
    descripcion     varchar(40)      NULL,
    CONSTRAINT PK23 PRIMARY KEY NONCLUSTERED (idTipoCuenta)
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
    idTipoDescuento    numeric(3, 0)    NOT NULL,
    descripcion        varchar(40)      NULL,
    CONSTRAINT PK39 PRIMARY KEY NONCLUSTERED (idTipoDescuento)
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
    idTipoDireccion    numeric(3, 0)    NOT NULL,
    descripcion        varchar(40)      NULL,
    CONSTRAINT PK8 PRIMARY KEY NONCLUSTERED (idTipoDireccion)
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
    idTipoDocumento    numeric(3, 0)    NOT NULL,
    tipoDocumento      numeric(3, 0)    NULL,
    mascara            varchar(18)      NULL,
    CONSTRAINT PK43 PRIMARY KEY NONCLUSTERED (idTipoDocumento)
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
    idTipoReferencia    numeric(3, 0)    NOT NULL,
    descripcion         varchar(40)      NULL,
    CONSTRAINT PK17 PRIMARY KEY NONCLUSTERED (idTipoReferencia)
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
    FOREIGN KEY (idPais, idDepartamento)
    REFERENCES Departamento(idPais, idDepartamento)
go

ALTER TABLE DatosAcademicos ADD CONSTRAINT RefMunicipio30 
    FOREIGN KEY (idPais, idDepartamento, idMunicipio)
    REFERENCES Municipio(idPais, idDepartamento, idMunicipio)
go


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
    FOREIGN KEY (idPlanilla, año, mes)
    REFERENCES Planilla(idPlanilla, año, mes)
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
    FOREIGN KEY (idPais, idDepartamento)
    REFERENCES Departamento(idPais, idDepartamento)
go

ALTER TABLE Direcciones ADD CONSTRAINT RefMunicipio20 
    FOREIGN KEY (idPais, idDepartamento, idMunicipio)
    REFERENCES Municipio(idPais, idDepartamento, idMunicipio)
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
    FOREIGN KEY (idPais, idDepartamento)
    REFERENCES Departamento(idPais, idDepartamento)
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



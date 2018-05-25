-- Definición de Tablas (solo para visualización)
create table datos (
	
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
);

insert into NivelAcademico values (1,'Primaria');
insert into NivelAcademico values (2,'Secundaria');
insert into NivelAcademico values (3,'Diversificado');
insert into NivelAcademico values (4,'Universidad');
insert into NivelAcademico values (5,'Otros'); 


-- Secuencias para Tablas
create sequence area_seq
	start with 1
	increment by 1
	nomaxvalue;

create sequence banco_seq
	start with 1
	increment by 1
	nomaxvalue;	

create sequence bono_seq
	start with 1
	increment by 1
	nomaxvalue;	

create sequence colaborador_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence empresa_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence estadoCivil_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence formaPago_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence impuesto_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence nivelAcademico_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence parentezco_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence planilla_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence profesion_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence puesto_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence servicio_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence tipoCuenta_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence tipoDescuento_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence tipoDireccion_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence tipoDocumento_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence tipoReferencia_seq
	start with 1
	increment by 1
	nomaxvalue;		

create sequence banco_seq
	start with 1
	increment by 1
	nomaxvalue;		
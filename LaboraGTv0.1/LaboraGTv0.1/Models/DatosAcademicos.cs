//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LaboraGTv0._1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class DatosAcademicos
    {
        public int idColaborador { get; set; }
        public int idAcademicoColaborador { get; set; }
        public int idNivelAcademico { get; set; }
        public string nombreInstitucion { get; set; }
        public System.DateTime fechaInicio { get; set; }
        public System.DateTime fechaFinalizo { get; set; }
        public string telefono { get; set; }
        public string direccion { get; set; }
        public string observacion { get; set; }
        public string idPais { get; set; }
        public Nullable<int> idDepartamento { get; set; }
        public Nullable<int> idMunicipio { get; set; }
    
        public virtual Colaborador Colaborador { get; set; }
        public virtual Departamento Departamento { get; set; }
        public virtual Municipio Municipio { get; set; }
        public virtual NivelAcademico NivelAcademico { get; set; }
        public virtual Pais Pais { get; set; }
    }
}

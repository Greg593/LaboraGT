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
        public decimal idColaborador { get; set; }
        public decimal idAdemicoColaborador { get; set; }
        public decimal idNivelAcademico { get; set; }
        public string nombreInstitucion { get; set; }
        public Nullable<System.DateTime> fechaInicio { get; set; }
        public Nullable<System.DateTime> fechaFinalizo { get; set; }
        public string telefono { get; set; }
        public string direccion { get; set; }
        public string observacion { get; set; }
        public string idPais { get; set; }
        public Nullable<decimal> idDepartamento { get; set; }
        public Nullable<decimal> idMunicipio { get; set; }
    
        public virtual Colaborador Colaborador { get; set; }
        public virtual Departamento Departamento { get; set; }
        public virtual Municipio Municipio { get; set; }
        public virtual NivelAcademico NivelAcademico { get; set; }
        public virtual Pais Pais { get; set; }
    }
}

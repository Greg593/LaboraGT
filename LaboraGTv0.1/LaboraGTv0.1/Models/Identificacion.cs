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
    
    public partial class Identificacion
    {
        public int idColaborador { get; set; }
        public int idIdentificacion { get; set; }
        public int idTipoDocumento { get; set; }
        public string noDocumento { get; set; }
    
        public virtual Colaborador Colaborador { get; set; }
        public virtual TipoDocumento TipoDocumento { get; set; }
    }
}

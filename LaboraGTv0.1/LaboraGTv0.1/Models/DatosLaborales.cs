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
    
    public partial class DatosLaborales
    {
        public int idColaborador { get; set; }
        public int idLaboral { get; set; }
        public string Empresa { get; set; }
        public string CargoInicial { get; set; }
        public string CargoFinal { get; set; }
        public string Telefono { get; set; }
        public string JefeInmediato { get; set; }
        public System.DateTime FechaInicio { get; set; }
        public System.DateTime FechaFinal { get; set; }
        public string MotivoRetiro { get; set; }
    
        public virtual Colaborador Colaborador { get; set; }
    }
}

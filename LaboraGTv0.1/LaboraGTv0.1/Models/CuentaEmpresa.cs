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
    
    public partial class CuentaEmpresa
    {
        public decimal idEmpresa { get; set; }
        public decimal idTipoCuenta { get; set; }
        public decimal idBanco { get; set; }
        public string noCuenta { get; set; }
    
        public virtual Banco Banco { get; set; }
        public virtual Empresa Empresa { get; set; }
        public virtual TipoCuenta TipoCuenta { get; set; }
    }
}

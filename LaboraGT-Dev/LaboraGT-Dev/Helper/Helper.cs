using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;

namespace LaboraGT_Dev
{
    public class Helper 
    {
        public static void erroLog(Exception Err)
        {
            string usuario = "";
            try
            {
                //usuario = ClsGlobals.usuario;
                using (StreamWriter log = new StreamWriter("Error.log", true))
                {
                    log.WriteLine("   " + DateTime.Now.ToString() + "   " + usuario + "   " + Environment.MachineName + "   " + Err.Message + "   " + Err.TargetSite.Name + "   " + Err.StackTrace);
                    log.WriteLine();
                }

                throw new Exception("Error en la aplicación LaboraGT, " + Environment.NewLine + Err.Message + Environment.NewLine + "Metodo " + Err.TargetSite.Name);
            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message, "Mensaje del Sistema", MessageBoxButtons.OK, MessageBoxIcon.Information);
                
            }

        }

        public static void MensajeSistema(string mensaje, Controller ctrl)
        {
            ctrl.ViewBag.msg(mensaje);
            //MessageBox.Show(mensaje, titulo, MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

       
    }
}
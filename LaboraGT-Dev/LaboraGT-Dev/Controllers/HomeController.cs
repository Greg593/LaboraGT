using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LaboraGT_Dev.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index(string data = "")
        {
            
            if(data != "")
            {
                return PartialView("PartialScript");
            }else
            {
                return View();
            }
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            Helper.MensajeSistema("Your application description page.",this);

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
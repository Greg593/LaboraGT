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
                ViewBag.status = "success";
                ViewBag.msg = "Hola Mundo!!";
                return PartialView("MessagePartial");
            }else
            {
                return View();

            }

        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
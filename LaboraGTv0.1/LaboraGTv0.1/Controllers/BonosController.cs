using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using LaboraGTv0._1.Models;

namespace LaboraGTv0._1.Controllers
{
    public class BonosController : Controller
    {
        private LABORAGT_Entities db = new LABORAGT_Entities();

        // GET: Bonos
        public ActionResult Index()
        {
            return View(db.Bonos.ToList());
        }

        // GET: Bonos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bonos bonos = db.Bonos.Find(id);
            if (bonos == null)
            {
                return HttpNotFound();
            }
            return View(bonos);
        }

        // GET: Bonos/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Bonos/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idBono,descripcion,monto")] Bonos bonos)
        {
            if (ModelState.IsValid)
            {
                db.Bonos.Add(bonos);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(bonos);
        }

        // GET: Bonos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bonos bonos = db.Bonos.Find(id);
            if (bonos == null)
            {
                return HttpNotFound();
            }
            return View(bonos);
        }

        // POST: Bonos/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idBono,descripcion,monto")] Bonos bonos)
        {
            if (ModelState.IsValid)
            {
                db.Entry(bonos).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(bonos);
        }

        // GET: Bonos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bonos bonos = db.Bonos.Find(id);
            if (bonos == null)
            {
                return HttpNotFound();
            }
            return View(bonos);
        }

        // POST: Bonos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Bonos bonos = db.Bonos.Find(id);
            db.Bonos.Remove(bonos);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}

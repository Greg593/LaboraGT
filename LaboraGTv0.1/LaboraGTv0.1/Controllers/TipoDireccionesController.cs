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
    public class TipoDireccionesController : Controller
    {
        private LABORAGT_Entities db = new LABORAGT_Entities();

        // GET: TipoDirecciones
        public ActionResult Index()
        {
            return View(db.TipoDireccion.ToList());
        }

        // GET: TipoDirecciones/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoDireccion tipoDireccion = db.TipoDireccion.Find(id);
            if (tipoDireccion == null)
            {
                return HttpNotFound();
            }
            return View(tipoDireccion);
        }

        // GET: TipoDirecciones/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TipoDirecciones/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idTipoDireccion,descripcion")] TipoDireccion tipoDireccion)
        {
            if (ModelState.IsValid)
            {
                db.TipoDireccion.Add(tipoDireccion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tipoDireccion);
        }

        // GET: TipoDirecciones/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoDireccion tipoDireccion = db.TipoDireccion.Find(id);
            if (tipoDireccion == null)
            {
                return HttpNotFound();
            }
            return View(tipoDireccion);
        }

        // POST: TipoDirecciones/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idTipoDireccion,descripcion")] TipoDireccion tipoDireccion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tipoDireccion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipoDireccion);
        }

        // GET: TipoDirecciones/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoDireccion tipoDireccion = db.TipoDireccion.Find(id);
            if (tipoDireccion == null)
            {
                return HttpNotFound();
            }
            return View(tipoDireccion);
        }

        // POST: TipoDirecciones/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TipoDireccion tipoDireccion = db.TipoDireccion.Find(id);
            db.TipoDireccion.Remove(tipoDireccion);
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

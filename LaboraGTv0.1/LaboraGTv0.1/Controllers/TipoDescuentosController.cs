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
    public class TipoDescuentosController : Controller
    {
        private LABORAGT_Entities db = new LABORAGT_Entities();

        // GET: TipoDescuentos
        public ActionResult Index()
        {
            return View(db.TipoDescuento.ToList());
        }

        // GET: TipoDescuentos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoDescuento tipoDescuento = db.TipoDescuento.Find(id);
            if (tipoDescuento == null)
            {
                return HttpNotFound();
            }
            return View(tipoDescuento);
        }

        // GET: TipoDescuentos/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TipoDescuentos/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idTipoDescuento,descripcion")] TipoDescuento tipoDescuento)
        {
            if (ModelState.IsValid)
            {
                db.TipoDescuento.Add(tipoDescuento);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tipoDescuento);
        }

        // GET: TipoDescuentos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoDescuento tipoDescuento = db.TipoDescuento.Find(id);
            if (tipoDescuento == null)
            {
                return HttpNotFound();
            }
            return View(tipoDescuento);
        }

        // POST: TipoDescuentos/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idTipoDescuento,descripcion")] TipoDescuento tipoDescuento)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tipoDescuento).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipoDescuento);
        }

        // GET: TipoDescuentos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoDescuento tipoDescuento = db.TipoDescuento.Find(id);
            if (tipoDescuento == null)
            {
                return HttpNotFound();
            }
            return View(tipoDescuento);
        }

        // POST: TipoDescuentos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TipoDescuento tipoDescuento = db.TipoDescuento.Find(id);
            db.TipoDescuento.Remove(tipoDescuento);
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

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
    public class TiposReferenciasController : Controller
    {
        private LABORAGT_Entities db = new LABORAGT_Entities();

        // GET: TiposReferencias
        public ActionResult Index()
        {
            return View(db.TipoReferencia.ToList());
        }

        // GET: TiposReferencias/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoReferencia tipoReferencia = db.TipoReferencia.Find(id);
            if (tipoReferencia == null)
            {
                return HttpNotFound();
            }
            return View(tipoReferencia);
        }

        // GET: TiposReferencias/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TiposReferencias/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idTipoReferencia,descripcion")] TipoReferencia tipoReferencia)
        {
            if (ModelState.IsValid)
            {
                db.TipoReferencia.Add(tipoReferencia);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tipoReferencia);
        }

        // GET: TiposReferencias/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoReferencia tipoReferencia = db.TipoReferencia.Find(id);
            if (tipoReferencia == null)
            {
                return HttpNotFound();
            }
            return View(tipoReferencia);
        }

        // POST: TiposReferencias/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idTipoReferencia,descripcion")] TipoReferencia tipoReferencia)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tipoReferencia).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipoReferencia);
        }

        // GET: TiposReferencias/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoReferencia tipoReferencia = db.TipoReferencia.Find(id);
            if (tipoReferencia == null)
            {
                return HttpNotFound();
            }
            return View(tipoReferencia);
        }

        // POST: TiposReferencias/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TipoReferencia tipoReferencia = db.TipoReferencia.Find(id);
            db.TipoReferencia.Remove(tipoReferencia);
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

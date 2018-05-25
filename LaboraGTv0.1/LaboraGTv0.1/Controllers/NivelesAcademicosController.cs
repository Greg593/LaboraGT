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
    public class NivelesAcademicosController : Controller
    {
        private LABORAGT_Entities db = new LABORAGT_Entities();

        // GET: NivelesAcademicos
        public ActionResult Index()
        {
            return View(db.NivelAcademico.ToList());
        }

        // GET: NivelesAcademicos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NivelAcademico nivelAcademico = db.NivelAcademico.Find(id);
            if (nivelAcademico == null)
            {
                return HttpNotFound();
            }
            return View(nivelAcademico);
        }

        // GET: NivelesAcademicos/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: NivelesAcademicos/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idNivelAcademico,descripcion")] NivelAcademico nivelAcademico)
        {
            if (ModelState.IsValid)
            {
                db.NivelAcademico.Add(nivelAcademico);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(nivelAcademico);
        }

        // GET: NivelesAcademicos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NivelAcademico nivelAcademico = db.NivelAcademico.Find(id);
            if (nivelAcademico == null)
            {
                return HttpNotFound();
            }
            return View(nivelAcademico);
        }

        // POST: NivelesAcademicos/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idNivelAcademico,descripcion")] NivelAcademico nivelAcademico)
        {
            if (ModelState.IsValid)
            {
                db.Entry(nivelAcademico).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(nivelAcademico);
        }

        // GET: NivelesAcademicos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NivelAcademico nivelAcademico = db.NivelAcademico.Find(id);
            if (nivelAcademico == null)
            {
                return HttpNotFound();
            }
            return View(nivelAcademico);
        }

        // POST: NivelesAcademicos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            NivelAcademico nivelAcademico = db.NivelAcademico.Find(id);
            db.NivelAcademico.Remove(nivelAcademico);
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

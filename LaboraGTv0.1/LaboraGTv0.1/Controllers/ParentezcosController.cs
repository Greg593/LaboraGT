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
    public class ParentezcosController : Controller
    {
        private LABORAGT_Entities db = new LABORAGT_Entities();

        // GET: Parentezcos
        public ActionResult Index()
        {
            return View(db.Parentezco.ToList());
        }

        // GET: Parentezcos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Parentezco parentezco = db.Parentezco.Find(id);
            if (parentezco == null)
            {
                return HttpNotFound();
            }
            return View(parentezco);
        }

        // GET: Parentezcos/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Parentezcos/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idParentezco,descripcion")] Parentezco parentezco)
        {
            if (ModelState.IsValid)
            {
                db.Parentezco.Add(parentezco);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(parentezco);
        }

        // GET: Parentezcos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Parentezco parentezco = db.Parentezco.Find(id);
            if (parentezco == null)
            {
                return HttpNotFound();
            }
            return View(parentezco);
        }

        // POST: Parentezcos/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idParentezco,descripcion")] Parentezco parentezco)
        {
            if (ModelState.IsValid)
            {
                db.Entry(parentezco).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(parentezco);
        }

        // GET: Parentezcos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Parentezco parentezco = db.Parentezco.Find(id);
            if (parentezco == null)
            {
                return HttpNotFound();
            }
            return View(parentezco);
        }

        // POST: Parentezcos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Parentezco parentezco = db.Parentezco.Find(id);
            db.Parentezco.Remove(parentezco);
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

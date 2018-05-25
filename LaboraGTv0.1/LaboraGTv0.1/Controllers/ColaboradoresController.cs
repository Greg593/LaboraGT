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
    public class ColaboradoresController : Controller
    {
        private LABORAGT_Entities db = new LABORAGT_Entities();

        // GET: Colaboradores
        public ActionResult Index()
        {
            var colaborador = db.Colaborador.Include(c => c.EstadoCivil).Include(c => c.Profesion).Include(c => c.Puesto);
            return View(colaborador.ToList());
        }

        // GET: Colaboradores/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Colaborador colaborador = db.Colaborador.Find(id);
            if (colaborador == null)
            {
                return HttpNotFound();
            }
            return View(colaborador);
        }

        // GET: Colaboradores/Create
        public ActionResult Create()
        {
            ViewBag.usuario = new SelectList(db.Credencial, "usuario", "passw");
            ViewBag.idEstadoCivil = new SelectList(db.EstadoCivil, "idEstadoCivil", "descripcion");
            ViewBag.idProfesion = new SelectList(db.Profesion, "idProfesion", "descripcion");
            ViewBag.idPuesto = new SelectList(db.Puesto, "idPuesto", "descripcion");
            return View();
        }

        // POST: Colaboradores/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idColaborador,nombre1,nombre2,nombre3,apellido1,apellido2,apellido3,fechaNacimiento,sexo,idEstadoCivil,idProfesion,idPuesto,usuario")] Colaborador colaborador)
        {
            if (ModelState.IsValid)
            {
                db.Colaborador.Add(colaborador);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.usuario = new SelectList(db.Credencial, "usuario", "passw", colaborador.usuario);
            ViewBag.idEstadoCivil = new SelectList(db.EstadoCivil, "idEstadoCivil", "descripcion", colaborador.idEstadoCivil);
            ViewBag.idProfesion = new SelectList(db.Profesion, "idProfesion", "descripcion", colaborador.idProfesion);
            ViewBag.idPuesto = new SelectList(db.Puesto, "idPuesto", "descripcion", colaborador.idPuesto);
            return View(colaborador);
        }

        // GET: Colaboradores/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Colaborador colaborador = db.Colaborador.Find(id);
            if (colaborador == null)
            {
                return HttpNotFound();
            }
            ViewBag.usuario = new SelectList(db.Credencial, "usuario", "passw", colaborador.usuario);
            ViewBag.idEstadoCivil = new SelectList(db.EstadoCivil, "idEstadoCivil", "descripcion", colaborador.idEstadoCivil);
            ViewBag.idProfesion = new SelectList(db.Profesion, "idProfesion", "descripcion", colaborador.idProfesion);
            ViewBag.idPuesto = new SelectList(db.Puesto, "idPuesto", "descripcion", colaborador.idPuesto);
            return View(colaborador);
        }

        // POST: Colaboradores/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idColaborador,nombre1,nombre2,nombre3,apellido1,apellido2,apellido3,fechaNacimiento,sexo,idEstadoCivil,idProfesion,idPuesto,usuario")] Colaborador colaborador)
        {
            if (ModelState.IsValid)
            {
                db.Entry(colaborador).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.usuario = new SelectList(db.Credencial, "usuario", "passw", colaborador.usuario);
            ViewBag.idEstadoCivil = new SelectList(db.EstadoCivil, "idEstadoCivil", "descripcion", colaborador.idEstadoCivil);
            ViewBag.idProfesion = new SelectList(db.Profesion, "idProfesion", "descripcion", colaborador.idProfesion);
            ViewBag.idPuesto = new SelectList(db.Puesto, "idPuesto", "descripcion", colaborador.idPuesto);
            return View(colaborador);
        }

        // GET: Colaboradores/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Colaborador colaborador = db.Colaborador.Find(id);
            if (colaborador == null)
            {
                return HttpNotFound();
            }
            return View(colaborador);
        }

        // POST: Colaboradores/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Colaborador colaborador = db.Colaborador.Find(id);
            db.Colaborador.Remove(colaborador);
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

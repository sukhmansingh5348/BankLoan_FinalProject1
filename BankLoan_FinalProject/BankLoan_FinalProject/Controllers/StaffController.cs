using BankLoan_FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BankLoan_FinalProject.Controllers
{
    public class StaffController : Controller
    {
        // GET: Staff

        BankLoanEntities2 instance = new BankLoanEntities2();

        public ActionResult StaffDetail()
        {
            return View(instance.Staffs.ToList());
        }

        // GET: Staff/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Staff/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Staff/Create
        [HttpPost]
        public ActionResult Create([Bind(Exclude = "Id")] Staff Record)
        {
            if (!ModelState.IsValid)
                return View();
            instance.Staffs.Add(Record);
            instance.SaveChanges();
            return RedirectToAction("StaffDetail");
        }

        // GET: Staff/Edit/5
        public ActionResult Edit(int id)
        {
            var EditId = (from m in instance.Staffs where m.id == id select m).First();
            return View(EditId);
        }

        // POST: Staff/Edit/5
        [HttpPost]
        public ActionResult Edit(Staff EditId)
        {
            var orignalRecord = (from m in instance.Staffs where m.id == EditId.id select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            instance.Entry(orignalRecord).CurrentValues.SetValues(EditId);

            instance.SaveChanges();
            return RedirectToAction("StaffDetail");

        }

        // GET: Staff/Delete/5
        public ActionResult Delete(Staff EditId)
        {

            var d = instance.Staffs.Where(x => x.id == EditId.id).FirstOrDefault();
            instance.Staffs.Remove(d);
            instance.SaveChanges();
            return RedirectToAction("StaffDetail");
        }

        // POST: Staff/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}

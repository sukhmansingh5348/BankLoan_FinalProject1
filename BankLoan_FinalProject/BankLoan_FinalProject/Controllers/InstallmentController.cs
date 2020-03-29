using BankLoan_FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BankLoan_FinalProject.Controllers
{
    public class InstallmentController : Controller
    {
        // GET: Installment
        BankLoanEntities instance = new BankLoanEntities();

        public ActionResult InstallmentDetal()
        {
            return View(instance.Installments.ToList());
        }

        // GET: Installment/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Installment/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Installment/Create
        [HttpPost]
        public ActionResult Create([Bind(Exclude = "Id")] Installment Record)
        {

            if (!ModelState.IsValid)
                return View();
            instance.Installments.Add(Record);
            instance.SaveChanges();
            //Response.Redirect("StudentAdmission",true);
            return RedirectToAction("InstallmentDetal");
        }

        // GET: Installment/Edit/5
        public ActionResult Edit(int id)
        {
            var EditId = (from m in instance.Installments where m.Id == id select m).First();
            return View(EditId);
        }

        // POST: Installment/Edit/5
        [HttpPost]
        public ActionResult Edit(Installment EditId)
        {
            var orignalRecord = (from m in instance.Installments where m.Id == EditId.Id select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            instance.Entry(orignalRecord).CurrentValues.SetValues(EditId);

            instance.SaveChanges();
            return RedirectToAction("InstallmentDetal");

        }

        // GET: Installment/Delete/5
        public ActionResult Delete(Installment EditId)
        {

            var d = instance.Installments.Where(x => x.Id == EditId.Id).FirstOrDefault();
            instance.Installments.Remove(d);
            instance.SaveChanges();
            return RedirectToAction("InstallmentDetal");
        }

        // POST: Installment/Delete/5
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

using BankLoan_FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BankLoan_FinalProject.Controllers
{
    public class LoanController : Controller
    {
        // GET: Loan
        BankLoanEntities instance = new BankLoanEntities();

        public ActionResult LoanDetail()
        {
            return View(instance.Loans.ToList());
        }

        // GET: Loan/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Loan/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Loan/Create
        [HttpPost]
        public ActionResult Create([Bind(Exclude = "Id")] Loan Record)
        {
            if (!ModelState.IsValid)
                return View();
            instance.Loans.Add(Record);
            instance.SaveChanges();
            //Response.Redirect("StudentAdmission",true);
            return RedirectToAction("LoanDetail");

        }

        // GET: Loan/Edit/5
        public ActionResult Edit(int id)
        {
            var EditId = (from m in instance.Loans where m.id == id select m).First();
            return View(EditId);
        }

        // POST: Loan/Edit/5
        [HttpPost]
        public ActionResult Edit(Loan EditId)
        {
            var orignalRecord = (from m in instance.Loans where m.id == EditId.id select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            instance.Entry(orignalRecord).CurrentValues.SetValues(EditId);

            instance.SaveChanges();
            return RedirectToAction("LoanDetail");

        }

        // GET: Loan/Delete/5
        public ActionResult Delete(Loan EditId)
        {
            var d = instance.Loans.Where(x => x.id == EditId.id).FirstOrDefault();
            instance.Loans.Remove(d);
            instance.SaveChanges();
            return RedirectToAction("LoanDetail");

        }

        // POST: Loan/Delete/5
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

using BankLoan_FinalProject.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BankLoan_FinalProject.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult PassingQuery()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }


        public ActionResult PassMsg(QueryRecord data)
        {
            Connection obj = new Connection();
            String query = "insert into Query(Name,Contact,Email,Msg) values('" + data.Name.ToString() + "','" + data.Contact.ToString() + "','" + data.Email.ToString() + "','" + data.Message.ToString() + "')";
            obj.SqlQuery(query);
            return View("PassingQuery");

        }


        public ActionResult CheckLogin(LoginDet data)
        {
            Connection obj = new Connection();
            String query = "select * from Login where Name='" + data.Name.ToString() + "' and Password='" + data.Password.ToString() + "'";
            DataTable tbl = new DataTable();
            tbl = obj.srchRecord(query);
            if (tbl.Rows.Count > 0)
            {
                return View("Correct");
            }
            else {
                return View("Wrong");
            }
            

        }


        public ActionResult Wrong()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Correct()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }



        public ActionResult AdminLogin()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
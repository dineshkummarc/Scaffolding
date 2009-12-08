using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;
using SubSonic;
using System.Collections;
//using Models;
using System.Text;

namespace Controllers
{
    public class PayPalController : Controller
    {
        //IRepository<PayPal> _repository;
        /// <summary>
        /// Default Constructor - delete this if you use IoC
        /// </summary>
        public PayPalController(){
        }
        

        //
        // GET: /PayPal/
        public ActionResult Index()
        {
            return View();
        }
         
    }
}

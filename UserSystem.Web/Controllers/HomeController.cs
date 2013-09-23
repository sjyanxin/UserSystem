using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UserSystem.Web.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        [LoginCheckController]
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult UserManager()
        {
            return View();
        }
    }
}

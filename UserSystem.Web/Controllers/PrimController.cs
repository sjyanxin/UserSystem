using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UserSystem.Web.Controllers
{
    public class PrimController : Controller
    {
        //
        // GET: /Prim/

        public ActionResult Index()
        {
            string json = string.Empty;
            return Content(json);
        }

    }
}

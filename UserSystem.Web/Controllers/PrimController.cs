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
           string path= Server.MapPath("./../Content/tree.json");
          
            string json =  System.IO.File.ReadAllText(path);
            return Content(json);
        }

      

    }
}

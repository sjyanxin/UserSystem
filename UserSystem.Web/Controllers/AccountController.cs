using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UserSystem.Web.Controllers
{
    public class AccountController : Controller
    {
        //
        // GET: /Account/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            return View();
        }

        UserSystem.Business.UserManager userManager = new Business.UserManager();
        public ActionResult DoLogin()
        {
            int res = 0;

            string name = Request.Form["name"];
            string pwd=Request.Form["pwd"];
            if (string.IsNullOrEmpty(name))
            {
                res= - 1;
            }
           var userlist= userManager.GetModelList(string.Format(" name='{0}' and pwd='{1}'",name,pwd));
           if (userlist.Count == 0)
           {
               res = -2;
           }
           else
           {
               Session["user"] = userlist[0];
           }
          
            return Content(res.ToString());
        }

        public ActionResult DoLogout()
        {
            int res=1;
            try
            {
                Session.RemoveAll();
                Session.Clear();
                res = 1;
            }
            catch (Exception )
            {
                res = 0;
            }

            return Content(res.ToString()); ;
        }
        
    }
}

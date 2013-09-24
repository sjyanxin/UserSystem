using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using UserSystem.Common;

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
            string pwd = Request.Form["pwd"];
            if (string.IsNullOrEmpty(name))
            {
                res = -1;
            }
            var userlist = userManager.GetModelList(string.Format(" name='{0}' and pwd='{1}'", name, pwd));
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
            int res = 1;
            try
            {
                Session.RemoveAll();
                Session.Clear();
                res = 1;
            }
            catch (Exception)
            {
                res = 0;
            }

            return Content(res.ToString()); ;
        }

        public ActionResult ReadUser()
        {

            int pageNum = Convert.ToInt32(Request.Form["page"]);
            int rowNum = Convert.ToInt32(Request.Form["rows"]);
            int count = userManager.GetAllList().Tables[0].Rows.Count;
            var dt = userManager.GetAllList(pageNum, rowNum).Tables[0];
            return Content(JsonHelper.ToJson(dt, count));
        }


        public ActionResult AddUser()
        {
            int res = 0;
            string name = Request.Form["name"];
            string pwd = Request.Form["pwd"];

            res = userManager.Add(new Model.UserManager() { Name = name, Pwd = pwd, AddTime = DateTime.Now.ToString() });

            return Content(res.ToString()); ;
        }

    }
}

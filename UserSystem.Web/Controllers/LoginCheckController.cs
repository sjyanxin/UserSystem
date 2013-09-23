using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UserSystem.Web.Controllers
{
    public class LoginCheckController :FilterAttribute,IActionFilter
    {
        
        public void OnActionExecuted(ActionExecutedContext filterContext)
        {
           
        }

        public void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (filterContext.HttpContext.Session["user"]==null)
            {
                filterContext.Result = new RedirectResult("/account/login");
            }
        }
    }
}

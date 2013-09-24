using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;
using System.Data;

namespace UserSystem.Common
{
    public static class JsonHelper
    {
        public static string ToJson(object obj)
        {
            JsonSerializerSettings setting = new JsonSerializerSettings();
            setting.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;
            return JsonConvert.SerializeObject(obj);
        }

        public static string ToJson(DataTable dt,int record)
        {
            return "{\"total\":\""+record+"\",\"rows\":"+ToJson(dt)+"}" ;         
        }

    }
}

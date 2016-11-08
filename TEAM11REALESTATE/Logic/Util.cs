using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace TEAM11REALESTATE.Logic
{
    public class Util
    {
        public static void ShowMessage(string message, Type type, Page page)
        {
            page.ClientScript.RegisterStartupScript(type, "myalert", "alert('" + message + "');", true);
        }
    }
}
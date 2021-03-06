﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using TEAM11REALESTATE.Logic;
using TEAM11REALESTATE.Models;
namespace TEAM11REALESTATE
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            Database.SetInitializer<RealEstateModel>(new RealEstateDataInitializer());
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
           // RoleAction role = new RoleAction();
           // role.CreateAdmin();
        }
    }
}
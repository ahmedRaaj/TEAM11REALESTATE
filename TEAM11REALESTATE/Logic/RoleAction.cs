using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TEAM11REALESTATE.Models;
namespace TEAM11REALESTATE.Logic
{
    public class RoleAction
    {
        internal void CreateAdmin()
        {
            RealEstateModel db = new RealEstateModel();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;

           var roleStore = new RoleStore<IdentityRole>(db);
           var roleMgr = new RoleManager<IdentityRole>(roleStore);
            if (!roleMgr.RoleExists("Administrator"))
            {
               IdRoleResult = roleMgr.Create(new IdentityRole("Administrator"));
            }

            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(db));

            var appUser = new ApplicationUser()
            {
                UserName = "admin",
            };
            IdUserResult = userMgr.Create(appUser, "admin");

            if (IdUserResult.Succeeded)
            {
                IdUserResult = userMgr.AddToRole(appUser.Id, "Administrator");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TEAM11REALESTATE.Models;

namespace TEAM11REALESTATE
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Address a = new Address();
            RealEstateModel ct = new RealEstateModel();
            a.Email = "fjfj";
            ct.Addresses.Add(a);
            ct.SaveChanges();
        }
    }
}
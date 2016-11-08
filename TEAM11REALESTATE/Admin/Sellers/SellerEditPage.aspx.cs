using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TEAM11REALESTATE.Models;


namespace TEAM11REALESTATE.SellerPages
{
    public partial class SellerEditPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SellerPages/SellerMainPage.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TEAM11REALESTATE.SellerPages
{
    public partial class SellerDeletePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("SellerMainPage.aspx");
        }
    }
}
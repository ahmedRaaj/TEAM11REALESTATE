using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TEAM11REALESTATE.Models;

namespace TEAM11REALESTATE.Admin
{
    public partial class Agents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RealEstateModel ctx = new RealEstateModel();
            GridViewAgents.DataSource = ctx.Properties.ToList();
            GridViewAgents.DataBind();
        }
    }
}
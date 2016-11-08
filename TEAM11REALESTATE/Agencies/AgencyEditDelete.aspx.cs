using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TEAM11REALESTATE.Models;

namespace TEAM11REALESTATE.Agent_s_Agencies
{
    public partial class AgencyEditDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RealEstateModel context = new Models.RealEstateModel();
            Agency agnc = context.Agencies.Where(x => x.AgencyName.Equals(tbx_AgencyName.Text)).First();
            tbx_AgencyName.Text = agnc.AgencyName;
            tbx_UnitNumber.Text = agnc.Address.UnitNumber;
            tbx_BlockNumber.Text = agnc.Address.BlockNumber;
            tbx_StreetName.Text = agnc.Address.StreetName;
            tbx_PostalCode.Text = agnc.Address.PostalCode;
            tbx_Mobile.Text = agnc.Address.Mobile;
            tbx_OfficePh.Text = agnc.Address.Phone;
            tbx_Website.Text = agnc.Address.Website;
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Clear_Click(object sender, EventArgs e)
        {

        }
    }
}
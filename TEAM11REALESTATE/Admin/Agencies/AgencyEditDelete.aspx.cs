using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TEAM11REALESTATE.Models;

namespace TEAM11REALESTATE.Agencies
{
    public partial class AgencyEditDelete : System.Web.UI.Page
    {
        RealEstateModel context = new Models.RealEstateModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            Agency agnc = context.Agencies.Where(x => x.AgencyName.Equals(tbx_AgencyName.Text)).FirstOrDefault();
            if(agnc != null)
            {
                tbx_AgencyName.Text = agnc.AgencyName;
                tbx_UnitNumber.Text = agnc.Address.UnitNumber;
                tbx_BlockNumber.Text = agnc.Address.BlockNumber;
                tbx_StreetName.Text = agnc.Address.StreetName;
                tbx_PostalCode.Text = agnc.Address.PostalCode;
                tbx_Mobile.Text = agnc.Address.Mobile;
                tbx_OfficePh.Text = agnc.Address.Phone;
                tbx_Website.Text = agnc.Address.Website;
            }
            

        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            Agency agnc = context.Agencies.Where(x => x.AgencyName.Equals(tbx_AgencyName.Text)).First();
            agnc.Address.UnitNumber = tbx_UnitNumber.Text;
            agnc.Address.BlockNumber = tbx_BlockNumber.Text;
            agnc.Address.StreetName = tbx_StreetName.Text;
            agnc.Address.PostalCode = tbx_PostalCode.Text;
            agnc.Address.Email = tbx_Email.Text;
            agnc.Address.Mobile = tbx_Mobile.Text;
            agnc.Address.Phone = tbx_OfficePh.Text;
            agnc.Address.Website = tbx_Website.Text;

            context.Agencies.Add(agnc);
            context.SaveChanges();
        }
    }
}
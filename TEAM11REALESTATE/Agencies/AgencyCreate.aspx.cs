using System;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TEAM11REALESTATE.Models;

namespace TEAM11REALESTATE
{
    public partial class Agencies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            RealEstateModel context = new RealEstateModel();

            try
            {
                Address addss = new Address();
                addss.UnitNumber = tbx_UnitNumber.Text;
                addss.BlockNumber = tbx_BlockNumber.Text;
                addss.StreetName = tbx_StreetName.Text;
                addss.PostalCode = tbx_PostalCode.Text;
                addss.Email = tbx_Email.Text;
                addss.Mobile = tbx_Mobile.Text;
                addss.Phone = tbx_OfficePh.Text;
                addss.Website = tbx_Website.Text;
                context.Addresses.Add(addss);
                context.SaveChanges();


                Agency agenc = new Agency();
                agenc.AgencyName = tbx_AgencyName.Text;
                agenc.AddressID = addss.AddressID;

                //tried
                //string v = context.Addresses.Where(x => x.PostalCode.Equals(tbx_PostalCode.Text)).Select(x => x.AddressID).ToString();
                //agenc.AddressID = Convert.ToInt32(v);
                
                //agenc.Address.UnitNumber = addss.UnitNumber;
                //agenc.Address.BlockNumber = addss.BlockNumber;
                //agenc.Address.StreetName = addss.StreetName;
                //agenc.Address.PostalCode = addss.PostalCode;

                //agenc.Address.Email = addss.Email;
                //agenc.Address.Mobile = addss.Mobile;
                //agenc.Address.Phone = addss.Phone;
                //agenc.Address.Website = addss.Website;

                context.Agencies.Add(agenc);
                context.SaveChanges();
            }
            catch
            {

            }
        }
        
    }
}
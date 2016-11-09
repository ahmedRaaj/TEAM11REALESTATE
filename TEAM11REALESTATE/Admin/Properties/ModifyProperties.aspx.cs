using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TEAM11REALESTATE.Models;

namespace TEAM11REALESTATE.Propertiespages
{
    public partial class ModifyProperties : System.Web.UI.Page
    {
        RealEstateModel db = new RealEstateModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            var data = db.PropertyTypes.Select(x => new { x.PropertyTypeID, display = x.TypeName + "-" + x.LeasePriod }).ToList();
            DropDownList3.DataSource = data;
            DropDownList3.DataTextField = "display";
            DropDownList3.DataValueField = "PropertyTypeID";
            DropDownList3.DataBind();

        }
        protected void Button3_Click(object sender, EventArgs e)   //save button
        {
            Property prop = db.Properties.Where(x => x.ProperName == DropDownList1.Text.ToString()).First();
            prop.PricePSF = Convert.ToInt32(TextBox8.Text);
            prop.SizePSF = Convert.ToInt32(TextBox7.Text);
            prop.Description = TextBox6.Text;
            prop.DistrictID = Convert.ToInt32(DropDownList2.SelectedValue);
            db.SaveChanges();

            

            //Property pty = db.Properties.Where(x => x.ProperName==DropDownList3.Text.ToString()).First();

            //Address addss = db.Addresses.Where(x => x.AddressID == pty.AddressID).First();
            //District dstt = db.Districts.Where(x => x.DistrictID == pty.DistrictID).First();
            //PropertyType ptype = db.PropertyTypes.Where(x => x.PropertyTypeID == pty.PropertyTypeID).First();
            //Agent agt = db.Agents.Where(x => x.AgencyID == pty.AgentID).First();
            //Models.Seller sll = db.Sellers.Where(x => x.SellerID == pty.SellerID).First();

            //Property prop = new Property();
            //prop.PropertyID = pty.PropertyID;
            //prop.ProperName = DropDownList3.SelectedValue;
            //prop.Rooms = "";
            //var addressList = db.Addresses.Where(x => x.AddressID == addss.AddressID).ToList();
            //int addressID = addressList.IndexOf(addss);

            //prop.AddressID = addressID;

            //var districtList = db.Districts.Where(x => x.DistrictName == DropDownList2.Text).ToList();
            //int dsttID = districtList.IndexOf(dstt);

            //prop.DistrictID = dsttID;

            //var ptypeList = db.PropertyTypes.Where(x => x.PropertyTypeID == ptype.PropertyTypeID).ToList();
            //int ptypeID = ptypeList.IndexOf(ptype);

            //prop.PropertyTypeID = ptypeID;

            ////var agentList = db.Agents.Where(x => x.AgencyID == agt.AgencyID).ToList();
            ////int agentID = agentList.IndexOf(agt);

            ////prop.AgentID = agentID;

            ////var sellerList = db.Sellers.Where(x => x.SellerID == sll.SellerID).ToList();
            ////int sellerID = sellerList.IndexOf(sll);

            ////prop.SellerID = sellerID;

            //db.SaveChanges();

        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            Property myProperties = new Property();

            List<Property> proList = new List<Property>();
            //proList=db.Properties.ToList();
            Property prty = new Property();
            prty = db.Properties.Where(x => x.ProperName.ToString() == DropDownList1.Text.ToString()).First();

            TextBox6.Text = prty.Description; 

            //PROPERTYTYPE:   property type,   ADDRESSES: unit number, blk num, street name,postal code,    DISTRICTS: districtname
            Address addr = new Address();
            addr = db.Addresses.Where(x => x.AddressID == prty.AddressID).First();
            TextBox2.Text = addr.UnitNumber;
            TextBox3.Text = addr.BlockNumber;
            TextBox4.Text = addr.StreetName;
            TextBox5.Text = addr.PostalCode;
            TextBox7.Text = prty.SizePSF.ToString();
            TextBox8.Text = prty.PricePSF.ToString();

            //PropertyType prtp = new PropertyType();
            //prtp = db.PropertyTypes.Where(x => x.PropertyTypeID == prty.PropertyTypeID).First();
            //DropDownList3.Text = prtp.TypeName.ToString();
            //ddllease.Text = prtp.LeasePriod.ToString();
            var data = db.PropertyTypes.Where(x => x.PropertyTypeID == prty.PropertyTypeID).Select(x => new { x.PropertyTypeID, display = x.TypeName + "-" + x.LeasePriod }).ToList();
            DropDownList3.DataSource = data;
            DropDownList3.DataTextField = "display";
            DropDownList3.DataValueField = "PropertyTypeID";
            DropDownList3.DataBind();

            District district = new District();
            district = db.Districts.Where(x => x.DistrictID == prty.DistrictID).First();
            DropDownList2.Text = prty.DistrictID.ToString();
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/Properties/CreatePoperties.aspx");
        }
    }
}
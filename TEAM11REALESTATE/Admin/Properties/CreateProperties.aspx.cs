using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TEAM11REALESTATE.Logic;
using TEAM11REALESTATE.Models;

namespace TEAM11REALESTATE.Admin.Properties
{
    public partial class CreateProperties : System.Web.UI.Page
    {
        DateTime relaseDate,topDate;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitPropery_Click(object sender, EventArgs e)
        {
   

            RealEstateModel db = new RealEstateModel();

                Property p = new Property();
                Address a = new Address();
                a.PostalCode = txtPostCode.Text;
                a.BlockNumber = txtBlockNumber.Text;
                a.StreetName = txtStreetName.Text;
                a.UnitNumber = txtUnitNumber.Text;
                db.Addresses.Add(a);
                db.SaveChanges();

                p.ProperName = txtPropertyName.Text;
                p.Description = txtaDescription.Text;
                p.PricePSF = int.Parse(txtPricePSF.Text);
                p.Rooms = txtRooms.Text;
                p.SizePSF = int.Parse(txtSizePSF.Text);
                p.SellerID = int.Parse(ddlSeller.SelectedValue);
                p.AgentID = int.Parse(ddlAgent.SelectedValue);
                p.DistrictID = int.Parse(ddlDistrict.SelectedValue);
                p.PropertyTopDate = DateTime.Today;
                p.LeaseStartDate = DateTime.Today;
                p.PropertyTypeID = int.Parse(ddlPropertyType.SelectedValue);
                p.AddressID = a.AddressID;

                db.Properties.Add(p);
                db.SaveChanges();

                PropertyImage image = new PropertyImage();
                image.PropertyID = p.PropertyID;
                db.PropertyImages.Add(image);
                db.SaveChanges();
              
             
                image.PropertyImageName = image.PropertyImageID + ".jpg";
                FileUpload1.SaveAs(Server.MapPath("~/Images/Properties/") + image.PropertyImageName);
                Util.ShowMessage("Address ID: " + p.AddressID + " " + image.PropertyImageID,this.GetType(),this );
                db.SaveChanges();

           
        }

        public IQueryable<PropertyType> GetPropertyTypes()
        {
            RealEstateModel db = new RealEstateModel();
            return  db.PropertyTypes;
        }
        public IQueryable<TEAM11REALESTATE.Models.Seller> GetSellers()
        {
            RealEstateModel db = new RealEstateModel();
            return db.Sellers;
        }
        public IQueryable<Agent> GetAgents()
        {
            RealEstateModel db = new RealEstateModel();
            return db.Agents;
        }
        public IQueryable<District> GetDistricts()
        {
            RealEstateModel db = new RealEstateModel();
            return db.Districts;
        }
        protected void cldReleaseDate_SelectionChanged(object sender, EventArgs e)
        {
          //   relaseDate = cldReleaseDate.SelectedDate;
        }

        protected void cldTopDate_SelectionChanged(object sender, EventArgs e)
        {
          // topDate = cldTopDate.SelectedDate;
        }
    }
}
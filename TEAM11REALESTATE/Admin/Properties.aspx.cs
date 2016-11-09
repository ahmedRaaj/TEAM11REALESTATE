using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Providers.Entities;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;
using TEAM11REALESTATE.Models;

namespace TEAM11REALESTATE.Admin
{
    public partial class Properties : System.Web.UI.Page
    {
        RealEstateModel db = new RealEstateModel();
       PropertyImage img = new PropertyImage();
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
            var data = db.PropertyTypes.Select(s => new {s.PropertyTypeID, Display = s.TypeName + " - " + s.LeasePriod }).ToList();
            ddlPropertyType.DataSource = data;
            ddlPropertyType.DataTextField = "Display";
            ddlPropertyType.DataValueField = "PropertyTypeID";
            ddlPropertyType.DataBind();

            ImageCall();
        }

        protected void ImageCall()
        {
            int filename = db.Properties.Select(s => s.PropertyID).ToList().Last();
            if (IsPostBack && imagfileupload.PostedFile != null)
            {
                if (imagfileupload.PostedFile.FileName.Length > 0)
                {
                    string extention = imagfileupload.PostedFile.ContentType;
                   
                    imagfileupload.SaveAs(Server.MapPath("~/Images/Properties/") + filename+1+".jpg");
                    Session["url"]= "~/Images/Properties/" + filename+1+".jpg";
                    Image1.ImageUrl = Session["url"].ToString();
                   Session["FilePath"] = "~/Images/Properties/" + filename+1+".jpg";
                   
                

                }
            }
           
            




        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Property newProperty = new Property();
            Address newAddress=new Address();
           
            newProperty.ProperName = txtPropertyName.Text;
            newProperty.Address = new Address
            {
                UnitNumber = txtUnitNumber.Text,
                BlockNumber = txtBlockNumber.Text,
                StreetName = txtStreetName.Text,
                PostalCode = txtPostCode.Text
            };
            newProperty.Rooms = txtRooms.Text;
            newProperty.PricePSF = Convert.ToDouble(txtPricePSF.Text);
            newProperty.SizePSF = Convert.ToInt32(txtSizePSF.Text);
            newProperty.PropertyTopDate = Convert.ToDateTime(cldTopDate.SelectedDate);
            newProperty.LeaseStartDate = Convert.ToDateTime(cldReleaseDate.SelectedDate);
            newProperty.PropertyTypeID = Convert.ToInt32(ddlPropertyType.SelectedValue);
            newProperty.DistrictID = Convert.ToInt32(ddlDistrict.SelectedValue);
            newProperty.Description = txtaDescription.Text;
            db.Properties.Add(newProperty);
            img.PropertyID = newProperty.PropertyID;
            img.PropertyImageName = Session["url"].ToString();
            db.PropertyImages.Add(img);
            db.SaveChanges();
           
         

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Agencies.aspx");
            


        }

       

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            ImageCall();
        }
    }
}
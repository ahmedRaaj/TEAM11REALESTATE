using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TEAM11REALESTATE.Models;


namespace TEAM11REALESTATE.Agents
{
    public partial class AgentsView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }              
        protected void Button1_Click1(object sender, EventArgs e)
        {
            RealEstateModel db = new RealEstateModel();
            Agent a = new Agent();
            a.CEANumber = txtCEANumber.Text;
            a.Email = txtEmail.Text;
            a.AgencyID = int.Parse( ddlAgencyID.SelectedItem.Value);
            a.SalesPersonName = txtSalesPersonName.Text;
            a.SalesPersonMobileNumber = txtSalesPersonMobileNumber.Text;
            db.Agents.Add(a);
            db.SaveChanges();

            if (FileUpload1.HasFile)
            {  
                try
                {                   
                    FileUpload1.SaveAs(Server.MapPath("~/Images/Agents/") + a.AgentID+".jpg");                   
                    Label3.Text = "Upload Status:File Uploaded Successfully.";                                    
                }
                catch(Exception ex)
                {
                    Label3.Text = "Upload Status:File could not be uploaded."+
                        "The following error occured:"+ex.Message;
                }   
            }
            a.ProfilePicture = a.AgentID + ".jpg";
            db.SaveChanges();
           // SqlDataSource1.Insert();
        }

        
    }
}
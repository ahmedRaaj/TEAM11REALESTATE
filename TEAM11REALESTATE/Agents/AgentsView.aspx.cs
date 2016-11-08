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
            if(FileUpload1.HasFile)
            {
                try
                {
                    string filename = FileUpload1.FileName;
                    FileUpload1.SaveAs(Server.MapPath("~/Agents/") + filename);
                    Label3.Text = "Upload Status:File Uploaded Successfully.";
                }
                catch(Exception ex)
                {
                    Label3.Text = "Upload Status:File could not be uploaded."+
                        "The following error occured:"+ex.Message;
                }
            }
            SqlDataSource1.Insert();
        }
    }
}
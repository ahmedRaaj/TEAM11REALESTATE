using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TEAM11REALESTATE.SellerPages
{
    public partial class SellerAddPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=SA43TEAM11REALESTATE;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand() ;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = ("INSERT INTO Sellers (SellerName, AddressID) VALUES ('" + tbName.Text.ToString() + "'," + tbAddrID.Text.ToString() + ")");
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("~/SellerPages/SellerMainPage.aspx");
        }

        protected void btnInsertAddr_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = ("INSERT INTO  Addresses (UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone) values('" 
                + tbUnitnum.Text.ToString()
                +"','"+tbblknum.Text.ToString()
                +"','"+tbStreet.Text.ToString()
                +"','"+tbPostcode.Text.ToString()
                +"','"+tbEmail.Text.ToString()
                +"','"+tbMobile.Text.ToString()
                +"','"+tbPhone.Text.ToString()+"')");
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/SellerPages/SellerAddPage.aspx");
        }
    }
}
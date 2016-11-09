using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using TEAM11REALESTATE.Models;

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
            //con.Open();
            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = ("INSERT INTO  Addresses (UnitNumber,BlockNumber,StreetName,PostalCode,Email,Mobile,Phone) values('"
            //    + tbUnitnum.Text.ToString()
            //    + "','" + tbblknum.Text.ToString()
            //    + "','" + tbStreet.Text.ToString()
            //    + "','" + tbPostcode.Text.ToString()
            //    + "','" + tbEmail.Text.ToString()
            //    + "','" + tbMobile.Text.ToString()
            //    + "','" + tbPhone.Text.ToString() + "')");
            //cmd.ExecuteNonQuery();
            //con.Close();


            RealEstateModel ctx = new RealEstateModel();
            Address addr = new Address();
            addr.UnitNumber = tbUnitnum.Text.ToString();
            addr.BlockNumber = tbblknum.Text.ToString();
            addr.StreetName = tbStreet.Text.ToString();
            addr.PostalCode =tbPostcode.Text.ToString();
            addr.Email = tbEmail.Text.ToString();
            addr.Mobile = tbMobile.Text.ToString();
            addr.Phone = tbPhone.Text.ToString();
            ctx.Addresses.Add(addr);

            ctx.SaveChanges();


            List<Address> AddrList = ctx.Addresses.ToList();
            AddrList.Count().ToString();
            Address LastAddr = new Address();
            LastAddr = AddrList.Last();


            con.Open();
            SqlCommand cmd1 = con.CreateCommand();

            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = ("INSERT INTO Sellers (SellerName, AddressID) VALUES ('" + tbName.Text.ToString() + "'," + LastAddr.AddressID.ToString() + ")");
            cmd1.ExecuteNonQuery();
            con.Close();


            Response.Redirect("SellerMainPage.aspx");
        }



        protected void MainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("SellerMainPage.aspx");
        }
    }
}
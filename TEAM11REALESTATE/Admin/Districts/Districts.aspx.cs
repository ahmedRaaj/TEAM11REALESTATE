using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TEAM11REALESTATE.Logic;
using TEAM11REALESTATE.Models;

namespace TEAM11REALESTATE.Admin
{
    public partial class Districts : System.Web.UI.Page
    {
        RealEstateModel model = new RealEstateModel();        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<District> dists = model.Districts.OrderBy(x=>x.DistrictCode).ToList<District>();
                List<String> code = new List<string>();

                foreach (District dist in dists)
                {
                    string dCode = dist.DistrictCode.ToString();
                    code.Add(dCode);
                }

                ddlDistrictCode.DataSource = code;
                ddlDistrictCode.DataBind();
                ddlDistrictCode.Items.Insert(0, new ListItem(string.Empty, string.Empty));
                ddlDistrictCode.SelectedIndex = 0;
            }
        }

        protected void ddlDistrictCode_SelectedIndexChanged(object sender, EventArgs e)
        {
            District district = model.Districts.Where(x => x.DistrictCode == ddlDistrictCode.Text).FirstOrDefault<District>();

            txtDistrictCode.Text = district.DistrictCode;
            txtDistrictName.Text = district.DistrictName;
            txtDistrictName.DataBind();

            grvAreas.DataSource = null;
            grvAreas.DataBind();

        }

        protected void btnSaveDistrict_Click(object sender, EventArgs e)
        {
            District district;

            if (ddlDistrictCode.SelectedIndex != 0)
            {
                district = model.Districts.Where(x => x.DistrictCode == ddlDistrictCode.Text).FirstOrDefault<District>();

                district.DistrictCode = txtDistrictCode.Text;
                district.DistrictName = txtDistrictName.Text;
                model.SaveChanges();
            }
            else
            {
                district = new District();

                district.DistrictCode = txtDistrictCode.Text;
                district.DistrictName = txtDistrictName.Text;
                model.Districts.Add(district);
                model.SaveChanges();
            }

            List<District> dists = model.Districts.OrderBy(x => x.DistrictCode).ToList<District>();
            List<String> code = new List<string>();

            foreach (District dist in dists)
            {
                string dCode = dist.DistrictCode.ToString();
                code.Add(dCode);
            }

            ddlDistrictCode.DataSource = code;
            ddlDistrictCode.DataBind();

            district = model.Districts.Where(x => x.DistrictCode == ddlDistrictCode.Text).FirstOrDefault<District>();

            txtDistrictCode.Text = district.DistrictCode;
            txtDistrictName.Text = district.DistrictName;
            txtDistrictName.DataBind();
            ddlDistrictCode.Items.Insert(0, new ListItem(string.Empty, string.Empty));
            ddlDistrictCode.SelectedIndex = 0;
        }

        protected void btnInsertDistrict_Click(object sender, EventArgs e)
        {
            ddlDistrictCode.SelectedIndex = 0;
            txtDistrictCode.Text = "";
            txtDistrictName.Text = "";
            txtDistrictCode.Focus();
        }

        protected void btnDeleteDistrict_Click(object sender, EventArgs e)
        {
            District district = model.Districts.Where(x => x.DistrictCode == ddlDistrictCode.Text).FirstOrDefault();
            int districtID = district.DistrictID;

            Area area = model.Areas.Where(a => a.DistrictID == districtID).FirstOrDefault();

            if (area==null)
            {
                model.Districts.Remove(district);
                model.SaveChanges();
            }
            else
            {
                string errorMessage = string.Format("Areas exist for this District - delete areas first.");
                // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                Util.ShowMessage(errorMessage, this.GetType(), this);
            }
        }

        protected void btnFindAreas_Click(object sender, EventArgs e)
        {
            if (ddlDistrictCode.SelectedIndex != 0)
            {
                District district = model.Districts.Where(x => x.DistrictCode == ddlDistrictCode.Text).FirstOrDefault();
                int districtID = district.DistrictID;

                grvAreas.DataSource = model.Areas.Where(x => x.DistrictID == districtID).OrderBy(x => x.AreaName).Select(x=>x).ToList();
                grvAreas.DataBind();
            }
            else
            {
                string errorMessage = string.Format("Please select a District Code in the Drop-Down-List");
                // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                Util.ShowMessage(errorMessage, this.GetType(), this);
            }
        }

        protected void btnSaveArea_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((txtNewAreaName.Text == null) || (txtNewAreaName.Text == ""))
            {
                string errorMessage = string.Format("You need to enter a new Area Name for insertion.");
                Util.ShowMessage(errorMessage, this.GetType(), this);
                txtNewAreaName.Focus();
            }
            else
            {
                District district = model.Districts.Where(x => x.DistrictCode == ddlDistrictCode.Text).FirstOrDefault();
                int districtID = district.DistrictID;

                Area area = new Area();
                area.AreaName = txtNewAreaName.Text;
                area.DistrictID = districtID;

                model.Areas.Add(area);
                model.SaveChanges();

                grvAreas.DataSource = model.Areas.Where(x => x.DistrictID == districtID).OrderBy(x => x.AreaName).Select(x => x).ToList();
                grvAreas.DataBind();
            }
        }

        protected void grvAreas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (grvAreas.SelectedIndex == 0)
            {
                string errorMessage = string.Format("Please select an Area in Grid View for deletion.");
                // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable + "');", true);
                Util.ShowMessage(errorMessage, this.GetType(), this);
            }
            else
            {
                string txtAreaID = grvAreas.SelectedRow.Cells[1].Text;
                int areaID = Convert.ToInt32(txtAreaID);

                Area area = model.Areas.Where(a => a.AreaID == areaID).FirstOrDefault();

                model.Areas.Remove(area);
                model.SaveChanges();

                District district = model.Districts.Where(x => x.DistrictCode == ddlDistrictCode.Text).FirstOrDefault();
                int districtID = district.DistrictID;
                grvAreas.DataSource = model.Areas.Where(x => x.DistrictID == districtID).OrderBy(x => x.AreaName).Select(x => x).ToList();
                grvAreas.DataBind();
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TEAM11REALESTATE.Models;

namespace TEAM11REALESTATE
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //RealEstateModel ct = new RealEstateModel();
            //LBPropertyType.DataSource = ct.PropertyTypes;
            //LBPropertyType.DataBind();
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<TEAM11REALESTATE.Models.Property> GetProperties()
        {
            IQueryable<Property> q;
            RealEstateModel ct = new RealEstateModel();
          
               q = ct.Properties;
           
            return q;
        }

        public IQueryable<PropertyType> GetPropertyTypes()
        {
            RealEstateModel ct = new RealEstateModel();
            IQueryable<PropertyType> q;
            q = ct.PropertyTypes;

            return q;
        }
    }

   
}
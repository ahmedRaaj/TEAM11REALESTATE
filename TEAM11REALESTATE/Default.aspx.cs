using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
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
        public IQueryable<Property> GetProperties([Control("DDPropertyType")] string  type,
                                                  [Control("DropDownMinPrice")] string minPrice,
                                                  [Control("DropDownMaxPrice")] string maxPrice,
                                                  [Control("DropDownRoom")] string rooms)
        {
            IQueryable<Property> q;
            RealEstateModel ct = new RealEstateModel();
          
               q = ct.Properties;

            if (DDPropertyType.Text != null && !DDPropertyType.Text.Equals("Any Type") && type != null)
            {
                // ct.PropertyTypes.Where(t=>t.)
                q = q.Where(p => p.PropertyType.TypeName == type);
            }

            if (DropDownMinPrice.Text != null && !DropDownMinPrice.Text.Equals("Any Price") && minPrice != null)
            {
                // ct.PropertyTypes.Where(t=>t.)
                int price = int.Parse(minPrice, NumberStyles.Currency);
                q = q.Where(p => p.PricePSF*p.SizePSF >  price);
            }

            if (DropDownMaxPrice.Text != null && !DropDownMaxPrice.Text.Equals("Any Price") && maxPrice != null)
            {
                // ct.PropertyTypes.Where(t=>t.)
                int price = int.Parse(maxPrice, NumberStyles.Currency);
                q = q.Where(p => p.PricePSF * p.SizePSF < price);
            }

            if (DropDownRoom.Text != null && !DropDownRoom.Text.Equals("Any") && rooms != null)
            {
                q = q.Where(p => p.Rooms.Equals(rooms));
            }



            return q;
        }

        public IQueryable<PropertyType> GetPropertyTypes()
        {
            RealEstateModel ct = new RealEstateModel();
            IQueryable<PropertyType> q;
            q = ct.PropertyTypes;
            List<PropertyType> types =   q.ToList();
           

            return q;
        }
        public List<String> GetMinPrices()
        {
            return new List<string>() { "Any Price", String.Format("{0:c}",50000), String.Format("{0:c}", 100000) };
        }

        public List<String> GetMaxPrices()
        {
            return new List<string>() { "Any Price", String.Format("{0:c}", 250000), String.Format("{0:c}", 3000000) };
        }

        public List<string> GetRooms()
        {
            return new List<string>() { "Any","1","2","3","4","5"};
        }


        protected void ButtonFilter_Click(object sender, EventArgs e)
        {
            //RealEstateModel ct = new RealEstateModel();
            //Response.Redirect("Default.aspx");
           
        }
    }

  
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using TEAM11REALESTATE.Models;

namespace TEAM11REALESTATE
{
    public partial class PropertyDetails : System.Web.UI.Page
    {
        private int? propertyID = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The id parameter should match the DataKeyNames value set on the control
        // or be decorated with a value provider attribute, e.g. [QueryString]int id
        public IQueryable<Property> GetProduct([QueryString("PropertyID")]int? id)
        {
            var db = new RealEstateModel();
            IQueryable<Property> q = db.Properties;
            if(id.HasValue && id > 0)
            {
                propertyID = id  ;
                q = q.Where(p => p.PropertyID == id);
            }
            else
            {
                q = null;
            }
            return q;
        }

        public IEnumerable<TEAM11REALESTATE.Models.PropertyImage> RepeaterPropertyImages_GetData()
        {
            var db = new RealEstateModel();
            IQueryable<PropertyImage> q = null;
            if (propertyID.HasValue)
            {
               // int temp = (int)propertyID;
               q = db.PropertyImages.Where(i => i.PropertyID == (int)propertyID);
            }
            return q;
        }
    }
}
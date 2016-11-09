using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TEAM11REALESTATE.Models
{
    public class PropertyImage
    {
        public int PropertyImageID { get; set; }
        public string PropertyImageName { get; set; }
        public int PropertyID { get; set; }
        public virtual Property Property { get; set; }

        public string GetPropertyImageWithPath()
        {
            return "Images/Properties/" + PropertyImageName;
        }
    }
}
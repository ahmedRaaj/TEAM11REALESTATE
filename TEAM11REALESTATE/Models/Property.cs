namespace TEAM11REALESTATE.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Property
    {
        public int PropertyID { get; set; }

        [StringLength(50)]
        public string ProperName { get; set; }

        [StringLength(20)]
        public string Rooms { get; set; }

        [Column(TypeName = "date")]
        public DateTime? PropertyTopDate { get; set; }

        public double? PricePSF { get; set; }

        public int? SizePSF { get; set; }

        [StringLength(150)]
        public string Description { get; set; }

        public int? DistrictID { get; set; }

        public int? PropertyTypeID { get; set; }

        public int? AgentID { get; set; }

        public int? SellerID { get; set; }

        public int? AddressID { get; set; }

        [Column(TypeName = "date")]
        public DateTime? LeaseStartDate { get; set; }

        public virtual Address Address { get; set; }

        public virtual Agent Agent { get; set; }

        public virtual District District { get; set; }

        public virtual PropertyType PropertyType { get; set; }

        public virtual Seller Seller { get; set; }

        public virtual ICollection<PropertyImage> PropertyImages { get; set; }
        
        public string PropertyImageWithPath
        {
            private set { }
            get
            {
                if (PropertyImages != null)
                {
                    PropertyImage fstImg = new PropertyImage();
                    foreach (PropertyImage firstImage in PropertyImages)
                    {
                        fstImg = firstImage;
                        break;
                    }
                    return fstImg.GetPropertyImageWithPath();
                }else
                {
                    return "~/Images/noimage.jpg";
                }
            }
              //  return "~/Images/Agents/" + "1.jpg";
            }
        }
    }

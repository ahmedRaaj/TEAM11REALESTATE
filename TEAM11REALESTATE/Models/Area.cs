namespace TEAM11REALESTATE.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Area
    {
        public int AreaID { get; set; }

        [StringLength(50)]
        public string AreaName { get; set; }

        public int? DistrictID { get; set; }

        public virtual District District { get; set; }
    }
}

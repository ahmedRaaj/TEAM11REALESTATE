namespace TEAM11REALESTATE.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Agent
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Agent()
        {
            Properties = new HashSet<Property>();
        }

        public int AgentID { get; set; }

        [StringLength(50)]
        public string CEANumber { get; set; }

        public int AgencyID { get; set; }

        [StringLength(50)]
        public string SalesPersonName { get; set; }

        [StringLength(50)]
        public string SalesPersonMobileNumber { get; set; }

        [StringLength(50)]
        public string Email { get; set; }

        [StringLength(50)]
        public string ProfilePicture { get; set; }

        public virtual Agency Agency { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Property> Properties { get; set; }

    }
}

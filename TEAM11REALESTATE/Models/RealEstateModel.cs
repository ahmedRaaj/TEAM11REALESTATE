namespace TEAM11REALESTATE.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class RealEstateModel : DbContext
    {
        public RealEstateModel()
            : base("name=RealEstateModel")
        {
        }

        public virtual DbSet<Address> Addresses { get; set; }
        public virtual DbSet<Agency> Agencies { get; set; }
        public virtual DbSet<Agent> Agents { get; set; }
        public virtual DbSet<Area> Areas { get; set; }
        public virtual DbSet<District> Districts { get; set; }
        public virtual DbSet<Property> Properties { get; set; }
        public virtual DbSet<PropertyType> PropertyTypes { get; set; }
        public virtual DbSet<Seller> Sellers { get; set; }
        public virtual DbSet<PropertyImage> PropertyImages { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Address>()
                .Property(e => e.UnitNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Address>()
                .Property(e => e.BlockNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Address>()
                .Property(e => e.StreetName)
                .IsUnicode(false);

            modelBuilder.Entity<Address>()
                .Property(e => e.PostalCode)
                .IsUnicode(false);

            modelBuilder.Entity<Address>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<Address>()
                .Property(e => e.Mobile)
                .IsUnicode(false);

            modelBuilder.Entity<Address>()
                .Property(e => e.Phone)
                .IsUnicode(false);

            modelBuilder.Entity<Address>()
                .Property(e => e.Website)
                .IsUnicode(false);

            modelBuilder.Entity<Agency>()
                .Property(e => e.AgencyName)
                .IsUnicode(false);

            modelBuilder.Entity<Agency>()
                .HasMany(e => e.Agents)
                .WithRequired(e => e.Agency)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Agent>()
                .Property(e => e.CEANumber)
                .IsUnicode(false);

            modelBuilder.Entity<Agent>()
                .Property(e => e.SalesPersonName)
                .IsUnicode(false);

            modelBuilder.Entity<Agent>()
                .Property(e => e.SalesPersonMobileNumber)
                .IsUnicode(false);

            modelBuilder.Entity<Agent>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<Agent>()
                .Property(e => e.ProfilePicture)
                .IsUnicode(false);

            modelBuilder.Entity<Area>()
                .Property(e => e.AreaName)
                .IsUnicode(false);

            modelBuilder.Entity<District>()
                .Property(e => e.DistrictCode)
                .IsUnicode(false);

            modelBuilder.Entity<District>()
                .Property(e => e.DistrictName)
                .IsUnicode(false);

            modelBuilder.Entity<Property>()
                .Property(e => e.ProperName)
                .IsUnicode(false);

            modelBuilder.Entity<Property>()
                .Property(e => e.Rooms)
                .IsUnicode(false);

            modelBuilder.Entity<Property>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<PropertyType>()
                .Property(e => e.TypeName)
                .IsUnicode(false);

            modelBuilder.Entity<PropertyType>()
                .Property(e => e.LeasePriod)
                .IsUnicode(false);

            modelBuilder.Entity<Seller>()
                .Property(e => e.SellerName)
                .IsUnicode(false);
        }
    }
}

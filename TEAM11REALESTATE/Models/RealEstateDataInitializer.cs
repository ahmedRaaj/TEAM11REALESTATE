using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;

namespace TEAM11REALESTATE.Models
{
    public class RealEstateDataInitializer : DropCreateDatabaseIfModelChanges<RealEstateModel>
    {
        public override void InitializeDatabase(RealEstateModel context)
        {
            base.InitializeDatabase(context);

           string[] fileNames = Directory.GetFiles(AppDomain.CurrentDomain.BaseDirectory, "*.sql");
            foreach(string file in fileNames)
            {
                context.Database.ExecuteSqlCommand(File.ReadAllText(file));
            }
        }
    }
}
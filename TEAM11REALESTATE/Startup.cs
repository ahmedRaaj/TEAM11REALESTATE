using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TEAM11REALESTATE.Startup))]
namespace TEAM11REALESTATE
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

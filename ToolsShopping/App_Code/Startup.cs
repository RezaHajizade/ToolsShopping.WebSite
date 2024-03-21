using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ToolsShopping.Startup))]
namespace ToolsShopping
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

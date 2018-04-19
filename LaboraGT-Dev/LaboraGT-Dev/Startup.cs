using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LaboraGT_Dev.Startup))]
namespace LaboraGT_Dev
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

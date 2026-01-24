using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(M1glWebform.Startup))]
namespace M1glWebform
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

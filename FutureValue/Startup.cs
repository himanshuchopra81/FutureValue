using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FutureValue.Startup))]
namespace FutureValue
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

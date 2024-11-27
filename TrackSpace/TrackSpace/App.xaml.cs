using Microsoft.Extensions.DependencyInjection;
using System.Configuration;
using System.Data;
using System.Windows;
using TrackSpace.DBUtil;
using Microsoft.EntityFrameworkCore;
using TrackSpace.Models;
namespace TrackSpace
{
   
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            var serviceCollection = new ServiceCollection();
            ConfigureServices(serviceCollection);
            var serviceProvider = serviceCollection.BuildServiceProvider(); 
            base.OnStartup(e); 
        } 
        private void ConfigureServices(IServiceCollection services) 
        {
            services.AddDbContext<MyDbContext>
                (options => options.UseMySql(TrackspaceContext.ConnectionString, 
                new MySqlServerVersion(new Version(8, 0, 36)))); }


        }

}

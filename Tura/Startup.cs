using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrossCutting;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Tura.DataAccess;
using Tura.DataAccess.Contracts;
using Tura.DataAccess.Contracts.Repositories;
using Tura.DataAccess.Repositories;

namespace Tura
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            var applicationSection = Configuration.GetSection(nameof(ApplicationOptions));
            var applicationOptions = applicationSection.Get<ApplicationOptions>();
            
            services.AddDbContext<TuraDBContext>(options => options.UseSqlServer(Configuration.GetConnectionString("DataBaseConnectionString")));
            services.AddEntityFrameworkSqlServer();
            IoCRegister.AddRegistration(services);

            services.AddCors(options =>
            {
                options.AddPolicy("CorsLocalDev", builder =>
                    builder.AllowAnyOrigin()
                        .AllowAnyHeader()
                        .AllowAnyMethod()
                );

                options.AddPolicy("CorsProduction", builder =>
                    builder.WithOrigins(applicationOptions.CorsUrl)
                        .AllowAnyHeader()
                        .AllowAnyMethod()
                );
            });

            services.AddControllers();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {

            IoCRegister.AddConfiguration(app);
            
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseCors("CorsLocalDev");
            }

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthorization();
            
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
            app.UseCors("CorsProduction");
        }
    }
}

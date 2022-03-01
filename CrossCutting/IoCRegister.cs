using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Tura.DataAccess.Contracts.Repositories;
using Tura.DataAccess.Repositories;

namespace CrossCutting
{
    public static class IoCRegister
    {
        public static IServiceCollection AddRegistration(this IServiceCollection services)
        {
            return AddRegisterRepository( services);
            
        }
        public static IServiceCollection AddRegisterRepository(IServiceCollection services)
        {
            services.AddTransient<IConnectorRepository, ConnectorRepository>();
            services.AddTransient<ICorrelationRulesRepository, CorrelationRulesRepository>();
            services.AddTransient<IIdentityRepository, IdentityRepository>();
            services.AddTransient<IUserRepository, UserRepository>();
            services.AddTransient<IAppConfig, AppConfig>();

            var basepath = System.AppDomain.CurrentDomain.BaseDirectory;
            var xmlPath = Path.Combine(basepath, "Tura.Api.xml");
            object p = services.AddSwaggerGen(
                c =>
                {
                    c.SwaggerDoc("Tura", new Microsoft.OpenApi.Models.OpenApiInfo(){ Title = "Tura", Version = "1" });
                    c.IncludeXmlComments(xmlPath);
                }
                
                );


            return services;
        }
        public static IApplicationBuilder AddConfiguration(this IApplicationBuilder applicationBuilder)
        {
            applicationBuilder.UseSwagger();
            applicationBuilder.UseSwaggerUI(c=>c.SwaggerEndpoint("/swagger/Tura/swagger.json","Tura"));
            
            return applicationBuilder;
        }
    }
}

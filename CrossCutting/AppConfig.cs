using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Text;

namespace CrossCutting
{
    public class AppConfig : IAppConfig
    {
        private readonly IConfiguration configuration;
        public AppConfig(IConfiguration configuration)
        {
            this.configuration = configuration;
        }
        public int MaxTrys => int.Parse(configuration.GetSection("Polly::MaxTrys").Value);
        public int TimeDelay => int.Parse(configuration.GetSection("Polly::TimeDelay").Value);

    }
}

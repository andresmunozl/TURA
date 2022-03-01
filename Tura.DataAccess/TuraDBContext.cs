using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using System;
using Tura.DataAccess.Contracts;
using Tura.DataAccess.Contracts.Entities;
using Tura.DataAccess.EntityConfig;

namespace Tura.DataAccess
{
    public class TuraDBContext : DbContext, ITuraDBContext
    {
        public DbSet<ConnectorEntity> Connectors { get; set; }
        public DbSet<CorrelationRuleEntity> Correlations { get; set; }
        public DbSet<IdentityEntity> Identities { get; set; }
        public DbSet<UserEntity> Users { get; set; }
        public DbSet<Identity2UserEntity> Identity2Users { get; set; }
        DatabaseFacade ITuraDBContext.Database { get => throw new NotImplementedException(); }

      
        public TuraDBContext(DbContextOptions options) : base(options)
        {
        }
        public TuraDBContext()
        {

        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            ConnectorEntityConfig.setEntityBuilder(modelBuilder.Entity<ConnectorEntity>());
            UserEntityConfig.setEntityBuilder(modelBuilder.Entity<UserEntity>());
            IdentityEntityConfig.setEntityBuilder(modelBuilder.Entity<IdentityEntity>());
            CorrelationRuleEntityConfig.setEntityBuilder(modelBuilder.Entity<CorrelationRuleEntity>());
            Identity2UserEntityConfig.setEntityBuilder(modelBuilder.Entity<Identity2UserEntity>());

            base.OnModelCreating(modelBuilder);
        }
    }
}

using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using Tura.DataAccess.Contracts.Entities;

namespace Tura.DataAccess.EntityConfig
{
    class ConnectorEntityConfig
    {
        public static void setEntityBuilder(EntityTypeBuilder<ConnectorEntity> entityBuilder)
        {
            entityBuilder.ToTable("Connectors");
            entityBuilder.HasKey(x => x.Id);
            entityBuilder.Property(x => x.Id).IsRequired();
            entityBuilder.HasMany(x => x.Users).WithOne(x => x.Connector);
        }
    }
}

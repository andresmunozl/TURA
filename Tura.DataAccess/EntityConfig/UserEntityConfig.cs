using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using Tura.DataAccess.Contracts.Entities;

namespace Tura.DataAccess.EntityConfig
{
    class UserEntityConfig
    {
        public static void setEntityBuilder(EntityTypeBuilder<UserEntity> entityBuilder)
        {
            entityBuilder.ToTable("Users");
            entityBuilder.HasKey(x => x.Id);
            entityBuilder.Property(x => x.Id).IsRequired();
            entityBuilder.HasOne(x => x.Connector).WithMany(y => y.Users).HasForeignKey(x=>x.ConnectorID);
        }
    }
}

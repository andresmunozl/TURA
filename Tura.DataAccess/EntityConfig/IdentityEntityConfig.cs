using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using Tura.DataAccess.Contracts.Entities;

namespace Tura.DataAccess.EntityConfig
{
    class IdentityEntityConfig
    {
        public static void setEntityBuilder(EntityTypeBuilder<IdentityEntity> entityBuilder)
        {
            entityBuilder.ToTable("Identities");
            entityBuilder.HasKey(x => x.Id);
            entityBuilder.Property(x => x.Id).IsRequired();
            entityBuilder.HasMany(x => x.Users).WithOne(x => x.Identity);
        }
    }
}

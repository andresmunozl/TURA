using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using Tura.DataAccess.Contracts.Entities;

namespace Tura.DataAccess.EntityConfig
{
    class Identity2UserEntityConfig
    {
        public static void setEntityBuilder(EntityTypeBuilder<Identity2UserEntity> entityBuilder)
        {
            entityBuilder.ToTable("Identities2Users");
            entityBuilder.HasOne(x => x.User).WithOne(x => x.Identity);
            entityBuilder.HasOne(x => x.Identity).WithMany(x => x.Users).HasForeignKey(x => x.IdentityID);
            entityBuilder.HasKey(x => new { x.IdentityID, x.UserID });
            entityBuilder.Property(x => x.IdentityID).IsRequired();
            entityBuilder.Property(x => x.UserID).IsRequired();
        }
    }
}

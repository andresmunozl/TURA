using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using Tura.DataAccess.Contracts.Entities;

namespace Tura.DataAccess.EntityConfig
{
    class CorrelationRuleEntityConfig
    {
        public static void setEntityBuilder(EntityTypeBuilder<CorrelationRuleEntity> entityBuilder)
        {
            entityBuilder.ToTable("CorrelationRules");
            entityBuilder.HasKey(x => x.Guid);
            entityBuilder.Property(x => x.Guid).IsRequired();
            
        }
    }
}

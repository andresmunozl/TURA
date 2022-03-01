using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;
using Microsoft.EntityFrameworkCore.Infrastructure;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Tura.DataAccess.Contracts;
using Tura.DataAccess.Contracts.Entities;

namespace Tura.DataAccess.Contracts
{
    public interface ITuraDBContext
    {
        DbSet<ConnectorEntity> Connectors { get; set; }
        DbSet<CorrelationRuleEntity> Correlations { get; set; }
        DbSet<IdentityEntity> Identities { get; set; }
        DbSet<UserEntity> Users { get; set; }
        DbSet<Identity2UserEntity> Identity2Users { get; set; }

        DbSet<TEntity> Set<TEntity>() where TEntity : class;
        DatabaseFacade Database { get; }

        Task<int> SaveChangesAsync(CancellationToken cancellationToken = default(CancellationToken));
        void RemoveRange(IEnumerable<object> entities);
        EntityEntry Update(object entity);

    }
}

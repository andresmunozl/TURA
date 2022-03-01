using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tura.DataAccess.Contracts;
using Tura.DataAccess.Contracts.Entities;
using Tura.DataAccess.Contracts.Repositories;

namespace Tura.DataAccess.Repositories
{
    public class ConnectorRepository : IConnectorRepository
    {
        private readonly ITuraDBContext turaDBContext;

        public ConnectorRepository(TuraDBContext turaDBContext)
        {
            this.turaDBContext = turaDBContext;
        }
        public async Task<ConnectorEntity> Add(ConnectorEntity connectorEntity)
        {
            await turaDBContext.Connectors.AddAsync(connectorEntity);
            await turaDBContext.SaveChangesAsync();
            return connectorEntity;
        }

        public async Task<ConnectorEntity> DeleteAsync(Guid id)
        {
            var entity = await turaDBContext.Connectors.SingleAsync(x => x.Id == id);
            turaDBContext.Connectors.Remove(entity);
            await turaDBContext.SaveChangesAsync();
            return entity;
        }

        public async Task<bool> Exist(Guid id)
        {
            int entity = await turaDBContext.Connectors.CountAsync(x =>x.Id == id);
            return entity>0?true:false;
        }

        public async Task<ConnectorEntity> Get(Guid id)
        {
            var result = await turaDBContext.Connectors.Include(x => x.Users).FirstOrDefaultAsync(x => x.Id == id);
            return result;
        }

        public async Task<IEnumerable<ConnectorEntity>> GetAll()
        {
            return turaDBContext.Connectors.Select(x => x);
        }

        public async Task<ConnectorEntity> Update(ConnectorEntity element)
        {
            var updateEntity = turaDBContext.Connectors.Update(element);
            await turaDBContext.SaveChangesAsync();
            return updateEntity.Entity;
        }
    }
}

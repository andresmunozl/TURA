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
    public class IdentityRepository : IIdentityRepository
    {
        private readonly ITuraDBContext turaDBContext;

        public IdentityRepository(TuraDBContext turaDBContext)
        {
            this.turaDBContext = turaDBContext;
        }
        public async Task<IdentityEntity> Add(IdentityEntity element)
        {
            await turaDBContext.Identities.AddAsync(element);
            await turaDBContext.SaveChangesAsync();
            return element;
        }

        public async Task<IdentityEntity> DeleteAsync(Guid id)
        {
            var entity = await turaDBContext.Identities.SingleAsync(x => x.Id == id);
            turaDBContext.Identities.Remove(entity);
            await turaDBContext.SaveChangesAsync();
            return entity;
        }

        public async Task<bool> Exist(Guid id)
        {
            int entity = await turaDBContext.Identities.CountAsync(x => x.Id == id);
            return entity > 0 ? true : false;
        }

        public async Task<IdentityEntity> Get(Guid id)
        {
            var result = await turaDBContext.Identities.Include(x => x.Users).FirstOrDefaultAsync(x => x.Id == id);
            return result;
        }

        public async Task<IEnumerable<IdentityEntity>> GetAll()
        {
            return turaDBContext.Identities.Select(x => x);
        }

        public async Task<IdentityEntity> Update(IdentityEntity element)
        {
            element.Modified = DateTime.Now;
            var updateEntity = turaDBContext.Identities.Update(element);
            await turaDBContext.SaveChangesAsync();
            return updateEntity.Entity;
        }
    }
}

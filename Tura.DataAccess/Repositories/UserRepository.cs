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
    public class UserRepository : IUserRepository
    {
        private readonly ITuraDBContext turaDBContext;

        public UserRepository(TuraDBContext turaDBContext)
        {
            this.turaDBContext = turaDBContext;
        }
        public async Task<UserEntity> Add(UserEntity element)
        {
            await turaDBContext.Users.AddAsync(element);
            await turaDBContext.SaveChangesAsync();
            return element;
        }

        public async Task<UserEntity> DeleteAsync(Guid id)
        {
            var entity = await turaDBContext.Users.SingleAsync(x => x.Id == id);
            turaDBContext.Users.Remove(entity);
            await turaDBContext.SaveChangesAsync();
            return entity;
        }

        public async Task<bool> Exist(Guid id)
        {
            int entity = await turaDBContext.Users.CountAsync(x => x.Id == id);
            return entity > 0 ? true : false;
        }

        public async Task<UserEntity> Get(Guid id)
        {
            var result = await turaDBContext.Users.Include(x => x.Connector).FirstOrDefaultAsync(x => x.Id == id);
            return result;
        }

        public async Task<IEnumerable<UserEntity>> GetAll()
        {
            return turaDBContext.Users.Select(x => x);
        }

        public async Task<UserEntity> Update(UserEntity element)
        {
            var updateEntity = turaDBContext.Users.Update(element);
            await turaDBContext.SaveChangesAsync();
            return updateEntity.Entity;
        }
    }
}

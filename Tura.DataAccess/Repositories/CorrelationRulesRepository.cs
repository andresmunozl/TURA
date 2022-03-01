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
    public class CorrelationRulesRepository : ICorrelationRulesRepository
    {
        private readonly ITuraDBContext turaDBContext;

        public CorrelationRulesRepository(TuraDBContext turaDBContext)
        {
            this.turaDBContext = turaDBContext;
        }
        public async Task<CorrelationRuleEntity> Add(CorrelationRuleEntity correlationRuleEntity)
        {
            await turaDBContext.Correlations.AddAsync(correlationRuleEntity);
            await turaDBContext.SaveChangesAsync();
            return correlationRuleEntity;
        }

        public async Task<CorrelationRuleEntity> DeleteAsync(Guid id)
        {
            var entity = await turaDBContext.Correlations.SingleAsync(x => x.Guid == id);
            turaDBContext.Correlations.Remove(entity);
            await turaDBContext.SaveChangesAsync();
            return entity;
        }

        public async Task<bool> Exist(Guid id)
        {
            int entity = await turaDBContext.Correlations.CountAsync(x =>x.Guid == id);
            return entity>0?true:false;
        }

        public async Task<CorrelationRuleEntity> Get(Guid id)
        {
            var result = await turaDBContext.Correlations.FirstOrDefaultAsync(x => x.Guid == id);
            return result;
        }

        public async Task<IEnumerable<CorrelationRuleEntity>> GetAll()
        {
            return turaDBContext.Correlations.Select(x => x);
        }

        public async Task<CorrelationRuleEntity> Update(CorrelationRuleEntity element)
        {
            var updateEntity = turaDBContext.Correlations.Update(element);
            await turaDBContext.SaveChangesAsync();
            return updateEntity.Entity;
        }
    }
}

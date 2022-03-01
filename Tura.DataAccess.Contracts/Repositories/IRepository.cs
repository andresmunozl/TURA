    using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Tura.DataAccess.Contracts.Repositories
{
    public interface IRepository<T> where T : class
    {
        Task<bool> Exist(Guid id);
        Task<IEnumerable<T>> GetAll();
        Task<T> Get(Guid id);
        Task<T> DeleteAsync(Guid id);

        Task<T> Update(T element);

        Task<T> Add(T element);
    }
}

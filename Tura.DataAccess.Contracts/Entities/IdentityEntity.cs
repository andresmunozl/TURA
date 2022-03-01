using System;
using System.Collections.Generic;
using System.Text;

namespace Tura.DataAccess.Contracts.Entities
{
    public class IdentityEntity
    {
        public Guid Id { get; set; }
        public string UserName { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Email { get; set; }
        public bool IsActive { get; set; }
        public DateTime Created { get; set; }
        public DateTime Modified { get; set; }
        public virtual ICollection<Identity2UserEntity> Users { get; set; }
    }
}

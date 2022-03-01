using System;
using System.Collections.Generic;
using System.Text;

namespace Tura.DataAccess.Contracts.Entities
{
    public class Identity2UserEntity
    {
        public Guid UserID { get; set; }
        public Guid IdentityID { get; set; }

        public virtual IdentityEntity Identity { get; set; }
        public virtual UserEntity User { get; set; }
    }
}

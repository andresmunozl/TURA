using System;
using System.Collections.Generic;
using System.Text;

namespace Tura.DataAccess.Contracts.Entities
{
    public class UserEntity
    {
        public Guid Id { get; set; }
        public Guid ConnectorID { get; set; }
        public virtual ConnectorEntity Connector { get; set; }
        public string Username { get; set; }
        public string? Name { get; set; }
        public string? Surname { get; set; }
        public int? InternalID { get; set; }
        public int? IsActive { get; set; }
        public Guid? IdentityID { get; set; }
        public virtual Identity2UserEntity Identity { get; set; }
    }
}

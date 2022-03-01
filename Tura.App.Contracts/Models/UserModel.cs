using System;
using System.Collections.Generic;
using System.Text;

namespace Tura.App.Contracts.Models
{
    public class UserModel
    {
        public Guid ConnectorID { get; set; }
        public string Username { get; set; }
        public string? Name { get; set; }
        public string? Surname { get; set; }
        public int? InternalID { get; set; }
        public int? IsActive { get; set; }
        public Guid? IdentityID { get; set; }
    }
}

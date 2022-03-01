using System;
using System.Collections.Generic;
using System.Text;

namespace Tura.App.Contracts.Models
{
    public class IdentityModel
    {
        public string UserName { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Email { get; set; }
        public bool IsActive { get; set; }
        public DateTime Modified { get; set; }
        public DateTime Created { get; set; }
        //public virtual ICollection<UserModel> Users { get; set; }
    }
}

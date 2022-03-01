using System;
using System.Collections.Generic;
using System.Text;

namespace Tura.App.Contracts.Models
{
    public class ConnectorModel
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string? AppRefName { get; set; }
        public string IP { get; set; }
        public string Uname { get; set; }
        public string Passwd { get; set; }
        public string DBName { get; set; }
        public int Port { get; set; }
        public string? OtherInfo { get; set; }
    }
}

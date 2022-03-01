using System;
using System.Collections.Generic;
using System.Text;

namespace Tura.DataAccess.Contracts.Entities
{
    public class CorrelationRuleEntity
    {
        public Guid Guid { get; set; }
        public string name { get; set; }
        public string rule { get; set; }
    }
}

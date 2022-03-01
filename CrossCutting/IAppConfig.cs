using System;
using System.Collections.Generic;
using System.Text;

namespace CrossCutting
{
    interface IAppConfig
    {
        public int MaxTrys { get; }
        public int TimeDelay { get; }
    }
}

using System;
using System.Collections.Generic;
using System.Text;

namespace TimeCallCSharp
{
    class Program
    {
        static void Main(string[] args)
        {
            DateTime minTime = DateTime.Parse("1970-01-01 00:00:00").ToLocalTime();

            DateTime time = DateTime.Parse("2008-04-15 00:00:00");
            TimeSpan span = (time - minTime);
            double val = span.TotalSeconds;

            val = 0;

        }
    }
}

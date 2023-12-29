using System;
using System.Collections.Generic;
using System.Text;
using System.Configuration;

namespace Lark.LanguageCommon
{
    public class LanguageSection : ConfigurationSection
    {
        [ConfigurationProperty("Memo")]
        public string Memo
        {
            get { return (string)this["Memo"]; }
            set { this["Memo"] = value; }
        }

        [ConfigurationProperty("Parsers")]
        public ParserElementCollection Parsers
        {
            get { return (ParserElementCollection)this["Parsers"]; }
            set { this["Parsers"] = value; }
        }
    }
}

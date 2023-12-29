using System;
using System.Collections.Generic;
using System.Text;
using System.Configuration;
using System.Reflection;

namespace Lark.LanguageCommon
{
    public class ParserFactory
    {
        public static ILanguageParser GetLanguageParser(string key)
        {
            LanguageSection section = ConfigurationManager.GetSection("LanguageParser") as LanguageSection;
            ParserElement parserSetting = section.Parsers[key];

            Assembly assembly = Assembly.Load(new AssemblyName(parserSetting.AssemblyName));
            ILanguageParser ret = assembly.CreateInstance(parserSetting.TypeName) as ILanguageParser;
            ret.ParserSetting = parserSetting;

            return ret;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Text;

namespace Lark.LanguageCommon
{
    public class CppParser : LanguageParser
    {
        public override bool EndLine(string line)
        {
            return line.EndsWith("\\");
        }
    }

    public class LuaParser : LanguageParser
    {

    }
}

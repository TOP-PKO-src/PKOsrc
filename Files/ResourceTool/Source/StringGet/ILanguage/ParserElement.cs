using System;
using System.Collections.Generic;
using System.Text;
using System.Configuration;

namespace Lark.LanguageCommon
{
    public class StringElement : ConfigurationElement
    {
        [ConfigurationProperty("Value", IsRequired = false)]
        public string Val
        {
            get { return (string)base["Value"].ToString(); }
            set { base["Value"] = value; }
        }

        public string[] Values
        {
            get 
            { 
                string[] Vals = Val.Split(new string[] { "\r\n" }, StringSplitOptions.RemoveEmptyEntries);
                List<string> ret = new List<string>();

                foreach (string str in Vals)
                {
                    if (str.StartsWith("'''"))
                        continue;

                    ret.Add(str);
                }

                return ret.ToArray();
            }
        }
    }

    public class ParserElement : ConfigurationElement
    {
        [ConfigurationProperty("Key", IsRequired = true)]
        public string Key
        {
            get { return (string)base["Key"].ToString(); }
        }

        [ConfigurationProperty("AssemblyName", IsRequired = true)]
        public string AssemblyName
        {
            get { return (string)base["AssemblyName"]; }
        }

        [ConfigurationProperty("TypeName", IsRequired = true)]
        public string TypeName
        {
            get { return (string)base["TypeName"]; }
        }

        [ConfigurationProperty("LineComment", IsRequired = true)]
        public StringElement LineComment
        {
            get { return base["LineComment"] as StringElement; }
        }

        [ConfigurationProperty("BlockCommentStart", IsRequired = true)]
        public StringElement BlockCommentStart
        {
            get { return base["BlockCommentStart"] as StringElement; }
        }

        [ConfigurationProperty("BlockCommentEnd", IsRequired = true)]
        public StringElement BlockCommentEnd
        {
            get { return base["BlockCommentEnd"] as StringElement; }
        }

        [ConfigurationProperty("BeforeTemplate", IsRequired = true)]
        public StringElement BeforeTemplate
        {
            get { return base["BeforeTemplate"] as StringElement; }
            set { base["BeforeTemplate"] = value; }
        }

        [ConfigurationProperty("CurrentTemplate", IsRequired = true)]
        public StringElement CurrentTemplate
        {
            get { return base["CurrentTemplate"] as StringElement; }
            set { base["CurrentTemplate"] = value; }
        }

        [ConfigurationProperty("AfterTemplate", IsRequired = true)]
        public StringElement AfterTemplate
        {
            get { return base["AfterTemplate"] as StringElement; }
            set { base["AfterTemplate"] = value; }
        }
    }
}

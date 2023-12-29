using System;
using System.Collections.Generic;
using System.Text;
using System.Configuration;

namespace Lark.LanguageCommon
{
    [ConfigurationCollection(typeof(ParserElement), AddItemName = "Parser", CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
    public class ParserElementCollection : ConfigurationElementCollection
    {
        static ParserElementCollection()
        {
            properties = new ConfigurationPropertyCollection();
        }

        public ParserElementCollection()
        {
        }


        private static ConfigurationPropertyCollection properties;

        protected override ConfigurationPropertyCollection Properties
        {
            get { return properties; }
        }

        public override ConfigurationElementCollectionType CollectionType
        {
            get { return ConfigurationElementCollectionType.AddRemoveClearMap; }
        }

        public ParserElement this[int index]
        {
            get { return (ParserElement)base.BaseGet(index); }
            set
            {
                if (base.BaseGet(index) != null)
                {
                    base.BaseRemoveAt(index);
                }
                base.BaseAdd(index, value);
            }
        }

        public new ParserElement this[string key]
        {
            get { return (ParserElement)base.BaseGet(key.ToLower()); }
        }

        protected override ConfigurationElement CreateNewElement()
        {
            return new ParserElement();
        }

        protected override object GetElementKey(ConfigurationElement element)
        {
            return (element as ParserElement).Key.ToLower();
        }
    }
}

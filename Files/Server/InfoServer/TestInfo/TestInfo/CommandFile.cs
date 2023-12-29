using System;
using System.Collections.Generic;
using System.Text;
using System.Xml.Serialization;
using System.IO;
using System.Configuration;

namespace TestInfo
{
    public class DataSection : ConfigurationSection
    {
        [ConfigurationProperty("Commands")]
        public CommandCollection Commands
        {
            get { return (CommandCollection)this["Commands"]; }
            set { this["Commands"] = value; }
        }
    }

    [ConfigurationCollection(typeof(CommandElement), AddItemName = "Command", CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
    public class CommandCollection : ConfigurationElementCollection
    {
        static CommandCollection()
        {
            properties = new ConfigurationPropertyCollection();
        }

        public CommandCollection()
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

        public CommandElement this[int index]
        {
            get { return (CommandElement)base.BaseGet(index); }
            set
            {
                if (base.BaseGet(index) != null)
                {
                    base.BaseRemoveAt(index);
                }
                base.BaseAdd(index, value);
            }
        }

        public new CommandElement this[string key]
        {
            get { return (CommandElement)base.BaseGet(key); }
        }

        protected override ConfigurationElement CreateNewElement()
        {
            return new CommandElement();
        }

        protected override object GetElementKey(ConfigurationElement element)
        {
            return (element as CommandElement).Key;
        }
    }
    
    public class CommandElement : ConfigurationElement
    {
        public override bool IsReadOnly()
        {
            return false;
        }

        [ConfigurationProperty("Key", IsRequired = true)]
        public string Key
        {
            get { return (string)base["Key"]; }
        }

        [ConfigurationProperty("Command", IsRequired = true)]
        public string Command
        {
            get { return (string)base["Command"]; }
        }

        [ConfigurationProperty("Content", IsRequired = true)]
        public string Content
        {
            get { return (string)base["Content"]; }
            set { base["Content"] = value; }
        }

        [ConfigurationProperty("Value", IsRequired = false)]
        public string Value
        {
            get { return (string)base["Value"]; }
            set { base["Value"] = value; }
        }

        [ConfigurationProperty("Rets")]
        public RetCollection Rets
        {
            get { return (RetCollection)base["Rets"]; }
        }
    }

    [ConfigurationCollection(typeof(RetElement), AddItemName = "Ret", CollectionType = ConfigurationElementCollectionType.AddRemoveClearMap)]
    public class RetCollection : ConfigurationElementCollection
    {
        static RetCollection()
        {
            properties = new ConfigurationPropertyCollection();
        }

        public RetCollection()
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

        public RetElement this[int index]
        {
            get { return (RetElement)base.BaseGet(index); }
            set
            {
                if (base.BaseGet(index) != null)
                {
                    base.BaseRemoveAt(index);
                }
                base.BaseAdd(index, value);
            }
        }

        public new RetElement this[string key]
        {
            get { return (RetElement)base.BaseGet(key); }
        }

        protected override ConfigurationElement CreateNewElement()
        {
            return new RetElement();
        }

        protected override object GetElementKey(ConfigurationElement element)
        {
            return (element as RetElement).Name;
        }
    }

    public class RetElement : ConfigurationElement
    {
        [ConfigurationProperty("Key", IsRequired = true)]
        public string Name
        {
            get { return (string)base["Key"]; }
        }

        [ConfigurationProperty("Content", IsRequired = true)]
        public string Content
        {
            get { return (string)base["Content"]; }
        }
    }
}

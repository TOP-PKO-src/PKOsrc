using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;
using System.Collections.Specialized;

namespace Lark.LanguageCommon
{
    public class TxtParser : LanguageParser
    {
        private List< string > stringList = null;
       
        private bool HasFullSize(string str)
        {
            int byteCount = Encoding.Default.GetBytes(str).Length;

            if (byteCount > str.Length)
                return true;

            return false;
        }

        public TxtParser() : base()
        {
            Reset();
        }

        public override void Reset()
        {
            stringList = new List<string>();
        }
        
        public override bool ReadLine(int lineNo, string line)
        {
            if (!line.TrimStart().StartsWith(this.ParserSetting.LineComment.Val))
            {
                stringList.Add(line);
            }

            return true;
        }

        public override bool ParseFile()
        {
            return true;
        }

        public override bool GetLine(int index, out string line, out List<Pos> posList)
        {
            line = null;
            posList = new List<Pos>();

            if (this.stringList[index] != null)
            {
                string[] items = this.stringList[index].Split('\t');

                int start = 0;

                for (int i = 0; i < items.Length; i++)
                {
                    if (this.HasFullSize(items[i]))
                    {
                        items[i] = "\"" + items[i] + "\"";
                        Pos pos = new Pos(start, start + items[i].Length - 1);
                        posList.Add(pos);
                    }

                    // string tab
                    start += items[i].Length + 1;
                }

                line = string.Join("\t", items);
            }

            return true;
        }

        public override int GetLineCount()
        {
            return stringList.Count;
        }
    }
}

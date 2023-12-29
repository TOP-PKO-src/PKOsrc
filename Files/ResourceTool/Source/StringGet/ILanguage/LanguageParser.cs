using System;
using System.Collections.Generic;
using System.Text;
using System.Collections;

namespace Lark.LanguageCommon
{
    public class Pos
    {
        public int Start;
        public int End;

        public Pos(int start, int end)
        {
            this.Start = start;
            this.End = end;
        }
    }

    public enum BitType
    {
        None,
        QuotationStart,
        Quotation,
        QuotationEnd,
        Comment
    }

    public interface ILanguageParser
    {
        ParserElement ParserSetting
        {
            get;
            set;
        }

        bool EndLine(string line);
        bool ReadLine(int lineNo, string line);
        int LineCommentLength();
        int BlockCommentStartLength();
        int BlockCommentEndLength();
        bool IsQuotation(string line, int pos);
        bool IsLineComment(string line, int pos);
        bool IsBlockCommentStart(string line, int pos);
        bool IsBlockCommentEnd(string line, int pos);
        int GetLineCount();
        bool GetLine(int index, out string line, out List<Pos> posList);
        bool ParseFile();
        void Reset();
    }

    public abstract class LanguageParser : ILanguageParser
    {
        private ParserElement parserElement = null;

        private List<KeyValuePair<string, bool>> lineList = null;
        private List<KeyValuePair<string, List<BitType>>> parseLineList = null;

        public ParserElement ParserSetting
        {
            get { return parserElement; }
            set { parserElement = value; }
        }
        
        private void AddLine(string line, bool endFlag)
        {
            this.lineList.Add(new KeyValuePair<string, bool>(line, endFlag));
            List<BitType> bitList = new List<BitType>(line.Length);

            for (int i = 0; i < line.Length; i++)
            {
                bitList.Add(BitType.None);
            }

            this.parseLineList.Add(new KeyValuePair<string, List<BitType>>(line, bitList));
        }

        private bool ParseLineChar()
        {
            bool lineCommentFlag = false;
            bool blockCommentFlag = false;
            bool stringFlag = false;

            // 每行判断
            for (int i = 0; i < this.parseLineList.Count; i++)
            {
                if (this.parseLineList[i].Key == null)
                    continue;

                // 非注释内
                for (int j = 0; j < this.parseLineList[i].Key.Length; j++)
                {
                    if (!blockCommentFlag && !blockCommentFlag && IsQuotation(this.parseLineList[i].Key, j))  // 引号
                    {
                        if (!stringFlag)
                        {
                            this.parseLineList[i].Value[j] = BitType.QuotationStart;
                            stringFlag = true;
                        }
                        else
                        {
                            this.parseLineList[i].Value[j] = BitType.QuotationEnd;
                            stringFlag = false;
                        }
                    }
                    else if (!stringFlag && !blockCommentFlag && IsLineComment(this.parseLineList[i].Key, j)) // 如果行注释
                    {
                        for (int k = j; k < this.parseLineList[i].Key.Length; k++)
                        {
                            this.parseLineList[i].Value[k] = BitType.Comment;
                        }

                        if (this.EndLine(this.parseLineList[i].Key))
                            lineCommentFlag = true;
                        else
                            lineCommentFlag = false;

                        break;
                    }
                    else if (!stringFlag && !blockCommentFlag && IsBlockCommentStart(this.parseLineList[i].Key, j)) // 块注释开始
                    {
                        for (int k = 0; k < BlockCommentStartLength(); k++)
                        {
                            this.parseLineList[i].Value[j+k] = BitType.Comment;
                        }

                        // 自己的循环还要加1
                        j += BlockCommentStartLength() - 1;
                        blockCommentFlag = true;
                    }
                    else if (!stringFlag && blockCommentFlag && IsBlockCommentEnd(this.parseLineList[i].Key, j))  // 块注释结束
                    {
                        for (int k = 0; k < BlockCommentEndLength(); k++)
                        {
                            this.parseLineList[i].Value[j + k] = BitType.Comment;
                        }

                        // 自己的循环还要加1
                        j += BlockCommentEndLength() - 1;
                        blockCommentFlag = false;   
                    }
                    else if (lineCommentFlag)
                    {
                        for (int k = j; k < this.parseLineList[i].Key.Length; k++)
                        {
                            this.parseLineList[i].Value[k] = BitType.Comment;
                        }

                        if (this.EndLine(this.parseLineList[i].Key))
                            lineCommentFlag = true;
                        else
                            lineCommentFlag = false;

                        break;
                    }
                    else if (blockCommentFlag)
                    {
                        this.parseLineList[i].Value[j] = BitType.Comment;
                    }
                    else if (stringFlag)
                    {
                        this.parseLineList[i].Value[j] = BitType.Quotation;
                    }
                    else
                    {
                        this.parseLineList[i].Value[j] = BitType.None;
                    }

                    ////// 最好设定非行注释
                    //if (!this.EndLine(this.parseLineList[i].Key) && j + 1 == this.parseLineList[i].Key.Length)
                    //    lineCommentFlag = false;
                }

                // 最好设定非行注释
                if (i + 1 == this.parseLineList.Count)
                    lineCommentFlag = false;
            }

            return true;
        }

        public virtual void Reset()
        {
            lineList = new List<KeyValuePair<string, bool>>();
            parseLineList = new List<KeyValuePair<string, List<BitType>>>();
        }

        public virtual bool ParseFile()
        {
            // 代码分析
            this.ParseLineChar();

            // 行合并
            for (int i = this.parseLineList.Count - 1; i > 0; i--)
            {
                if (!this.lineList[i-1].Value)
                    continue;

                if (this.parseLineList[i].Key == null || this.parseLineList[i - 1].Key == null)
                    continue;

                if (this.parseLineList[i].Key.Length < 2 || this.parseLineList[i - 1].Key.Length < 2)
                    continue;

                string tailString = this.parseLineList[i].Key.TrimStart();
                string headString = this.parseLineList[i - 1].Key.Substring(0, this.parseLineList[i - 1].Key.Length - 1).TrimEnd();

                if (headString == string.Empty)
                    continue;

                // 连接字符串 并且 不是注释的情况
                if (this.parseLineList[i].Value[this.parseLineList[i].Key.Length - tailString.Length]  == BitType.QuotationStart &&
                    this.parseLineList[i - 1].Value[headString.Length - 1] == BitType.QuotationEnd)
                {
                    List<BitType> bitList = new List<BitType>();

                    for (int j = 0; j < headString.Length - 1; j++)
                    {
                        bitList.Add(this.parseLineList[i - 1].Value[j]);
                    }

                    for (int j = 1; j < tailString.Length; j++)
                    {
                        bitList.Add(this.parseLineList[i].Value[this.parseLineList[i].Key.Length - tailString.Length + j]);
                    }

                    this.parseLineList[i - 1] = new KeyValuePair<string, List<BitType>>(headString.Substring(0, headString.Length - 1) + tailString.Substring(1, tailString.Length - 1), bitList);
                    this.parseLineList[i] = new KeyValuePair<string, List<BitType>>(null, null);
                }
                else if ((this.parseLineList[i].Value[this.parseLineList[i].Key.Length - tailString.Length] == BitType.Quotation || this.parseLineList[i].Value[this.parseLineList[i].Key.Length - tailString.Length] == BitType.QuotationEnd) &&
                    (this.parseLineList[i - 1].Value[headString.Length - 1] == BitType.Quotation || this.parseLineList[i - 1].Value[headString.Length - 1] == BitType.QuotationStart))
                {
                    tailString = this.parseLineList[i].Key;
                    headString = this.parseLineList[i - 1].Key.Substring(0, this.parseLineList[i - 1].Key.Length - 1);
                    
                    List<BitType> bitList = new List<BitType>();

                    for (int j = 0; j < headString.Length; j++)
                    {
                        bitList.Add(this.parseLineList[i - 1].Value[j]);
                    }

                    for (int j = 0; j < tailString.Length; j++)
                    {
                        bitList.Add(this.parseLineList[i].Value[this.parseLineList[i].Key.Length - tailString.Length + j]);
                    }

                    this.parseLineList[i - 1] = new KeyValuePair<string, List<BitType>>(headString + tailString, bitList);
                    this.parseLineList[i] = new KeyValuePair<string, List<BitType>>(null, null);
                }
            }

            // 校验
            int start = -1;
            int num = 0;

            for (int index = 0; index < this.parseLineList.Count; index++)
            {
                if (this.parseLineList[index].Key == null)
                    continue;

                for (int i = 0; i < this.parseLineList[index].Value.Count; i++)
                {
                    if (this.parseLineList[index].Value[i] == BitType.QuotationStart)
                    {
                        start = i;
                        num++;
                    }
                    else if (this.parseLineList[index].Value[i] == BitType.QuotationEnd)
                    {
                        if (start > i)
                            return false;

                        num--;
                    }
                }
            }
            
            return (num==0);
        }

        public LanguageParser()
        {
            Reset();
        }

        public virtual bool EndLine(string line)
        {
            return false;
        }

        public virtual bool ReadLine(int lineNo, string line)
        {
            this.AddLine(line, this.EndLine(line));

            return true;
        }

        public virtual int LineCommentLength()
        {
            return this.parserElement.LineComment.Val.Length;
        }

        public virtual int BlockCommentStartLength()
        {
            return this.parserElement.BlockCommentStart.Val.Length;
        }

        public virtual int BlockCommentEndLength()
        {
            return this.parserElement.BlockCommentEnd.Val.Length;
        }

        public virtual bool IsQuotation(string line, int pos)
        {
            return (line[pos] == '\"');
        }

        public virtual bool IsLineComment(string line, int pos)
        {
            if (line.Length < pos + LineCommentLength())
                return false;

            if (line.Length < pos + LineCommentLength())
                return false;

            for (int i = 0; i < LineCommentLength(); i++)
            {
                if (line[pos] != this.parserElement.LineComment.Val[i])
                    return false;
            }

            return true;
        }

        public virtual bool IsBlockCommentStart(string line, int pos)
        {
            if (BlockCommentStartLength() == 0)
                return false;

            if (line.Length < pos + BlockCommentStartLength())
                return false;

            for (int i = 0; i < BlockCommentStartLength(); i++)
            {
                if (line[pos] != this.parserElement.BlockCommentStart.Val[i])
                    return false;
            }

            return true;
        }

        public virtual bool IsBlockCommentEnd(string line, int pos)
        {
            if (BlockCommentEndLength() == 0)
                return false;

            if (line.Length < pos + BlockCommentEndLength())
                return false;

            for (int i = 0; i < BlockCommentEndLength(); i++)
            {
                if (line[pos] != this.parserElement.BlockCommentEnd.Val[i])
                    return false;
            }

            return true;
        }

        public virtual int GetLineCount()
        {
            return this.parseLineList.Count;
        }

        public virtual bool GetLine(int index, out string line, out List<Pos> posList)
        {
            line = null;
            posList = new List<Pos>();

            if (this.parseLineList[index].Key != null)
            {
                line = this.parseLineList[index].Key;

                for (int i = 0; i < this.parseLineList[index].Value.Count; i++)
                {
                    if (this.parseLineList[index].Value[i] == BitType.QuotationStart)
                    {
                        Pos pos = new Pos(i, -1);
                        posList.Add(pos);
                    }
                    else if (this.parseLineList[index].Value[i] == BitType.QuotationEnd)
                    {
                        posList[posList.Count - 1].End = i;
                    }
                }
            }

            return true;
        }
    }
}

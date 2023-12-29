using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Collections;

using Lark.LanguageCommon;

namespace Lark.StringGet
{
    class StringExecutor
    {
        private ProgressCallback callback;
        private ProgressOKCallback okCallback;

        // Test
        private ILanguageParser parser = null;
        private string location = string.Empty;
        private string newLocation = string.Empty;
        private bool recursion = true;

        private string[] beforeTemplate = null;
        private string[] currentTemplate = null;
        private string[] afterTemplate = null;
        private string[] macroLines = null;

        private string[] filers = null;
        private Dictionary<string, string> valKeyTable;
        private bool errorFlag = false;

        public StringExecutor(string location, string filer, bool recursion, string parserKey, string[] macroLines, ProgressCallback callback, ProgressOKCallback okCallback)
        {
            this.location = location.EndsWith("\\") ? location.Substring(0,location.Length-1) : location;
            this.filers = filer.Split(new string[] { "||" }, StringSplitOptions.RemoveEmptyEntries);
            this.recursion = recursion;

            this.parser = ParserFactory.GetLanguageParser(parserKey);

            this.beforeTemplate = this.parser.ParserSetting.BeforeTemplate.Values;
            this.currentTemplate = this.parser.ParserSetting.CurrentTemplate.Values;
            this.afterTemplate = this.parser.ParserSetting.AfterTemplate.Values;

            this.macroLines = macroLines;
            this.valKeyTable = new Dictionary<string, string>();

            this.errorFlag = false;
            this.callback = callback;
            this.okCallback = okCallback;

            if (File.Exists(this.location + "\\KeyTable.tbl"))
            {
                using (StreamReader sr = new StreamReader(this.location + "\\KeyTable.tbl"))
                {
                    string line = string.Empty;
                    string key = string.Empty;
                    string val = string.Empty;

                    // 第一列保存Key 因为不能有Tab键
                    while ((line = sr.ReadLine()) != null)
                    {
                        int pos = line.IndexOf('\t');
                        key = line.Substring(0, pos);
                        val = line.Substring(pos + 1, line.Length - pos - 1);

                        this.valKeyTable.Add(key, val);
                    }
                }
            }
        }

        public void Execute()
        {
            DirectoryInfo dirInfo = new DirectoryInfo(this.location);

            newLocation = dirInfo.Parent.FullName + "\\" + dirInfo.Name + DateTime.Now.ToString("_yyyy_MM_dd_HH_mm");

            if (Directory.Exists(newLocation))
            {
                Directory.Move(newLocation, newLocation + "_" + Guid.NewGuid().ToString());
            }

            Directory.CreateDirectory(newLocation);

            using (StreamWriter sw = new StreamWriter(this.newLocation + "\\StringGet.csv",false,  Encoding.Default))
            {
                this.errorFlag = ParseDir(sw, this.location);
            }

            if (this.errorFlag)
            {
                if (File.Exists(this.location + "\\KeyTable.tbl"))
                    File.Delete(this.location + "\\KeyTable.tbl");

                using (StreamWriter sw = new StreamWriter(this.location + "\\KeyTable.tbl"))
                {
                    foreach (KeyValuePair<string, string> kvp in valKeyTable)
                    {
                        sw.WriteLine(string.Format("{0}\t{1}", kvp.Key, kvp.Value));
                    }
                }

            }

            okCallback(!this.errorFlag);
        }

        private string GetNewFileName(string fileName, string location, string newLocation)
        {
            string ret = fileName.Substring(location.Length).Insert(0, newLocation);
            return ret;
        }

        private bool ParseDir(StreamWriter csvSW, string path)
        {
            List<string> allFiles = new List<string>();
            
            foreach (string filter in this.filers)
            {
                string[] files = Directory.GetFiles(path, filter);

                foreach(string file in files)
                {
                    if(!allFiles.Contains(file))
                        allFiles.Add(file);
                }
            }

            string[] allThings = Directory.GetFiles(path, "*.*");

            // 非操作文件 目前不需要Copy
            //foreach (string noFile in allThings)
            //{
            //    if (!allFiles.Contains(noFile))
            //    {
            //        File.Copy(noFile, this.GetNewFileName(noFile, this.location, this.newLocation));
            //    }
            //}

            foreach (string file in allFiles)
            {
                FileInfo fileInfo = new FileInfo(file);

                if (!ParseFile(csvSW, fileInfo))
                    return false;
            }

            if (this.recursion)
            {
                string[] dirs = Directory.GetDirectories(path, "*.*");

                foreach (string dir in dirs)
                {
                    DirectoryInfo dirInfo = new DirectoryInfo(dir);
                    Directory.CreateDirectory(this.GetNewFileName(dirInfo.FullName, this.location, this.newLocation));

                    if (!ParseDir(csvSW, dir))
                        return false;
                }
            }

            return true;
        }

        private bool HasFullSize(string str)
        {
            int byteCount = Encoding.Default.GetBytes(str).Length;

            if (byteCount > str.Length)
                return true;

            return false;
        }

        private string ExecuteMacro(string key, string val, string template)
        {
            // ToDo
            string line = string.Empty;

            for (int i = 0; i < this.macroLines.Length; i++)
            {
                int pos = this.macroLines[i].IndexOf(' ');

                if (pos > 0)
                {
                    if (this.macroLines[i].StartsWith("$Date$"))
                    {
                        string dateFormat = this.macroLines[i].Substring(pos, this.macroLines[i].Length - pos);
                        template = template.Replace("$Date$", DateTime.Now.ToString(dateFormat));
                    }
                    else if (this.macroLines[i].StartsWith("$User$"))
                    {
                        string user = this.macroLines[i].Substring(pos, this.macroLines[i].Length - pos);
                        template = template.Replace("$User$", user);
                    }
                }
            }

            line = template.Replace("$Key$", key).Replace("$Value$", val);

            return line;
        }

        private bool ReplaceLine(StreamWriter csvSW, StreamWriter sw, string line, List<Pos> posList, ref int stringNum, string header)
        {
            bool replaceFlag = false;

            if (posList == null || posList.Count == 0)
            {
                sw.WriteLine(line);
                return replaceFlag;
            }

            string key = string.Empty;
            string val = string.Empty;
            string tempLine = line.TrimStart(new char[] { ' ', '\t' });
            string empty = line.Substring(0, line.Length - line.TrimStart(new char[] { ' ', '\t' }).Length);

            string newLine = line;

            for (int i = posList.Count - 1; i >= 0;  i--)
            {
                val = line.Substring(posList[i].Start + 1, posList[i].End - posList[i].Start - 1);

                if (!this.HasFullSize(val))
                    continue;

                // 重复的中文去掉
                if (this.valKeyTable.ContainsValue(val))
                {
                    replaceFlag = true;

                    foreach(KeyValuePair<string, string> kvp in this.valKeyTable)
                    {
                        if (kvp.Value == val)
                            key = kvp.Key;
                    }
                }
                else
                {
                    replaceFlag = true;

                    while(true)
                    {
                        key = string.Format("{0}{1:D6}", header, stringNum + 1);
                        stringNum++;
                        if (!this.valKeyTable.ContainsValue(key))
                            break;
                    }
                    this.valKeyTable[key] = val;

                    if (val.IndexOf(',') > 0)
                        csvSW.WriteLine(string.Format("{0},\"{1}\"", key, val));
                    else
                        csvSW.WriteLine(string.Format("{0},{1}", key, val));
                }

                // Process before template
                foreach (string template in this.beforeTemplate)
                {
                    sw.WriteLine(empty + this.ExecuteMacro(key, val, template));
                }

                // Process current template, only one template support
                newLine = newLine.Remove(posList[i].Start, posList[i].End - posList[i].Start + 1);
                newLine = newLine.Insert(posList[i].Start, this.ExecuteMacro(key, val, this.currentTemplate[0]));
            }

            sw.WriteLine(newLine);

            // Process after template
            foreach (string template in this.afterTemplate)
            {
                sw.WriteLine(empty + this.ExecuteMacro(key, val, template));
            }

            return replaceFlag;
        }

        private bool ParseFile(StreamWriter csvSW, FileInfo fileInfo)
        {
            this.callback(fileInfo.Name);
            this.parser.Reset();

            bool replaceFlag = false;
            //string header = this.parser.ParserSetting.Key.ToUpper() + "_" + fileInfo.Name.Substring(0, fileInfo.Name.LastIndexOf('.')).ToUpper() + "_" + fileInfo.Extension.Substring(1, fileInfo.Extension.Length - 1).ToUpper() + "_";
            string header = string.Empty;

            if (char.IsDigit(fileInfo.Directory.Name[0]))
                header = "A" + fileInfo.Directory.Name.ToUpper() + "_" + fileInfo.Name.Substring(0, fileInfo.Name.LastIndexOf('.')).ToUpper() + "_" + fileInfo.Extension.Substring(1, fileInfo.Extension.Length - 1).ToUpper() + "_";
            else
                header = fileInfo.Directory.Name.ToUpper() + "_" + fileInfo.Name.Substring(0, fileInfo.Name.LastIndexOf('.')).ToUpper() + "_" + fileInfo.Extension.Substring(1, fileInfo.Extension.Length - 1).ToUpper() + "_";

            using (StreamReader sr = new StreamReader(fileInfo.FullName, Encoding.Default))
            {
                using (StreamWriter sw = new StreamWriter(fileInfo.FullName.Replace(this.location, this.newLocation), false, Encoding.Default))
                {
                    String line;
                    int lineNo = 0;

                    while ((line = sr.ReadLine()) != null)
                    {
                        if (this.parser.ReadLine(lineNo, line))
                        {

                        }

                        lineNo++;
                    }
                    if (!this.parser.ParseFile())
                        return false;

                    replaceFlag = this.ReplaceFile(csvSW, sw, header);
                }
            }

            if (!replaceFlag)
            {
                FileInfo desFileInfo = new FileInfo(fileInfo.FullName.Replace(this.location, this.newLocation));
                desFileInfo.LastWriteTime = fileInfo.LastWriteTime;
            }

            return true;
        }

        private bool ReplaceFile(StreamWriter csvSW, StreamWriter sw, string header)
        {
            int lineCount = this.parser.GetLineCount();
            string line = null;
            List<Pos> posList = null;
            int stringNum = 0;
            bool replaceFlag = false;

            for (int i = 0; i < lineCount; i++)
            {
                this.parser.GetLine(i, out line, out posList);

                if (this.ReplaceLine(csvSW, sw, line, posList, ref stringNum, header))
                    replaceFlag = true;
            }

            return replaceFlag;
        }
   }
}

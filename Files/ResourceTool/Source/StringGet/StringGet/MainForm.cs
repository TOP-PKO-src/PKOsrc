using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Configuration;
using System.Threading;

using Lark.LanguageCommon;

namespace Lark.StringGet
{
    public delegate void ProgressCallback(string fileName);
    public delegate void ProgressOKCallback(bool okFlag);

    public partial class MainForm : Form
    {
        private string title = "StringGet";

        private bool expandFlag = false;
        private Configuration config = null;
        private LanguageSection section = null;
        private string[] macroLines = null;

        public MainForm()
        {
            InitializeComponent();
 
            this.title = "StringGet:" + GetBuildTime();
            this.Text = this.title;
        }

        public void ResultCallback(string fileName)
        {
            if (this.InvokeRequired)
            {
                ProgressCallback c = new ProgressCallback(this.ResultCallback);
                this.Invoke(c, new object[] { fileName });
            }
            else
            {
                this.Text = fileName + " processing ...";
            }
        }

        public void OverCallback(bool flag)
        {
            if (this.InvokeRequired)
            {
                ProgressOKCallback c = new ProgressOKCallback(this.OverCallback);
                this.Invoke(c, new object[] { flag });
            }
            else
            {
                this.Text = title;

                if (flag)
                    MessageBox.Show("OK");
                else
                {

                }
            }
        }

        private void buttonExecute_Click(object sender, EventArgs e)
        {
            if (this.textBoxLocation.Text.Trim().Length == 0)
            {
                MessageBox.Show("Please input the location!");
                return;
            }

            if (this.textBoxFilter.Text.Trim().Length == 0)
            {
                this.textBoxFilter.Text = "*.*";
            }

            if (File.Exists(this.textBoxLocation.Text.Trim() + "\\KeyTable.tbl"))
            {
                if (MessageBox.Show("You may be replace once before! continue...?", "Warring!", MessageBoxButtons.YesNo) == DialogResult.No)
                    return;
            }

            StringExecutor executor = new StringExecutor(this.textBoxLocation.Text.Trim(), this.textBoxFilter.Text.Trim(),
                        this.checkBoxRecursion.Checked, this.comboBoxParser.Text, this.macroLines,
                        new ProgressCallback(this.ResultCallback), new ProgressOKCallback(this.OverCallback));

            Thread InstanceCaller = new Thread(new ThreadStart(executor.Execute));

            InstanceCaller.Start();

            //InstanceCaller.Join();
        }

        private void buttonLocation_Click(object sender, EventArgs e)
        {
            if (folderBrowserDialog.ShowDialog() == DialogResult.OK)
            {
                this.textBoxLocation.Text = folderBrowserDialog.SelectedPath;
            }
        }

        private void buttonOpen_Click(object sender, EventArgs e)
        {
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                this.comboBoxParser.SelectedIndexChanged -= new System.EventHandler(this.comboBoxParser_SelectedIndexChanged);
                LoadFile(openFileDialog.FileName);
                this.comboBoxParser.SelectedIndexChanged += new System.EventHandler(this.comboBoxParser_SelectedIndexChanged);
            }
        }

        private void buttonSave_Click(object sender, EventArgs e)
        {
            if (this.textBoxFilter.Text.Trim().Length == 0)
            {
                this.textBoxFilter.Text = "*.*";
            }

            if (saveFileDialog.ShowDialog() == DialogResult.OK)
            {
                SaveFile(saveFileDialog.FileName);
            }
        }

        private void buttonClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void LoadFile(string fileName)
        {
            using (StreamReader sr = new StreamReader(fileName))
            {
                this.textBoxLocation.Text = sr.ReadLine();
                this.textBoxFilter.Text = sr.ReadLine();
                this.comboBoxParser.SelectedItem = sr.ReadLine();
                this.checkBoxRecursion.Checked = Boolean.Parse(sr.ReadLine());
                sr.ReadLine(); // before
                string line = string.Empty;

                List<string> lines = new List<string>();

                while ((line = sr.ReadLine()) != "Current")
                {
                    lines.Add(line);
                }

                this.textBoxBeforeTemplate.Text = "";

                for (int i = 0; i < lines.Count; i++)
                    this.textBoxBeforeTemplate.Text = this.textBoxBeforeTemplate.Text == "" ? lines[i] : this.textBoxBeforeTemplate.Text + "\r\n" + lines[i]; 

                lines.Clear();

                while ((line = sr.ReadLine()) != "After")
                {
                    lines.Add(line);
                }

                this.textBoxCurrentTemplate.Text = "";

                for (int i = 0; i < lines.Count; i++)
                    this.textBoxCurrentTemplate.Text = this.textBoxCurrentTemplate.Text == "" ? lines[i] : this.textBoxCurrentTemplate.Text + "\r\n" + lines[i]; 

                lines.Clear();

                while ((line = sr.ReadLine()) != "Macro")
                {
                    lines.Add(line);
                }

                this.textBoxAfterTemplate.Text = "";

                for (int i = 0; i < lines.Count; i++)
                    this.textBoxAfterTemplate.Text = this.textBoxAfterTemplate.Text == "" ? lines[i] : this.textBoxAfterTemplate.Text + "\r\n" + lines[i];


                lines.Clear();

                while ((line = sr.ReadLine()) != null)
                {
                    lines.Add(line);
                }

                this.macroLines = new string[lines.Count];
                
                for (int i = 0; i < lines.Count; i++)
                {
                    this.macroLines[i] = lines[i];
                }
            }
        }

        private void SaveFile(string fileName)
        {
            using (StreamWriter sw = new StreamWriter(fileName, false))
            {
                sw.WriteLine(this.textBoxLocation.Text);
                sw.WriteLine(this.textBoxFilter.Text);
                sw.WriteLine(this.comboBoxParser.SelectedItem.ToString());
                sw.WriteLine(this.checkBoxRecursion.Checked.ToString());

                sw.WriteLine("Before");

                foreach (string str in this.textBoxBeforeTemplate.Lines)
                    sw.WriteLine(str);

                sw.WriteLine("Current");

                foreach (string str in this.textBoxCurrentTemplate.Lines)
                    sw.WriteLine(str);

                sw.WriteLine("After");

                foreach (string str in this.textBoxAfterTemplate.Lines)
                    sw.WriteLine(str);

                sw.WriteLine("Macro");

                foreach (string str in this.macroLines)
                    sw.WriteLine(str);
            }
        }

        private void textBoxLocation_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBoxFilter_TextChanged(object sender, EventArgs e)
        {

        }

        private void buttonExpand_Click(object sender, EventArgs e)
        {
            if (expandFlag)
            {
                this.Height = 240;
                this.buttonExpand.Text = "Expand";
            }
            else
            {
                this.Height = 440;
                this.buttonExpand.Text = "Contract";
            }

            expandFlag = !expandFlag;
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            this.Height = 240;

            config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            section = config.GetSection("LanguageParser") as LanguageSection;

            this.comboBoxParser.Items.Clear();
            this.comboBoxType.Items.Clear();

            for (int i = 0; i < section.Parsers.Count; i++)
            {
                this.comboBoxParser.Items.Add(section.Parsers[i].Key);
                this.comboBoxType.Items.Add(section.Parsers[i].Key);
            }

            this.comboBoxParser.SelectedIndexChanged += new System.EventHandler(this.comboBoxParser_SelectedIndexChanged);
            this.comboBoxParser.SelectedIndex = 0;
            this.comboBoxType.SelectedIndex = 0;

            this.macroLines = new string[] { "$Key$","$Value$","$Date$ \"yyyy/MMdd HH:mm:ss\"", "$User$"};

        }

        private void comboBoxParser_SelectedIndexChanged(object sender, EventArgs e)
        {
            ParserElement item = section.Parsers[this.comboBoxParser.SelectedItem as string];

            this.textBoxBeforeTemplate.Text = item.BeforeTemplate.Val;
            this.textBoxCurrentTemplate.Text = item.CurrentTemplate.Val;
            this.textBoxAfterTemplate.Text = item.AfterTemplate.Val;

        }

        private void buttonTemplateSave_Click(object sender, EventArgs e)
        {
            ParserElement item = section.Parsers[this.comboBoxParser.SelectedItem as string];

            item.BeforeTemplate.Val = string.Empty;

            foreach (string str in this.textBoxBeforeTemplate.Lines)
                item.BeforeTemplate.Val = item.BeforeTemplate.Val == string.Empty ? str : item.BeforeTemplate.Val + "\r\n" + str;

            item.CurrentTemplate.Val = string.Empty;

            foreach (string str in this.textBoxCurrentTemplate.Lines)
                item.CurrentTemplate.Val = item.CurrentTemplate.Val == string.Empty ? str : item.CurrentTemplate.Val + "\r\n" + str;

            item.AfterTemplate.Val = string.Empty;

            foreach (string str in this.textBoxAfterTemplate.Lines)
                item.AfterTemplate.Val = item.AfterTemplate.Val == string.Empty ? str : item.AfterTemplate.Val + "\r\n" + str;

            SaveConfig();
        }

        private void SaveConfig()
        {
            config.Save(ConfigurationSaveMode.Modified);
        }

        private void buttonMacro_Click(object sender, EventArgs e)
        {
            MacroForm form = new MacroForm(this.macroLines);
            if (form.ShowDialog() == DialogResult.OK)
            {
                this.macroLines = form.macroLines;
            }
        }
    }
}

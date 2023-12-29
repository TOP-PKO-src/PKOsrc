using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace Lark.StringGet
{
    public partial class MacroForm : Form
    {
        public string[] macroLines = null;

        public MacroForm(string[] macroLines)
        {
            InitializeComponent();

            this.macroLines = macroLines;
        }

        private void MacroForm_Load(object sender, EventArgs e)
        {
            this.textBoxMacro.Text = "";

            for (int i = 0; i < macroLines.Length; i++)
                this.textBoxMacro.Text = this.textBoxMacro.Text == "" ? macroLines[i] : this.textBoxMacro.Text + "\r\n" + macroLines[i];
        }

        private void buttonOK_Click(object sender, EventArgs e)
        {
            this.macroLines = this.textBoxMacro.Lines;
        }
    }
}

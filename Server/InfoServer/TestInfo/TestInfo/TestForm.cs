using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Net.Sockets;
using System.Configuration;

namespace TestInfo
{

    public partial class TestForm : Form
    {
        private Socket s = null;
        private DataSection section = null;

        public TestForm()
        {
            InitializeComponent();
        }

        private void SaveConfig(CommandElement data)
        {
            Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);

            DataSection dataSection = config.Sections["Data"] as DataSection;
            dataSection.Commands[data.Key].Value = data.Value;

            config.Save(ConfigurationSaveMode.Modified);
        }

        private void TestForm_Load(object sender, EventArgs e)
        {
            section = ConfigurationManager.GetSection("Data") as DataSection;       

            labelStatus.Text = string.Empty;
            labelReturn.Text = string.Empty;

            comboBoxCommand.Items.Clear();

            comboBoxCommand.DisplayMember = "Command";
            comboBoxCommand.ValueMember = "Key";

            foreach(CommandElement command in section.Commands)
                comboBoxCommand.Items.Add(command);

            comboBoxCommand.SelectedIndex = 0;
        }

        private void buttonConnect_Click(object sender, EventArgs e)
        {
            s = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            s.Connect(this.textBoxIP.Text, Int32.Parse(this.textBoxPort.Text));

            this.groupBoxCommand.Enabled = true;
            this.buttonConnect.Enabled = false;
            this.buttonDisconnect.Enabled = true;
        }

        private void buttonDisconnect_Click(object sender, EventArgs e)
        {
            s.Disconnect(true);

            this.groupBoxCommand.Enabled = false;
            this.buttonDisconnect.Enabled = false;
            this.buttonConnect.Enabled = true;
        }

        private void comboBoxCommand_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.textBoxCommand.Clear();

            CommandElement data = this.comboBoxCommand.SelectedItem as CommandElement;
            this.textBoxCommand.Text = data.Value;

            this.labelStatus.Text = data.Content;
            this.labelReturn.Text = string.Empty;
        }

        private void buttonExecute_Click(object sender, EventArgs e)
        {
            string key = string.Empty;

            if (this.textBoxInput.Text.Length > 0)
            {
                key = this.textBoxInput.Text.Trim();
            }
            else
            {
                CommandElement data = this.comboBoxCommand.SelectedItem as CommandElement;
                data.Value = this.textBoxCommand.Text;
                SaveConfig(data);

                key = data.Key;
            }

            StringBuilder builder = new StringBuilder(key);
            builder.Append(" ");
            builder.Append(this.textBoxCommand.Text);
            builder.Append("\n\n");

            s.Send(Encoding.ASCII.GetBytes(builder.ToString()));

            byte[] buffer = new byte[1024];
            int size = s.Receive(buffer);
            string str = Encoding.ASCII.GetString(buffer);

            int start = str.IndexOf(' ');
            int end = str.LastIndexOf("\n\n");

            if(start>0 && end > start)
                labelReturn.Text = section.Commands[key].Rets[str.Substring(0, start)].Content + "\r\n" + str.Substring(start + 1, end - start - 1);
        }

        private void textBoxInput_TextChanged(object sender, EventArgs e)
        {
            if(textBoxInput.Text.Trim().Length > 0)
                this.comboBoxCommand.Enabled = false;
            else
                this.comboBoxCommand.Enabled = true;

            this.labelStatus.Text = string.Empty;
            this.labelReturn.Text = string.Empty;
        }

        private void buttonID_Click(object sender, EventArgs e)
        {
            string str = this.textBoxCommand.Text;

            int start = str.IndexOf(' ');

            if (start > 0 && start < str.Length)
            {
                this.textBoxCommand.Text = Guid.NewGuid().ToString("N") + str.Substring(start, str.Length - start);
            }
        }
    }
}
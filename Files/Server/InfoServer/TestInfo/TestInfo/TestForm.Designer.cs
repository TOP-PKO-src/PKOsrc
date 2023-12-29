namespace TestInfo
{
    partial class TestForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.buttonConnect = new System.Windows.Forms.Button();
            this.textBoxIP = new System.Windows.Forms.TextBox();
            this.textBoxPort = new System.Windows.Forms.TextBox();
            this.labelIP = new System.Windows.Forms.Label();
            this.labelPort = new System.Windows.Forms.Label();
            this.buttonDisconnect = new System.Windows.Forms.Button();
            this.groupBoxLogin = new System.Windows.Forms.GroupBox();
            this.groupBoxCommand = new System.Windows.Forms.GroupBox();
            this.textBoxInput = new System.Windows.Forms.TextBox();
            this.labelReturn = new System.Windows.Forms.Label();
            this.labelStatus = new System.Windows.Forms.Label();
            this.textBoxCommand = new System.Windows.Forms.TextBox();
            this.comboBoxCommand = new System.Windows.Forms.ComboBox();
            this.labelOr = new System.Windows.Forms.Label();
            this.labelCommand = new System.Windows.Forms.Label();
            this.buttonExecute = new System.Windows.Forms.Button();
            this.buttonID = new System.Windows.Forms.Button();
            this.groupBoxLogin.SuspendLayout();
            this.groupBoxCommand.SuspendLayout();
            this.SuspendLayout();
            // 
            // buttonConnect
            // 
            this.buttonConnect.Location = new System.Drawing.Point(297, 18);
            this.buttonConnect.Name = "buttonConnect";
            this.buttonConnect.Size = new System.Drawing.Size(75, 23);
            this.buttonConnect.TabIndex = 0;
            this.buttonConnect.Text = "Connect";
            this.buttonConnect.UseVisualStyleBackColor = true;
            this.buttonConnect.Click += new System.EventHandler(this.buttonConnect_Click);
            // 
            // textBoxIP
            // 
            this.textBoxIP.Location = new System.Drawing.Point(45, 20);
            this.textBoxIP.Name = "textBoxIP";
            this.textBoxIP.Size = new System.Drawing.Size(119, 21);
            this.textBoxIP.TabIndex = 1;
            this.textBoxIP.Text = "127.0.0.1";
            // 
            // textBoxPort
            // 
            this.textBoxPort.Location = new System.Drawing.Point(220, 20);
            this.textBoxPort.Name = "textBoxPort";
            this.textBoxPort.Size = new System.Drawing.Size(48, 21);
            this.textBoxPort.TabIndex = 1;
            this.textBoxPort.Text = "5005";
            // 
            // labelIP
            // 
            this.labelIP.AutoSize = true;
            this.labelIP.Location = new System.Drawing.Point(15, 23);
            this.labelIP.Name = "labelIP";
            this.labelIP.Size = new System.Drawing.Size(23, 12);
            this.labelIP.TabIndex = 2;
            this.labelIP.Text = "IP:";
            // 
            // labelPort
            // 
            this.labelPort.AutoSize = true;
            this.labelPort.Location = new System.Drawing.Point(170, 23);
            this.labelPort.Name = "labelPort";
            this.labelPort.Size = new System.Drawing.Size(35, 12);
            this.labelPort.TabIndex = 2;
            this.labelPort.Text = "Port:";
            // 
            // buttonDisconnect
            // 
            this.buttonDisconnect.Enabled = false;
            this.buttonDisconnect.Location = new System.Drawing.Point(391, 18);
            this.buttonDisconnect.Name = "buttonDisconnect";
            this.buttonDisconnect.Size = new System.Drawing.Size(75, 23);
            this.buttonDisconnect.TabIndex = 0;
            this.buttonDisconnect.Text = "Disconnect";
            this.buttonDisconnect.UseVisualStyleBackColor = true;
            this.buttonDisconnect.Click += new System.EventHandler(this.buttonDisconnect_Click);
            // 
            // groupBoxLogin
            // 
            this.groupBoxLogin.Controls.Add(this.textBoxIP);
            this.groupBoxLogin.Controls.Add(this.labelPort);
            this.groupBoxLogin.Controls.Add(this.buttonConnect);
            this.groupBoxLogin.Controls.Add(this.labelIP);
            this.groupBoxLogin.Controls.Add(this.buttonDisconnect);
            this.groupBoxLogin.Controls.Add(this.textBoxPort);
            this.groupBoxLogin.Location = new System.Drawing.Point(12, 12);
            this.groupBoxLogin.Name = "groupBoxLogin";
            this.groupBoxLogin.Size = new System.Drawing.Size(484, 59);
            this.groupBoxLogin.TabIndex = 3;
            this.groupBoxLogin.TabStop = false;
            this.groupBoxLogin.Text = "Login";
            // 
            // groupBoxCommand
            // 
            this.groupBoxCommand.Controls.Add(this.textBoxInput);
            this.groupBoxCommand.Controls.Add(this.labelReturn);
            this.groupBoxCommand.Controls.Add(this.labelStatus);
            this.groupBoxCommand.Controls.Add(this.textBoxCommand);
            this.groupBoxCommand.Controls.Add(this.comboBoxCommand);
            this.groupBoxCommand.Controls.Add(this.labelOr);
            this.groupBoxCommand.Controls.Add(this.labelCommand);
            this.groupBoxCommand.Controls.Add(this.buttonID);
            this.groupBoxCommand.Controls.Add(this.buttonExecute);
            this.groupBoxCommand.Enabled = false;
            this.groupBoxCommand.Location = new System.Drawing.Point(12, 77);
            this.groupBoxCommand.Name = "groupBoxCommand";
            this.groupBoxCommand.Size = new System.Drawing.Size(484, 278);
            this.groupBoxCommand.TabIndex = 4;
            this.groupBoxCommand.TabStop = false;
            this.groupBoxCommand.Text = "Command";
            // 
            // textBoxInput
            // 
            this.textBoxInput.Location = new System.Drawing.Point(220, 18);
            this.textBoxInput.MaxLength = 5;
            this.textBoxInput.Name = "textBoxInput";
            this.textBoxInput.Size = new System.Drawing.Size(54, 21);
            this.textBoxInput.TabIndex = 1;
            this.textBoxInput.TextChanged += new System.EventHandler(this.textBoxInput_TextChanged);
            // 
            // labelReturn
            // 
            this.labelReturn.Location = new System.Drawing.Point(43, 212);
            this.labelReturn.MaximumSize = new System.Drawing.Size(420, 48);
            this.labelReturn.MinimumSize = new System.Drawing.Size(420, 12);
            this.labelReturn.Name = "labelReturn";
            this.labelReturn.Size = new System.Drawing.Size(420, 48);
            this.labelReturn.TabIndex = 4;
            this.labelReturn.Text = "Ready!";
            // 
            // labelStatus
            // 
            this.labelStatus.Location = new System.Drawing.Point(43, 130);
            this.labelStatus.MaximumSize = new System.Drawing.Size(420, 60);
            this.labelStatus.MinimumSize = new System.Drawing.Size(420, 12);
            this.labelStatus.Name = "labelStatus";
            this.labelStatus.Size = new System.Drawing.Size(420, 60);
            this.labelStatus.TabIndex = 4;
            this.labelStatus.Text = "Ready!";
            // 
            // textBoxCommand
            // 
            this.textBoxCommand.Location = new System.Drawing.Point(43, 56);
            this.textBoxCommand.Multiline = true;
            this.textBoxCommand.Name = "textBoxCommand";
            this.textBoxCommand.Size = new System.Drawing.Size(423, 58);
            this.textBoxCommand.TabIndex = 3;
            // 
            // comboBoxCommand
            // 
            this.comboBoxCommand.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxCommand.FormattingEnabled = true;
            this.comboBoxCommand.Location = new System.Drawing.Point(43, 20);
            this.comboBoxCommand.Name = "comboBoxCommand";
            this.comboBoxCommand.Size = new System.Drawing.Size(121, 20);
            this.comboBoxCommand.TabIndex = 0;
            this.comboBoxCommand.SelectedIndexChanged += new System.EventHandler(this.comboBoxCommand_SelectedIndexChanged);
            // 
            // labelOr
            // 
            this.labelOr.AutoSize = true;
            this.labelOr.Location = new System.Drawing.Point(176, 23);
            this.labelOr.Name = "labelOr";
            this.labelOr.Size = new System.Drawing.Size(23, 12);
            this.labelOr.TabIndex = 2;
            this.labelOr.Text = "Or:";
            // 
            // labelCommand
            // 
            this.labelCommand.AutoSize = true;
            this.labelCommand.Location = new System.Drawing.Point(14, 23);
            this.labelCommand.Name = "labelCommand";
            this.labelCommand.Size = new System.Drawing.Size(29, 12);
            this.labelCommand.TabIndex = 2;
            this.labelCommand.Text = "CMD:";
            // 
            // buttonExecute
            // 
            this.buttonExecute.Location = new System.Drawing.Point(391, 18);
            this.buttonExecute.Name = "buttonExecute";
            this.buttonExecute.Size = new System.Drawing.Size(75, 23);
            this.buttonExecute.TabIndex = 0;
            this.buttonExecute.Text = "Execute";
            this.buttonExecute.UseVisualStyleBackColor = true;
            this.buttonExecute.Click += new System.EventHandler(this.buttonExecute_Click);
            // 
            // buttonID
            // 
            this.buttonID.Location = new System.Drawing.Point(297, 17);
            this.buttonID.Name = "buttonID";
            this.buttonID.Size = new System.Drawing.Size(75, 23);
            this.buttonID.TabIndex = 0;
            this.buttonID.Text = "CreateID";
            this.buttonID.UseVisualStyleBackColor = true;
            this.buttonID.Click += new System.EventHandler(this.buttonID_Click);
            // 
            // TestForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(513, 371);
            this.Controls.Add(this.groupBoxCommand);
            this.Controls.Add(this.groupBoxLogin);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "TestForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "网络通讯协议测试程序";
            this.Load += new System.EventHandler(this.TestForm_Load);
            this.groupBoxLogin.ResumeLayout(false);
            this.groupBoxLogin.PerformLayout();
            this.groupBoxCommand.ResumeLayout(false);
            this.groupBoxCommand.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button buttonConnect;
        private System.Windows.Forms.TextBox textBoxIP;
        private System.Windows.Forms.TextBox textBoxPort;
        private System.Windows.Forms.Label labelIP;
        private System.Windows.Forms.Label labelPort;
        private System.Windows.Forms.Button buttonDisconnect;
        private System.Windows.Forms.GroupBox groupBoxLogin;
        private System.Windows.Forms.GroupBox groupBoxCommand;
        private System.Windows.Forms.ComboBox comboBoxCommand;
        private System.Windows.Forms.Label labelCommand;
        private System.Windows.Forms.TextBox textBoxCommand;
        private System.Windows.Forms.Button buttonExecute;
        private System.Windows.Forms.Label labelStatus;
        private System.Windows.Forms.Label labelReturn;
        private System.Windows.Forms.TextBox textBoxInput;
        private System.Windows.Forms.Label labelOr;
        private System.Windows.Forms.Button buttonID;
    }
}


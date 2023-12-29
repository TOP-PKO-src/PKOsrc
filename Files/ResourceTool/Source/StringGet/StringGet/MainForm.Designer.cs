namespace Lark.StringGet
{
    partial class MainForm
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
            this.buttonExecute = new System.Windows.Forms.Button();
            this.textBoxLocation = new System.Windows.Forms.TextBox();
            this.labelLocation = new System.Windows.Forms.Label();
            this.buttonLocation = new System.Windows.Forms.Button();
            this.textBoxFilter = new System.Windows.Forms.TextBox();
            this.labelFilter = new System.Windows.Forms.Label();
            this.folderBrowserDialog = new System.Windows.Forms.FolderBrowserDialog();
            this.buttonClose = new System.Windows.Forms.Button();
            this.buttonOpen = new System.Windows.Forms.Button();
            this.buttonSave = new System.Windows.Forms.Button();
            this.groupBox = new System.Windows.Forms.GroupBox();
            this.checkBoxRecursion = new System.Windows.Forms.CheckBox();
            this.comboBoxParser = new System.Windows.Forms.ComboBox();
            this.groupBoxTemplate = new System.Windows.Forms.GroupBox();
            this.textBoxAfterTemplate = new System.Windows.Forms.TextBox();
            this.buttonMacro = new System.Windows.Forms.Button();
            this.buttonTemplateSave = new System.Windows.Forms.Button();
            this.labelAfter = new System.Windows.Forms.Label();
            this.textBoxCurrentTemplate = new System.Windows.Forms.TextBox();
            this.labelCurrent = new System.Windows.Forms.Label();
            this.textBoxBeforeTemplate = new System.Windows.Forms.TextBox();
            this.labelBefore = new System.Windows.Forms.Label();
            this.labelComment = new System.Windows.Forms.Label();
            this.buttonExpand = new System.Windows.Forms.Button();
            this.openFileDialog = new System.Windows.Forms.OpenFileDialog();
            this.saveFileDialog = new System.Windows.Forms.SaveFileDialog();
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabPageExport = new System.Windows.Forms.TabPage();
            this.tabPageQuery = new System.Windows.Forms.TabPage();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.checkBoxType = new System.Windows.Forms.CheckBox();
            this.comboBoxType = new System.Windows.Forms.ComboBox();
            this.labelType = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.buttonGo = new System.Windows.Forms.Button();
            this.textBoxData = new System.Windows.Forms.TextBox();
            this.labelData = new System.Windows.Forms.Label();
            this.buttonFile = new System.Windows.Forms.Button();
            this.buttonData = new System.Windows.Forms.Button();
            this.textBoxFile = new System.Windows.Forms.TextBox();
            this.openFileDialogData = new System.Windows.Forms.OpenFileDialog();
            this.groupBox.SuspendLayout();
            this.groupBoxTemplate.SuspendLayout();
            this.tabControl.SuspendLayout();
            this.tabPageExport.SuspendLayout();
            this.tabPageQuery.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // buttonExecute
            // 
            this.buttonExecute.Location = new System.Drawing.Point(496, 60);
            this.buttonExecute.Name = "buttonExecute";
            this.buttonExecute.Size = new System.Drawing.Size(75, 23);
            this.buttonExecute.TabIndex = 0;
            this.buttonExecute.Text = "Execute";
            this.buttonExecute.UseVisualStyleBackColor = true;
            this.buttonExecute.Click += new System.EventHandler(this.buttonExecute_Click);
            // 
            // textBoxLocation
            // 
            this.textBoxLocation.Location = new System.Drawing.Point(71, 26);
            this.textBoxLocation.Name = "textBoxLocation";
            this.textBoxLocation.Size = new System.Drawing.Size(400, 21);
            this.textBoxLocation.TabIndex = 1;
            this.textBoxLocation.TextChanged += new System.EventHandler(this.textBoxLocation_TextChanged);
            // 
            // labelLocation
            // 
            this.labelLocation.AutoSize = true;
            this.labelLocation.Location = new System.Drawing.Point(6, 32);
            this.labelLocation.Name = "labelLocation";
            this.labelLocation.Size = new System.Drawing.Size(59, 12);
            this.labelLocation.TabIndex = 2;
            this.labelLocation.Text = "Location:";
            // 
            // buttonLocation
            // 
            this.buttonLocation.Location = new System.Drawing.Point(496, 26);
            this.buttonLocation.Name = "buttonLocation";
            this.buttonLocation.Size = new System.Drawing.Size(75, 23);
            this.buttonLocation.TabIndex = 3;
            this.buttonLocation.Text = "Location";
            this.buttonLocation.UseVisualStyleBackColor = true;
            this.buttonLocation.Click += new System.EventHandler(this.buttonLocation_Click);
            // 
            // textBoxFilter
            // 
            this.textBoxFilter.Location = new System.Drawing.Point(71, 62);
            this.textBoxFilter.Name = "textBoxFilter";
            this.textBoxFilter.Size = new System.Drawing.Size(400, 21);
            this.textBoxFilter.TabIndex = 1;
            this.textBoxFilter.Text = "*.*";
            this.textBoxFilter.TextChanged += new System.EventHandler(this.textBoxFilter_TextChanged);
            // 
            // labelFilter
            // 
            this.labelFilter.AutoSize = true;
            this.labelFilter.Location = new System.Drawing.Point(6, 68);
            this.labelFilter.Name = "labelFilter";
            this.labelFilter.Size = new System.Drawing.Size(47, 12);
            this.labelFilter.TabIndex = 2;
            this.labelFilter.Text = "Filter:";
            // 
            // buttonClose
            // 
            this.buttonClose.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.buttonClose.Location = new System.Drawing.Point(511, 341);
            this.buttonClose.Name = "buttonClose";
            this.buttonClose.Size = new System.Drawing.Size(79, 25);
            this.buttonClose.TabIndex = 3;
            this.buttonClose.Text = "Close";
            this.buttonClose.UseVisualStyleBackColor = true;
            this.buttonClose.Click += new System.EventHandler(this.buttonClose_Click);
            // 
            // buttonOpen
            // 
            this.buttonOpen.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.buttonOpen.Location = new System.Drawing.Point(285, 341);
            this.buttonOpen.Name = "buttonOpen";
            this.buttonOpen.Size = new System.Drawing.Size(79, 25);
            this.buttonOpen.TabIndex = 3;
            this.buttonOpen.Text = "Open";
            this.buttonOpen.UseVisualStyleBackColor = true;
            this.buttonOpen.Click += new System.EventHandler(this.buttonOpen_Click);
            // 
            // buttonSave
            // 
            this.buttonSave.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.buttonSave.Location = new System.Drawing.Point(398, 341);
            this.buttonSave.Name = "buttonSave";
            this.buttonSave.Size = new System.Drawing.Size(79, 25);
            this.buttonSave.TabIndex = 3;
            this.buttonSave.Text = "Save";
            this.buttonSave.UseVisualStyleBackColor = true;
            this.buttonSave.Click += new System.EventHandler(this.buttonSave_Click);
            // 
            // groupBox
            // 
            this.groupBox.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox.Controls.Add(this.checkBoxRecursion);
            this.groupBox.Controls.Add(this.comboBoxParser);
            this.groupBox.Controls.Add(this.groupBoxTemplate);
            this.groupBox.Controls.Add(this.labelComment);
            this.groupBox.Controls.Add(this.labelFilter);
            this.groupBox.Controls.Add(this.buttonExpand);
            this.groupBox.Controls.Add(this.buttonExecute);
            this.groupBox.Controls.Add(this.textBoxLocation);
            this.groupBox.Controls.Add(this.labelLocation);
            this.groupBox.Controls.Add(this.buttonLocation);
            this.groupBox.Controls.Add(this.textBoxFilter);
            this.groupBox.Location = new System.Drawing.Point(6, -1);
            this.groupBox.Name = "groupBox";
            this.groupBox.Size = new System.Drawing.Size(604, 333);
            this.groupBox.TabIndex = 4;
            this.groupBox.TabStop = false;
            // 
            // checkBoxRecursion
            // 
            this.checkBoxRecursion.AutoSize = true;
            this.checkBoxRecursion.Checked = true;
            this.checkBoxRecursion.CheckState = System.Windows.Forms.CheckState.Checked;
            this.checkBoxRecursion.Location = new System.Drawing.Point(249, 101);
            this.checkBoxRecursion.Name = "checkBoxRecursion";
            this.checkBoxRecursion.Size = new System.Drawing.Size(78, 16);
            this.checkBoxRecursion.TabIndex = 6;
            this.checkBoxRecursion.Text = "Recursion";
            this.checkBoxRecursion.UseVisualStyleBackColor = true;
            // 
            // comboBoxParser
            // 
            this.comboBoxParser.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxParser.FormattingEnabled = true;
            this.comboBoxParser.Location = new System.Drawing.Point(71, 97);
            this.comboBoxParser.Name = "comboBoxParser";
            this.comboBoxParser.Size = new System.Drawing.Size(121, 20);
            this.comboBoxParser.TabIndex = 5;
            // 
            // groupBoxTemplate
            // 
            this.groupBoxTemplate.Controls.Add(this.textBoxAfterTemplate);
            this.groupBoxTemplate.Controls.Add(this.buttonMacro);
            this.groupBoxTemplate.Controls.Add(this.buttonTemplateSave);
            this.groupBoxTemplate.Controls.Add(this.labelAfter);
            this.groupBoxTemplate.Controls.Add(this.textBoxCurrentTemplate);
            this.groupBoxTemplate.Controls.Add(this.labelCurrent);
            this.groupBoxTemplate.Controls.Add(this.textBoxBeforeTemplate);
            this.groupBoxTemplate.Controls.Add(this.labelBefore);
            this.groupBoxTemplate.Location = new System.Drawing.Point(8, 140);
            this.groupBoxTemplate.Name = "groupBoxTemplate";
            this.groupBoxTemplate.Size = new System.Drawing.Size(563, 181);
            this.groupBoxTemplate.TabIndex = 4;
            this.groupBoxTemplate.TabStop = false;
            this.groupBoxTemplate.Text = "Template";
            // 
            // textBoxAfterTemplate
            // 
            this.textBoxAfterTemplate.Location = new System.Drawing.Point(115, 116);
            this.textBoxAfterTemplate.Multiline = true;
            this.textBoxAfterTemplate.Name = "textBoxAfterTemplate";
            this.textBoxAfterTemplate.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.textBoxAfterTemplate.Size = new System.Drawing.Size(348, 42);
            this.textBoxAfterTemplate.TabIndex = 1;
            this.textBoxAfterTemplate.Text = "\'\'\'Add";
            this.textBoxAfterTemplate.TextChanged += new System.EventHandler(this.textBoxFilter_TextChanged);
            // 
            // buttonMacro
            // 
            this.buttonMacro.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonMacro.Location = new System.Drawing.Point(482, 106);
            this.buttonMacro.Name = "buttonMacro";
            this.buttonMacro.Size = new System.Drawing.Size(75, 23);
            this.buttonMacro.TabIndex = 3;
            this.buttonMacro.Text = "Macro";
            this.buttonMacro.UseVisualStyleBackColor = true;
            this.buttonMacro.Click += new System.EventHandler(this.buttonMacro_Click);
            // 
            // buttonTemplateSave
            // 
            this.buttonTemplateSave.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.buttonTemplateSave.Location = new System.Drawing.Point(482, 135);
            this.buttonTemplateSave.Name = "buttonTemplateSave";
            this.buttonTemplateSave.Size = new System.Drawing.Size(75, 23);
            this.buttonTemplateSave.TabIndex = 3;
            this.buttonTemplateSave.Text = "Save";
            this.buttonTemplateSave.UseVisualStyleBackColor = true;
            this.buttonTemplateSave.Click += new System.EventHandler(this.buttonTemplateSave_Click);
            // 
            // labelAfter
            // 
            this.labelAfter.AutoSize = true;
            this.labelAfter.Location = new System.Drawing.Point(50, 122);
            this.labelAfter.Name = "labelAfter";
            this.labelAfter.Size = new System.Drawing.Size(41, 12);
            this.labelAfter.TabIndex = 2;
            this.labelAfter.Text = "After:";
            // 
            // textBoxCurrentTemplate
            // 
            this.textBoxCurrentTemplate.Location = new System.Drawing.Point(115, 74);
            this.textBoxCurrentTemplate.Name = "textBoxCurrentTemplate";
            this.textBoxCurrentTemplate.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.textBoxCurrentTemplate.Size = new System.Drawing.Size(348, 21);
            this.textBoxCurrentTemplate.TabIndex = 1;
            this.textBoxCurrentTemplate.TextChanged += new System.EventHandler(this.textBoxFilter_TextChanged);
            // 
            // labelCurrent
            // 
            this.labelCurrent.AutoSize = true;
            this.labelCurrent.Location = new System.Drawing.Point(50, 74);
            this.labelCurrent.Name = "labelCurrent";
            this.labelCurrent.Size = new System.Drawing.Size(53, 12);
            this.labelCurrent.TabIndex = 2;
            this.labelCurrent.Text = "Current:";
            // 
            // textBoxBeforeTemplate
            // 
            this.textBoxBeforeTemplate.Location = new System.Drawing.Point(115, 20);
            this.textBoxBeforeTemplate.Multiline = true;
            this.textBoxBeforeTemplate.Name = "textBoxBeforeTemplate";
            this.textBoxBeforeTemplate.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.textBoxBeforeTemplate.Size = new System.Drawing.Size(348, 42);
            this.textBoxBeforeTemplate.TabIndex = 1;
            this.textBoxBeforeTemplate.Text = "\'\'\'Add";
            this.textBoxBeforeTemplate.TextChanged += new System.EventHandler(this.textBoxFilter_TextChanged);
            // 
            // labelBefore
            // 
            this.labelBefore.AutoSize = true;
            this.labelBefore.Location = new System.Drawing.Point(50, 26);
            this.labelBefore.Name = "labelBefore";
            this.labelBefore.Size = new System.Drawing.Size(47, 12);
            this.labelBefore.TabIndex = 2;
            this.labelBefore.Text = "Before:";
            // 
            // labelComment
            // 
            this.labelComment.AutoSize = true;
            this.labelComment.Location = new System.Drawing.Point(6, 97);
            this.labelComment.Name = "labelComment";
            this.labelComment.Size = new System.Drawing.Size(53, 12);
            this.labelComment.TabIndex = 2;
            this.labelComment.Text = "Comment:";
            // 
            // buttonExpand
            // 
            this.buttonExpand.Location = new System.Drawing.Point(496, 97);
            this.buttonExpand.Name = "buttonExpand";
            this.buttonExpand.Size = new System.Drawing.Size(75, 23);
            this.buttonExpand.TabIndex = 0;
            this.buttonExpand.Text = "Expand";
            this.buttonExpand.UseVisualStyleBackColor = true;
            this.buttonExpand.Click += new System.EventHandler(this.buttonExpand_Click);
            // 
            // openFileDialog
            // 
            this.openFileDialog.DefaultExt = "*.sgp";
            this.openFileDialog.FileName = "openFileDialog1";
            this.openFileDialog.Filter = "String Get Project|*.sgp|All file|*.*";
            // 
            // saveFileDialog
            // 
            this.saveFileDialog.DefaultExt = "*.sgp";
            this.saveFileDialog.FileName = "First";
            this.saveFileDialog.Filter = "String Get Project|*.sgp|All file|*.*";
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabPageExport);
            this.tabControl.Controls.Add(this.tabPageQuery);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Location = new System.Drawing.Point(0, 0);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(634, 408);
            this.tabControl.TabIndex = 5;
            // 
            // tabPageExport
            // 
            this.tabPageExport.Controls.Add(this.groupBox);
            this.tabPageExport.Controls.Add(this.buttonSave);
            this.tabPageExport.Controls.Add(this.buttonClose);
            this.tabPageExport.Controls.Add(this.buttonOpen);
            this.tabPageExport.Location = new System.Drawing.Point(4, 21);
            this.tabPageExport.Name = "tabPageExport";
            this.tabPageExport.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageExport.Size = new System.Drawing.Size(626, 383);
            this.tabPageExport.TabIndex = 0;
            this.tabPageExport.Text = "Export";
            this.tabPageExport.UseVisualStyleBackColor = true;
            // 
            // tabPageQuery
            // 
            this.tabPageQuery.Controls.Add(this.groupBox1);
            this.tabPageQuery.Location = new System.Drawing.Point(4, 21);
            this.tabPageQuery.Name = "tabPageQuery";
            this.tabPageQuery.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageQuery.Size = new System.Drawing.Size(626, 383);
            this.tabPageQuery.TabIndex = 1;
            this.tabPageQuery.Text = "Query";
            this.tabPageQuery.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox1.Controls.Add(this.checkBoxType);
            this.groupBox1.Controls.Add(this.comboBoxType);
            this.groupBox1.Controls.Add(this.labelType);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.buttonGo);
            this.groupBox1.Controls.Add(this.textBoxData);
            this.groupBox1.Controls.Add(this.labelData);
            this.groupBox1.Controls.Add(this.buttonFile);
            this.groupBox1.Controls.Add(this.buttonData);
            this.groupBox1.Controls.Add(this.textBoxFile);
            this.groupBox1.Enabled = false;
            this.groupBox1.Location = new System.Drawing.Point(6, -1);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(604, 333);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            // 
            // checkBoxType
            // 
            this.checkBoxType.AutoSize = true;
            this.checkBoxType.Checked = true;
            this.checkBoxType.CheckState = System.Windows.Forms.CheckState.Checked;
            this.checkBoxType.Location = new System.Drawing.Point(249, 101);
            this.checkBoxType.Name = "checkBoxType";
            this.checkBoxType.Size = new System.Drawing.Size(78, 16);
            this.checkBoxType.TabIndex = 6;
            this.checkBoxType.Text = "Recursion";
            this.checkBoxType.UseVisualStyleBackColor = true;
            // 
            // comboBoxType
            // 
            this.comboBoxType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBoxType.FormattingEnabled = true;
            this.comboBoxType.Location = new System.Drawing.Point(71, 97);
            this.comboBoxType.Name = "comboBoxType";
            this.comboBoxType.Size = new System.Drawing.Size(121, 20);
            this.comboBoxType.TabIndex = 5;
            // 
            // labelType
            // 
            this.labelType.AutoSize = true;
            this.labelType.Location = new System.Drawing.Point(6, 97);
            this.labelType.Name = "labelType";
            this.labelType.Size = new System.Drawing.Size(35, 12);
            this.labelType.TabIndex = 2;
            this.labelType.Text = "Type:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 68);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(35, 12);
            this.label5.TabIndex = 2;
            this.label5.Text = "File:";
            // 
            // buttonGo
            // 
            this.buttonGo.Location = new System.Drawing.Point(496, 97);
            this.buttonGo.Name = "buttonGo";
            this.buttonGo.Size = new System.Drawing.Size(75, 23);
            this.buttonGo.TabIndex = 0;
            this.buttonGo.Text = "Execute";
            this.buttonGo.UseVisualStyleBackColor = true;
            // 
            // textBoxData
            // 
            this.textBoxData.Location = new System.Drawing.Point(71, 26);
            this.textBoxData.Name = "textBoxData";
            this.textBoxData.Size = new System.Drawing.Size(400, 21);
            this.textBoxData.TabIndex = 1;
            // 
            // labelData
            // 
            this.labelData.AutoSize = true;
            this.labelData.Location = new System.Drawing.Point(6, 32);
            this.labelData.Name = "labelData";
            this.labelData.Size = new System.Drawing.Size(59, 12);
            this.labelData.TabIndex = 2;
            this.labelData.Text = "Location:";
            // 
            // buttonFile
            // 
            this.buttonFile.Location = new System.Drawing.Point(496, 63);
            this.buttonFile.Name = "buttonFile";
            this.buttonFile.Size = new System.Drawing.Size(75, 23);
            this.buttonFile.TabIndex = 3;
            this.buttonFile.Text = "File";
            this.buttonFile.UseVisualStyleBackColor = true;
            // 
            // buttonData
            // 
            this.buttonData.Location = new System.Drawing.Point(496, 27);
            this.buttonData.Name = "buttonData";
            this.buttonData.Size = new System.Drawing.Size(75, 23);
            this.buttonData.TabIndex = 3;
            this.buttonData.Text = "Location";
            this.buttonData.UseVisualStyleBackColor = true;
            // 
            // textBoxFile
            // 
            this.textBoxFile.Location = new System.Drawing.Point(71, 62);
            this.textBoxFile.Name = "textBoxFile";
            this.textBoxFile.Size = new System.Drawing.Size(400, 21);
            this.textBoxFile.TabIndex = 1;
            // 
            // openFileDialogData
            // 
            this.openFileDialogData.DefaultExt = "*.csv";
            this.openFileDialogData.FileName = "First";
            this.openFileDialogData.Filter = "csv file|*.csv|All file|*.*";
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(634, 408);
            this.Controls.Add(this.tabControl);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "MainForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "StringGet";
            this.Load += new System.EventHandler(this.MainForm_Load);
            this.groupBox.ResumeLayout(false);
            this.groupBox.PerformLayout();
            this.groupBoxTemplate.ResumeLayout(false);
            this.groupBoxTemplate.PerformLayout();
            this.tabControl.ResumeLayout(false);
            this.tabPageExport.ResumeLayout(false);
            this.tabPageQuery.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button buttonExecute;
        private System.Windows.Forms.TextBox textBoxLocation;
        private System.Windows.Forms.Label labelLocation;
        private System.Windows.Forms.Button buttonLocation;
        private System.Windows.Forms.TextBox textBoxFilter;
        private System.Windows.Forms.Label labelFilter;
        private System.Windows.Forms.FolderBrowserDialog folderBrowserDialog;
        private System.Windows.Forms.Button buttonClose;
        private System.Windows.Forms.Button buttonOpen;
        private System.Windows.Forms.Button buttonSave;
        private System.Windows.Forms.GroupBox groupBox;
        private System.Windows.Forms.OpenFileDialog openFileDialog;
        private System.Windows.Forms.SaveFileDialog saveFileDialog;
        private System.Windows.Forms.Label labelBefore;
        private System.Windows.Forms.TextBox textBoxBeforeTemplate;
        private System.Windows.Forms.Button buttonExpand;
        private System.Windows.Forms.GroupBox groupBoxTemplate;
        private System.Windows.Forms.TextBox textBoxAfterTemplate;
        private System.Windows.Forms.Label labelAfter;
        private System.Windows.Forms.TextBox textBoxCurrentTemplate;
        private System.Windows.Forms.Label labelCurrent;
        private System.Windows.Forms.ComboBox comboBoxParser;
        private System.Windows.Forms.Label labelComment;
        private System.Windows.Forms.CheckBox checkBoxRecursion;
        private System.Windows.Forms.Button buttonTemplateSave;
        private System.Windows.Forms.Button buttonMacro;
        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabPageExport;
        private System.Windows.Forms.TabPage tabPageQuery;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.CheckBox checkBoxType;
        private System.Windows.Forms.ComboBox comboBoxType;
        private System.Windows.Forms.Label labelType;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button buttonGo;
        private System.Windows.Forms.TextBox textBoxData;
        private System.Windows.Forms.Label labelData;
        private System.Windows.Forms.Button buttonData;
        private System.Windows.Forms.TextBox textBoxFile;
        private System.Windows.Forms.Button buttonFile;
        private System.Windows.Forms.OpenFileDialog openFileDialogData;
    }
}


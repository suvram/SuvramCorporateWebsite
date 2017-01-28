namespace GlobalMindzReportsApp
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components;

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
			this.components = new System.ComponentModel.Container();
			Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
			this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
			this.global_mindzDataSet = new GlobalMindzReportsApp.global_mindzDataSet();
			this.Account_YearsBindingSource = new System.Windows.Forms.BindingSource(this.components);
			this.Account_YearsTableAdapter = new GlobalMindzReportsApp.global_mindzDataSetTableAdapters.Account_YearsTableAdapter();
			((System.ComponentModel.ISupportInitialize)(this.global_mindzDataSet)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.Account_YearsBindingSource)).BeginInit();
			this.SuspendLayout();
			// 
			// reportViewer1
			// 
			this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
			reportDataSource1.Name = "DataSet1";
			reportDataSource1.Value = this.Account_YearsBindingSource;
			this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
			this.reportViewer1.LocalReport.ReportEmbeddedResource = "GlobalMindzReportsApp.Report1.rdlc";
			this.reportViewer1.Location = new System.Drawing.Point(0, 0);
			this.reportViewer1.Name = "reportViewer1";
			this.reportViewer1.Size = new System.Drawing.Size(682, 386);
			this.reportViewer1.TabIndex = 0;
			// 
			// global_mindzDataSet
			// 
			this.global_mindzDataSet.DataSetName = "global_mindzDataSet";
			this.global_mindzDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
			// 
			// Account_YearsBindingSource
			// 
			this.Account_YearsBindingSource.DataMember = "Account_Years";
			this.Account_YearsBindingSource.DataSource = this.global_mindzDataSet;
			// 
			// Account_YearsTableAdapter
			// 
			this.Account_YearsTableAdapter.ClearBeforeFill = true;
			// 
			// Form1
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(682, 386);
			this.Controls.Add(this.reportViewer1);
			this.Name = "Form1";
			this.Text = "Form1";
			this.Load += new System.EventHandler(this.Form1_Load);
			((System.ComponentModel.ISupportInitialize)(this.global_mindzDataSet)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.Account_YearsBindingSource)).EndInit();
			this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
		private System.Windows.Forms.BindingSource Account_YearsBindingSource;
		private global_mindzDataSet global_mindzDataSet;
		private global_mindzDataSetTableAdapters.Account_YearsTableAdapter Account_YearsTableAdapter;
    }
}


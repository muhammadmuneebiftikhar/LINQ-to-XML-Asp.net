using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace LINQ_to_XML
{
    public partial class _default : System.Web.UI.Page
    {
        XDocument xDoc;
        protected void Page_Load(object sender, EventArgs e)
        {
            xDoc = XDocument.Load(Server.MapPath("Employee.xml"));
            LoadGridView();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            XElement emp = xDoc.Descendants("Employee").FirstOrDefault(x => x.Attribute("Code").Value == txtCode.Text);
            txtName.Text = emp.Element("Name").Value;
            txtEmail.Text = emp.Element("Email").Value;
            txtAddress.Text = emp.Element("Address").Value;
            txtCellPhone.Text = emp.Element("Cell").Value;
            xDoc.Save(Server.MapPath("Employee.xml"));
            LoadGridView();
        }

        private void LoadGridView()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("Employee.xml"));
            if(ds.Tables.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtCode.Text = "";
            txtAddress.Text = "";
            txtCellPhone.Text = "";
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            XElement emp = xDoc.Descendants("Employee").FirstOrDefault(x => x.Attribute("Code").Value == txtCode.Text);
            if (emp == null)
            {
                xDoc.Element("Employees").Add(
                    new XElement("Employee",
                    new XAttribute("Code", txtCode.Text),
                    new XElement("Name", txtName.Text),
                    new XElement("Email", txtEmail.Text),
                    new XElement("Address", txtAddress.Text),
                    new XElement("Cell", txtCellPhone.Text)
                    )
                );
            }
            else
            {
                Response.Write("<script>alert('Employee code already used in the File.')</script>");
            }
            xDoc.Save(Server.MapPath("Employee.xml"));
            LoadGridView();
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            XElement emp = xDoc.Descendants("Employee").FirstOrDefault(x => x.Attribute("Code").Value == txtCode.Text);
            emp.Element("Name").Value = txtName.Text;
            emp.Element("Email").Value = txtEmail.Text;
            emp.Element("Address").Value = txtAddress.Text;
            emp.Element("Cell").Value = txtCellPhone.Text;
            xDoc.Save(Server.MapPath("Employee.xml"));
            LoadGridView();
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            XElement emp = xDoc.Descendants("Employee").FirstOrDefault(x => x.Attribute("Code").Value == txtCode.Text);
            emp.Remove();
            xDoc.Save(Server.MapPath("Employee.xml"));
            LoadGridView();
        }
    }
}
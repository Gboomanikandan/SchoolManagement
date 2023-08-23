using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagement
{
    public partial class AddClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Human hm = new Human();
            hm.className = txt_className.Text;
            hm.section = txt_section.Text;

            string connectionstr = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=schoolmanagement;Integrated Security=True";

            SqlConnection abc = new SqlConnection(connectionstr);

            abc.Open();

            string Query = "Insert into tbl_classes (ClassName, Section) values ('"+hm.className+"','"+hm.section+"')";

            SqlCommand sqlcmd = new SqlCommand(Query, abc);

            sqlcmd.ExecuteNonQuery();

            Response.Redirect("AddSubject.aspx");

            abc.Close();
        }
      
    }
}
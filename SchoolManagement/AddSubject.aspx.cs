using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagement
{
    public partial class AddSubject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Human hm = new Human();
            hm.subjectName = txt_subjectName.Text;

            string connectionstr = @"Data Source=DESKTOP-9RNOFMR\SQLEXPRESS;Initial Catalog=schoolmanagement;Integrated Security=True";

            SqlConnection abc = new SqlConnection(connectionstr);

            abc.Open();

            string Query = "insert into tbl_subject (SubjectName) values ('"+hm.subjectName+"')";

            SqlCommand sqlcmd = new SqlCommand(Query, abc);

            sqlcmd.ExecuteNonQuery();

            Response.Redirect("AddSubject.aspx");

            abc.Close();

        }
    }
}
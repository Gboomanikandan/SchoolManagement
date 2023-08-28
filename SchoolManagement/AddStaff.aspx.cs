using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagement
{
    public partial class AddStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string name = .ToString();

            if(Session["Name"] == null)
            {
                Response.Redirect("loginpage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Human hm = new Human();

            hm.FName = TextBox1.Text;
            hm.LName = TextBox2.Text;
            hm.EmailID = TextBox3.Text;
            hm.contactNo = TextBox4.Text;
            hm.Address = TextBox5.Text;

            string connectionstr = @"Data Source=DESKTOP-9RNOFMR\SQLEXPRESS;Initial Catalog=schoolmanagement;Integrated Security=True";

            SqlConnection abc = new SqlConnection(connectionstr);

            abc.Open();

            string Query = "insert into tbl_Users (FirstName,LastName,EmailID,ContactNo,Address) values ('"+hm.FName+"','"+hm.LName+"','"+hm.EmailID+"','"+hm.contactNo+"','"+hm.Address+"')";

            SqlCommand sqlcmd = new SqlCommand(Query, abc);

            sqlcmd.ExecuteNonQuery();

            abc.Close();
        }
    }
}
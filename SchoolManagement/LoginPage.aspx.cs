using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Library
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = txt_userName.Text;
            string password = txt_password.Text;

            string connectionstr = @"Data Source=DESKTOP-9RNOFMR\SQLEXPRESS;Initial Catalog=schoolmanagement;Integrated Security=True";

            SqlConnection abc = new SqlConnection(connectionstr);

            abc.Open();

            string query = "select tbl_Users.*,tbl_userlogin.Password,tbl_rolemaster.RoleID,tbl_rolemaster.RoleName from tbl_Users inner join tbl_userlogin on tbl_Users.UserID=tbl_userlogin.UserID inner join tbl_userroleRel on tbl_userroleRel.UserId = tbl_Users.UserID inner join tbl_rolemaster on tbl_rolemaster.RoleID = tbl_userroleRel.RoleID Where tbl_Users.EmailID = '"+username+"' and tbl_userlogin.password = '"+password+"'";

            SqlDataAdapter sda = new SqlDataAdapter(query, abc);

            DataTable dt = new DataTable();

            sda.Fill(dt);

            string isValid = "false";

            foreach(DataRow dr in dt.Rows)
            {
                isValid = "true";
            }

            if(isValid == "false")
            {
                Response.Redirect("LoginPage.aspx");
            }
            else
            {
                Response.Redirect("https://google.com");
            }

            abc.Close();
        }
    }
}
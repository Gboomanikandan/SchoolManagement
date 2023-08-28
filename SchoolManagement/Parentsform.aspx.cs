using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SchoolManagement
{
    public partial class Parentsform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["Name"] 
                if (Session["Name"]== null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            string connectionstr = @"Data Source=10.111.36.99;Initial Catalog=FSDCDev;User ID=efosappstrgs;Password=Checkfix@#1";
            SqlConnection def = new SqlConnection(connectionstr);
            string com = "select * from tbl_rolemaster";
            SqlDataAdapter adpt = new SqlDataAdapter(com, def);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList1.DataSource = dt;
            
            DropDownList1.DataTextField = "RoleName";
            DropDownList1.DataValueField = "RoleID";
           

            DropDownList1.DataBind();

            ListItem var = new ListItem();
            var.Text = "Select";
            var.Value = "";

            DropDownList1.Items.Insert(0, var);










        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Human abc = new Human();
            
            abc.FName = txt_fname.Text;
            abc.LName = txt_lname.Text;
            abc.EmailID = txt_emailid.Text;
            abc.contactNo = txt_contactno.Text;
            abc.Address = txt_address.Text;

            string connectionstr = @"Data Source=10.111.36.99;Initial Catalog=FSDCDev;User ID=efosappstrgs;Password=Checkfix@#1";

            SqlConnection def = new SqlConnection(connectionstr);

            def.Open();

            string Query = "insert into tbl_Users(FirstName, LastName, EmailID, ContactNo, Address) values( '" + abc.FName + "', '" + abc.LName + "', '" + abc.EmailID + "','" + abc.contactNo + "','" + abc.Address + "')";

            SqlCommand xyz = new SqlCommand(Query, def);

            xyz.ExecuteNonQuery();




            def.Close();


        }
    }
}
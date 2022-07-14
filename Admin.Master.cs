using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace MajorProject
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Downloads\\MajorProject\\MajorProject\\MajorProject\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["email"] != null)
                Label1.Text = Session["email"].ToString();
            else
                Response.Redirect("SignIn.aspx"); 
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from otp where email='" + Session["email"] + "' ", cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("SignIn.aspx");
        }
    }
}
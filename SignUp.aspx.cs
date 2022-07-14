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
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Downloads\\MajorProject\\MajorProject\\MajorProject\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");
     
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String date = DateTime.Now.ToString();
            SqlCommand cmd = new SqlCommand("insert into userinfo (fname,lname,mobileno,email,password,address,city,state)Values(@fname,@lname,@mobileno,@email,@password,@address,@city,@state)", cn);
            cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@mobileno", TextBox3.Text);
            cmd.Parameters.AddWithValue("@email", TextBox4.Text);
            cmd.Parameters.AddWithValue("@password", TextBox5.Text);
            cmd.Parameters.AddWithValue("@address", TextBox7.Text);
            cmd.Parameters.AddWithValue("@city", TextBox8.Text);
            cmd.Parameters.AddWithValue("@state", TextBox9.Text);
            

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();

            Response.Redirect("SignIn.aspx");
        }

       
        
       
    }
}
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
    public partial class Sign : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Downloads\\MajorProject\\MajorProject\\MajorProject\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");      
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
             SqlCommand cmd = new SqlCommand("select email , password ,role from userinfo where email=@email and password=@password", cn);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);

            if (ds.Tables[0].Rows.Count == 1)
            {
                string role = ds.Tables[0].Rows[0][2].ToString();
                Session["email"] = ds.Tables[0].Rows[0][0].ToString();
                Session["role"] = role;
                if (role == "admin")
                    Response.Redirect("AdminLogin.aspx");
                else
                    Response.Redirect("Home.aspx");
            }


            else
            {
              
                Label1.Text = " Invalid Id Or Password";
            }
      
        }
        }

      

 }
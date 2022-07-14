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
    public partial class hoffers : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Downloads\\MajorProject\\MajorProject\\MajorProject\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");      
     
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button3_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;
            Label answerLabel = (Label)button.NamingContainer.FindControl("Label3");
            int pid = Convert.ToInt32(answerLabel.Text);
            SqlCommand cmd = new SqlCommand("insert into wishlist (email,pid)values(@email,@pid)", cn);
            cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
            
            cmd.Parameters.AddWithValue("@pid", pid);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Wishlist.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hotel.aspx");
        }
    }
}
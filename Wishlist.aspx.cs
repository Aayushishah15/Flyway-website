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
    public partial class passport : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Downloads\\MajorProject\\MajorProject\\MajorProject\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");
   
        protected void Page_Load(object sender, EventArgs e)
        {
       //     refreshGridData();
        }

 

       

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;
            Label answerLabel = (Label)button.NamingContainer.FindControl("idLabel");
            int id = Convert.ToInt32(answerLabel.Text);

            SqlCommand cmd = new SqlCommand("delete from wishlist where id=@id ", cn);
            cmd.Parameters.AddWithValue("@id", id);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Wishlist.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hotel.aspx");

        }

    

       
    }
}
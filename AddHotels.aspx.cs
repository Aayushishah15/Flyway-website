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
    public partial class AddProducts : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Downloads\\MajorProject\\MajorProject\\MajorProject\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");      
     
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                 FileUpload1.SaveAs((Server.MapPath("~/images/") + FileUpload1.FileName));
            Label1.Text = "File Upload" + FileUpload1.FileName;
            Image1.ImageUrl = "images/" + FileUpload1.FileName;

                
            }
            else
                Label1.Text = "File not upload";
        }

      

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into HotelD (city,state,hname,image,price)Values(@city,@state,@hname,@image,@price)", cn);
            cmd.Parameters.AddWithValue("@city", TextBox1.Text);
            cmd.Parameters.AddWithValue("@state", TextBox2.Text);
            cmd.Parameters.AddWithValue("@hname", TextBox3.Text);
            cmd.Parameters.AddWithValue("@image", Image1.ImageUrl);
            cmd.Parameters.AddWithValue("@price", TextBox4.Text);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
           
        }
    }
}
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
    public partial class hotetsbill : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\Visual Programs\\MajorProject\\MajorProject\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");      

        protected void Page_Load(object sender, EventArgs e)
        {
            showbill();

        }
        protected void showbill()
        {
            string email = Session["email"].ToString();
            SqlCommand cmd = new SqlCommand(" SELECT sum( [price] + m.[charges]) FROM [hotelD] p,[hotels] c ,[bokkingcharg] m  where p.[ID] = c.pid and c.email = '" + email + "'", cn);
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds, "showbill");
            TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();
        }

       

      
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            String date = DateTime.Now.ToString();
            var button = (Control)sender;
            Label answerLabel = (Label)button.NamingContainer.FindControl("pidLabel");
            int pid = Convert.ToInt32(answerLabel.Text);

            var button1 = (Control)sender;
            Label answerLabel1 = (Label)button1.NamingContainer.FindControl("idLabel");
            int oid = Convert.ToInt32(answerLabel1.Text);

            SqlCommand cmd = new SqlCommand("insert into finalbill (bill,email,pid,date,status,oid)Values(@bill,@email,@pid,@date,'Hotels',@oid)", cn);
            cmd.Parameters.AddWithValue("@bill", TextBox1.Text);

            cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
            cmd.Parameters.AddWithValue("@pid", pid);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.Parameters.AddWithValue("@oid", oid);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
            var button = (Control)sender;
            Label answerLabel = (Label)button.NamingContainer.FindControl("idLabel");
            int id = Convert.ToInt32(answerLabel.Text);
            SqlCommand cmd = new SqlCommand("delete from hotels where id=@id ", cn);
            cmd.Parameters.AddWithValue("@id", id);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();


            //Response.Redirect("Home.aspx");
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Net.Mail;
namespace MajorProject
{
    public partial class payhotel : System.Web.UI.Page
    {
        static int number = 0;
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Downloads\\MajorProject\\MajorProject\\MajorProject\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox2.Text = Session["email"].ToString();
            showbill();
        }
        protected void showbill()
        {
            string email = Session["email"].ToString();
            SqlCommand cmd = new SqlCommand(" SELECT sum( [price] + m.[charges]  + m.[adults]) FROM [hotelD] p,[hotels] c ,[bokkingcharg] m  where p.[ID] = c.pid and c.email = '" + email + "'", cn);
            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds, "showbill");
            TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();
        }




      
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            String date = DateTime.Now.ToString();
            var button = (Control)sender;
            Label answerLabel = (Label)button.NamingContainer.FindControl("pidLabel");
            int pid = Convert.ToInt32(answerLabel.Text);

            var button1 = (Control)sender;
            Label answerLabel1 = (Label)button1.NamingContainer.FindControl("idLabel");
            int oid = Convert.ToInt32(answerLabel1.Text);

            SqlCommand cmd = new SqlCommand("insert into finalbill (bill,email,pid,status,oid)Values(@bill,@email,@pid,'Hotels',@oid)", cn);
            cmd.Parameters.AddWithValue("@bill", TextBox1.Text);

            cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
            cmd.Parameters.AddWithValue("@pid", pid);
            cmd.Parameters.AddWithValue("@oid", oid);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            

            SqlCommand cmd = new SqlCommand("delete from hotels where email='" + Session["email"] + "' ", cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();

            Response.Redirect("Home.aspx");

           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd1 = new SqlCommand("select email , password ,role from otp where email=@email and otp=@otp", cn);
            cmd1.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd1.Parameters.AddWithValue("@otp", TextBox3.Text);
            SqlDataAdapter adpt = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            if (number == Convert.ToInt32(TextBox4.Text))
            {
                Label1.Text = "Now Go For Payment";
            }
            else
            {
                Label1.Text = "Invalid OTP";
            } 
        
        
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Random random = new Random();
            number = random.Next(10000, 99999);
            TextBox3.Text = number.ToString();

            SqlCommand cmd = new SqlCommand("insert into otp (email,otp)Values(@email,@otp)", cn);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@otp", TextBox3.Text);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();

            string to = Convert.ToString(TextBox2.Text);
            //string to = ("Textbox2.Text"); //To address    
            string from = " flywayairjet@gmail.com"; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = " Flight Booking site   <b> Otp For Payment </b>  " + TextBox3.Text;
            message.Subject = "Thanks visiting our site ";
            message.Body = mailbody;
            //message.BodyEncoding = Encoding.UTF8;  
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(" flywayairjet@gmail.com", "load1234");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        
        }
    }
}
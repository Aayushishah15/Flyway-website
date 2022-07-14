using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace MajorProject
{
    public partial class AdminLo : System.Web.UI.Page
    {
        static int number = 0;
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Downloads\\MajorProject\\MajorProject\\MajorProject\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");      
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
                TextBox1.Text = Session["email"].ToString();
            else
                Response.Redirect("SignIn.aspx"); 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

          Random random = new Random();
            number = random.Next(10000, 99999);
            TextBox2.Text = number.ToString();

            SqlCommand cmd = new SqlCommand("insert into otp (email,otp)Values(@email,@otp)", cn);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@otp", TextBox2.Text);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();

            
            
            string to = Convert.ToString(TextBox1.Text);
            //string to = ("Textbox1.Text"); //To address    
            string from = " flywayairjet@gmail.com"; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = " <b> For Login  </b>" + TextBox1.Text + "<b> Otp is </b>" + TextBox2.Text;
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

        protected void Button2_Click(object sender, EventArgs e)
        {
           SqlCommand cmd = new SqlCommand("select email , password ,role from otp where email=@email and otp=@otp", cn);
              cmd.Parameters.AddWithValue("@email", TextBox1.Text);
              cmd.Parameters.AddWithValue("@otp", TextBox2.Text);
              SqlDataAdapter adpt = new SqlDataAdapter(cmd);
              DataSet ds = new DataSet();
              if (number == Convert.ToInt32(TextBox3.Text))
              {
                  Response.Redirect("Index.aspx");
              }
              else
              {
                  Label1.Text = "Invalid OTP";
              } 
            
           
        }   

       
    }
}
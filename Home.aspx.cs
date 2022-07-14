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
    public partial class _Default : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Downloads\\MajorProject\\MajorProject\\MajorProject\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");      
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
                TextBox4.Text = Session["email"].ToString();
            else
                Response.Redirect("SignIn.aspx");
   }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into contact (email,comment)Values(@email,@comment)", cn);
            cmd.Parameters.AddWithValue("@email", TextBox4.Text);
            cmd.Parameters.AddWithValue("@comment", TextBox3.Text);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();


           
        }

        protected void Button2_Click(object sender, EventArgs e)

        {
            
            SqlCommand cmd = new SqlCommand("insert into subscribers (emailid)Values(@emailid)", cn);
            cmd.Parameters.AddWithValue("@emailid", TextBox4.Text);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            
            string to = Convert.ToString(TextBox4.Text); //To address    
            string from = " flywayairjet@gmail.com";  //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = "You Subscribed to <b>Flyway Air Jet</b> Completed Successfully";
            message.Subject = "Thanks For subcription";
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

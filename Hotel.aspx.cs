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
    public partial class Hotel : System.Web.UI.Page
    { 
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Downloads\\MajorProject\\MajorProject\\MajorProject\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");      
     
 
        protected void Page_Load(object sender, EventArgs e)
        {
            refreshGridData();
        }


        protected void refreshGridData()
        {
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            refreshGridData();
            
        }

        

       

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            var button = (Control)sender;
            Label answerLabel = (Label)button.NamingContainer.FindControl("idLabel");
            int id = Convert.ToInt32(answerLabel.Text);

            string city = Convert.ToString(DropDownList1.SelectedItem.Value);
            string state = Convert.ToString(DropDownList2.SelectedItem.Value);
            string TravelClass3 = Convert.ToString(DropDownList5.SelectedItem.Value);

            SqlCommand cmd = new SqlCommand("insert into hotels (city,state,chkin,chkout,norooms,noadults,nochildrens,email,pid)Values(@city,@state,@chkin,@chkout,@norooms,@noadults,@nochildrens,@email,@pid)", cn);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@state", state);
            cmd.Parameters.AddWithValue("@chkin", TextBox3.Text);
            cmd.Parameters.AddWithValue("@chkout", TextBox4.Text);
            cmd.Parameters.AddWithValue("@norooms", DropDownList3.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@noadults", DropDownList4.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@nochildrens", TravelClass3);
            cmd.Parameters.AddWithValue("@pid", id);
            cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("payhotel.aspx");

        }
    }
}
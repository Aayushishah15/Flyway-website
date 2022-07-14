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
    public partial class Flight : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Downloads\\MajorProject\\MajorProject\\MajorProject\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");
      
        protected void Page_Load(object sender, EventArgs e)
        {
            refreshGridData();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
         

             refreshGridData();
           //  Response.Redirect("AirBook.aspx");
        }


        protected void refreshGridData()
        {
        }

    
      
        protected void LinkButton1_Click(object sender, EventArgs e)

        {
           
            
            var button = (Control)sender;
            Label answerLabel = (Label)button.NamingContainer.FindControl("idLabel");
            int id = Convert.ToInt32(answerLabel.Text);


            SqlCommand cmd = new SqlCommand("insert into oneway (FlyingFrom,FlyingTo,DepartingDate,Adults,Childrens,TravelClass,pid,email)Values(@FlyingFrom,@FlyingTo,@DepartingDate,@Adults,@Childrens,@TravelClass,@pid,@email)", cn);
            string FlyingFrom = Convert.ToString(DropDownList1.SelectedItem.Value);
            string FlyingTo = Convert.ToString(DropDownList2.SelectedItem.Value);
            string TravelClass = Convert.ToString(DropDownList5.SelectedItem.Value);

            cmd.Parameters.AddWithValue("@FlyingFrom", FlyingFrom);
            cmd.Parameters.AddWithValue("@FlyingTo", FlyingTo);
            cmd.Parameters.AddWithValue("@DepartingDate", TextBox3.Text);

            cmd.Parameters.AddWithValue("@Adults", DropDownList3.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Childrens", DropDownList4.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@TravelClass", TravelClass);
            cmd.Parameters.AddWithValue("@pid", id);
            cmd.Parameters.AddWithValue("@email", Session["email"].ToString());

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
          
          
            Response.Redirect("pay.aspx");
        }

       
      

        
    }
}
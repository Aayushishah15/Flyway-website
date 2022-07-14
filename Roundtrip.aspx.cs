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
    public partial class Roundtrip : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Downloads\\MajorProject\\MajorProject\\MajorProject\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");
      
        protected void Page_Load(object sender, EventArgs e)
        {
            refreshGridData();
        }

     
       protected void refreshGridData()
       {
       }

      

       protected void Button1_Click(object sender, EventArgs e)
       {
           refreshGridData();
       }

       protected void LinkButton2_Click(object sender, EventArgs e)
       {
           var button = (Control)sender;
           Label answerLabel = (Label)button.NamingContainer.FindControl("idLabel");
           int id = Convert.ToInt32(answerLabel.Text);
         
           string FlyingFrom1 = Convert.ToString(DropDownList1.SelectedItem.Value);
           string FlyingTo1 = Convert.ToString(DropDownList2.SelectedItem.Value);
           string TravelClass1 = Convert.ToString(DropDownList5.SelectedItem.Value);
           string TravelClass2 = Convert.ToString(DropDownList6.SelectedItem.Value);

           SqlCommand cmd = new SqlCommand("insert into roundtrip (FlyingFrom1,FlyingTo1,DepartingDate1,ReturningDate1,Adults1,Childrens1,TravelClass1,TravelClass2,pid,email)Values(@FlyingFrom1,@FlyingTo1,@DepartingDate1,@ReturningDate1,@Adults1,@Childrens1,@TravelClass1,@TravelClass2,@pid,@email)", cn);
           cmd.Parameters.AddWithValue("@FlyingFrom1", FlyingFrom1);
           cmd.Parameters.AddWithValue("@FlyingTo1", FlyingTo1);
           cmd.Parameters.AddWithValue("@DepartingDate1", TextBox1.Text);
           cmd.Parameters.AddWithValue("@ReturningDate1", TextBox2.Text);
           cmd.Parameters.AddWithValue("@Adults1", DropDownList3.SelectedItem.Value);
           cmd.Parameters.AddWithValue("@Childrens1", DropDownList4.SelectedItem.Value);
           cmd.Parameters.AddWithValue("@TravelClass1", TravelClass1);
           cmd.Parameters.AddWithValue("@TravelClass2", TravelClass2);
           cmd.Parameters.AddWithValue("@pid", id);
           cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
           cn.Open();
           cmd.ExecuteNonQuery();
           cn.Close();
           Response.Redirect("payround.aspx");

       }






       public object id { get; set; }
    }
}
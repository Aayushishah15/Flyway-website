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
    public partial class Multicity : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=C:\\Users\\aayus\\Downloads\\MajorProject\\MajorProject\\MajorProject\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void LinkButton1_Click(object sender, EventArgs e)

        {

            SqlCommand cmd = new SqlCommand("insert into multicity (FlyingFrom1,FlyingTo1,DepartingDate1,ReturningDate1,Adults1,Childrens1,TravelClass1,FlyingFrom2,FlyingTo2,DepartingDate2,ReturningDate2,Adults2,Childrens2,TravelClass2)Values(@FlyingFrom1,@FlyingTo1,@DepartingDate1,@ReturningDate1,@Adults1,@Childrens1,@TravelClass1,@FlyingFrom2,@FlyingTo2,@DepartingDate2,@ReturningDate2,@Adults2,@Childrens2,@TravelClass2)", cn);
         

            string FlyingFrom1 = Convert.ToString(DropDownList1.SelectedItem.Value);
            string FlyingTo1 = Convert.ToString(DropDownList2.SelectedItem.Value);
            string TravelClass1 = Convert.ToString(DropDownList5.SelectedItem.Value);

            string FlyingFrom2 = Convert.ToString(dest1.SelectedItem.Value);
            string FlyingTo2 = Convert.ToString(dest2.SelectedItem.Value);
            string TravelClass2 = Convert.ToString(class2.SelectedItem.Value);

          
            

            cmd.Parameters.AddWithValue("@FlyingFrom1", FlyingFrom1);
            cmd.Parameters.AddWithValue("@FlyingTo1", FlyingTo1);
            cmd.Parameters.AddWithValue("@DepartingDate1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@ReturningDate1", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Adults1", DropDownList3.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Childrens1", DropDownList4.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@TravelClass1", TravelClass1);

            cmd.Parameters.AddWithValue("@FlyingFrom2", FlyingFrom2);
            cmd.Parameters.AddWithValue("@FlyingTo2", FlyingTo2);
            cmd.Parameters.AddWithValue("@DepartingDate2", TextBox4.Text);
            cmd.Parameters.AddWithValue("@ReturningDate2", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Adults2", a1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Childrens2", c1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@TravelClass2", TravelClass2);
            
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Home.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            /*
           
            string FlyingFrom1 = Convert.ToString(DropDownList1.SelectedItem.Value);
            string FlyingTo1 = Convert.ToString(DropDownList2.SelectedItem.Value);
            string TravelClass1 = Convert.ToString(DropDownList5.SelectedItem.Value);

            string FlyingFrom2 = Convert.ToString(DropDownList6.SelectedItem.Value);
            string FlyingTo2 = Convert.ToString(DropDownList7.SelectedItem.Value);
            string TravelClass2 = Convert.ToString(DropDownList10.SelectedItem.Value);

            string FlyingFrom3 = Convert.ToString(DropDownList11.SelectedItem.Value);
            string FlyingTo3 = Convert.ToString(DropDownList12.SelectedItem.Value);
            string TravelClass3 = Convert.ToString(DropDownList15.SelectedItem.Value);


            SqlCommand cmd = new SqlCommand("insert into multicity (FlyingFrom1,FlyingTo1,DepartingDate1,ReturningDate1,Adults1,Childrens1,TravelClass1,FlyingFrom2,FlyingTo2,DepartingDate2,ReturningDate2,Adults2,Childrens2,TravelClass2,FlyingFrom3,FlyingTo3,DepartingDate3,ReturningDate3,Adults3,Childrens3,TravelClass3)Values(@FlyingFrom1,@FlyingTo1,@DepartingDate1,@ReturningDate1,@Adults1,@Childrens1,@TravelClass1,@FlyingFrom2,@FlyingTo2,@DepartingDate2,@ReturningDate2,@Adults2,@Childrens2,@TravelClass2,@FlyingFrom3,@FlyingTo3,@DepartingDate3,@ReturningDate3,@Adults3,@Childrens3,@TravelClass3)", cn);
          
            cmd.Parameters.AddWithValue("@FlyingFrom1", FlyingFrom1);
            cmd.Parameters.AddWithValue("@FlyingTo1", FlyingTo1);
            cmd.Parameters.AddWithValue("@DepartingDate1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@ReturningDate1", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Adults1", DropDownList3.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Childrens1", DropDownList4.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@TravelClass1", TravelClass1);

            cmd.Parameters.AddWithValue("@FlyingFrom2", FlyingFrom2);
            cmd.Parameters.AddWithValue("@FlyingTo2", FlyingTo2);
            cmd.Parameters.AddWithValue("@DepartingDate2", TextBox4.Text);
            cmd.Parameters.AddWithValue("@ReturningDate2", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Adults2", DropDownList8.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Childrens2", DropDownList9.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@TravelClass2", TravelClass2);
          
            cmd.Parameters.AddWithValue("@FlyingFrom3", FlyingFrom3);
            cmd.Parameters.AddWithValue("@FlyingTo3", FlyingTo3);
            cmd.Parameters.AddWithValue("@DepartingDate3", TextBox1.Text);
            cmd.Parameters.AddWithValue("@ReturningDate3", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Adults3", DropDownList13.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Childrens3", DropDownList14.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@TravelClass3", TravelClass3);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Home.aspx");*/
            
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            /*

            string FlyingFrom1 = Convert.ToString(DropDownList1.SelectedItem.Value);
            string FlyingTo1 = Convert.ToString(DropDownList2.SelectedItem.Value);
            string TravelClass1 = Convert.ToString(DropDownList5.SelectedItem.Value);

            string FlyingFrom2 = Convert.ToString(DropDownList6.SelectedItem.Value);
            string FlyingTo2 = Convert.ToString(DropDownList7.SelectedItem.Value);
            string TravelClass2 = Convert.ToString(DropDownList10.SelectedItem.Value);


            string FlyingFrom3 = Convert.ToString(DropDownList11.SelectedItem.Value);
            string FlyingTo3 = Convert.ToString(DropDownList12.SelectedItem.Value);
            string TravelClass3 = Convert.ToString(DropDownList15.SelectedItem.Value);

            string FlyingFrom4 = Convert.ToString(DropDownList16.SelectedItem.Value);
            string FlyingTo4 = Convert.ToString(DropDownList17.SelectedItem.Value);
            string TravelClass4 = Convert.ToString(DropDownList20.SelectedItem.Value);

            SqlCommand cmd = new SqlCommand("insert into multicity (FlyingFrom1,FlyingTo1,DepartingDate1,ReturningDate1,Adults1,Childrens1,TravelClass1,FlyingFrom2,FlyingTo2,DepartingDate2,ReturningDate2,Adults2,Childrens2,TravelClass2,FlyingFrom3,FlyingTo3,DepartingDate3,ReturningDate3,Adults3,Childrens3,TravelClass3,FlyingFrom4,FlyingTo4,DepartingDate4,ReturningDate4,Adults4,Childrens4,TravelClass4)Values(@FlyingFrom1,@FlyingTo1,@DepartingDate1,@ReturningDate1,@Adults1,@Childrens1,@TravelClass1,@FlyingFrom2,@FlyingTo2,@DepartingDate2,@ReturningDate2,@Adults2,@Childrens2,@TravelClass2,@FlyingFrom3,@FlyingTo3,@DepartingDate3,@ReturningDate3,@Adults3,@Childrens3,@TravelClass3,@FlyingFrom4,@FlyingTo4,@DepartingDate4,@ReturningDate4,@Adults4,@Childrens4,@TravelClass4)", cn);
          
            

           
            cmd.Parameters.AddWithValue("@FlyingFrom1", FlyingFrom1);
            cmd.Parameters.AddWithValue("@FlyingTo1", FlyingTo1);
            cmd.Parameters.AddWithValue("@DepartingDate1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@ReturningDate1", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Adults1", DropDownList3.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Childrens1", DropDownList4.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@TravelClass1", TravelClass1);

            cmd.Parameters.AddWithValue("@FlyingFrom2", FlyingFrom2);
            cmd.Parameters.AddWithValue("@FlyingTo2", FlyingTo2);
            cmd.Parameters.AddWithValue("@DepartingDate2", TextBox4.Text);
            cmd.Parameters.AddWithValue("@ReturningDate2", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Adults2", DropDownList8.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Childrens2", DropDownList9.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@TravelClass2", TravelClass2);
          
            cmd.Parameters.AddWithValue("@FlyingFrom3", FlyingFrom3);
            cmd.Parameters.AddWithValue("@FlyingTo3", FlyingTo3);
            cmd.Parameters.AddWithValue("@DepartingDate3", TextBox1.Text);
            cmd.Parameters.AddWithValue("@ReturningDate3", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Adults3", DropDownList13.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Childrens3", DropDownList14.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@TravelClass3", TravelClass3);

            cmd.Parameters.AddWithValue("@FlyingFrom4", FlyingFrom4);
            cmd.Parameters.AddWithValue("@FlyingTo4", FlyingTo4);
            cmd.Parameters.AddWithValue("@DepartingDate4", TextBox4.Text);
            cmd.Parameters.AddWithValue("@ReturningDate4", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Adults4", DropDownList18.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Childrens4", DropDownList19.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@TravelClass4", TravelClass4);
            
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Home.aspx");*/

        }
    }

}
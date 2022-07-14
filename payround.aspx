<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="payround.aspx.cs" Inherits="MajorProject.payround" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style>
  
.card {
  box-shadow: 2px 4px 16px 2px rgba(0, 0, 0, 0.5);
  max-width: 600px;
 margin: auto;
  background-color: #fff;

  font-family: arial;
   height: auto;

  padding:10px;
  }

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

 h1.header-w3ls {
    text-align: center;
    font-weight: 600;
    text-transform: uppercase;
    color: black;
    letter-spacing: 11px;
    text-shadow: 2px 3px #FFC107;
}
.center
{
    text-align:center;
   
}
    
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<br />
  <div align="center">
   <h1 class="header-w3ls">
		PAYMENT FORM</h1>
       

<div class="container">
  <!-- Button to Open the Modal -->
 
  <!-- The Modal -->

    <div class="modal-dialog modal-sm">
      <div class="modal-content">
      <h2>
		User Confirmation</h2>

        <div class="modal-body">
     
            <br />
            <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
            <br />
            <br />
           
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Send Otp</asp:LinkButton>
            <br />
            <br />

            <asp:TextBox ID="TextBox3" runat="server" Visible="False" ></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
             <br />
              <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <br />

            <asp:Button ID="Button3" runat="server" Text="Confirm Otp" onclick="Button3_Click" />
            <br />
            <h3>Total Bill</h3>
           

          <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Height="29px" Width="166px"></asp:TextBox>  
            <br />
           

            <br />

    <asp:LinkButton ID="LinkButton2" runat="server" data-toggle="modal" data-target="#myModal" >View My Details</asp:LinkButton>
 </div>
    </div>
  </div>
  </div>s
  
</div>
<br />
     <h1 class="header-w3ls">
		Package Detail's</h1>
         <br />  <br />

<br />

<div class="container-fluid">
  <div class="row">
 
  <div align="center">

    
     
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" CellSpacing="110" 
        DataSourceID="SqlDataSource1" Height="378px" Width="866px" RepeatColumns="1" 
        RepeatDirection="Horizontal">
        <ItemTemplate>
          <div class="card">
              <br />
              <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' 
                  Visible="False" />
            <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' 
                  Visible="False" />
              <br />
               <div class="center">
              <asp:Image ID="Image1" runat="server" class="center" Height="200px" 
                  ImageUrl='<%# Eval("Images") %>' Width="400px" />
              <br />
              </div>
              <br />
              <table class="table table-bordered">
                  <tr>
                      <td>
                         City</td>
                      <td>
                          <asp:Label ID="City1Label" runat="server" Text='<%# Eval("City1") %>' />
                          &nbsp;To&nbsp;
                          <asp:Label ID="City2Label" runat="server" Text='<%# Eval("City2") %>' />
                      </td>
                  </tr>
                  <tr>
                      <td class="style1">
                          State</td>
                      <td class="style1">
                          <asp:Label ID="State1Label" runat="server" Text='<%# Eval("State1") %>' />
                          &nbsp;To
                          <asp:Label ID="State2Label" runat="server" Text='<%# Eval("State2") %>' />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          Departing Date</td>
                      <td>
                          <asp:Label ID="DepartingDate1Label" runat="server" 
                              Text='<%# Eval("DepartingDate1") %>' />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          Airport Name</td>
                      <td>
                          <asp:Label ID="AirportNameLabel" runat="server" 
                              Text='<%# Eval("AirportName") %>' />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          Travel Class</td>
                      <td>
                          <asp:Label ID="TravelClass1Label" runat="server" 
                              Text='<%# Eval("TravelClass1") %>' />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          Adults</td>
                      <td>
                          <asp:Label ID="Adults1Label" runat="server" Text='<%# Eval("Adults1") %>' />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          Childrens</td>
                      <td>
                          <asp:Label ID="Childrens1Label" runat="server" 
                              Text='<%# Eval("Childrens1") %>' />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          Return Trip Details</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          City</td>
                      <td>
                          &nbsp;<asp:Label ID="City2Label0" runat="server" Text='<%# Eval("City2") %>' />
                          &nbsp;To
                          <asp:Label ID="City1Label0" runat="server" Text='<%# Eval("City1") %>' />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          State</td>
                      <td>
                          <asp:Label ID="State2Label0" runat="server" Text='<%# Eval("State2") %>' />
                          &nbsp;To
                          <asp:Label ID="State1Label0" runat="server" Text='<%# Eval("State1") %>' />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          Returning Date</td>
                      <td>
                          <asp:Label ID="ReturningDate1Label" runat="server" 
                              Text='<%# Eval("ReturningDate1") %>' />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          Travel Class</td>
                      <td>
                          <asp:Label ID="TravelClass2Label" runat="server" 
                              Text='<%# Eval("TravelClass2") %>' />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          Price</td>
                      <td>
                          <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          Service Charges </td>
                      <td>
                          <asp:Label ID="chargesLabel" runat="server" Text='<%# Eval("charges") %>' />
                      </td>
                  </tr>
                  <tr>
                      <td>
                          &nbsp;</td>
                      <td>
                          &nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                      Checked Details : 
                          <asp:CheckBox ID="CheckBox1" runat="server" 
                              oncheckedchanged="CheckBox1_CheckedChanged" />
                      </td>
                      <td>
                          <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Pay " />
                      </td>
                  </tr>
          

              </table>
              
</div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT m.adults,m.charges, c.id,c.pid,c.TravelClass1,c.TravelClass2,c.Childrens1,c.Adults1,c.DepartingDate1,c.ReturningDate1,City1,State1,price,AirportName,City2,State2,Images FROM city p,roundtrip c,bokkingcharg m WHERE c.pid=p.id and c.email=@email ">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
      <br />
      <br />
      <br />

    <br />

  

    </div>
  </div>
</div>
 <br />
 <div class="container">
         <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2><b>User Detail's</b></h2>
        </div>
        <div class="modal-body">
   
 
        <asp:GridView ID="GridView1" runat="server" class="table table-bordered" AutoGenerateColumns="False"
            DataSourceID="SqlDataSource3" 
             EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="fname" HeaderText="First Name" 
                    SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="Last Name" 
                    SortExpression="lname" />
                <asp:BoundField DataField="mobileno" HeaderText="Mobile Number" 
                    SortExpression="mobileno" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="address" HeaderText="Address" 
                    SortExpression="address" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" 
                    Visible="False" />
            </Columns>
        </asp:GridView>




        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="SELECT [fname], [lname], [mobileno], [email], [address], [city], [state], [date] FROM [userinfo] WHERE ([email] = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="email" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>


 
    



        </div>
        <div class="modal-footer">
       <asp:Button ID="Button2" runat="server" class="btn btn-default" 
        data-dismiss="modal" Text="Go Back" />
        </div>
      </div>
      </div>
    </div>
  </div>
  <br />
  <br />
  <br />
  <br />
  <br />
  <br />

</asp:Content>

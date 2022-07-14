<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="payhotel.aspx.cs" Inherits="MajorProject.payhotel" %>
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
  </div>
  
</div>
<br />
     <h1 class="header-w3ls">
		Package Detail's</h1>
         <br />  <br />

<br />
<div class="container-fluid">
  <div class="row">

  <div align="center">
    <asp:DataList ID="DataList1" runat="server" CellSpacing="10" DataSourceID="SqlDataSource1" 
        DataKeyField="id" Height="378px" Width="866px" RepeatColumns="1"  RepeatDirection="Horizontal">
       <ItemTemplate>
        <div class="card">
            <br />
            <br />
             <div class="center">
           <asp:Image ID="Image1" runat="server"  Height="200px" 
               ImageUrl='<%# Eval("image") %>' Width="400px" />
               </div>
           <br />
           <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' 
                Visible="False" />
           <br />
           <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' 
                Visible="False" />
           <br />
           <table class="table table-bordered">
               <tr>
                   <td>
                       Email</td>
                   <td>
                       <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                   </td>
               </tr>
               <tr>
                   <td>
                       City</td>
                   <td>
                       <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                   </td>
               </tr>
               <tr>
                   <td>
                       State</td>
                   <td>
                       <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                   </td>
               </tr>
               <tr>
                   <td>
                       Check In
                   </td>
                   <td>
                       <asp:Label ID="chkinLabel" runat="server" Text='<%# Eval("chkin") %>' />
                   </td>
               </tr>
               <tr>
                   <td>
                       Check Out</td>
                   <td>
                       <asp:Label ID="chkoutLabel" runat="server" Text='<%# Eval("chkout") %>' />
                   </td>
               </tr>
               <tr>
                   <td>
                       No Rooms</td>
                   <td>
                       <asp:Label ID="noroomsLabel" runat="server" Text='<%# Eval("norooms") %>' />
                   </td>
               </tr>
               <tr>
                   <td>
                       Number of Adults</td>
                   <td>
                       <asp:Label ID="noadultsLabel" runat="server" Text='<%# Eval("noadults") %>' />
                   </td>
               </tr>
               <tr>
                   <td>
                       Number of Childrens</td>
                   <td>
                       <asp:Label ID="nochildrensLabel" runat="server" 
                           Text='<%# Eval("nochildrens") %>' />
                   </td>
               </tr>
               <tr>
                   <td>
                       Hotel Name</td>
                   <td>
                       <asp:Label ID="hnameLabel" runat="server" Text='<%# Eval("hname") %>' />
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
                       Payment Details</td>
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
                       Service Charges</td>
                   <td>
                       <asp:Label ID="chargesLabel" runat="server" Text='<%# Eval("charges") %>' />
                   </td>
               </tr>
               <tr>
                   <td>
                   Checked Details  : 
                       <asp:CheckBox ID="CheckBox1" runat="server" 
                           oncheckedchanged="CheckBox1_CheckedChanged"  />
                   </td>
                   <td>
                       <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="Pay" 
                           Width="100px" />
                   </td>
               </tr>
           </table>
         
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
          SelectCommand="SELECT m.adults,m.charges, c.id,c.pid,c.email,c.city,c.state,c.chkin,c.chkout,c.norooms,c.noadults,c.nochildrens,hname,image,price FROM hotelD p,hotels c,bokkingcharg m WHERE c.pid=p.id and c.email=@email ">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />

    </div>
    </div>

  </div>

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

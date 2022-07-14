<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pay.aspx.cs" Inherits="MajorProject.pay" %>
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


.center
{
    text-align:center;
   
}
 h1.header-w3ls {
    text-align: center;
    font-weight: 600;
    text-transform: uppercase;
    color: black;
    letter-spacing: 11px;
    text-shadow: 2px 3px #FFC107;
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
  
<br />
     <h1 class="header-w3ls">
		Package Detail's</h1>
         <br />  <br />

<br /><div class="container-fluid">
  <div class="row">
  <br />
           
  <div align="center">
 
<asp:DataList ID="DataList1" runat="server" DataKeyField="id" CellSpacing="20" 
        DataSourceID="SqlDataSource1" Height="378px" Width="866px" RepeatColumns="1" 
        RepeatDirection="Horizontal">
        
        <ItemTemplate>
        <div class="card">
            <br />
             <div class="center">
             <asp:Image ID="Image1" runat="server" Height="200px" 
                        ImageUrl='<%# Eval("Images") %>' Width="400px" />
            <br />
            </div>
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' 
                Visible="False" />
           <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' 
                Visible="False" />
            <table class="table table-bordered">
                <tr>
                    <td class="style1">
                        City:</td>
                    <td class="style1">
                        &nbsp; </td>
                    <td class="style1">
                        <asp:Label ID="City1Label" runat="server" Text='<%# Eval("City1") %>' />
                        &nbsp;<strong>To </strong>
                        <asp:Label ID="City2Label" runat="server" Text='<%# Eval("City2") %>' />
                    </td>
                   
                </tr>
                <tr>
                    <td>
                        State:</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="State1Label" runat="server" Text='<%# Eval("State1") %>' />
                        &nbsp;<strong>To </strong>
                        <asp:Label ID="State2Label" runat="server" Text='<%# Eval("State2") %>' />
                    </td>
                   
                </tr>
                <tr>
                    <td class="style1">
                        Travel Class</td>
                    <td class="style1">
                        :</td>
                    <td class="style1">
                        <asp:Label ID="TravelClassLabel" runat="server" 
                            Text='<%# Eval("TravelClass") %>' />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        DepartingDate</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="DepartingDateLabel" runat="server" 
                            Text='<%# Eval("DepartingDate") %>' />
                    </td>
                  
                </tr>
                <tr>
                    <td>
                        AirportName</td>
                    <td>
                        :</td>
                    <td>
                        <asp:Label ID="AirportNameLabel" runat="server" 
                            Text='<%# Eval("AirportName") %>' />
                    </td>
                   
                </tr>
                <tr>
                    <td>
                        No of Adults</td>
                    <td>
                        : </td>
                    <td>
                        <asp:Label ID="Adults1Label" runat="server" Text='<%# Eval("Adults1") %>' />
                    </td>
                   
                </tr>
                <tr>
                    <td>
                        No of Childrens</td>
                    <td>
                        : </td>
                    <td>
                        <asp:Label ID="ChildrensLabel" runat="server" Text='<%# Eval("Childrens") %>' />
                    </td>
                   
                <tr>
                    <td>
                        Price</td>
                    <td>
                        : </td>
                    <td>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    </td>
                   
                </tr>
             
                     
                    <br />
                    <br />
                   
                    <tr>
                        <td>
                            Service Charges</td>
                        <td class="style1">
                            :</td>
                        <td >
                               <asp:Label ID="chargesLabel" runat="server" Text='<%# Eval("charges") %>' />
                        </td>
                      
                    </tr>
              
                    <tr>
                        <td class="style1" colspan="3">
                            <asp:CheckBox ID="CheckBox1" runat="server" BackColor="White" 
                                oncheckedchanged="CheckBox1_CheckedChanged1" Text="Checked Details" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Text="Pay" onclick="Button1_Click" />
                            <br />
                            <br />
                        </td>
                    </tr>
            </table>
            
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        
        
              
             SelectCommand="SELECT m.adults,m.charges, c.id,c.pid,c.TravelClass,c.Childrens,c.Adults,c.DepartingDate,City1,State1,price,AirportName,City2,State2,Images FROM city p,oneway c,bokkingcharg m WHERE c.pid=p.id and c.email=@email ">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
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
       <asp:GridView ID="GridView1" runat="server" class="table table-hover" AutoGenerateColumns="False"
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
   
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="aoffers.aspx.cs" Inherits="MajorProject.aoffers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
.card {
  box-shadow: 2px 4px 16px 2px rgba(0, 0, 0, 0.5);
  max-width: 400px;
  margin: auto;
  text-align: center;
  font-family: arial;
  height: 500px;
  padding:5px;
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
    <br />  <br />  <br />  <br />  <br />
     <h1 class="header-w3ls">
		Flight Offers</h1>
         <br />  <br />
<div align="center">
  
    <asp:DataList ID="DataList1" runat="server"  CellSpacing="200" DataKeyField="id" 
        DataSourceID="SqlDataSource1" Height="378px" Width="866px" RepeatColumns="2" 
        RepeatDirection="Horizontal">
        <ItemTemplate>
      <div class="card">

        <div class="center">     
           <br />       
        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' 
                Visible="False" />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="171px" 
                ImageUrl='<%# Eval("Images") %>' Width="261px" />
            <br />
            <br />
            <h4>
             
            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City1") %>' />
            
                <strong>To</strong>:
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("City2") %>' />
            <br />
            </h4>
            <h4>
                <strong>State</strong>:
            <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State1") %>' />
               </h4>
            <p>
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("State2") %>' />

            <asp:Label ID="AirportNameLabel" runat="server" 
                Text='<%# Eval("AirportName") %>' />
            <br />
            </p>
            <h4>
                <strong>Price</strong>:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' 
                    style="font-style: italic" />
            <br />
            </h4>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Book Filght " Height="34px" 
                Width="103px" onclick="Button2_Click" />
               
                <br />
               
                </div>
                </div>

        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [city]"></asp:SqlDataSource>

    
    </div>
</asp:Content>

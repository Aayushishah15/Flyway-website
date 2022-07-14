<%@ Page Title="WishList" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Wishlist.aspx.cs" Inherits="MajorProject.passport" %>
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
		Wish List</h1>
  <br />  <br />
   <div align="center">

    <asp:DataList ID="DataList1" runat="server" CellSpacing="200" DataKeyField="id" 
        DataSourceID="SqlDataSource1" Height="378px" Width="866px" RepeatColumns="2" 
        RepeatDirection="Horizontal">

        <ItemTemplate>
         <div class="card">

        <div class="center">   
            &nbsp;<asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' 
                Visible="False" />
            <br />
            <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' 
                Visible="False" />
            <br />
            <asp:Image ID="Image1" runat="server" Height="171px"  
                ImageUrl='<%# Eval("image") %>' Width="261px" />
            <br />
             <h4>
                 &nbsp;<asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' 
                     Visible="False" />
            <br />
             </h4>
            <h4>
                City:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
            <br />
                State:
            <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
            <br />
             </h4>
            <h4>
                Hotel Name:
            <asp:Label ID="hnameLabel" runat="server" Text='<%# Eval("hname") %>' />
            <br />
          </h4>
            <h4>
                Price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
             </h4>
             <br />
            <asp:Button ID="Button2" runat="server" Text="Book Now" Height="33px" 
                Width="118px" onclick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-danger" 
                onclick="LinkButton1_Click" Height="33px" Width="118px">Remove</asp:LinkButton>
            
            <br />
            <br />
            
            <br />
            <br />
            </div>
            </div>
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
                    
                    SelectCommand="SELECT c.id,c.pid,c.email,city,state,hname,image,price FROM hotelD p,wishlist c WHERE p.id = c.pid and email= @email">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
    </asp:Content>

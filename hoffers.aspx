<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hoffers.aspx.cs" Inherits="MajorProject.hoffers" %>
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
    .style1
    {
        color: #000000;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />  <br />  <br />  <br />  <br />
 <h1 class="header-w3ls">
		Hotels Offers</h1>
         <br />  <br />
 <div align="center">

    <asp:DataList ID="DataList1" runat="server" CellSpacing="200" DataKeyField="id" 
        DataSourceID="SqlDataSource1" Height="378px" Width="866px" RepeatColumns="2" 
        RepeatDirection="Horizontal">

       


        <ItemTemplate>
          <div class="card"> 
              <div class="center">
       <br /> 
       <asp:Label ID="Label3" runat="server" Text='<%# Eval("id") %>' Visible="False" />
            <br />
            <asp:Image ID="Image1" runat="server" Height="171px" 
                ImageUrl='<%# Eval("image") %>' Width="261px" />
            <br />
            <br />
            
            <h4>
                  <span class="style1"><strong>City:</strong></span>
            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
            <br />
             </h4>
            <h4>
                  <span class="style1"><strong>State:</strong></span>
            <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
            <br />
            <br />
           
           <p> <asp:Label ID="hnameLabel" runat="server" Text='<%# Eval("hname") %>' />
            <br /></p> 
                 <h4>   &nbsp;<br /> <span class="style1"> <strong>Price:</strong></span>
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' 
                         style="font-style: italic" />
                  <br />
                    </h4>
                  <br />
                <asp:Button ID="Button1" runat="server" Text="Book Now" Height="34px" 
                      Width="103px" onclick="Button1_Click" />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button3" runat="server" Height="34px" onclick="Button3_Click" 
                      Text="Add To Wishlist" Width="151px" />
            <br />
<br />
                  <br />
                  <asp:Label ID="Label2" runat="server" Text='<%# Eval("pid") %>' Visible="False"></asp:Label>
</div>
                </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [hotelD]"></asp:SqlDataSource>
    </div>
</asp:Content>
                
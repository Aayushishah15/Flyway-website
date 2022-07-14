<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hotelbill.aspx.cs" Inherits="MajorProject.hotetsbill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
<br />
<br />
<br />

    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            adults:
            <asp:Label ID="adultsLabel" runat="server" Text='<%# Eval("adults") %>' />
            <br />
            charges:
            <asp:Label ID="chargesLabel" runat="server" Text='<%# Eval("charges") %>' />
            <br />
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            pid:
            <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            chkin:
            <asp:Label ID="chkinLabel" runat="server" Text='<%# Eval("chkin") %>' />
            <br />
            chkout:
            <asp:Label ID="chkoutLabel" runat="server" Text='<%# Eval("chkout") %>' />
            <br />
            norooms:
            <asp:Label ID="noroomsLabel" runat="server" Text='<%# Eval("norooms") %>' />
            <br />
            noadults:
            <asp:Label ID="noadultsLabel" runat="server" Text='<%# Eval("noadults") %>' />
            <br />
            nochildrens:
            <asp:Label ID="nochildrensLabel" runat="server" 
                Text='<%# Eval("nochildrens") %>' />
            <br />
            hname:
            <asp:Label ID="hnameLabel" runat="server" Text='<%# Eval("hname") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
            <br />
            price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" 
                oncheckedchanged="CheckBox1_CheckedChanged1" />
<br />
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1">LinkButton</asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT m.adults,m.charges, c.id,c.pid,c.email,c.chkin,c.chkout,c.norooms,c.noadults,c.nochildrens,hname,image,price FROM hotelD p,hotels c,bokkingcharg m WHERE c.pid=p.id and c.email=@email ">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    Total:<br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</asp:Content>

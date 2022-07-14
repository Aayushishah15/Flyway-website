<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Statewise.aspx.cs" Inherits="MajorProject.Statewise" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
h1.header-w3ls {
    text-align: center;
    font-weight: 300;
    text-transform: uppercase;
    color: white;
    letter-spacing: 8px;
    text-shadow: 2px 0px white;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br /> 

<div align="center">
<h1 class="header-w3ls">
		State And Status Wise Report </h1>
    <br />
    

    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="State1" DataValueField="State1">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [State1] FROM [city]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="status" DataValueField="status">
    </asp:DropDownList>
    <br />
<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [status] FROM [finalbill]"></asp:SqlDataSource>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
    Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" BackColor="Black" 
        Height="415px" Width="100%" >
        <LocalReport ReportPath="Report2.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet3" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" 
    TypeName="Database2DataSet3TableAdapters.StatewiseReportTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="State1" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="status" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
</asp:ObjectDataSource>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    </div>
    <br />
<br /><br />
<br />
</asp:Content>

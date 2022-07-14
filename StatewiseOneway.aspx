<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="StatewiseOneway.aspx.cs" Inherits="MajorProject.StatewiseOneway" %>

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
<br />

<div align="center">
<h1 class="header-w3ls">
		StatusWise  Report </h1>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Search  "></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
<br />

&nbsp;&nbsp;
<div align="center">
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
        Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
        WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="509px" 
        Width="100%"  BackColor="Black">
        <LocalReport ReportPath="Report1.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet2" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetDataBy" 
        TypeName="Database2DataSet2TableAdapters.oneway1TableAdapter" 
        OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="oneway" Name="status" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    </div>
    </div>
    <br />
<br />
<br />
<br />

    

  
</asp:Content>

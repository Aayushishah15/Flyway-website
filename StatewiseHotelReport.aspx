<%@ Page Title="StateWISE HOTEL" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="StatewiseHotelReport.aspx.cs" Inherits="MajorProject.StatewiseHotelReport" %>

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
		StateWise Hotel Reports</h1>
    <br />
    <br />
    <rsweb:ReportViewer ID="ReportViewer1" runat="server"  Font-Names="Verdana" 
    Font-Size="8pt" Height="655px" InteractiveDeviceInfos="(Collection)" 
    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%" 
        BackColor="Black">
        <LocalReport ReportPath="StatewiseHotelReport.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet5" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
    TypeName="Database2DataSet5TableAdapters.Hotel3TableAdapter">
</asp:ObjectDataSource>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    </div>
<br /><br />
<br /><br />

</asp:Content>

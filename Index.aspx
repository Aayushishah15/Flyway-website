<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MajorProject.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body id="reportsPage">
    <div class="" id="home">
    <div class="container">
          <div class="row">
                <div class="col">
                    <p class="text-white mt-5 mb-5"> <b>Admin</b></p>
                </div>
            </div>
            <!-- row -->
            <div class="row tm-content-row">
               
                
                         <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow">
                         <h2 class="tm-block-title">Subscriber's</h2>
                       <div class="tm-notification-items">
                           <asp:GridView ID="GridView3" runat="server"  class="table table-dark" AutoGenerateColumns="False" 
                                DataKeyNames="id" DataSourceID="SqlDataSource3" 
                                EmptyDataText="There are no data records to display." Height="192px" 
                                Width="426px">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                                        SortExpression="id" />
                                    <asp:BoundField DataField="emailid" HeaderText="emailid" 
                                        SortExpression="emailid" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [subscribers] WHERE [id] = @id" 
                                InsertCommand="INSERT INTO [subscribers] ([emailid]) VALUES (@emailid)" 
                                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                SelectCommand="SELECT [id], [emailid] FROM [subscribers]" 
                                UpdateCommand="UPDATE [subscribers] SET [emailid] = @emailid WHERE [id] = @id">
                                <DeleteParameters>
                                    <asp:Parameter Name="id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="emailid" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="emailid" Type="String" />
                                    <asp:Parameter Name="id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow">
                        <h2 class="tm-block-title">Notification List</h2>
                        <div class="tm-notification-items">
                            &nbsp;<asp:GridView ID="GridView2" runat="server" class="table table-bordered" AutoGenerateColumns="False" 
                                DataKeyNames="id" DataSourceID="SqlDataSource2" 
                                EmptyDataText="There are no data records to display." 
                                Height="134px" Width="428px">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                                        SortExpression="id" Visible="False" />
                                    <asp:BoundField DataField="email" HeaderText="Email Id" 
                                        SortExpression="email" />
                                    <asp:BoundField DataField="comment" HeaderText="Comments" 
                                        SortExpression="comment" />
                                    <asp:CommandField ShowDeleteButton="True" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [contact] WHERE [id] = @id" 
                                InsertCommand="INSERT INTO [contact] ([email], [comment]) VALUES (@email, @comment)" 
                                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                SelectCommand="SELECT [id], [email], [comment] FROM [contact]" 
                                UpdateCommand="UPDATE [contact] SET [email] = @email, [comment] = @comment WHERE [id] = @id">
                                <DeleteParameters>
                                    <asp:Parameter Name="id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="comment" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="comment" Type="String" />
                                    <asp:Parameter Name="id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
                <div class="col-12 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
                        <h2 class="tm-block-title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Details</h2>
                    
                        <asp:GridView ID="GridView1" runat="server" class="table table-bordered" AutoGenerateColumns="False" 
                            DataKeyNames="id" DataSourceID="SqlDataSource1" 
                            EmptyDataText="There are no data records to display." Height="371px" 
                            Width="978px">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                                    SortExpression="id" InsertVisible="False" Visible="False" />
                                <asp:BoundField DataField="fname" HeaderText="First Name" 
                                    SortExpression="fname" />
                                <asp:BoundField DataField="lname" HeaderText="Last Name" 
                                    SortExpression="lname" />
                                <asp:BoundField DataField="mobileno" HeaderText="Mobile Number" 
                                    SortExpression="mobileno" />
                                <asp:BoundField DataField="email" HeaderText="Email" 
                                    SortExpression="email" />
                                <asp:BoundField DataField="password" HeaderText="password" 
                                    SortExpression="password" Visible="False" />
                                <asp:BoundField DataField="address" HeaderText="Address" 
                                    SortExpression="address" />
                                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" 
                                    Visible="False" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            DeleteCommand="DELETE FROM [userinfo] WHERE [id] = @id" 
                            InsertCommand="INSERT INTO [userinfo] ([fname], [lname], [mobileno], [email], [password], [address], [city], [state], [role]) VALUES (@fname, @lname, @mobileno, @email, @password, @address, @city, @state, @role)" 
                            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                            SelectCommand="SELECT [id], [fname], [lname], [mobileno], [email], [password], [address], [city], [state], [role] FROM [userinfo]" 
                            UpdateCommand="UPDATE [userinfo] SET [fname] = @fname, [lname] = @lname, [mobileno] = @mobileno, [email] = @email, [password] = @password, [address] = @address, [city] = @city, [state] = @state, [role] = @role WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="fname" Type="String" />
                                <asp:Parameter Name="lname" Type="String" />
                                <asp:Parameter Name="mobileno" Type="Decimal" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="city" Type="String" />
                                <asp:Parameter Name="state" Type="String" />
                                <asp:Parameter Name="role" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="fname" Type="String" />
                                <asp:Parameter Name="lname" Type="String" />
                                <asp:Parameter Name="mobileno" Type="Decimal" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="password" Type="String" />
                                <asp:Parameter Name="address" Type="String" />
                                <asp:Parameter Name="city" Type="String" />
                                <asp:Parameter Name="state" Type="String" />
                                <asp:Parameter Name="role" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
       
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/moment.min.js"></script>
    <!-- https://momentjs.com/ -->
    <script src="js/Chart.min.js"></script>
    <!-- http://www.chartjs.org/docs/latest/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script src="js/tooplate-scripts.js"></script>
    <script>
        Chart.defaults.global.defaultFontColor = 'white';
        let ctxLine,
            ctxBar,
            ctxPie,
            optionsLine,
            optionsBar,
            optionsPie,
            configLine,
            configBar,
            configPie,
            lineChart;
        barChart, pieChart;
        // DOM is ready
        $(function () {
            drawLineChart(); // Line Chart
            drawBarChart(); // Bar Chart
            drawPieChart(); // Pie Chart

            $(window).resize(function () {
                updateLineChart();
                updateBarChart();                
            });
        })
    </script>
</body>

</asp:Content>

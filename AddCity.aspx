<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddCity.aspx.cs" Inherits="MajorProject.AddCity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body id="reportsPage">
    <div class="" id="home">
   
    <div class="container tm-mt-big tm-mb-big">
      <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
          <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
            <div class="row">
              <div class="col-12">
                <h2 class="tm-block-title d-inline-block">Add AirLine Services</h2>
              </div>
            </div>
            <div class="row tm-edit-product-row">
              <div class="col-xl-6 col-lg-6 col-md-12">
                <form action="" class="tm-edit-product-form">
                  <div class="form-group mb-3">
                    <label for="name" > Enter City 1 </label>
        <asp:TextBox ID="TextBox1" runat="server"  class="form-control validate"></asp:TextBox>
                   
                  </div>
                  <div class="form-group mb-3">
                   <label for="description">Enter State 1</label>
            <asp:TextBox ID="TextBox2" runat="server"  class="form-control validate"></asp:TextBox>
                   
                  </div>
                  
                  <div class="form-group mb-3">
                    <label for="name" > Enter City 2 </label>
        <asp:TextBox ID="TextBox5" runat="server"  class="form-control validate"></asp:TextBox>
                   
                  </div>
                  <div class="form-group mb-3">
                   <label for="description">Enter State 2</label>
            <asp:TextBox ID="TextBox6" runat="server"  class="form-control validate"></asp:TextBox>
                   
                  </div>
                  <div class="form-group mb-3">
                   <label for="description">AirPort Name Of City 1</label>
            <asp:TextBox ID="TextBox3" runat="server"  class="form-control validate"></asp:TextBox>
                   
                  </div>
                  <div class="row">
                      <div class="form-group mb-3 col-xs-12 col-sm-6">
                          <label for="expire_date">Price
                          </label>
                            <asp:TextBox ID="TextBox4" runat="server" class="form-control validate"></asp:TextBox>
           
                          
                        </div>
                       
                  </div>
                  
              </div>
              <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                <div class="tm-product-img-dummy mx-auto">
                 
                <asp:Image ID="Image1" runat="server" Height="150px" Width="250px" />
                </div>
                <div class="custom-file mt-3 mb-3">

                  
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:Button ID="Button1" runat="server"  class="btn btn-primary btn-block mx-auto" 
                        Text="Upload Image" onclick="Button1_Click" />
                  
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
              </div>
              <div class="col-12">
                   
               
               
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click"
                            class="btn btn-primary btn-block text-uppercase" >Add City</asp:LinkButton></div>
           
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container">
         <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        

        </div>
        <div class="modal-body" text align="center">
     <b>City Added Succesfully....</b>
        </div>
        <div class="modal-footer">
             <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-block text-uppercase"
        data-dismiss="modal" Text="Go Back" />
       
        </div>
      </div>
      </div>
    </div>
  </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
    <!-- https://jqueryui.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
        $(function () {
            $("#expire_date").datepicker();
        });
    </script>
  </body>
</asp:Content>

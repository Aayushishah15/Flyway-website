<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="MajorProject.AdminLo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">
    <style type="text/css">
       
    </style>
</head>
<body>
<br />
<br />
<br />

<br />
<br />

    <form id="form1" runat="server">
    <body id="reportsPage">
    <div class="" id="home">
   
 <div class="container tm-mt-big tm-mb-big">
      <div class="row">
        <div class="col-12 mx-auto tm-login-col">
          <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
            <div class="row">
              <div class="col-12 text-center">
                <h2 class="tm-block-title mb-4">Admin Login</h2>
              </div>
            </div>
            <div class="row mt-2">
              <div class="col-12">
                <form action="Index.aspx" method="post" class="tm-login-form">
                  <div class="form-group">
     <asp:TextBox ID="TextBox1" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
     </div>
         <div class="form-group">

     <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-block text-uppercase" 
                          Text="Send otp" onclick="Button1_Click" />
      </div>
     <br />
       <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>



                 <div class="col-12 text-center">
                  <h2 class="tm-block-title mb-4">Enter Otp</h2>
                  </div>
                  
                  </div>
                  <div class="col-6">
                         <asp:TextBox ID="TextBox3" runat="server" class="form-control "></asp:TextBox>
                   </div>
                       <div class="col-6">
                      <asp:Button ID="Button2" runat="server" class="btn btn-primary btn-block text-uppercase" 
                          Text="Confirm" onclick="Button2_Click" />
                    
                  </div>
 <br />
 <br />
 <br />

               <asp:Label ID="Label1" runat="server" class="col-12 text-center" Text="" 
                      style="color: #CCFFFF"></asp:Label><i class="fa fa-sign-out" aria-hidden="true"></i>
        
                 
                
              </div>
              </div>
              </div>
              </div>
              </div>
             
   </form>
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
  </body>
    </form>

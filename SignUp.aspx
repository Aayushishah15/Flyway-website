<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="MajorProject.SignUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
    <meta charset="utf-8">
<meta charset="utf-8">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
     <style>
  body 
  {
      
      
   background: url(images/bg/b3.jpg) no-repeat center center fixed; 
 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover; 
      
 
  
  color:white;
    
}

form * {
    border-radius:0 !important;
   
}

form > fieldset > legend {
    font-size:120%;
}
legend {
    display: block;
    width: 100%;
    padding: 0;
    margin-bottom: 20px;
    font-size: 21px;
    line-height: inherit;
    color: yellow;
    border: 0;
    border-bottom: 1px solid #e5e5e5;
}
a {
    color:red;
}
.bg
{
       background-color:rgba(0,0,0,0.1);
}
         .style1
         {
             color: yellow;
         }
           .style1:hover {color:Red;}
           h1.header-w3ls {
    text-align: center;
    font-weight: 600;
    text-transform: uppercase;
    color: #fff;
    letter-spacing: 11px;
    text-shadow: 2px 3px rgba(0, 0, 0, 0.42);
    background-color:rgba(0,0,0,0.3);
}
.container{
font-family: 'Montserrat', sans-serif;
    background-color:rgba(0,0,0,0.2);
	background-size: cover;
	background-position: center;
}	
	
     </style>
</head>
<body>
    <form id="form1" runat="server">
    

    
    <br />
    <br />

    <div class="row">
  
      <div class="container">
     <div class="col-md-7 col-md-offset-2">
 
                <form role="form" method="POST" action="#">
                  <h1 class="header-w3ls">Flyway </h1>

                    <legend class="text-center">Register</legend>
                    <div class="bg">
                    <fieldset>
                    
                        <legend>Account Details</legend>

                        <div class="form-group col-md-6">
                            <label for="first_name">First name</label>

                            <asp:TextBox ID="TextBox1" runat="server" type="text" class="form-control" 
                                placeholder="First Name" required=""></asp:TextBox>
                                </div>

                        <div class="form-group col-md-6">
                            <label for="last_name">Last name</label>
                                <asp:TextBox ID="TextBox2" runat="server" type="text" class="form-control" placeholder="Last Name" required=""></asp:TextBox>
                                   </div>

                        <div class="form-group col-md-6">
                          <label for="">Mobile Number</label>
                               <asp:TextBox ID="TextBox3" runat="server" type="text" class="form-control" placeholder="Mobile Number" required=""></asp:TextBox>
                         
                                   
                          </div>

                        <div class="form-group col-md-6">
                            <label for="">Email</label>
                            <asp:TextBox ID="TextBox4" runat="server" type="email" class="form-control" placeholder="Email" required=""></asp:TextBox>
                          </div>

                        <div class="form-group col-md-6">
                            <label for="password">Password</label>
                             <asp:TextBox ID="TextBox5" runat="server" type="password" class="form-control" placeholder="Password" required=""></asp:TextBox>
                         </div>

                        <div class="form-group col-md-6">
                            <label for="confirm_password">Confirm Password</label>
                                <asp:TextBox ID="TextBox6" runat="server" type="password" class="form-control" placeholder="Confirm Password" required=""></asp:TextBox>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="">Address</label>
                            <asp:TextBox ID="TextBox7" runat="server" type="Address" class="form-control" 
                                placeholder="Address" TextMode="MultiLine" required=""></asp:TextBox>
                       </div>
                        <div class="form-row">
                     <div class="form-group col-md-6">
                           <label for="inputCity">City</label>
                     <asp:TextBox ID="TextBox8" runat="server" type="text" class="form-control" placeholder="City"></asp:TextBox>
                      </div>
                      <div class="form-group col-md-6">
                          
                             <label for="inputState">State</label>
                             <asp:TextBox ID="TextBox9" runat="server" type="text" class="form-control" placeholder="State"></asp:TextBox>
                        </div>
                        
                         </div>
                         
                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="" id="">
                                    I accept the <a href="#">terms and conditions</a>.
                                </label>
                            </div>
                        </div>
                    </div>
                    <br />
                 

                         <div class="form-group">
                        <div class="col-md-9">
                        <a href="SignIn.aspx" class="style1"> Already have an account?</a>

                        </div>
                          <div class="col-md-1">
                          <asp:Button ID="Button1" runat="server" Text="  Register" type="submit" 
                               class="btn btn-warning"  onclick="Button1_Click"/>
                   <br />                   
                   <br />                   
                   <br />                   
                         
                        </div>
                    </div>
                    </fieldset>

                 </div>
                </form>
            </div>

        </div>
    </div>   
    </form>
</body>
</html>

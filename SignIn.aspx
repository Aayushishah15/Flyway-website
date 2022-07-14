<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="MajorProject.Sign" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>
     <meta charset="utf-8">
<meta charset="utf-8">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
    <style>
        
        .booking-form .submit-btn {
	display: inline-block;
	color: #fff;
	background-color: #1e62d8;
	font-weight: 700;
	padding: 14px 30px;
	border-radius: 4px;
	border: none;
	-webkit-transition: 0.2s all;
	transition: 0.2s all;
}

.booking-form .submit-btn:hover,
.booking-form .submit-btn:focus {
	opacity: 0.9;
}
        
        
        
 body{
   background: url(images/bg/b1.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  font-family:'HelveticaNeue','Arial', sans-serif;
  color:White;
}

 div#form{
	position: absolute;
	width:360px;
	height:320px;
	height:auto;
	background-color: #fff;
	margin:auto;
	border-radius: 5px;
	padding:20px;
	left:50%;
	top:50%;
	margin-left:-180px;
	margin-top:-200px;
	background: rgba(0,0,0,.2);
	 box-shadow: 4px 5px 4px 2px White;
}

a{color:#58bff6;text-decoration: none;}
a:hover{color:#aaa; }
.pull-right{float: right;}
.pull-left{float: left;}
.clear-fix{clear:both;}
div.logo{text-align: center; margin: 20px 20px 30px 20px; fill: #566375;}
.head{padding:40px 0px; 10px 0}
.logo-active{fill: #44aacc !important;}


#formWrapper
{
    background: rgba(0,0,0,.2); 
	width:100%; 
	height:100%; 
	position: absolute; 
	top:0; 
	left:0;
}
	
.darken-bg{background: rgba(0,0,0,.5) !important; }


div.form-item{position: relative; display: block; margin-bottom: 40px;
    top: -36px;
    left: 0px;
    height: 50px;
    width: 300px;
}
 
 input.form-style{
	color:black;
	display: block;
	width: 90%;
	height: 44px;
	padding: 5px 15%;
	
	-moz-border-radius: 27px;
	-webkit-border-radius: 27px;
	border-radius: 27px;
	-moz-background-clip: padding;
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	background-color: #fff;
	font-family:'HelveticaNeue','Arial', sans-serif;
	font-size: 105%;
	letter-spacing: .8px;
}
div.form-item .form-style:focus{outline: none; border:1px solid #58bff6; color:#58bff6; }
div.form-item p.formLabel {
	position: absolute;
	left:26px;
	top:10px;
	transition:all .4s ease;
	color:#bbb;}
.formTop{top:-22px !important; left:26px; background-color: #fff; padding:0 5px; font-size: 14px; color:#58bff6 !important;}
.formStatus{color:#8a8a8a !important;}
input[type="submit"].login{
	float:right;
	width: 100px;
	height: 37px;
	-moz-border-radius: 19px;
	-webkit-border-radius: 19px;
	border-radius: 19px;
	-moz-background-clip: padding;
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	background-color: #55b1df;
	border:1px solid #55b1df;
	border:none;
	color: #fff;
	font-weight: bold;
}
input[type="submit"].login:hover{background-color: #fff; border:1px solid white; color:#55b1df; cursor:pointer;}
input[type="submit"].login:focus{outline: none;}
h1.header-w3ls {
    text-align: center;
    font-weight: 600;
    text-transform: uppercase;
    color: #fff;
    letter-spacing: 11px;
    text-shadow: 2px 3px rgba(0, 0, 0, 0.42);
    background-color:rgba(0,0,0,0.2);
}
h2.header-w3ls 
{
     text-align: center;
    font-weight: 300;
    letter-spacing: 2px;
    color: #fff;
   
    text-shadow: 1px 1px White;
   
}
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="formWrapper">

<div id="form">
<h1 class="header-w3ls">Flyway</h1>

<div class="logo">
<h2 class="header-w3ls">Login Here</h2>
<br />

</div>
		<div class="form-item">
			<p class="formLabel">Email</p>

     <asp:TextBox ID="TextBox1"  runat="server" type="email" name="email"  class="form-style"></asp:TextBox>
     </div>
		<div class="form-item">
			<p class="formLabel">Password</p>

         <asp:TextBox ID="TextBox2" runat="server" type="password" name="password"  class="form-style"></asp:TextBox>
			
			<!-- <div class="pw-view"><i class="fa fa-eye"></i></div> -->
			<p><a href="#" ><small>Forgot Password ?</small></a></p>	
		</div>
		<div class="form-item">
           
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Signup.aspx">Register</asp:HyperLink>
          
            <asp:Button ID="Button2" runat="server" class="login pull-right" Text="submit" onclick="Button2_Click" />

		<div class="clear-fix"></div>
		</div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
</div>
    </form>
    <script>
        $(document).ready(function () {
            var formInputs = $('input[type="email"],input[type="password"]');
            formInputs.focus(function () {
                $(this).parent().children('p.formLabel').addClass('formTop');
                $('div#formWrapper').addClass('darken-bg');
                $('div.logo').addClass('logo-active');
            });
            formInputs.focusout(function () {
                if ($.trim($(this).val()).length == 0) {
                    $(this).parent().children('p.formLabel').removeClass('formTop');
                }
                $('div#formWrapper').removeClass('darken-bg');
                $('div.logo').removeClass('logo-active');
            });
            $('p.formLabel').click(function () {
                $(this).parent().children('.form-style').focus();
            });
        });
</script>
    </form>
</body>
</html>

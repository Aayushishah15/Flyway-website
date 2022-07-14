<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="MajorProject._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style>
body {
    background: url(p3.jpg) no-repeat center center fixed; 
    min-height: 100vh;
    
}

.carousel-inner img 
{
   
    width: 90%; /* Set width to 100% */
    margin: auto;
  }
  .carousel-caption h3 
  {
    color: white !important;
  }
  @media (max-width: 600px) 
  {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
.bg
{
    background-color: white;
    background: -webkit-linear-gradient(to right, #00001a, #00004d);
    background: linear-gradient(to right, #000, #00002d);
   }
    
#button-addon1 {
    color: #ffc371;
}

i {
    color: #FFC107;

}

.form-control::placeholder {
    font-size: 0.95rem;
    color: #aaa;
    font-style: italic;
}

.form-control.shadow-0:focus {
    box-shadow: none;
}

.display-3 {
    font-family: 'Sanchez', serif;
    color:Black;
    text-align:center;
}

p {
    font-family: 'Tajawal', sans-serif;
    color:White;
}

.lead {
    font-family: 'Sanchez 200', serif;
}
h1 	
{
    font-size: 40px;
	text-transform: uppercase;
	color: #fff;
	font-weight: 400;
	}



.card {
  box-shadow: 0 5px 9px 9px rgba(0, 0, 0, 0.5);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: black;
  background-color: black;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
mp
{
    width:50%;
}
h1.header-w3ls {
    text-align: center;
    font-weight: 600;
    text-transform: uppercase;
    color: black;
    letter-spacing: 11px;
    text-shadow: 2px 3px #FFC107;
}
 </style>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <body>
    <br />
    <br />
    <br />
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/imga/MA6.jpg" alt="New York" style="width:100%; height:600px";>
        <div class="carousel-caption">
          <h3>Mumbai</h3>
          
        </div>      
      </div>

      <div class="item">
        <img src="images/imga/MA2.jpg" alt="Chicago" style="width:100%; height:600px";>
        <div class="carousel-caption">
          <h3>Mumbai</h3>
          
        </div>      
          
      </div>
    
      <div class="item">
        <img src="images/imga/MA5.jpg" alt="Los Angeles" style="width:100%; height:600px";>
        <div class="carousel-caption">
          <h3>Mumbai</h3>
         
        </div>      
      </div>
    </div>
   
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
<br />
<h1 class="display-3"><i class="fa fa-map-marker" aria-hidden="true"> <d>&nbsp;&nbsp;&nbsp; </d></i>Map</h1>

<div class="mp">
<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d24358921.84823463!2d82.24167242480767!3d19.929855443986355!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sairports%20inindia!5e1!3m2!1sen!2sin!4v1626430714533!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</div>

<hr />

<h1 class="header-w3ls">
		Our Offers</h1>
    <br />
    <br />

<div class="center">
 <div class="row">
   
<div class="col-lg-7">

 <div class="card">
  <h3>Air Ports</h3>
  <img src="images/imga/MA1.jpg" alt="Denim Jeans" style="width:80%">
  <h4>Offers</h4>
 
   <p><button><a href ="aoffers.aspx">View More</button></a></p>
</div>
</div>
   <div class="col-lg-3">

 <div class="card">
     <h3>Hotels</h3>
  <img src="images/imga/MA1.jpg" alt="Denim Jeans" style="width:80%">
   <h4>Offers</h4>
 
  
   <p><button><a href ="hoffers.aspx"> View More</button></a></p>
</div>
</div>
</div>


</div>








<hr />
<div>
 

</div>
<br />

<div class="bg"> 
 <div class="container-fluid flex-grow-1 ">
     <div class="row py-5">
         <div class="col-lg-12 text-white text-center">
             <h1 class="display-1 ">Fly Way </h1>
          </div>
     </div>
 </div>
 <footer class="bg-white">
     <div class="container py-5">
         <div class="row py-3">
             <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
                 <h6 class="text-uppercase font-weight-bold mb-4">About</h6>
                 <ul class="list-unstyled mb-0">
                     <li class="mb-2"><a href="Contact.aspx" class="text-muted">Contact Us</a></li>
                     <li class="mb-2"><a href="About.aspx" class="text-muted">About Us</a></li>
                     <li class="mb-2"><a href="#" class="text-muted">Stories</a></li>
                     <li class="mb-2"><a href="#" class="text-muted">Press</a></li>
                 </ul>
             </div>
             <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
                 <h6 class="text-uppercase font-weight-bold mb-4">Help</h6>
                 <ul class="list-unstyled mb-0">
                     <li class="mb-2"><a href="Payment.aspx" class="text-muted">Payments</a></li>
                     <li class="mb-2"><a href="#" class="text-muted">Shipping</a></li>
                     <li class="mb-2"><a href="#" class="text-muted">Cancellation</a></li>
                     <li class="mb-2"><a href="#" class="text-muted">Returns</a></li>
                 </ul>
             </div>
             <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
                 <h6 class="text-uppercase font-weight-bold mb-4">Policy</h6>
                 <ul class="list-unstyled mb-0">
                     <li class="mb-2"><a href="#" class="text-muted">Return Policy</a></li>
                     <li class="mb-2"><a href="#" class="text-muted">Terms Of Use</a></li>
                     <li class="mb-2"><a href="#" class="text-muted">Security</a></li>
                     <li class="mb-2"><a href="#" class="text-muted">Privacy</a></li>
                 </ul>
             </div>
             <div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
                 <h6 class="text-uppercase font-weight-bold mb-4">Company</h6>
                 <ul class="list-unstyled mb-0">
                     <li class="mb-2"><a href="signIn.aspx" class="text-muted">Login</a></li>
                     <li class="mb-2"><a href="signup.aspx" class="text-muted">Register</a></li>
                     <li class="mb-2"><a href="#" class="text-muted">Sitemap</a></li>
                     <li class="mb-2"><a href="Offers" class="text-muted">Our Offers</a></li>
                 </ul>
             </div>
     </div>
     <hr class="p-0 m-0 b-0 align-right ">
      

     

     

      
            
          
            <div class="row py-5">
         <div class="col-lg-12 text-white text-center">
             <h1 class="display-1 ">Contact</h1>
               </div>
     </div>

<div class="col-lg-12 col-md-6 mb-10 mb-lg-0">   
   <div class="row">
    <div class="col-md-4 text-white">
      <p>Fan? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Sangli, India</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +91 19095566</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: flywayairjet@email.com</p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
             <asp:TextBox ID="TextBox4" runat="server" class="form-control"  
                 placeholder="Email Id" type="text" ReadOnly="True"></asp:TextBox>
         
        </div>
        <div class="col-sm-6 form-group">
       
        <asp:Button ID="Button2" runat="server" class="btn btn-primary" 
             Text="Subscribe Now" onclick="Button2_Click"></asp:Button> 
   
        </div>
       
      </div>
    <asp:TextBox ID="TextBox3" runat="server" class="form-control"  
            placeholder="Comment" TextMode="MultiLine"></asp:TextBox>
    
      <br>
      <div class="row">
        <div class="col-md-6 form-group">
         <asp:Button ID="Button1" runat="server" Text="Send" type="submit" 
                                class="btn btn-primary" onclick="Button1_Click" 
                Width="76px"/>
    
          <i class="fa fa-paper-plane-o"  aria-hidden="true"></i>

      </div>

      </div>
    </div>
  </div>
    </div>
         </div>
  

 </footer>
</div>
 </body>
   
    
   
</asp:Content>

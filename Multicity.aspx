<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Multicity.aspx.cs" Inherits="MajorProject.Multicity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style>
    body
    {
         background: url(images/bg/b3.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height: 100vh;
    }
    h1{  padding-top: 31px;}
h1.header-w3ls {
    text-align: center;
    font-weight: 600;
    text-transform: uppercase;
    color: #fff;
    letter-spacing: 11px;
    text-shadow: 2px 3px rgba(0, 0, 0, 0.42);
    background-color:rgba(0,0,0,0.6);
}

h3
{
     text-align: right;
    font-weight: 100;
    text-transform: uppercase;
    color: white;
    letter-spacing: 8px;
    font-weight:bold;
    text-shadow: 2px 3px rgba(0, 0, 0, 5);
  
}
.section {
	position: relative;
	height: 100vh;
}
.section .section-center {
	position: absolute;
	top: 50%;
	left: 0;
	right: 0;
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
}

.booking-form a{
	font-family: 'PT Sans', sans-serif;
	color:white;
        font-weight: 700;
        font-style: italic;
    }

.booking-form {
	background: rgba(0, 0, 0, 0.5);
	padding: 40px;
	border-radius: 6px;

}
.booking-form .form-group {
	position: relative;
	margin-bottom: 20px;
}

.booking-form .form-control {
	background-color: #fff;
	height: 50px;
	color: #191a1e;
	border: none;
	font-size: 16px;
	font-weight: 400;
	-webkit-box-shadow: none;
	box-shadow: none;
	border-radius: 40px;
	padding: 0px 25px;
}
.booking-form .form-control::-webkit-input-placeholder {
	color: rgba(82, 82, 84, 0.4);
}

.booking-form .form-control:-ms-input-placeholder {
	color: rgba(82, 82, 84, 0.4);
}

.booking-form .form-control::placeholder {
	color: rgba(82, 82, 84, 0.4);
}

.booking-form input[type="date"].form-control:invalid {
	color: rgba(82, 82, 84, 0.4);
}

.booking-form select.form-control {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.booking-form select.form-control+.select-arrow {
	position: absolute;
	right: 10px;
	bottom: 6px;
	width: 32px;
	line-height: 32px;
	height: 32px;
	text-align: center;
	pointer-events: none;
	color: rgba(0, 0, 0, 0.3);
	font-size: 14px;
}

.booking-form select.form-control+.select-arrow:after {
	content: '\279C';
	display: block;
	-webkit-transform: rotate(90deg);
	transform: rotate(90deg);
}
.booking-form .form-label {
	display: block;
	margin-left: 20px;
	margin-bottom: 5px;
	font-weight: 400;
	text-transform: uppercase;
	line-height: 24px;
	height: 24px;
	font-size: 12px;
	color: #fff;
}

.booking-form .form-checkbox input {
	position: absolute !important;
	margin-left: -9999px !important;
	visibility: hidden !important;
}

.booking-form .form-checkbox label {
	position: relative;
	padding-top: 4px;
	padding-left: 30px;
	font-weight: 400;
	color: #fff;
}

.booking-form .form-checkbox label+label {
	margin-left: 15px;
}

.booking-form .form-checkbox input+span {
	position: absolute;
	left: 2px;
	top: 4px;
	width: 20px;
	height: 20px;
	background: #fff;
	border-radius: 50%;
}

.booking-form .form-checkbox input+span:after {
	content: '';
	position: absolute;
	top: 50%;
	left: 50%;
	width: 0px;
	height: 0px;
	border-radius: 50%;
	background-color: #f23e3e;
	-webkit-transition: 0.2s all;
	transition: 0.2s all;
	-webkit-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}


.booking-form .form-checkbox input:not(:checked)+span:after {
	opacity: 0;
}

.booking-form .form-checkbox input:checked+span:after {
	opacity: 1;
	width: 10px;
	height: 10px;
}

.booking-form .form-btn {
	margin-top: 27px;
}

.booking-form .submit-btn {
	color: #fff;
	background-color: #f23e3e;
	font-weight: 400;
	height: 50px;
	font-size: 14px;
	border: none;
	width: 100%;
	border-radius: 40px;
	text-transform: uppercase;
	-webkit-transition: 0.2s all;
	transition: 0.2s all;
}
.booking-form .submit-btn:hover,
.booking-form .submit-btn:focus {
	opacity: 0.9;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <div id="booking" class="section">
		<div class="section-center">
       
			<div class="container" id="Roundtrip">
				<div class="row">
                <h1 class="header-w3ls">Multi City </h1>
					<div class="booking-form">
                    <h3>Trip 1</h3>
						<form>
							<div class="form-group">
								<div class="form-checkbox">
									<label for="one-way">
										<input type="radio" id="Radio10" name="flight-type">
										<span></span> <a href="Oneway.aspx">One Way</a>
									</label>
                                    <label for="roundtrip">
										<input type="radio" id="Radio11" name="flight-type" >
										<span></span><a href="Roundtrip.aspx">Roundtrip</a>
									</label>
									<label for="multi-city">
										<input type="radio" id="Radio12" name="flight-type" checked>
										<span></span><a href="#">Multi-City</a>
									</label>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Flying from</span>
                                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                       <asp:ListItem Value="">Destination Country</asp:ListItem>                
                           <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Kolkata</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Banglore</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Srinagar</asp:ListItem>
                            <asp:ListItem>Guwahati</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Jaipur</asp:ListItem>
                            <asp:ListItem>Aehmdabad</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Belgaum</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        		</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Flying to</span>
										<asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                       <asp:ListItem Value="">Destination Country</asp:ListItem>                
                           <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Kolkata</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Banglore</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Srinagar</asp:ListItem>
                            <asp:ListItem>Guwahati</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Jaipur</asp:ListItem>
                            <asp:ListItem>Aehmdabad</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Belgaum</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        </div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Departing</span>
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" type="date" required></asp:TextBox>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Returning</span>
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" type="date" required></asp:TextBox>	
                                        </div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Adults (18+)</span>
                                         <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" >
                                                 <asp:ListItem Value="1">1</asp:ListItem>  
                                                 <asp:ListItem>2</asp:ListItem>
                                                 <asp:ListItem>3</asp:ListItem>
                                                 <asp:ListItem>4</asp:ListItem>
                                                 <asp:ListItem>5</asp:ListItem>
                                          </asp:DropDownList>		
										<span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Children (0-17)</span>
										<asp:DropDownList ID="DropDownList4" runat="server" class="form-control" >
                                                 <asp:ListItem Value="0">0</asp:ListItem>  
                                                 <asp:ListItem>1</asp:ListItem>  
                                                 <asp:ListItem>2</asp:ListItem>
                                                 <asp:ListItem>3</asp:ListItem>
                                                 <asp:ListItem>4</asp:ListItem>
                                                 <asp:ListItem>5</asp:ListItem>
                                          </asp:DropDownList>	
										<span class="select-arrow"></span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Travel class</span>
                                         <asp:DropDownList ID="DropDownList5" runat="server" class="form-control" >
                             <asp:ListItem Value="Economy Class">Economy Class</asp:ListItem>
                            <asp:ListItem>First Class</asp:ListItem>
                            <asp:ListItem>Business Class</asp:ListItem>
                            <asp:ListItem>Premium Class</asp:ListItem>
                      </asp:DropDownList>		
                    	<span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-btn">
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#trip2">Go To Next Trip</asp:HyperLink>      
								    </div>
								</div>
                                <div class="col-md-3">
									
                                    </div>
								</div>
							</div>
						</form>
                        </div>
					</div>
				</div>
			</div>   
	
 <div id="trip2">
                           <div id="Div1" class="section">
		<div class="section-center">
       
			<div class="container" id="Div2">
				<div class="row">
                <h1 class="header-w3ls">Trip 2</h1>
					<div class="booking-form">
                    <h3>Trip 2</h3>
						<form>
							<div class="form-group">
								<div class="form-checkbox">
									<label for="one-way">
										<input type="radio" id="Radio1" name="flight-type">
										<span></span> <a href="Oneway.aspx">One Way</a>
									</label>
                                    <label for="roundtrip">
										<input type="radio" id="Radio2" name="flight-type" >
										<span></span><a href="Roundtrip.aspx">Roundtrip</a>
									</label>
									<label for="multi-city">
										<input type="radio" id="Radio3" name="flight-type" checked>
										<span></span><a href="#">Multi-City</a>
									</label>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Flying from</span>
                                        <asp:DropDownList ID="dest1" runat="server" class="form-control">
                       <asp:ListItem Value="sangli">Destination Country</asp:ListItem>                
                           <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Kolkata</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Banglore</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Srinagar</asp:ListItem>
                            <asp:ListItem>Guwahati</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Jaipur</asp:ListItem>
                            <asp:ListItem>Aehmdabad</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Belgaum</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        		</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Flying to</span>
										<asp:DropDownList ID="dest2" runat="server" class="form-control">
                       <asp:ListItem Value="">Destination Country</asp:ListItem>                
                           <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Kolkata</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Banglore</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Srinagar</asp:ListItem>
                            <asp:ListItem>Guwahati</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Jaipur</asp:ListItem>
                            <asp:ListItem>Aehmdabad</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Belgaum</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        </div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Departing</span>
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" type="date" required></asp:TextBox>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Returning</span>
                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" type="date" required></asp:TextBox>	
                                        </div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Adults (18+)</span>
                                         <asp:DropDownList ID="a1" runat="server" class="form-control" >
                                                 <asp:ListItem Value="1">1</asp:ListItem>  
                                                 <asp:ListItem>2</asp:ListItem>
                                                 <asp:ListItem>3</asp:ListItem>
                                                 <asp:ListItem>4</asp:ListItem>
                                                 <asp:ListItem>5</asp:ListItem>
                                          </asp:DropDownList>		
										<span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Children (0-17)</span>
										<asp:DropDownList ID="c1" runat="server" class="form-control" >
                                                 <asp:ListItem Value="0">0</asp:ListItem>  
                                                 <asp:ListItem>1</asp:ListItem>  
                                                 <asp:ListItem>2</asp:ListItem>
                                                 <asp:ListItem>3</asp:ListItem>
                                                 <asp:ListItem>4</asp:ListItem>
                                                 <asp:ListItem>5</asp:ListItem>
                                          </asp:DropDownList>	
										<span class="select-arrow"></span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Travel class</span>
                                         <asp:DropDownList ID="class2" runat="server" class="form-control" >
                             <asp:ListItem Value="Economy Class">Economy Class</asp:ListItem>
                            <asp:ListItem>First Class</asp:ListItem>
                            <asp:ListItem>Business Class</asp:ListItem>
                            <asp:ListItem>Premium Class</asp:ListItem>
                      </asp:DropDownList>		
                    	<span class="select-arrow"></span>
									</div>
								</div>
								                               
                                 <div class="col-md-3">
									<div class="form-btn">
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="#trip3">Go To Next Trip</asp:HyperLink>      
									</div>
								</div>
                                <div class="col-md-3">
									<div class="form-btn">
                                        <asp:LinkButton ID="LinkButton1" runat="server"  
                                            onclick="LinkButton1_Click" CssClass="btn btn-primary" >Show flights</asp:LinkButton>
                                     
                                    </div>
                                </div>
								</div>
							</div>
						</form>
                        </div>
					</div>
				</div>
                </div>
                </div>
			
 <div id="trip3">
    <div id="Div3" class="section">
		<div class="section-center">
       
			<div class="container" id="Div4">
				<div class="row">
                <h1 class="header-w3ls">Trip 3 </h1>
					<div class="booking-form">
                    <h3>Trip 3</h3>
						<form>
							<div class="form-group">
								<div class="form-checkbox">
									<label for="one-way">
										<input type="radio" id="Radio4" name="flight-type">
										<span></span> <a href="Oneway.aspx">One Way</a>
									</label>
                                    <label for="roundtrip">
										<input type="radio" id="Radio5" name="flight-type" >
										<span></span><a href="Roundtrip.aspx">Roundtrip</a>
									</label>
									<label for="multi-city">
										<input type="radio" id="Radio6" name="flight-type" checked>
										<span></span><a href="#">Multi-City</a>
									</label>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Flying from</span>
                                        <asp:DropDownList ID="DropDownList11" runat="server" class="form-control">
                       <asp:ListItem Value="">Destination Country</asp:ListItem>                
                           <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Kolkata</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Banglore</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Srinagar</asp:ListItem>
                            <asp:ListItem>Guwahati</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Jaipur</asp:ListItem>
                            <asp:ListItem>Aehmdabad</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Belgaum</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        		</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Flying to</span>
										<asp:DropDownList ID="DropDownList12" runat="server" class="form-control">
                       <asp:ListItem Value="">Destination Country</asp:ListItem>                
                           <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Kolkata</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Banglore</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Srinagar</asp:ListItem>
                            <asp:ListItem>Guwahati</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Jaipur</asp:ListItem>
                            <asp:ListItem>Aehmdabad</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Belgaum</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        </div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Departing</span>
                                        <asp:TextBox ID="TextBox5" runat="server" class="form-control" type="date" required></asp:TextBox>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Returning</span>
                                        <asp:TextBox ID="TextBox6" runat="server" class="form-control" type="date" required></asp:TextBox>	
                                        </div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Adults (18+)</span>
                                         <asp:DropDownList ID="DropDownList13" runat="server" class="form-control" >
                                                 <asp:ListItem Value="1">1</asp:ListItem>  
                                                 <asp:ListItem>2</asp:ListItem>
                                                 <asp:ListItem>3</asp:ListItem>
                                                 <asp:ListItem>4</asp:ListItem>
                                                 <asp:ListItem>5</asp:ListItem>
                                          </asp:DropDownList>		
										<span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Children (0-17)</span>
										<asp:DropDownList ID="DropDownList14" runat="server" class="form-control" >
                                                 <asp:ListItem Value="0">0</asp:ListItem>  
                                                 <asp:ListItem>1</asp:ListItem>  
                                                 <asp:ListItem>2</asp:ListItem>
                                                 <asp:ListItem>3</asp:ListItem>
                                                 <asp:ListItem>4</asp:ListItem>
                                                 <asp:ListItem>5</asp:ListItem>
                                          </asp:DropDownList>	
										<span class="select-arrow"></span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Travel class</span>
                                         <asp:DropDownList ID="DropDownList15" runat="server" class="form-control" >
                             <asp:ListItem Value="Economy Class">Economy Class</asp:ListItem>
                            <asp:ListItem>First Class</asp:ListItem>
                            <asp:ListItem>Business Class</asp:ListItem>
                            <asp:ListItem>Premium Class</asp:ListItem>
                      </asp:DropDownList>		
                    	<span class="select-arrow"></span>
									</div>
								</div>
								
                                <div class="col-md-3">
									<div class="form-btn">
                                             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="#trip4">Go To Next Trip</asp:HyperLink>      
									</div>
								</div>
                                <div class="col-md-3">
									<div class="form-btn">
                                        <asp:LinkButton ID="LinkButton2" runat="server"  
                                            onclick="LinkButton2_Click" CssClass="btn btn-primary" >Show flights</asp:LinkButton>
                                     
                                    </div>
                                    </div>

								</div>
							</div>
						</form>
                        </div>
					</div>
				</div>
			</div>
	</div>


                            
    <div id="trip4">
    <div id="Div5" class="section">
		<div class="section-center">
       
			<div class="container" id="Div6">
				<div class="row">
                <h1 class="header-w3ls">Trip 4 </h1>
					<div class="booking-form">
                    <h3>Trip 4</h3>
						<form>
							<div class="form-group">
								<div class="form-checkbox">
									<label for="one-way">
										<input type="radio" id="Radio7" name="flight-type">
										<span></span> <a href="Oneway.aspx">One Way</a>
									</label>
                                    <label for="roundtrip">
										<input type="radio" id="Radio8" name="flight-type" >
										<span></span><a href="Roundtrip.aspx">Roundtrip</a>
									</label>
									<label for="multi-city">
										<input type="radio" id="Radio9" name="flight-type" checked>
										<span></span><a href="#">Multi-City</a>
									</label>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Flying from</span>
                                        <asp:DropDownList ID="DropDownList16" runat="server" class="form-control">
                       <asp:ListItem Value="">Destination Country</asp:ListItem>                
                           <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Kolkata</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Banglore</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Srinagar</asp:ListItem>
                            <asp:ListItem>Guwahati</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Jaipur</asp:ListItem>
                            <asp:ListItem>Aehmdabad</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Belgaum</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        		</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Flying to</span>
										<asp:DropDownList ID="DropDownList17" runat="server" class="form-control">
                       <asp:ListItem Value="">Destination Country</asp:ListItem>                
                           <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Kolkata</asp:ListItem>
                            <asp:ListItem>Pune</asp:ListItem>
                            <asp:ListItem>Banglore</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Srinagar</asp:ListItem>
                            <asp:ListItem>Guwahati</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Jaipur</asp:ListItem>
                            <asp:ListItem>Aehmdabad</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Belgaum</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        </div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Departing</span>
                                        <asp:TextBox ID="TextBox7" runat="server" class="form-control" type="date" required></asp:TextBox>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
									<span class="form-label">Returning</span>
                                        <asp:TextBox ID="TextBox8" runat="server" class="form-control" type="date" required></asp:TextBox>	
                                        </div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Adults (18+)</span>
                                         <asp:DropDownList ID="DropDownList18" runat="server" class="form-control" >
                                                 <asp:ListItem Value="1">1</asp:ListItem>  
                                                 <asp:ListItem>2</asp:ListItem>
                                                 <asp:ListItem>3</asp:ListItem>
                                                 <asp:ListItem>4</asp:ListItem>
                                                 <asp:ListItem>5</asp:ListItem>
                                          </asp:DropDownList>		
										<span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Children (0-17)</span>
										<asp:DropDownList ID="DropDownList19" runat="server" class="form-control" >
                                                 <asp:ListItem Value="0">0</asp:ListItem>  
                                                 <asp:ListItem>1</asp:ListItem>  
                                                 <asp:ListItem>2</asp:ListItem>
                                                 <asp:ListItem>3</asp:ListItem>
                                                 <asp:ListItem>4</asp:ListItem>
                                                 <asp:ListItem>5</asp:ListItem>
                                          </asp:DropDownList>	
										<span class="select-arrow"></span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Travel class</span>
                                         <asp:DropDownList ID="DropDownList20" runat="server" class="form-control" >
                             <asp:ListItem Value="Economy Class">Economy Class</asp:ListItem>
                            <asp:ListItem>First Class</asp:ListItem>
                            <asp:ListItem>Business Class</asp:ListItem>
                            <asp:ListItem>Premium Class</asp:ListItem>
                      </asp:DropDownList>		
                    	<span class="select-arrow"></span>
									</div>
								</div>
                                <div class="col-md-3">
								<div class="form-btn">
                                      <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="#trip3">Go To Back Trip</asp:HyperLink>     
									</div>
								</div>
                                <div class="col-md-3">
									<div class="form-btn">
                                        <asp:LinkButton ID="LinkButton3" runat="server" class="btn btn-primary" 
                                            onclick="LinkButton3_Click" >Show flights</asp:LinkButton>
                                        
                                          
                                     </div>
                                    </div>
							</div>
						</form>
                        </div>
					</div>
				</div>
			</div>
    </div>
    
									
    </div>
</asp:Content>

<%@ Page Title="Flight" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Oneway.aspx.cs" Inherits="MajorProject.Flight" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style>
    .card {
  box-shadow: 2px 4px 16px 2px rgba(0, 0, 0, 0.9);
  max-width: 400px;
  margin: auto;
  text-align: center;
  font-family: arial;
  height: auto;
  padding:5px;
  background-color: White;
  }

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}


.center
{
    text-align:center;
   
}
    body
    {
         background: url(images/bg/b3.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
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
	color:White;
}

.booking-form {
	background: rgba(0, 0, 0, 0.5);
	padding: 40px;
	border-radius: 6px;
}

.booking-form .form-group {
	position: relative;
	margin-bottom: 20px;
        height: 79px;
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
<body>
	<div id="booking" class="section">
		<div class="section-center">
       

			<div class="container" id="one">
				<div class="row">
                 <h1 class="header-w3ls">
		One Way</h1>
					<div class="booking-form">
						<form>

							<div class="form-group">
								<div class="form-checkbox">
									<label for="one-way">
										<input type="radio" id="one-way" name="flight-type" checked>
										<span></span>One way
									</label>
                                    <label for="roundtrip">
										<input type="radio" id="roundtrip" name="flight-type">
										<span></span><a href="Roundtrip.aspx">Roundtrip</a>
									</label>
									<label for="multi-city">
										<input type="radio" id="multi-city" name="flight-type">
										<span></span><a href="Multicity.aspx">Multi-City</a>
									</label>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Flying from</span>
                                       <asp:DropDownList ID="DropDownList1" runat="server"  class="form-control"
               DataSourceID="SqlDataSource1" DataTextField="City1" 
            DataValueField="City1">
                       <asp:ListItem Value="">Departure Country</asp:ListItem>                
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
	    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [City1] FROM [city]"></asp:SqlDataSource>
                        </div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Flying to</span>
										<asp:DropDownList ID="DropDownList2" runat="server" class="form-control" 
                                            DataSourceID="SqlDataSource2" DataTextField="City2" DataValueField="City2" >
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
                        	            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [City2] FROM [city]"></asp:SqlDataSource>
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
                                        <asp:Button ID="Button1" runat="server" class="submit-btn" Text="Show flights" 
                                            onclick="Button1_Click" />
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>
        
	</div>
    
    <br />
    <br />
    <br />
    <br />
    <br />

<div align="center">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" CellSpacing="200" DataSourceID="SqlDataSource3"
       Height="378px" Width="866px" RepeatColumns="2" 
        RepeatDirection="Horizontal">
     
        <ItemTemplate>
        <div class="card"> 
              <div class="center">
           
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' Visible="False" />
            <br />

         
                  <asp:Image ID="Image1" runat="server" Height="171px"  Width="261px" 
                      ImageUrl='<%# Eval("Images") %>' />
                       <br />
                  
            <br />
            <h4>
           
            <asp:Label ID="City1Label" runat="server" Text='<%# Eval("City1") %>' /> To  <asp:Label ID="City2Label" runat="server" Text='<%# Eval("City2") %>' />
            <br />
             </h4>
            <h4>
        
            <asp:Label ID="State1Label" runat="server" Text='<%# Eval("State1") %>' /> To  <asp:Label ID="State2Label" runat="server" Text='<%# Eval("State2") %>' />
            </h4>
             <h4>
          
            <asp:Label ID="AirportNameLabel" runat="server" 
                Text='<%# Eval("AirportName") %>' />
             </h4>
            <h4>
           
            Price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
             </h4>
           

            <br />
                  
            <br />
           
          <asp:LinkButton ID="LinkButton1"  runat="server"  class="btn btn-warning" onclick="LinkButton1_Click">Book Now</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />

           
            </div>
                </div>
        </ItemTemplate>
    </asp:DataList>
                        
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [city] WHERE (([City1] = @City1) AND ([City2] = @City2))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="City1" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="City2" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
   </div>
          <br />
<br />
<br />          
<br />
<br />
<br />
    </body>
</asp:Content>

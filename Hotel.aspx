<%@ Page Title="Hotel" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hotel.aspx.cs" Inherits="MajorProject.Hotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style>
    .card {
  box-shadow: 2px 4px 16px 2px rgba(0, 0, 0, 0.5);
  max-width: auto;
  margin: auto;
  text-align: center;
  font-family: arial;
  height: auto;
  padding:5px;
  background-color: White;
  }
  .bg
  {
       background-color:rgba(0,0,0,0.6);
	background-size: cover;
	background-position: center;
  }
.price {
  color: grey;
  font-size: 22px;
}

.card LinkButton1 {
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
         background: url(images/bg/b4.jpg) no-repeat center center fixed; 

         background-size: cover;
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

#booking {
	font-family: 'Montserrat', sans-serif;
    background-color:rgba(0,0,0,0.6);
	background-size: cover;
	background-position: center;
}

#booking::before {
	content: '';
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	top: 0;
		
}

.booking-form {
	background-color: #fff;
	padding: 50px 20px;
	-webkit-box-shadow: 0px 5px 20px -5px rgba(0, 0, 0, 0.3);
	box-shadow: 8px 5px 20px 5px rgba(0, 0, 0, 0.9);
	border-radius: 4px;
}

.booking-form .form-group {
	position: relative;
	margin-bottom: 30px;
}

.booking-form .form-control {
	background-color: #ebecee;
	border-radius: 4px;
	border: none;
	height: 40px;
	-webkit-box-shadow: none;
	box-shadow: none;
	color: #3e485c;
	font-size: 14px;
}

.booking-form .form-control::-webkit-input-placeholder {
	color: rgba(62, 72, 92, 0.3);
}

.booking-form .form-control:-ms-input-placeholder {
	color: rgba(62, 72, 92, 0.3);
}

.booking-form .form-control::placeholder {
	color: rgba(62, 72, 92, 0.3);
}

.booking-form input[type="date"].form-control:invalid {
	color: rgba(62, 72, 92, 0.3);
}

.booking-form select.form-control {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.booking-form select.form-control+.select-arrow {
	position: absolute;
	right: 0px;
	bottom: 4px;
	width: 32px;
	line-height: 32px;
	height: 32px;
	text-align: center;
	pointer-events: none;
	color: rgba(62, 72, 92, 0.3);
	font-size: 14px;
}

.booking-form select.form-control+.select-arrow:after {
	content: '\279C';
	display: block;
	-webkit-transform: rotate(90deg);
	transform: rotate(90deg);
}

.booking-form .form-label {
	display: inline-block;
	color: #3e485c;
	font-weight: 700;
	margin-bottom: 6px;
	margin-left: 7px;
}

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

.booking-cta {
	margin-top: 80px;
	margin-bottom: 30px;
}

.booking-cta h1 {
	font-size: 52px;
	text-transform: uppercase;
	color: #fff;
	font-weight: 700;
}

.booking-cta p {
	font-size: 16px;
	color: rgba(255, 255, 255, 0.8);
}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<body>


	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="col-md-7 col-md-push-5">
							<div class="booking-form">
							<form>
								
                                <div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">Your Destination</span>
                                             <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" 
                                                DataSourceID="SqlDataSource1" DataTextField="city" DataValueField="city">
                                             <asp:ListItem Value="">City</asp:ListItem>                
                           <asp:ListItem>Mumbai</asp:ListItem>
                            <asp:ListItem>Banglore</asp:ListItem>
                            <asp:ListItem>Patna</asp:ListItem>
                            <asp:ListItem>Panji</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                            <asp:ListItem>Chandigarh</asp:ListItem>
                            <asp:ListItem>Shimla</asp:ListItem>
                            <asp:ListItem>Trivandom</asp:ListItem>
                            <asp:ListItem>Bhopal</asp:ListItem>
                            <asp:ListItem>Shillong</asp:ListItem>
                            <asp:ListItem>Bhubneshwar</asp:ListItem>
                            <asp:ListItem>Chandigrah</asp:ListItem>
                            <asp:ListItem>Jaipur</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Hydrabad</asp:ListItem>
                            <asp:ListItem>Dehradun</asp:ListItem>
                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Kolkata</asp:ListItem>

                        </asp:DropDownList>
                                   	        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT [city] FROM [hotelD]"></asp:SqlDataSource>
                                   	</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">State</span>
                                           <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" 
                                                DataSourceID="SqlDataSource3" DataTextField="state" DataValueField="state">
                                             <asp:ListItem Value="">State</asp:ListItem>                
                                           <asp:ListItem>Maharashtra</asp:ListItem>
                                             <asp:ListItem>Karnataka</asp:ListItem>
                            <asp:ListItem>Bihar</asp:ListItem>
                            <asp:ListItem>Goa</asp:ListItem>
                            <asp:ListItem>Gujarat</asp:ListItem>
                            <asp:ListItem>Haryana</asp:ListItem>
                            <asp:ListItem>Himachal Pradesh </asp:ListItem>
                            <asp:ListItem>Kerla</asp:ListItem>
                            <asp:ListItem>Madhya pradesh </asp:ListItem>
                            <asp:ListItem>Meghalaya</asp:ListItem>
                            <asp:ListItem>Odisha</asp:ListItem>
                            <asp:ListItem>Punjab</asp:ListItem>
                            <asp:ListItem>Rajasthan</asp:ListItem>
                            <asp:ListItem>Tamil Nadu</asp:ListItem>
                            <asp:ListItem>Telengana</asp:ListItem>
                            <asp:ListItem>Uttarakhand</asp:ListItem>
                            <asp:ListItem>West bengal</asp:ListItem>
                     </asp:DropDownList>
                      <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT [state] FROM [hotelD]"></asp:SqlDataSource>
                                       </div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">Check In</span>
                                            <asp:TextBox ID="TextBox3" runat="server" class="form-control" type="date" required></asp:TextBox>
							        	</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">Check out</span>
                                            <asp:TextBox ID="TextBox4" runat="server" class="form-control" type="date" required></asp:TextBox>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-4">
										<div class="form-group">
											<span class="form-label ">Rooms</span>
											<asp:DropDownList ID="DropDownList3" runat="server" class="form-control" >
                                                
                                                 <asp:ListItem Value="1">1</asp:ListItem>

                                                 <asp:ListItem>2</asp:ListItem>
                                                 <asp:ListItem>3</asp:ListItem>
                                              </asp:DropDownList>		
											<span class="select-arrow"></span>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group">
											<span class="form-label">Adults (18+)</span>
											<asp:DropDownList ID="DropDownList4" runat="server" class="form-control" >
                                                
                                                 <asp:ListItem Value="1">1</asp:ListItem>

                                                 <asp:ListItem>2</asp:ListItem>
                                                 <asp:ListItem>3</asp:ListItem>
                                              </asp:DropDownList>		
											<span class="select-arrow"></span>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="form-group">
											<span class="form-label">Children (0-17)</span>
											<asp:DropDownList ID="DropDownList5" runat="server" class="form-control" >
                                                 <asp:ListItem Value="0">0</asp:ListItem>  
                                                 <asp:ListItem>1</asp:ListItem>
                                                 <asp:ListItem>2</asp:ListItem>
                                              </asp:DropDownList>		
											<span class="select-arrow"></span>
										</div>
									</div>
								</div>
								<div class="form-btn">
                                    <asp:Button ID="Button1" runat="server"  class="btn btn-primary" 
                                        Text="Check availability" onclick="Button1_Click1" />
								
								</div>
							</form>
						</div>
					</div>
					<div class="col-md-4 col-md-pull-7">
                    <div class="booking-cta">
							<h1>Make your reservation</h1>
							
						</div>
					
					</div>
				</div>
			</div>
		</div>
	</div>

    <div class="bg">
    
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
<div align="center">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" CellSpacing="200"
        DataSourceID="SqlDataSource2" Height="378px" Width="406px" RepeatColumns="2" 
        RepeatDirection="Horizontal">
        <ItemTemplate>
          <div class="card">

        <div class="center">
                <br />

            <asp:Image ID="Image1" runat="server" Height="171px"  Width="261px"
                ImageUrl='<%# Eval("image") %>' />
                <br />
          <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' Visible="False" />
            <br />
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' Visible="False" />
            <br />
            City:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
            <br />
            State:
            <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
            <br />
            Hptel Name:
            <asp:Label ID="hnameLabel" runat="server" Text='<%# Eval("hname") %>' />
            <br />
           
            Price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
          
           
            <asp:LinkButton ID="LinkButton2" 
        class="btn btn-warning btn-block mx-auto" runat="server" 
        onclick="LinkButton2_Click1">Book Now</asp:LinkButton>
<br />      
       </div></div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [hotelD] WHERE (([city] = @city) AND ([state] = @state))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="city" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="state" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>
  </body>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </div>

            

    </asp:Content>

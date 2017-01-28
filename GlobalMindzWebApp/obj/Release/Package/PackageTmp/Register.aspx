<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GlobalMindzWebApp.Register" EnableEventValidation = false %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<script type="text/javascript">

		$(document).ready(function () {

			//
			//setTimeout(function () { __doPostBack('ButtonPostBack', ""); }, 1);
			setTimeout(function () {
				$(document).trigger('afterready');
			}, 1);
			//setTimeout(function () { __doPostBack('btnSubmit', ""); }, 1);

			function ValidateEmail(email) {
				var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
				return expr.test(email);
			};


			function validatePhone(phoneText) {
				//alert("hello validating phone");
				var filter = /^[0-9-+]+$/;
				if (filter.test(phoneText)) {
					return true;
				}
				else {
					return false;
				}
			};

			function ResetErrorBorderColor()
			{
				$("#txt_UserName").css('border', '1px solid #cccccc');
				$("#txt_phno").css('border', '1px solid #cccccc');
				$("#txt_email").css('border', '1px solid #cccccc');
				$("#txt_paswd").css('border', '1px solid #cccccc');
				$("#txt_phno").css('border', '1px solid #cccccc');
				$("#txt_organisation").css('border', '1px solid #cccccc');
				$("#txt_desgination").css('border', '1px solid #cccccc');
			}

			$("#btnRegister").click(function () {
				//sayHello();
				ResetErrorBorderColor();
				//alert("Handler for .click() called.");
				//debugger
				var retValue;
				var phoneText = $("#txt_phno").val();
				var validphone = validatePhone(phoneText);
				var theMessage = "Please provide correct input";

				if ($.trim($("#txt_UserName").val()) == "")
				{
					$("#txt_UserName").css('border-color', 'red');
					//theMessage = "User Name Can't blank";
					retValue= false;
				}
				if ($.trim($("#txt_email").val()) == "") {
					$("#txt_email").css('border-color', 'red');
					//theMessage += "<br/> User Name Can't blank";
					retValue= false;
				}
				else if (!ValidateEmail($("#txt_email").val())) {
					//alert("Invalid email address.");
					$("#txt_email").css('border-color', 'red');
					retValue= false;
				}
				
				if ($.trim($("#txt_phno").val()) == "") {
					$("#txt_phno").css('border-color', 'red');
					retValue= false;
				}
				else if ($.trim(phoneText).length == 0) {
					$("#txt_phno").css('border-color', 'red');
					retValue= false;
				}
				else if ($.trim(phoneText).length != 10) {
					$("#txt_phno").css('border-color', 'red');
					retValue= false;
				}

				else if (validphone == false) {
					$("#txt_phno").css('border-color', 'red');
					retValue= false;
				}
				if ($.trim($("#txt_paswd").val()) == "") {
					$("#txt_paswd").css('border-color', 'red');
					retValue = false;
				}

				
				
				//=======================
				if (retValue == false)
				{
					$("#theResponse").text(theMessage);
					return false;
				}
				else
				{
					alert('submit');
					debugger
					__doPostBack('ctl00$MainContent$btnSubmit', 'OnClick');
					
					return true;
				}

			});
			
		})
	</script>

	<div class="row">
		<div class="col-md-6">
			<h3>User Registration <asp:Literal runat="server" ID="litResponse" Text=":" /></h3>
             
			<div class="form-group col-lg-12">
				<label>Name:</label>
				<input type="" name="" class="form-control" id="txt_UserName" value="">
			</div>
			<div class="form-group col-lg-12">
				<label>Email Address:</label>
				<input type="email" name="" class="form-control" id="txt_email" value="">
			</div>
			<div class="form-group col-lg-12">
				<label>Phone:</label>
				<input type="tel" name="" class="form-control" id="txt_phno" value="" maxlength="10">
			</div>
			<div class="form-group col-lg-12">
				<label>Password</label>
				<input type="password" name="" class="form-control" id="txt_paswd" value="">
			</div>
			<div class="form-group col-lg-12" style="text-align:center">
				<span id="theResponse" style="color:red;"></span><br />

				<button type="submit" class="btn btn-primary" id="btnRegister">Register</button>
				<asp:Button runat="server" ID="btnSubmit" Visible="false" UseSubmitBehavior="false" OnClick="RegisterUser" />
			</div>
			
			
		</div>

		<div class="col-md-6">
			<h3 class="dark-grey">Terms and Conditions</h3>
			<p>By clicking on "Register" you agree to The Company's' Terms and Conditions
				</p>
			<p>While rare, prices are subject to change based on exchange rate fluctuations - 
					should such a fluctuation happen, we may request an additional payment. You have the option to request a full refund or to pay the new price. (Paragraph 13.5.8)
				</p>
			<p>Should there be an error in the description or pricing of a product, we will provide you with a full refund (Paragraph 13.5.6)
				</p>
			<p>Acceptance of an order by us is dependent on our suppliers ability to provide the product. (Paragraph 13.5.6)
				</p>


		</div>
	</div>
	<%--<style type="text/css">
		#userRegister > div > input
		{
			margin: 5px 0px;
			clear: right;
			display:block;
		}
	</style>
	<div class="row" id="userRegister">
		<div class="col-md-12">
			<asp:TextBox ID="txtName" runat="server"  placeholder="Enter Your Full Name" required/>
			<asp:TextBox ID="txtEmail" runat="server" placeholder="Email Address" TextMode="Email" required/>
			<asp:TextBox ID="txtPhoneNumber" runat="server" placeholder="Phone Number" required/>
			<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" required />
			<asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server" required/>
			<asp:Button Text="Submit" runat="server" />
		</div>
	</div>--%>
	 

</asp:Content>

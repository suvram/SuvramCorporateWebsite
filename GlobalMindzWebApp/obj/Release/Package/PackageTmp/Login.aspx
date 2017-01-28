<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="true" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GlobalMindzWebApp.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<style type="text/css">
		#loginDiv {
			width: 400px;
			margin: 10px auto;
			border: solid 1px #ccc;
		}

			#loginDiv > div > div.input-group {
				margin: 10px 0px;
			}
	</style>
	<script type="text/javascript">
		$(document).ready(function () {
			//alert('heyyy');
			////sayHello();
			//debugger
			function ValidateEmail(email) {
				var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
				return expr.test(email);
			}

			function ValidateForm() {
				alert('hi');
				$("#MainContent_txt_loginuser").css('border', '1px solid #cccccc');
				$("#MainContent_txt_loginpassword").css('border', '1px solid #cccccc');

				if ($.trim($("#MainContent_txt_loginuser").val()) == "") {
					$("#MainContent_txt_loginuser").css('border-color', 'red');
					$("#div_Message").text('The Login Name or Email can not be empty');
					return false;
				}
				else if ($.trim($("#MainContent_txt_loginpassword").val()) == "") {

					$("#MainContent_txt_loginpassword").css('border-color', 'red');
					$("#div_Message").text('Password can not be empty');
					return false;
				}
					// else if (!ValidateEmail($("#MainContent_txt_loginuser").val())) {

					//$("#MainContent_txt_loginuser").css('border-color', 'red');
					//$("#div_Message").text('Not a valid email');
					//return;
					//}
				else {

					return true;
				}
			}

			//$("#btnLogin").click(function () {
			//	//alert("Handler for .click() called.");

			//	//debugger
			//	$("#MainContent_txt_loginuser").css('border', '1px solid #cccccc');
			//	$("#MainContent_txt_loginpassword").css('border', '1px solid #cccccc');

			//	 if ($.trim($("#MainContent_txt_loginuser").val()) == "") {
			//	 	$("#MainContent_txt_loginuser").css('border-color', 'red');
			//	 	$("#div_Message").text('The Login Name or Email can not be empty');
			//		return;
			//	}
			//	 else if ($.trim($("#MainContent_txt_loginpassword").val()) == "") {

			//	 	$("#MainContent_txt_loginpassword").css('border-color', 'red');
			//	 	$("#div_Message").text('Password can not be empty');
			//		return;
			//	 }
			//	// else if (!ValidateEmail($("#MainContent_txt_loginuser").val())) {

			//	 	//$("#MainContent_txt_loginuser").css('border-color', 'red');
			//	 	//$("#div_Message").text('Not a valid email');
			//	 	//return;
			//	 //}
			//	 else {

			//	 	__doPostBack('ctl00$MainContent$btn_login', 'OnClick');
			//	 }
			//});
		});
	</script>

	<div class="row" id="loginDiv">
		<div class="col-md-12">
			<h4><i class="fa fa-user"></i>&nbsp;Login Now</h4>

		</div>
		<div class="col-md-12">
			<div class="input-group margin-bottom-sm">
				<span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
				<asp:TextBox ID="txt_loginuser" required placeholder="Your Email / User Name" runat="server" class="form-control" type="text"></asp:TextBox>
			</div>
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
				<asp:TextBox ID="txt_loginpassword" placeholder="Your Password" required runat="server" TextMode="Password" class="form-control" type="text" Width="100%"></asp:TextBox>
			</div>
		</div>
		<div class="col-md-12" runat="server" id="divLoading" style="text-align: center;">
			<i class="fa fa-spinner fa-spin fa-3x fa-fw"></i>
			<span class="sr-only">Loading...</span>
		</div>
		<div class="col-md-12" style="text-align: center;">
			<asp:Button ID="btn_login" class="btn btn-default" OnClick="btn_login_click" runat="server" Text="Login" UseSubmitBehavior="true" Visible="true" OnClientClick="return ValidateForm();return false;" />

		</div>

		

		<div class="col-md-12" style="margin-top: 20px;">
			New User? <a href="~/Register" runat="server"><i class="fa fa-pencil-square-o"></i>&nbsp; Register Now!</a>
		</div>
		<div class="col-md-12">
			Forgot Password ?<a href="~/ForgotPassword" runat="server"> <i class="fa fa-key"></i>&nbsp; Please Click here</a>
		</div>
		<div class="col-md-12">
			<div id="div_Message" style="color: red;" runat="server">
			&nbsp;
				<asp:Literal runat="server" ID="lit_Response" Text="" />
		</div>
		</div>
	</div>


	<%--<div class="row-fluid" id="div_Login">
		<div class="span4">
			<h3><i class="icon-user icon-large"></i>&nbsp;Login Now</h3>
			<asp:Literal runat="server" ID="lit_Response"  Text="Response"/>
		</div>
		<div class="span4">
			<div class="control-group">
				<label class="control-label" for="inputIcon">User Name / Email address:</label>
				<div class="controls">
					<div class="input-prepend" style="width: 90%;">
						<span class="add-on"><i class="icon-envelope"></i></span>
						<asp:TextBox ID="txt_loginuser" placeholder="Your Email" runat="server" class="span2" type="text" Width="100%"></asp:TextBox>
					</div>
				</div>
			</div>
		</div>
		<div class="span4" style="margin-top: -15px;">
			<div class="control-group">
				<label class="control-label" for="inputIcon">Password:</label>
				<div class="controls">
					<div class="input-prepend" style="width: 90%;">
						<span class="add-on"><i class="icon-lock"></i></span>
						<asp:TextBox ID="txt_loginpassword" placeholder="Your Password" required runat="server" TextMode="Password" class="span2" type="text" Width="100%"></asp:TextBox>
					</div>
				</div>
			</div>
		</div>
		<div class="span3">
			<asp:Button ID="btn_login" class="botton" OnClick="btn_login_click" runat="server" Text="Login" UseSubmitBehavior="false" />
			<input type="button" id="btnLogin" value="Login" class="botton" />
		</div>
		<div class="span3">
			New User? <a href="#" id="hrfRegister">Register Now!</a>
		</div>
		<div class="span3">
			Forgot Password ?<a href="#forgot_form"> Please Click here</a> &nbsp;to recover.
		</div>
		 
	</div>--%>
</asp:Content>

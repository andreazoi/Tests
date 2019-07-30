<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="studentlist.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
    <style>


  @import url("//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css");
  .login-block{
  /* fallback for old browsers */
    
float:left;
width:100%;
padding : 50px 0;
}
.banner-sec{background:url(https://static.pexels.com/photos/33972/pexels-photo.jpg)  no-repeat left bottom; background-size:cover; min-height:500px; border-radius: 0 10px 10px 0; padding:0;}
.container{background:#fff; border-radius: 10px; box-shadow:15px 20px 0px rgba(0,0,0,0.1);}
.carousel-inner{border-radius:0 10px 10px 0;}
.carousel-caption{text-align:left; left:5%;}
.login-sec{padding: 50px 30px; position:relative; background-color: #fec137;
    border-bottom: 2px solid #eca80d;}
.login-sec .copy-text{position:absolute; width:80%; bottom:20px; font-size:13px; text-align:center;}
.login-sec .copy-text i{color:#FEB58A;}
.login-sec .copy-text a{color:#E36262;}
.login-sec h2{margin-bottom:30px; font-weight:800; font-size:30px; color: #503800;}
.login-sec h2:after{content:" "; width:100px; height:5px; background:#bf4f0ced; display:block; margin-top:20px; border-radius:3px; margin-left:auto;margin-right:auto}
.btn-login{background: rgba(0, 0, 0, 0.87); color:#fff; font-weight:600;}
.banner-text{width:70%; position:absolute; bottom:40px; padding-left:20px;}
.banner-text h2{color:#fff; font-weight:600;}
.banner-text h2:after{content:" "; width:100px; height:5px; background:#FFF; display:block; margin-top:20px; border-radius:3px;}
.banner-text p{color:#fff;}
    </style>
</head>
<body style="background-color:#d39e00;">
    <form id="form1" runat="server">
        <section class="login-block">
    <div class="container">
	<div class="row">

		<div class="col-md-4 login-sec">
            <div class="row">
                    <div class=" col-md-4 col-xs-12 col-sm-6 col-lg-3 ">

				<a href="Hompage.aspx" class="c-nav--logo">
					<img src="#" height="80" width="60" alt="Back to Home"/>
				</a>
			</div>
               <div class=" col-md-8 col-xs-12 col-sm-6 col-lg-9 ">

		    <h2 class="text-center">Login Now</h2>
</div>
                </div>

      <asp:ScriptManager runat="server" AjaxFrameworkMode="Enabled" EnablePartialRendering="true" LoadScriptsBeforeUI="false" AsyncPostBackTimeout="222"></asp:ScriptManager>


            <asp:UpdatePanel ID="UpdatePanemodel" runat="server" ViewStateMode="Enabled" EnableViewState="true" ChildrenAsTriggers="false" UpdateMode="Conditional" RenderMode="Inline" ValidateRequestMode="Disabled">
                <ContentTemplate>
<div class="login-form" runat="server">
  <div class="form-group">
    <asp:label for="exampleInputEmail1" class="text-uppercase" runat="server">Username</asp:label>
      <%-- textbox for Userame--%>
       <asp:TextBox ID="UserName" CssClass="form-control" runat="server" placeholder="User Name" ToolTip="Enter User Name"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" CssClass="message" runat="server" ErrorMessage="The UserName field is Required !" ControlToValidate="UserName" EnableClientScript="true"></asp:RequiredFieldValidator>
            
  </div>
  <div class="form-group">
    <asp:label for="exampleInputPassword" class="text-uppercase" runat="server">Password</asp:label>
       <%-- textbox for Password--%>
<asp:TextBox ID="Password" CssClass="form-control" runat="server" placeholder="User Password" ToolTip="Enter User Password" TextMode="Password"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="message" runat="server" ErrorMessage="The Password field is Required !" ControlToValidate="Password" EnableClientScript="False"></asp:RequiredFieldValidator>
                    
  </div>
  
  
    <div class="form-check">
    <label class="form-check-label text-center">
      <small><asp:CheckBox ID="CheckBox1" Text="Remember me ?" runat="server" />
     </small>
    </label>
   
    <asp:Button ID="Buttonlogin" CssClass="btn btn-login float-right" CausesValidation="true" ClientIDMode="Static"  OnClick="Button1_Click" AccessKey="E" TabIndex="2"  ToolTip="For Login"   runat="server"  Text="login" />

    <asp:Label ID="Labelmassage" CssClass="message" ForeColor="Red"  runat="server" Enabled="false"></asp:Label>
                 
  </div>
  
</div>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger EventName="click" ControlID="Buttonlogin" />
                   
                </Triggers>
            </asp:UpdatePanel>
<div class="copy-text">Created with <i class="fa fa-heart"></i> by <a href="#">...</a></div>
		</div>
		<div class="col-md-8 banner-sec">
            <%--<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                 <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                  </ol>
            <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <img class="d-block img-fluid" src="https://static.pexels.com/photos/33972/pexels-photo.jpg" alt="First slide"/>
      <div class="carousel-caption d-none d-md-block">
        <div class="banner-text">
            <h2>This is Heaven</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
        </div>	
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block img-fluid" src="https://images.pexels.com/photos/7097/people-coffee-tea-meeting.jpg" alt="First slide"/>
      <div class="carousel-caption d-none d-md-block">
        <div class="banner-text">
            <h2>This is Heaven</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
        </div>	
    </div>
    </div>
    <div class="carousel-item">
      <img class="d-block img-fluid" src="https://images.pexels.com/photos/872957/pexels-photo-872957.jpeg" alt="First slide"/>
      <div class="carousel-caption d-none d-md-block">
        <div class="banner-text">
            <h2>This is Heaven</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
        </div>	
    </div>
  </div>
            </div>	   
		    
		</div>--%>
	</div>
</div>
        </div>
</section>
    </form>
 
</body>
</html>

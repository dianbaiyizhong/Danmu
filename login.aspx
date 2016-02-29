<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>啪啪啪弹幕网入坑登录</title>

    <!-- CSS -->

<link rel="stylesheet" href="Styles/login/css/supersized.css">
<link rel="stylesheet" href="Styles/login/css/login.css">
<link href="Styles/login/css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
<![endif]-->
<script src="Styles/login/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="Styles/login/js/jquery.form.js"></script>
<script type="text/javascript" src="Styles/login/js/tooltips.js"></script>
<script type="text/javascript" src="Styles/login/js/login.js"></script>
</head>
<body>

<div class="page-container">
	<div class="main_box">
		<div class="login_box">
			<div class="login_logo">
				<img src="Styles/login/images/logo.png" >
			</div>
		
			<div class="login_form">
				<form id="login_form" method="post" action="login.aspx">
					<div class="form-group">
						<label for="j_username" class="t">用户名：</label> 
						<input id="email" value="" name="email" type="text" class="form-control x319 in" 
						autocomplete="off">
					</div>
					<div class="form-group">
						<label for="j_password" class="t">密　码：</label> 
						<input id="password" value="" name="password" type="password" 
						class="password form-control x319 in">
					</div>
					<div class="form-group">
						<label for="j_captcha" class="t">验证码：</label>
						 <input id="j_captcha" name="j_captcha" type="text" class="form-control x164 in">
						<img id="captcha_img" alt="点击更换" title="点击更换" src="Styles/login/images/captcha.jpeg" class="m">
					</div>
					<div class="form-group">
						<label class="t"></label>
						<label for="j_remember" class="m">
						<input id="j_remember" type="checkbox" value="true">&nbsp;记住登陆账号!</label>
					</div>
					<div class="form-group space">
						<label class="t">
   
                        </label>　　
						<button type="submit"  id="submit_btn" class="btn btn-primary btn-lg">&nbsp;登&nbsp;录&nbsp </button>   
						<input type="reset" value="&nbsp;重&nbsp;置&nbsp;" class="btn btn-default btn-lg">


                        <a href="background/index.aspx" class="btn btn-default btn-lg">管理后台</a>
					</div>
				</form>
			</div>
		</div>
		<div class="bottom">Copyright &copy; 2014 - 2015 -by黄浩明</div>
	</div>
</div>

<!-- Javascript -->

<script src="Styles/login/js/supersized.3.2.7.min.js"></script>
<script src="Styles/login/js/supersized-init.js"></script>
<script src="Styles/login/js/scripts.js"></script>


</body>
</html>

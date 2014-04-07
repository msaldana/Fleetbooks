<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 5//EN" "http://www.w3.org/TR/html5">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="fleetbooks.css" media="screen" />
<title>FleetBooks</title>

<script type="text/javascript">
function ValidateLogIn(theForm)
{
   var regexp;
   regexp = /^([0-9a-z]([-.\w]*[0-9a-z])*@(([0-9a-z])+([-\w]*[0-9a-z])*\.)+[a-z]{2,6})$/i;
   
   if (theForm.user.value.length != 0 && !regexp.test(theForm.user.value))
   {
      alert("Please enter a valid email address.");
      theForm.user.focus();
      return false;
   }
   if (theForm.pwr.value != "123")
   {
      alert("Please enter a valid password");
      theForm.pwr.focus();
      return false;
   }
   if (theForm.user.value == "admin@tamrio.com")
   {
      document.LogIn.action = "HomeAdmin.jsp";
   }
   if (theForm.user.value == "eng@tamrio.com")
   {
      document.LogIn.action = "HomeEng.jsp";
   }
 
   return true;
}

</script>
</head>

<body>

<div id="Layer2" style="position:absolute;text-align:left;left:0%;top:0px;width:100%;height:93px;z-index:16;" title="">
<div id="wb_Image1" style="position:absolute;left:8px;top:18px;width:265px;height:59px;z-index:0;">
<a href="./index.jsp"><img src="images/logoTamrio.gif" id="Image1" alt="" style="width:265px;height:59px;"></a></div>
</div>

<div id="Layer3" style="position:absolute;text-align:center;left:0%;top:100px;width:100%;height:1100px;z-index:17;" title="">
<div id="Layer3_Container" style="width:960px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">

<div id="wb_Form1" style="position:absolute;left:305px;top:163px;width:328px;height:167px;z-index:6;">

<!-- Login form to redirect the user to the Admin page or the Engineer page depending the login information -->

<form name="LogIn" action="" method="post" id="Form1" onsubmit="ValidateLogIn(this)">

<div id="wb_Text1" style="position:absolute;left:37px;top:41px;width:43px;height:16px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">Email:</span></div>

<input type="email" id="Editbox1" name="user" style="position:absolute;left:89px;top:37px;z-index:2;" name="Email" value="" placeholder="example@tamrio.com">

<div id="wb_Text2" style="position:absolute;left:14px;top:71px;width:66px;height:16px;z-index:3;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">Password:</span></div>

<input type="password" id="Editbox1" name="pwr" style="position:absolute;left:89px;top:68px;z-index:4;" name="Password" value="" placeholder="********">

<input type="submit" id="Button1" name="LogIn" value="LogIn" style="position:absolute;left:120px;top:109px;width:96px;height:25px;z-index:5;">
</form>

</div>

<div id="wb_Text3" style="position:absolute;left:271px;top:73px;width:418px;height:54px;text-align:center;z-index:8;">
<span style="color:#000000;font-family:Arial;font-size:24px;">Welcome to FleetBooks,<br>Please Log In</span></div>
<div id="wb_CssMenu1" style="position:absolute;left:306px;top:404px;width:349px;height:64px;text-align:center;z-index:9;">
<ul>
<li class="firstmain"><a href="./AccountRequest.jsp" target="_self">Account&nbsp;Request</a>
</li>
<li><a href="./ForgotCredentials.jsp" target="_self">Forgot&nbsp;Credentials</a>
</li>
</ul>
<br>
</div>
<div id="wb_Text4" style="position:absolute;left:271px;top:359px;width:418px;height:43px;text-align:center;z-index:10;">
<span style="color:#7A0F1F;font-family:Arial;font-size:24px;">Problems logging in?<br></span></div>
</div>
</div>
<div id="Layer1" style="position:absolute;text-align:center;left:0%;top:93px;width:100%;height:7px;z-index:18;" title="">
<div id="Layer1_Container" style="width:960px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
</div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML5//EN" "http://www.w3.org/TR/html5">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forgot Credentials</title>
<link rel="stylesheet" type="text/css" href="fleetbooks.css" media="screen" />
<style type="text/css">
div#container
{
   width: 960px;
   position: relative;
   margin-top: 0px;
   margin-left: auto;
   margin-right: auto;
   text-align: left;
}
body
{
   background-color: #FFFFFF;
   color: #000000;
   font-family: Arial;
   font-size: 13px;
   margin: 0;
   text-align: center;
}
</style>
<link href="WebAppFleetBooks.css" rel="stylesheet" type="text/css">
<style type="text/css">
#Layer2
{
   background-color: #ECE9D8;
}
#Layer4
{
   background-color: #D6D5AA;
}
#Layer1
{
   background-color: #7A0F1F;
}
#wb_Form1
{
   background-color: #ECE9D8;
   border: 1px #7A0F1F solid;
   -moz-border-radius: 1px;
   -webkit-border-radius: 1px;
   border-radius: 1px;
}
#wb_Text1 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: left;
}
#wb_Text1 div
{
   text-align: left;
}
#Editbox1
{
   border: 1px #000000 solid;
   background-color: #FFFFFF;
   color :#000000;
   font-family: Arial;
   font-size: 13px;
   text-align: left;
   vertical-align: middle;
}
#Button1
{
   border: 1px #000000 solid;
   background-color: #7A0F1F;
   color: #FFFFFF;
   font-family: Arial;
   font-size: 13px;
}
#Button2
{
   border: 1px #000000 solid;
   background-color: #7A0F1F;
   color: #FFFFFF;
   font-family: Arial;
   font-size: 13px;
}
#wb_Text3 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: center;
}
#wb_Text3 div
{
   text-align: center;
}
#Image1
{
   border: 0px #000000 solid;
}
</style>
<script type="text/javascript">
function ValidateSubmit_Info(theForm)
{
   var regexp;
   regexp = /^([0-9a-z]([-.\w]*[0-9a-z])*@(([0-9a-z])+([-\w]*[0-9a-z])*\.)+[a-z]{2,6})$/i;
   if (theForm.Editbox1.value.length != 0 && !regexp.test(theForm.Editbox1.value))
   {
      alert("Please enter a valid email address.");
      theForm.Editbox1.focus();
      return false;
   }
   return true;
}
</script>
</head>
<body>
<div id="container">
</div>
<div id="Layer2" style="position:absolute;text-align:left;left:0%;top:0px;width:100%;height:93px;z-index:12;" title="">
<div id="wb_Image1" style="position:absolute;left:8px;top:18px;width:265px;height:59px;z-index:0;">
<a href="./HomeAdmin.jsp"><img src="images/logoTamrio.gif" id="Image1" alt="" style="width:265px;height:59px;"></a></div>
</div>
<div id="Layer4" style="position:absolute;text-align:center;left:0%;top:100px;width:100%;height:1100px;z-index:13;" title="">
<div id="Layer4_Container" style="width:960px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
<div id="wb_Form1" style="position:absolute;left:315px;top:179px;width:328px;height:167px;z-index:6;">
<form name="Submit_Info" method="post" action="./index.jsp" id="Form1" onsubmit="return ValidateSubmit_Info(this)">
<div id="wb_Text1" style="position:absolute;left:37px;top:41px;width:43px;height:16px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">Email:</span></div>
<input type="email" id="Editbox1" style="position:absolute;left:89px;top:37px;width:198px;height:23px;line-height:23px;z-index:2;" name="Email" value="" placeholder="example@tamrio.com">
<input type="submit" id="Button1" name="GoBack" value="Go Back" style="position:absolute;left:35px;top:111px;width:96px;height:25px;z-index:3;">
<input type="submit" id="Button2" name="Submit" value="Submit" style="position:absolute;left:200px;top:111px;width:96px;height:25px;z-index:4;">
</form>
</div>
<div id="wb_Text3" style="position:absolute;left:271px;top:69px;width:418px;height:81px;text-align:center;z-index:7;">
<span style="color:#000000;font-family:Arial;font-size:24px;">Please write your email below,<br>an email with your logIn information will be sent.</span></div>
</div>
</div>
<div id="Layer1" style="position:absolute;text-align:center;left:0%;top:93px;width:100%;height:7px;z-index:14;" title="">
<div id="Layer1_Container" style="width:960px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
</div>
</div>
</body>
</html>
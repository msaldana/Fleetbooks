<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 5//EN" "http://www.w3.org/TR/html5">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="fleetbooks.css" media="screen" />
<title>Account Request</title>
</head>
<body>

<div id="Layer2" style="position:absolute;text-align:left;left:0%;top:0px;width:100%;height:93px;z-index:28;" title="">
<div id="wb_Image1" style="position:absolute;left:8px;top:18px;width:265px;height:59px;z-index:0;">
<a href="./HomeAdmin.jsp"><img src="images/logoTamrio.gif" id="Image1" alt="" style="width:265px;height:59px;"></a></div>
</div>



<div id="Layer3" style="position:absolute;text-align:center;left:0%;top:100px;width:100%;height:1100px;z-index:29;" title="">
<div id="Layer3_Container" style="width:960px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
<div id="wb_Form1" style="position:absolute;left:254px;top:163px;width:430px;height:256px;z-index:14;">


<!--  Form open to request the information from the user after the user submits will redirect him to the index page-->


<form name="AccountRequestForm" action="./index.jsp" enctype="text/plain" id="Form1">

<div id="wb_Text1" style="position:absolute;left:60px;top:29px;width:91px;height:16px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">First Name</span></div>

<input type="text" name="first_name" id="Editbox2" style="position:absolute;left:161px;top:29px;width:198px;height:23px;line-height:23px;z-index:2;" name="Editbox1" value="">
<div id="wb_Text1" style="position:absolute;left:60px;top:59px;width:91px;height:16px;z-index:3;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">Last Name</span></div>

<input type="text" name="last_name" id="Editbox2" style="position:absolute;left:161px;top:59px;width:198px;height:23px;line-height:23px;z-index:4;" name="Editbox2" value="">
<div id="wb_Text1" style="position:absolute;left:60px;top:89px;width:91px;height:16px;z-index:5;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">Phone Number</span></div>

<input type="tel" name="phone_number" id="Editbox2" style="position:absolute;left:161px;top:89px;width:198px;height:23px;line-height:23px;z-index:6;" name="Editbox3" value="">
<div id="wb_Text1" style="position:absolute;left:60px;top:119px;width:91px;height:16px;z-index:7;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">Email</span></div>

<input type="email" name="email" id="Editbox2" style="position:absolute;left:161px;top:119px;width:198px;height:23px;line-height:23px;z-index:8;" name="Editbox4" value="">
<div id="wb_Text1" style="position:absolute;left:60px;top:149px;width:91px;height:16px;z-index:9;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">Account Type</span></div>

<select name="account_type" size="1" id="Combobox1" style="position:absolute;left:161px;top:149px;width:200px;height:25px;z-index:10;">
<option value="Administrator">Administrator</option>
<option value="Engineer">Engineer</option>
<option value="Driver">Driver</option>
<option value="Other">Other</option>
</select>

<input type="button" id="Button1" name="GoBack" value="Go Back" onClick="history.go(-1);return true;" style="position:absolute;left:93px;top:200px;width:96px;height:25px;z-index:11;">

<input type="submit" id="Button1" name="Submit" value="Submit" style="position:absolute;left:233px;top:200px;width:96px;height:25px;z-index:12;">

</form>
</div>

<div id="wb_Text2" style="position:absolute;left:261px;top:64px;width:421px;height:108px;text-align:center;z-index:15;">
<span style="color:#000000;font-family:Arial;font-size:24px;">Please fill the following form in order send your account request, an email will be sent with your LogIn information</span></div>
</div>
</div>
<div id="Layer1" style="position:absolute;text-align:center;left:0%;top:93px;width:100%;height:7px;z-index:30;" title="">
<div id="Layer1_Container" style="width:960px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
</div>
</div>
</body>
</html>
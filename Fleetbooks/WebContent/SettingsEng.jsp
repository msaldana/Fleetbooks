<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML5//EN" "http://www.w3.org/TR/html5">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Settings</title>
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
#Layer1
{
   background-color: #7A0F1F;
}
.changepasswordform_table
{
   background-color: #ECE9D8;
   border-color:#7A0F1F;
   border-width:1px;
   border-style: solid;
   color: #000000;
   font-family: Arial;
   font-size: 13px;
   text-align: left;
   border-spacing: 4px;
}
.changepasswordform_header
{
   background-color: #7A0F1F;
   color: #FFFFFF;
   text-align: center;
}
.changepasswordform_text
{
   background-color: #FFFFFF;
   border-color: #878787;
   border-width: 1px;
   border-style: solid;
   color: #000000;
   font-family: Arial;
   font-size: 13px;
}
.changepasswordform_button
{
   background-color: #FFFFFF;
   border-color: #878787;
   border-width: 1px;
   border-style: solid;
   color: #000000;
   font-family: Arial;
   font-size: 13px;
}
.changepasswordform_table
{
   background-color: #ECE9D8;
   border-color:#7A0F1F;
   border-width:1px;
   border-style: solid;
   color: #000000;
   font-family: Arial;
   font-size: 13px;
   text-align: left;
   border-spacing: 4px;
}
.changepasswordform_header
{
   background-color: #7A0F1F;
   color: #FFFFFF;
   text-align: center;
}
.changepasswordform_text
{
   background-color: #FFFFFF;
   border-color: #878787;
   border-width: 1px;
   border-style: solid;
   color: #000000;
   font-family: Arial;
   font-size: 13px;
}
.changepasswordform_button
{
   background-color: #FFFFFF;
   border-color: #878787;
   border-width: 1px;
   border-style: solid;
   color: #000000;
   font-family: Arial;
   font-size: 13px;
}
#wb_CssMenu1
{
   border: 0px #7E091E solid;
   background-color: #7A0F1F;
}
#wb_CssMenu1 ul
{
   list-style-type: none;
   margin: 0;
   padding: 0;
   width: 228px;
}
#wb_CssMenu1 li
{
   float: left;
   margin: 0;
   padding: 0px 0px 0px 0px;
   width: 228px;
}
#wb_CssMenu1 a
{
   display: block;
   color: #FFFFFF;
   border: 1px #7A0F1F solid;
   background-color: #7E091E;
   background-image: none;
   font-family: Arial;
   font-size: 13px;
   font-weight: normal;
   font-style: normal;
   text-decoration: none;
   width: 216px;
   height: 56px;
   padding: 0px 5px 0px 5px;
   vertical-align: middle;
   line-height: 56px;
   text-align: center;
}
#wb_CssMenu1 li:hover a, #wb_CssMenu1 a:hover, #wb_CssMenu1 .active
{
   color: #FFFFFF;
   background-color: #DF1135;
   background-image: none;
   border: 1px #DF1135 solid;
}
#wb_CssMenu1 .firstmain a
{
   margin-top: 0px;
}
#wb_CssMenu1 li.lastmain
{
   padding-bottom: 0px;
}
#wb_CssMenu1 li:hover, #wb_CssMenu1 li a:hover
{
   position: relative;
}
#wb_CssMenu1 a.withsubmenu
{
   padding: 0 5px 0 5px;
   width: 216px;
   background-image: none;
}
#wb_CssMenu1 li:hover a.withsubmenu, #wb_CssMenu1 a.withsubmenu:hover
{
   background-image: none;
}
#wb_CssMenu1 ul ul
{
   position: absolute;
   left: -9999px;
   top: -9999px;
   width: 228px;
   height: auto;
   border: none;
   background-color: #7A0F1F;
}
#wb_CssMenu1 ul :hover ul
{
   left: 228px;
   top: 0px;
   padding-top: 0px;
}
#wb_CssMenu1 .firstmain:hover ul
{
   top: 0px;
   padding-top: 0px;
}
#wb_CssMenu1 li li
{
   width: 228px;
   padding: 0px 0px 0px 0px;
   border: 0px #D6D5AA solid;
   border-width: 0 0px;
}
#wb_CssMenu1 li li.firstitem
{
   border-top: 0px #D6D5AA solid;
}
#wb_CssMenu1 li li.lastitem
{
   border-bottom: 0px #D6D5AA solid;
}
#wb_CssMenu1 ul ul a, #wb_CssMenu1 ul :hover ul a
{
   float: none;
   margin: 0;
   width: 214px;
   height: auto;
   white-space: normal;
   padding: 22px 6px 21px 6px;
   background-color: #7E091E;
   background-image: none;
   border: 1px #7A0F1F solid;
   color: #FFFFFF;
   font-family: Arial;
   font-size: 13px;
   font-weight: normal;
   font-style: normal;
   line-height: 13px;
   text-align: center;
   text-decoration: none;
}
#wb_CssMenu1 ul :hover ul .firstitem a
{
   margin-top: 0px;
}
#wb_CssMenu1 ul ul :hover a, #wb_CssMenu1 ul ul a:hover, #wb_CssMenu1 ul ul :hover ul :hover a, #wb_CssMenu1 ul ul :hover ul a:hover
{
   background-color: #DF1135;
   background-image: none;
   border: 1px #DF1135 solid;
   color: #FFFFFF;
}
#wb_CssMenu1 br
{
   clear: both;
   font-size: 1px;
   height: 0;
   line-height: 0px;
}
#TabMenu1
{
   text-align: left;
   float: left;
   margin: 0;
   width: 100%;
   font-family: Arial;
   font-size: 13px;
   font-weight: normal;
   border-bottom: 1px solid #ECE9D8;
   list-style-type: none;
   padding: 15px 0px 4px 10px;
   overflow: hidden;
}
#TabMenu1 li
{
   float: left;
}
#TabMenu1 li a.active, #TabMenu1 li a:hover.active
{
   background-color: #7A0F1F;
   color: #FFFFFF;
   position: relative;
   font-weight: normal;
   text-decoration: none;
   z-index: 2;
}
#TabMenu1 li a
{
   padding: 5px 14px 8px 14px;
   border: 1px solid #ECE9D8;
   border-top-left-radius: 5px;
   border-top-right-radius: 5px;
   background-color: #ECE9D8;
   color: #000000;
   margin-right: 0px;
   text-decoration: none;
   border-bottom: none;
   position: relative;
   top: 0;
   -webkit-transition: 200ms all linear;
   -moz-transition: 200ms all linear;
   -ms-transition: 200ms all linear;
   transition: 200ms all linear;
}
#TabMenu1 li a:hover
{
   background: #7A0F1F;
   color: #FFFFFF;
   font-weight: bold;
   text-decoration: underline;
   top: -4px;
}
#Image1
{
   border: 0px #000000 solid;
}
</style>
</head>
<body>

<div id="Layer2" style="position:absolute;text-align:left;left:0%;top:0px;width:100%;height:93px;z-index:8;" title="">
<div id="wb_TabMenu1" style="position:absolute;left:667px;top:56px;width:290px;height:36px;z-index:0;overflow:hidden;">
<ul id="TabMenu1">
<li><a href="./HomeEng.jsp">Home</a></li>
<li><a href="./BasketEng.jsp">Basket</a></li>
<li><a href="./SettingsEng.jsp" class="active">Settings</a></li>
<li><a href="./index.jsp">Logout</a></li>
</ul>
</div>
<div id="wb_Image1" style="position:absolute;left:8px;top:18px;width:265px;height:59px;z-index:1;">
<a href="./HomeEng.jsp"><img src="images/logoTamrio.gif" id="Image1" alt="" style="width:265px;height:59px;"></a></div>
</div>
<div id="Layer4" style="position:absolute;text-align:left;left:0%;top:100px;width:100%;height:728px;z-index:9;" title="">
<div id="wb_Text3" style="position:absolute;left:260px;top:30px;width:92px;height:27px;text-align:center;z-index:3;">
<span style="color:#000000;font-family:Arial;font-size:24px;">Settings</span></div>


<div id="wb_ChangePassword1" style="position:absolute;left:368px;top:79px;width:304px;height:150px;z-index:4;">

<!--  form to reset password followed by the form to reset
		phone number -->

<form name="changepasswordform" method="post" action="./SettingsEng.jsp" id="changepasswordform">
<input type="hidden" name="form_name" value="changepassword">


<table class="changepasswordform_table" style="width:304px;height:150px;">
<tr>
   <td class="changepasswordform_header" colspan="2" style="height:20px;">Change your password</td>
</tr>
<tr>
   <td style="height:20px">Password:</td>
   <td style="text-align:left"><input class="changepasswordform_text" name="password" type="password" id="password" style="width:100px;height:18px;"></td>
</tr>
<tr>
   <td style="height:20px">New Password:</td>
   <td style="text-align:left"><input class="changepasswordform_text" name="newpassword" type="password" id="newpassword" style="width:100px;height:18px;"></td>
</tr>
<tr>
   <td style="height:20px">Confirm New Password:</td>
   <td style="text-align:left"><input class="changepasswordform_text" name="confirmpassword" type="password" id="confirmpassword" style="width:100px;height:18px;"></td>
</tr>

<tr>
   <td>&nbsp;</td><td style="text-align:left;vertical-align:bottom"><input class="changepasswordform_button" type="submit" name="changepassword" value="Submit" id="changepassword" style="width:150px;height:20px;"></td>
</tr>
</table>
</form>
</div>
<div id="wb_ChangePassword2" style="position:absolute;left:366px;top:275px;width:304px;height:150px;z-index:6;">



<form name="changepasswordform" action="./SettingsEng.jsp" id="changephoneform">

<input type="hidden" name="form_name" value="changepassword">
<table class="changepasswordform_table" style="width:304px;height:150px;">
<tr>
   <td class="changepasswordform_header" colspan="2" style="height:20px;">Change your phone</td>
</tr>
<tr>
   <td style="height:20px">Phone:</td>
   <td style="text-align:left"><input class="changepasswordform_text" name="password" type="tel" id="password" style="width:100px;height:18px;"></td>
</tr>
<tr>
   <td style="height:20px">New Phone:</td>
   <td style="text-align:left"><input class="changepasswordform_text" name="newpassword" type="tel" id="newpassword" style="width:100px;height:18px;"></td>
</tr>
<tr>
   <td style="height:20px">Confirm New Phone:</td>
   <td style="text-align:left"><input class="changepasswordform_text" name="confirmpassword" type="tel" id="confirmpassword" style="width:100px;height:18px;"></td>
</tr>

<tr>
   <td>&nbsp;</td><td style="text-align:left;vertical-align:bottom"><input class="changepasswordform_button" type="submit" name="changepassword" value="Submit" id="changepassword" style="width:150px;height:20px;"></td>
</tr>
</table>
</form>
</div>
<div id="wb_CssMenu1" style="position:absolute;left:0px;top:0px;width:228px;height:116px;z-index:6;">
<ul>
<li class="firstmain"><a class="withsubmenu" href="#" target="_self">View</a>

<ul>
<li class="firstitem"><a href="./EquipmentEng.jsp" target="_self">Equipments</a>
</li>
<li class="lastitem"><a href="./ProjectsEng.jsp" target="_self">Projects</a>
</li>
</ul>
</li>
<li><a class="withsubmenu" href="#" target="_self">Submit&nbsp;Reports</a>

<ul>
<li class="firstitem"><a href="./EquipmentUsageEng.jsp" target="_self">Equipment&nbsp;Usage</a>
</li>
<li><a href="./FuelConsumptionEng.jsp" target="_self">Fuel&nbsp;Consumption</a>
</li>
<li><a href="./FuelPurchaseEng.jsp" target="_self">Fuel&nbsp;Purchase</a>
</li>
<li><a href="./MalfunctionEng.jsp" target="_self">Malfunction</a>
</li>
<li class="lastitem"><a href="./EquipmentReturnEng.jsp" target="_self">Equipment&nbsp;Return</a>
</li>
</ul>
</li>
</ul>
<br>
</div>
</div>
<div id="Layer1" style="position:absolute;text-align:center;left:0%;top:93px;width:100%;height:7px;z-index:10;" title="">
<div id="Layer1_Container" style="width:960px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
</div>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML5//EN" "http://www.w3.org/TR/html5">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fuels</title>
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
#Image1
{
   border: 0px #000000 solid;
}
#Table1
{
   border: 2px #7A0F1F solid;
   background-color: #ECE9D8;
   border-spacing: 0px;
}
#Table1 td
{
   padding: 0px 0px 0px 0px;
}
#Table1 td div
{
   white-space: nowrap;
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
#wb_CssMenu3
{
   border: 0px #D6D5AA solid;
   background-color: transparent;
}
#wb_CssMenu3 ul
{
   list-style-type: none;
   margin: 0;
   padding: 0;
   position: relative;
   display: inline-block;
}
#wb_CssMenu3 li
{
   float: left;
   margin: 0;
   padding: 0px 24px 0px 0px;
   width: 97px;
}
#wb_CssMenu3 a
{
   display: block;
   float: left;
   color: #FFFFFF;
   border: 1px #7A0F1F solid;
   background-color: #7A0F1F;
   background-image: none;
   font-family: Arial;
   font-size: 13px;
   font-weight: normal;
   font-style: normal;
   text-decoration: none;
   width: 85px;
   height: 26px;
   padding: 0px 5px 0px 5px;
   vertical-align: middle;
   line-height: 26px;
   text-align: center;
}
#wb_CssMenu3 li:hover a, #wb_CssMenu3 a:hover
{
   color: #000000;
   background-color: #A7142B;
   background-image: none;
   border: 1px #A7142B solid;
}
#wb_CssMenu3 li.firstmain
{
   padding-left: 0px;
}
#wb_CssMenu3 li.lastmain
{
   padding-right: 0px;
}
#wb_CssMenu3 br
{
   clear: both;
   font-size: 1px;
   height: 0;
   line-height: 0px;
}
#Combobox1
{
   border: 1px #A9A9A9 solid;
   background-color: #FFFFFF;
   color: #000000;
   font-family: Arial;
   font-size: 13px;
}
#wb_Text2 
{
   background-color: transparent;
   border: 0px #000000 solid;
   padding: 0;
   text-align: center;
}
#wb_Text2 div
{
   text-align: center;
}
#Editbox1
{
   border: 1px #A9A9A9 solid;
   background-color: #FFFFFF;
   color :#000000;
   font-family: Arial;
   font-size: 13px;
   text-align: left;
   vertical-align: middle;
}
#wb_CssMenu4
{
   border: 0px #D6D5AA solid;
   background-color: transparent;
}
#wb_CssMenu4 ul
{
   list-style-type: none;
   margin: 0;
   padding: 0;
   position: relative;
   display: inline-block;
}
#wb_CssMenu4 li
{
   float: left;
   margin: 0;
   padding: 0px 24px 0px 0px;
   width: 97px;
}
#wb_CssMenu4 a
{
   display: block;
   float: left;
   color: #FFFFFF;
   border: 1px #7A0F1F solid;
   background-color: #7A0F1F;
   background-image: none;
   font-family: Arial;
   font-size: 13px;
   font-weight: normal;
   font-style: normal;
   text-decoration: none;
   width: 85px;
   height: 26px;
   padding: 0px 5px 0px 5px;
   vertical-align: middle;
   line-height: 26px;
   text-align: center;
}
#wb_CssMenu4 li:hover a, #wb_CssMenu4 a:hover
{
   color: #000000;
   background-color: #A7142B;
   background-image: none;
   border: 1px #A7142B solid;
}
#wb_CssMenu4 li.firstmain
{
   padding-left: 0px;
}
#wb_CssMenu4 li.lastmain
{
   padding-right: 0px;
}
#wb_CssMenu4 br
{
   clear: both;
   font-size: 1px;
   height: 0;
   line-height: 0px;
}
#wb_CssMenu5
{
   border: 0px #D6D5AA solid;
   background-color: transparent;
}
#wb_CssMenu5 ul
{
   list-style-type: none;
   margin: 0;
   padding: 0;
   position: relative;
   display: inline-block;
}
#wb_CssMenu5 li
{
   float: left;
   margin: 0;
   padding: 0px 0px 0px 0px;
   width: 30px;
}
#wb_CssMenu5 a
{
   display: block;
   float: left;
   color: #FFFFFF;
   border: 1px #000000 solid;
   background-color: #7A0F1F;
   background-image: none;
   font-family: Arial;
   font-size: 13px;
   font-weight: normal;
   font-style: normal;
   text-decoration: none;
   width: 28px;
   height: 25px;
   padding: 0px 0px 0px 0px;
   vertical-align: middle;
   line-height: 25px;
   text-align: center;
}
#wb_CssMenu5 li:hover a, #wb_CssMenu5 a:hover
{
   color: #000000;
   background-color: #A7142B;
   background-image: none;
   border: 1px #FFFFFF solid;
}
#wb_CssMenu5 li.firstmain
{
   padding-left: 0px;
}
#wb_CssMenu5 li.lastmain
{
   padding-right: 0px;
}
#wb_CssMenu5 br
{
   clear: both;
   font-size: 1px;
   height: 0;
   line-height: 0px;
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
   border: 0px #ECE9D8 solid;
   border-width: 0 0px;
}
#wb_CssMenu1 li li.firstitem
{
   border-top: 0px #ECE9D8 solid;
}
#wb_CssMenu1 li li.lastitem
{
   border-bottom: 0px #ECE9D8 solid;
}
#wb_CssMenu1 ul ul a, #wb_CssMenu1 ul :hover ul a
{
   float: none;
   margin: 0;
   width: 214px;
   height: auto;
   white-space: normal;
   padding: 22px 6px 21px 6px;
   background-color: #7A0F1F;
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
</style>
</head>
<body>
<div id="container">
</div>
<div id="Layer2" style="position:absolute;text-align:left;left:0%;top:0px;width:100%;height:93px;z-index:13;" title="">
<div id="wb_Image1" style="position:absolute;left:8px;top:18px;width:265px;height:59px;z-index:0;">
<a href="./HomeAdmin.jsp"><img src="images/logoTamrio.gif" id="Image1" alt="" style="width:265px;height:59px;"></a></div>
<div id="wb_Text1" style="position:absolute;left:785px;top:15px;width:172px;height:16px;z-index:1;text-align:left;">
<span style="color:#000000;font-family:Arial;font-size:13px;">Welcome, Logged in as User</span></div>
<div id="wb_TabMenu1" style="position:absolute;left:628px;top:56px;width:329px;height:36px;z-index:2;overflow:hidden;">
<ul id="TabMenu1">
<li><a href="./HomeAdmin.jsp">Home</a></li>
<li><a href="./NotificationsAdmin.jsp">Notifications</a></li>
<li><a href="./SettingsAdmin.jsp">Settings</a></li>
<li><a href="./index.jsp">Logout</a></li>
</ul>
</div>
</div>
<div id="Layer4" style="position:absolute;text-align:left;left:0%;top:100px;width:100%;height:728px;z-index:14;" title="">
<div id="wb_Text3" style="position:absolute;left:257px;top:30px;width:52px;height:27px;text-align:center;z-index:4;">
<span style="color:#000000;font-family:Arial;font-size:24px;">Fuel</span></div>
<div id="wb_CssMenu3" style="position:absolute;left:261px;top:449px;width:363px;height:28px;text-align:center;z-index:5;">
<ul>
<li class="firstmain"><a href="./AddFuel.jsp" target="_self">Add</a>
</li>
<li><a href="./EditFuel.jsp" target="_self">Edit</a>
</li>
<li><a href="./DeleteFuel.jsp" target="_self">Delete</a>
</li>
</ul>
<br>
</div>
<select name="SearchBy" size="1" id="Combobox1" style="position:absolute;left:369px;top:70px;width:96px;height:22px;z-index:6;">
<option>Date</option>
<option>Gallons</option>
<option>Price</option>
</select>
<div id="wb_Text2" style="position:absolute;left:265px;top:68px;width:103px;height:22px;text-align:center;z-index:7;">
<span style="color:#000000;font-family:Arial;font-size:19px;">Search by:</span></div>
<input type="text" id="Editbox1" style="position:absolute;left:494px;top:70px;width:270px;height:18px;line-height:18px;z-index:8;" name="Editbox1" value="">
<div id="wb_CssMenu4" style="position:absolute;left:777px;top:66px;width:121px;height:28px;text-align:center;z-index:9;">
<ul>
<li class="firstmain"><a href="./FuelAdmin.jsp" target="_self">Search</a>
</li>
</ul>
<br>
</div>
<div id="wb_CssMenu5" style="position:absolute;left:818px;top:449px;width:120px;height:28px;text-align:center;z-index:10;">
<ul>
<li class="firstmain"><a href="./FuelAdmin.jsp" target="_self">&lt;&lt;</a>
</li>
<li><a href="./FuelAdmin.jsp" target="_self">1</a>
</li>
<li><a href="./FuelAdmin.jsp" target="_self">2</a>
</li>
<li><a href="./FuelAdmin.jsp" target="_self">&gt;&gt;</a>
</li>
</ul>
<br>
</div>
<table style="position:absolute;left:261px;top:116px;width:678px;height:312px;z-index:11;" cellpadding="0" cellspacing="0" id="Table1">
<tr>
<td style="background-color:#7A0F1F;border:1px #7A0F1F solid;text-align:center;vertical-align:middle;width:168px;height:26px;"><div><span style="color:#000000;font-family:Arial;font-size:13px;"> </span><span style="color:#ECE9D8;font-family:Arial;font-size:13px;">Select</span></div>
</td>
<td style="background-color:#7A0F1F;border:1px #7A0F1F solid;text-align:center;vertical-align:middle;width:166px;height:26px;"><div><span style="color:#000000;font-family:Arial;font-size:13px;"> </span><span style="color:#ECE9D8;font-family:Arial;font-size:13px;">Date</span></div>
</td>
<td style="background-color:#7A0F1F;border:1px #7A0F1F solid;text-align:center;vertical-align:middle;width:166px;height:26px;"><div><span style="color:#FFFFFF;font-family:Arial;font-size:13px;">Gallons</span></div>
</td>
<td style="background-color:#7A0F1F;border:1px #7A0F1F solid;text-align:center;vertical-align:middle;height:26px;"><div><span style="color:#FFFFFF;font-family:Arial;font-size:13px;">Price</span></div>
</td>
</tr>
<tr>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:168px;height:26px;"><input type="checkbox" id="Checkbox1" name="" value="on" style="position:center;"></td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;height:26px;">&nbsp;</td>
</tr>
<tr>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:168px;height:26px;"><input type="checkbox" id="Checkbox1" name="" value="on" style="position:center;"></td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;height:26px;">&nbsp;</td>
</tr>
<tr>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:168px;height:26px;"><input type="checkbox" id="Checkbox1" name="" value="on" style="position:center;"></td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;height:26px;">&nbsp;</td>
</tr>
<tr>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:168px;height:26px;"><input type="checkbox" id="Checkbox1" name="" value="on" style="position:center;"></td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;height:26px;">&nbsp;</td>
</tr>
<tr>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:168px;height:26px;"><input type="checkbox" id="Checkbox1" name="" value="on" style="position:center;"></td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;height:26px;">&nbsp;</td>
</tr>
<tr>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:168px;height:26px;"><input type="checkbox" id="Checkbox1" name="" value="on" style="position:center;"></td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;height:26px;">&nbsp;</td>
</tr>
<tr>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:168px;height:26px;"><input type="checkbox" id="Checkbox1" name="" value="on" style="position:center;"></td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;height:26px;">&nbsp;</td>
</tr>
<tr>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:168px;height:26px;"><input type="checkbox" id="Checkbox1" name="" value="on" style="position:center;"></td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;height:26px;">&nbsp;</td>
</tr>
<tr>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:168px;height:26px;"><input type="checkbox" id="Checkbox1" name="" value="on" style="position:center;"></td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;height:26px;">&nbsp;</td>
</tr>
<tr>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:168px;height:26px;"><input type="checkbox" id="Checkbox1" name="" value="on" style="position:center;"></td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;width:166px;height:26px;">&nbsp;</td>
<td style="background-color:transparent;border:1px #D6D5AA solid;text-align:center;vertical-align:middle;height:26px;">&nbsp;</td>
</tr>
</table>
<div id="wb_CssMenu1" style="position:absolute;left:0px;top:0px;width:228px;height:116px;z-index:12;">
<ul>
<li class="firstmain"><a class="withsubmenu" href="#" target="_self">Manage</a>

<ul>
<li class="firstitem"><a href="./EquipmentAdmin.jsp" target="_self">Equipments</a>
</li>
<li><a href="./PartsAdmin.jsp" target="_self">Parts</a>
</li>
<li><a href="./ProjectsAdmin.jsp" target="_self">Projects</a>
</li>
<li><a href="./UsersAdmin.jsp" target="_self">Users</a>
</li>
<li class="lastitem"><a class="active" href="./FuelAdmin.jsp" target="_self">Fuel</a>
</li>
</ul>
</li>
<li><a class="withsubmenu" href="#" target="_self">Reports</a>

<ul>
<li class="firstitem"><a href="./EquipmentUsageAdmin.jsp" target="_self">Equipment&nbsp;Usage</a>
</li>
<li><a href="./ExpensesAdmin.jsp" target="_self">Expenses</a>
</li>
<li class="lastitem"><a href="./FuelConsumption.jsp" target="_self">Fuel&nbsp;Consumption</a>
</li>
</ul>
</li>
</ul>
<br>
</div>
</div>
<div id="Layer1" style="position:absolute;text-align:center;left:0%;top:93px;width:100%;height:7px;z-index:15;" title="">
<div id="Layer1_Container" style="width:960px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
</div>
</div>
</body>
</html>
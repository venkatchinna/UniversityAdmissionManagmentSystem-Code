<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Natural Beauties by Free Css Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style3 {color: #000000; font-weight: bold; }
.style4 {color: #FF0000}
-->
</style>
</head>
<body>
<div id="header">
	<div id="logo">
		<h1><jsp:include page="header.html"/></h1>
		
  </div>
	<div id="menu">
		<ul>
		 <jsp:include page="Adminoptions1.html"/>
        </ul>
	</div>
</div>

<div id="content">
  <div id="sidebar1">
		<div id="archives" class="boxed">
			Welcome to the Administrator<br/><br/><%=(String)session.getAttribute("user") %>
			<div class="content">
				<ul><li>
                <%@ page import="com.dts.uas.model.*"%>
  <%@ page import="com.dts.uas.dao.*"%>
 <%@page import="com.dts.core.util.*" %>
 <%@ page import="java.util.*" %>
  <%RegistrationDAO aregestration=new RegistrationDAO();
  CoreHash acorehash= aregestration.getHallTicketStudents();
  Enumeration aenumeration=acorehash.keys();
%>
<table align="center">
  <tr bgcolor="#999900"><td width="181"><span class="style3">LoginName</span></td>
<td width="224"><span class="style3">HallTicketNO</span></td>
</tr>
<%while(aenumeration.hasMoreElements())
{
  Integer i1=(Integer)aenumeration.nextElement();
  Profile1 aprofile1=(Profile1)acorehash.get(i1);
  String loginname=aprofile1.getLoginname();
  String hallticketno=aprofile1.getHallticketno();
  %>
  <tr bgcolor="#99CC99"><td><span class="style4"><%=loginname%></span></td><td><span class="style4"><%=hallticketno%></span></td></tr>  
  <%} %></table>
				  </li>
			</ul>
		  </div>
	  </div>
		</div>
</div>
<div id="footer"></div>
</body>
</html>

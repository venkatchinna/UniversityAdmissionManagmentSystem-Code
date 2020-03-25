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
.style1 {color: #000000}
.style2 {color: #FF0000}
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
                <%@ page import="com.dts.uas.dao.RegistrationDAO" %>
<%@ page import="java.util.*"%>
<%@ page import="com.dts.dae.model.Profile"%>
<table border="2" align="center"><tr bgcolor="#999900"><td><span class="style1">LoginId</span></td>
<td><span class="style1">FirstName</span></td>
<td><span class="style1">LastName</span></td>
<td><span class="style1">BirthDate</span></td>
<td><span class="style1">City</span></td>
<td><span class="style1">State</span></td>
<td><span class="style1">Country</span></td>
<td><span class="style1">SscPercentage</span></td>
<td><span class="style1">Ugpercentage</span></td>
<td><span class="style1">Gpercentage</span></td>
</tr>
		<span class="style11">	<h4>R E G E C T E D S T U D E N  T S</h4></span>
<%
RegistrationDAO rd=new RegistrationDAO();
Hashtable p1=rd.getRegectedStudents();
		Enumeration e=p1.keys();
		while(e.hasMoreElements())
		{
			Integer i2=(Integer)e.nextElement();
		
				Profile p2=(Profile)p1.get(i2);
				%>
			<tr bgcolor="#99CCCC"><td>	<span class="style2"><%=p2.getLoginID() %></span></td>
			<td><span class="style2"><%= p2.getFirstName()%></span></td>
							<td><span class="style2"><%=p2.getLastName()%></span></td>
				<td><span class="style2"><%=p2.getBirthDate1()%></span></td>
				<td><span class="style2"><%=p2.getCity()%></span></td>
				<td><span class="style2"><%=p2.getState()%></span></td>
				<td><span class="style2"><%=p2.getCountry()%></span></td>
				<td><span class="style2"><%=p2.getSscpercentage()%></span></td>
				<td><span class="style2"><%=p2.getUgpercentage()%></span></td>
				<td><span class="style2"><%=p2.getGpercentage() %></span></td> 
			  </tr>
		<% 		
			
		}
           %>
</table>
                
				  </li>
				</ul>
		  </div>
	  </div>
		</div>
</div>
<div id="footer"></div>
</body>
</html>

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
		</div>
	<div id="sidebar">
		<div id="archives" class="boxed">
			<h2>WELCOME TO THE Admin<%=(String)session.getAttribute("user")%></h2>
			<div class="content">
				<ul><li>
				<%@page import="com.dts.uas.model.Profile1"%>
  <%@ page import="com.dts.uas.dao.RegistrationDAO"%>
  <%@page import="com.dts.core.util.CoreHash" %>
  <%@ page import="java.util.*" %>
  <body bgcolor="pink"> 
  <center>&nbsp; 
  <%
  if(request.getParameter("view")!=null)
  { 
  Profile1 aprofile1=new Profile1(); 
  RegistrationDAO exam=new RegistrationDAO(); 
com.dts.core.util.CoreHash ht=exam.getExamSchdule(); 
  Enumeration e=ht.keys(); 
%>
<table border="2"><tr bgcolor="#999900"><td><span class="style1">Subject</span></td>
<td><span class="style1">ExamDate</span></td>
<td><span class="style1">Center</span></td>
<td><span class="style1">City</span></td>
<td><span class="style1">Starting Time</span></td>
<td><span class="style1">OutTime</span></td>
</tr><%
		while(e.hasMoreElements())
		{
			Integer i2=(Integer)e.nextElement();
		
				Profile1 profile1=(Profile1)ht.get(i2);
		%> 
	<tr bgcolor="#99CCFF"><td><span class="style2">
	  <% out.println(profile1.getSubject());%>
	</span></td>
	<td><span class="style2">
	  <%out.println(profile1.getExamDate());%>
	</span></td>
	<td>
	  <span class="style2">
	  <% out.println(profile1.getCenter());%>
	  </span></td>
<td>	<span class="style2">
  <% out.println(profile1.getCity());%>
</span></td>
        <td><span class="style2"><%=profile1.getTime() %></span></td>
        <td><span class="style2"><%=profile1.getOuttime() %></span></td>
	<%} }%>
	</tr></table>
   
   
     
 <%
  if(request.getParameter("Login")!=null)
  { 
  Profile1 aprofile1=new Profile1(); 
  RegistrationDAO exam=new RegistrationDAO(); 
  String subject=request.getParameter("subject");
com.dts.core.util.CoreHash ht=exam.viewExamSchdule(subject); 
  Enumeration e=ht.keys(); 
%>
<table border="2"><tr bgcolor="#999933"><td width="46"><span class="style1">Subject</span></td>
<td width="63"><span class="style1">ExamDate</span></td>
<td width="41"><span class="style1">Center</span></td>
<td width="25"><span class="style1">City</span></td>
<td width="176"><span class="style1">Starting Time</span></td>
<td width="289"><span class="style1">OutTime</span></td>
</tr><%
		while(e.hasMoreElements())
		{
			Integer i2=(Integer)e.nextElement();
		
				Profile1 profile1=(Profile1)ht.get(i2);
		%> 
	<tr bgcolor="#99CCFF"><td><span class="style2">
	  <% out.println(profile1.getSubject());%>
	</span></td>
	<td><span class="style2">
	  <%out.println(profile1.getExamDate());%>
	</span></td>
	<td>
	  <span class="style2">
	  <% out.println(profile1.getCenter());%>
	  </span></td>
<td>	<span class="style2">
  <% out.println(profile1.getCity());%>
</span></td>
        <td><span class="style2"><%=profile1.getTime() %></span></td>
        <td><span class="style2"><%=profile1.getOuttime() %></span></td>
	<%} }%>
	</tr></table>
				</li>
				</ul>
		  </div>
	  </div>
		</div>

<div id="footer"></div>
</body>
</html>

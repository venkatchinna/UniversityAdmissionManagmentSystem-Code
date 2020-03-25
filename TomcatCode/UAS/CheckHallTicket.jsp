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
			<jsp:include page="usergeneraloptions.html"/>
		</ul>
	</div>
</div>

<div id="content">
		</div>
	<div id="sidebar">
		<div id="archives" class="boxed">
			<h2>WELCOME TO THE USER<%=(String)session.getAttribute("user")%></h2>
			<div class="content">
				<ul><li>
				  <%@ page import="com.dts.uas.model.*"%>
		      <%@ page import="com.dts.uas.dao.*"%>
		      <%@ page import="java.util.*" %>
		    <%
		    String loginname1=(String)session.getAttribute("user");
		      Profile1 aprofile1=new Profile1(); 
  RegistrationDAO exam=new RegistrationDAO(); 
  String subject=(String)application.getAttribute("subject");
  System.out.println("subject");
String subject1=new AcadamicDAO().getSubject(loginname1);

System.out.println("this is subject1"+subject1);
com.dts.core.util.CoreHash ht=exam.viewExamSchdule(subject1); 
  Enumeration e=ht.keys(); 
		   while(e.hasMoreElements())
		{
			Integer i2=(Integer)e.nextElement();
		
				Profile1 profile1=(Profile1)ht.get(i2);
		%> 
	
	 
		    
		    
		    
		    
		  
    	<% String loginname=(String)session.getAttribute("user");
		System.out.println("this is loginname"+loginname);
EnterMarksDAO aEnterMarksDAO=new EnterMarksDAO();
		 String loginstatus=aEnterMarksDAO.issueHallTicket(loginname);
  if(loginstatus.equalsIgnoreCase("Accepted"))
  {
  %><br><center><h4>HallTicketForm</h4></center><div alighn="right">HallTicketNo:<%=new RegistrationDAO().getHallTicketNo(loginname) %></div><br/><br/>
  <table width="100" border="1">
    <tr bgcolor="#999900">
      <td><span class="style1">HallTicketNo</span></td>
      <td><span class="style1">StudentName</span></td>
      <td><span class="style1">Subject</span></td>
      <td><span class="style1">Date</span></td>
      <td><span class="style1">InTime</span></td>
      <td><span class="style1">OutTime</span></td>
    </tr>
    <tr bgcolor="#999999">
      <td><input name="hallticketno" type="text" value="<%=new RegistrationDAO().getHallTicketNo(loginname) %>"/></td>
      <td><input name="studentname" type="text" value="<%=loginname%>"/></td>
      <td><input name="subject" type="text" value="<%=profile1.getSubject()%>"/></td>
      <td><input name="Date" type="text" value="<%=profile1.getExamDate()%>"/></td>
      <td><input name="InTime" type="text" value="<%=profile1.getTime()%>"/></td>
      <td><input name="outtime" type="text" value="<%=profile1.getOuttime() %>"/></td>
    </tr>
  </table>
  <%}
  else if(loginstatus.equalsIgnoreCase("Regected")){
   %><h1>Your Application is Regected</h1>
   <a href="LoginForm.jsp">Home</a>
  <%}else if(loginstatus.equalsIgnoreCase("pending")){ %>
  <h1>Your Application is Pending</h1>
  <a href="LoginForm.jsp">Home</a>
  <%} else{%>
  <h1>Your are Invalid Application</h1>
  <a href="LoginForm.jsp">Home</a>
  <%} }%>
</li>
				</ul>
		  </div>
	  </div>
		</div>

<div id="footer"></div>
</body>
</html>

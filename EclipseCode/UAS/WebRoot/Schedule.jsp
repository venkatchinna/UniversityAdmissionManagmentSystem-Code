<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Schedule.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%@ page import="com.dts.uas.model.*" %>
  <%@ page import="com.dts.uas.dao.*" %>
 
   <form action="ViewScheduleAction.jsp" method="post">
   <table boder="1"><caption><h1>to viewschedule details</h1></caption>
   <tr>
   <td>
   enter ur applno:
   </td>
   <td>
   <input type="text" name="appno">
   
   </td>
   
   </tr>
   <tr>
   <td>
   </td>
   <td>
   <input type="submit" value="submuit">
   </td>
   </tr>
   <% 
   String loginname=(String)session.getAttribute("user");
	
   String status=new RegistrationDAO().getStatus(loginname);
    if(status.equalsIgnoreCase("Accepted"))
    {
    
    %>
    <jsp:include page="ExamSchdule.jsp"/>
 
 <%} %>
 
  </body>
</html>

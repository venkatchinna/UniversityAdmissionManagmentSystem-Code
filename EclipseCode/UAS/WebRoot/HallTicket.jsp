<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <title>W E L C O M E T O T H E U N I V A R S I T Y A D M I N I S T R A T I O N</title>
 
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'HallTicket.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
<!--
.style1 {font-family: Arial, Helvetica, sans-serif}
-->
    </style>
</head>
  <body bgcolor="#FF8000">
  <div align="center"><h1>W E L C O M E T O T H E U N I V A R S I T Y </h1><br/><br/><h1>A D M I N I S T R A T I O N</h1>
</div>
  
  <%@ page import="com.dts.uas.model.Profile1"%>
  <%@ page import="com.dts.uas.dao.EnterMarksDAO"%>
  <%@ page import="com.dts.core.util.CoreHash"%>
  <% EnterMarksDAO aEnterMarksDAO=new EnterMarksDAO();
  
  String loginname=request.getParameter("loginname");
  String loginstatus=aEnterMarksDAO.issueHallTicket(loginname);
  if(loginstatus.equalsIgnoreCase("Accepted"))
  {
  %><br><center><h4>HallTicketForm</h4></center><div align="right">RegisterNo:1009</div><br/><br/>
  <table width="100" border="1">
    <tr>
      <td>HallTicketNo</td>
      <td>StudentName</td>
      <td>Subject</td>
      <td>Date</td>
      <td>InTime</td>
      <td>OutTime</td>
    </tr>
    <tr>
      <td><input name="hallticketno" type="text"></td>
      <td><input name="studentname" type="text"></td>
      <td><input name="subject" type="text"></td>
      <td><input name="Date" type="text"></td>
      <td><input name="InTime" type="text"></td>
      <td><input name="outtime" type="text"></td>
    </tr>
  </table><%}
  else if(loginstatus.equalsIgnoreCase("Regected")){
   %><h1>Your Application is Regected</h1>
   <a href="LoginForm.jsp">Home</a>
  <%}else if(loginstatus.equalsIgnoreCase("pending")){ %>
  <h1>Your Application is Pending</h1>
  <a href="LoginForm.jsp">Home</a>
  <%} else{%>
  <h1>Your are Invalid Application</h1>
  <a href="LoginForm.jsp">Home</a>
  <%} %>
  </body>
</html>

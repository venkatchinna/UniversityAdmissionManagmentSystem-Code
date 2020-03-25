<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Studentoptions.jsp' starting page</title>
    
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
.style1 {
	color: #003300;
	font-weight: bold;
	font-size: large;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
-->
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
  
  <body>
  
  <span class="style1"><a href="CheckStatusAction.jsp">Check Status</a></span><br/><br/>
  <span class="style1"><a href="Schedule.jsp">View Schedule</a></span><br/><br/>
  <span class="style1"><a href="PersonalDetails.jsp">Personal details</a></span><br/><br/>
  <span class="style1"><a href="Viewacadetails.jsp">Academic details</a></span><br/><br/>
  <span class="style1"><a href="ViewMarks.jsp">View marks</a></span><br/><br/>
  <span class="style1"><a href="LoginForm.jsp">Logout</a></span><br/><br/>
                        </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'PersonalDetailsAction.jsp' starting page</title>
    
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
    <%@ page import="com.dts.core.util.*" %>
     <%@ page import="com.dts.uas.model.*" %>
     <%@ page import="com.dts.uas.dao.*" %>
     <%@ page import="com.dts.dae.dao.*" %>
     <%@ page import="com.dts.dae.model.*" %>
     
     <%
     String loginname=(String)session.getAttribute("user");
     ProfileDAO aprofiledao=new ProfileDAO();
     Profile aprofile=aprofiledao.getProfile(loginname);
     %>
       <%= aprofile.getLoginID()%>
       <%= 	   aprofile.getFirstName()%>
        	<%=   aprofile.getLastName()%>
        	  <%= aprofile.getBirthDate1()%>
        	   <%=aprofile.getCity()%>
        	   <%=aprofile.getState()%>
        	   <%=aprofile.getCountry()%>
        
     
      
  </body>
</html>

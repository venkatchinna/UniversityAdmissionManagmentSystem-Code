<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.uas.dao.RegistrationDAO" %>
<%@ page import="com.dts.core.util.LoggerManager" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Issuehallticket.jsp' starting page</title>
    
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
   <%
   try{
    RegistrationDAO regdao = new RegistrationDAO();
    String param[] = request.getParameterValues("ch");
    int hallid = 0;
    for(int i=0;i<param.length;i++)
    {
        hallid = regdao.getHallticketID();
        regdao.issueHallticket(param[i],hallid); 
     %>
        <%= param[i]%>--<%=hallid%><br>
     <%       
    }
    }catch(Exception e)
    {
      LoggerManager.writeLogSevere(e);
    }
    %>
  </body>
</html>

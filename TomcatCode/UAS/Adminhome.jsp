<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>W E L C O M E T O T H E U N I V A R S I T Y A D M I N I S T R A T I O N</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	</head>
	<div align="center"><h1>W E L C O M E T O T H E U N I V A R S I T Y </h1><br/><br/><h1>A D M I N I S T R A T I O N</h1>
</div>
  <center>
  
  <%if(request.getParameter("status")!=null)
  { %>
  <%=request.getParameter("status") %>
  <%} %>
  <body bgcolor="pink">&nbsp; <br><form action="Adminoptions.jsp" method="get">
  
  <table width="100" border="1">
  <tr>
    <td>LoginAdmin</td>
    <td><input name="adminname" type="text"></td>
  </tr>
  <tr>
    <td>LoginPassWord</td>
    <td><input name="adminpass" type="text"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="Login" value="Login"/></td>
  </tr>
</table></form></body></center>

   
 
</html>

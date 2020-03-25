<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'EnterMarks.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="wheat">
    <form action="EnterMarksAction.jsp" method="post">
    <br>
    <table border="1">
    <caption><h3>Enter marks</h3></caption><tr>
    <td>
    hno:
    </td>
    <td>
    <input type="text" name="hno">
    
    </td>
    </tr>
    <tr>
    <td>
   subj1
    </td>
    <td>
    <input type="text" name="sub1">
    
    </td>
    </tr>
    <tr>
    <td>
    subj2:
    </td>
    <td>
    <input type="text" name="sub2">
    
    </td>
    </tr>
    <tr>
    <td>
    subj3:
    </td>
    <td>
    <input type="text" name="sub3">
    
    </td>
    </tr>
    <tr>
    <td>
    
    </td>
    <td>
    <input type="submit" value="add">
    
    </td>
    </tr>
    </table>
    </form>
  </body>
</html>

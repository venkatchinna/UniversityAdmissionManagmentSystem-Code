<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Scheduleexam.jsp' starting page</title>
    
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
.style1 {font-size: 18px}
-->
    </style>
    <script language="JavaScript" src="scripts/general.js"></script>
</head>
  
  <body >
    <form action="EnterMarks.jsp" method="get" name="acadamic">
      <p align="center" class="style1">Schedule Exam</p>
      
      <table width="294" border="1" align="center">
        <tr>
          <td width="105"><strong>Course</strong></td>
          <td width="144"><select name="course" id="course" onChange="getdiscipline(document.acadamic)">
             <option value="BTech">BTech</option>
             <option value="BSc">BSc</option>
             <option value="MSc">MSc</option>
             <option value="MTech">MTech</option>
          </select></td>
          <td width="23">&nbsp;</td>
        </tr>
        <tr>
          <td><strong>Discipline</strong></td>
          <td><input type="text" name="decip"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><strong>Schedule Date</strong></td>
          <td><label>
            <input type="text" name="textfield" id="textfield">
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><strong>Schedule Time</strong></td>
          <td><label>
            <input type="text" name="textfield2" id="textfield2">
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
        <td>
        </td>
<td>
<input type="submit" value="submit">
</td>
        </tr>
      </table>
      
    </form>
</body>
</html>

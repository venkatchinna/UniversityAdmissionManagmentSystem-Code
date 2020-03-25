<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	
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
.style2 {font-size: 16px}
.style3 {font-weight: bold; color: #003300;}
-->
    </style>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
  
  <br/><body bgcolor="wheat">
  <div align="center"><span class="style1"><span class="style2"><h1>W E L C O M E T O T H E U N I V A R S I T Y </h1><br/><br/><h1>A D M I N I S T R A T I O N</h1>
</span></span></div>
  
  
<center>
<%@ page import="com.dts.uas.dao.AcadamicDAO"%>
<%String name=request.getParameter("adminname");
String pass=request.getParameter("adminpass"); 
AcadamicDAO aAcadamicDAO=new AcadamicDAO();
 boolean flag=aAcadamicDAO.checkLoginAdmin(name,pass);
if(flag)
{%>
<table border="1"><tr><td>
<span class="style1"><span class="style2"><%out.println("<a href=./Viewregistrations1.jsp>View Registrations</a>");%></span></span><br/><br/></td></tr>
<tr><td><span class="style1"><span class="style2"><% out.println("<a href=./Viewacceptedregistrations.jsp>Issue Hall Ticket</a>");%></span></span><br/><br/></td></tr>
<tr><td><span class="style1"><span class="style2"><%out.println("<a href=ExamSchdule1.jsp>Schedule Exam</a>");%></span></span><br/><br/></td></tr>
<tr><td><span class="style1"><span class="style2"><%out.println("<a href=Adminhome.jsp>Logout</a>");%></span></span><br/><br/></td></tr></table>
<%}
else
{
String target="Adminhome.jsp?status=Invalid User"+name;
RequestDispatcher rd=request.getRequestDispatcher(target);
rd.forward(request,response);
}
%>      </center>      
                        </body>
</html>

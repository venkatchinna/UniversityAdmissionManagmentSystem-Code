<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProcessCourses.jsp' starting page</title>
    
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
   <%@ page import="com.dts.uas.model.*"%>
  <%@ page import="com.dts.uas.dao.*"%>
  <%@ page import="com.dts.core.util.*" %>
  <%@ page import="java.util.*" %>	
 
  
  
  
  <% 
if(request.getParameter("AddBranches")!=null)
{
String target="AddCourses.jsp?status=Record is Failed";
  String colleagename=request.getParameter("collegename");
  String course=request.getParameter("course");
  String branch=request.getParameter("branch");
  String noofseats=request.getParameter("noofseats");
  String bcseats=request.getParameter("bcseats");
  String scseats=request.getParameter("scseats");
  Courses acourses=new Courses();
  acourses.setCollegename(colleagename);
  acourses.setCourses(course);
  acourses.setBranch(branch);
  acourses.setNoofseats(noofseats);
  acourses.setBcseats(bcseats);
  
  acourses.setScseats(scseats);
  CoursesDAO acoursesdao=new CoursesDAO();
boolean flag= acoursesdao.addCourses(acourses);
  if(flag)
  {
  target="AddCourses.jsp?status=Courses is Inserted";
}
  RequestDispatcher rd=request.getRequestDispatcher(target);
  rd.forward(request,response);
  } %>
  
  <%
  if(request.getParameter("UpdateBranches")!=null)
{
String target="AddCourses.jsp?status=Record is Failed";
  String colleagename=request.getParameter("collegename");
  String branch=request.getParameter("branch");
  String course=request.getParameter("course");
  String noofseats=request.getParameter("noofseats");
  String bcseats=request.getParameter("bcseats");
  String scseats=request.getParameter("scseats");
  Courses acourses=new Courses();
  acourses.setCollegename(colleagename);
  acourses.setCourses(course);
  acourses.setBranch(branch);
  acourses.setNoofseats(noofseats);
  acourses.setBcseats(bcseats);
  
  acourses.setScseats(scseats);
  CoursesDAO acoursesdao=new CoursesDAO();
boolean flag= acoursesdao.updateCourses(acourses);
  if(flag)
  {
  target="AddCourses.jsp?status=Courses is Updated";
}
  RequestDispatcher rd=request.getRequestDispatcher(target);
  rd.forward(request,response);
  } %>
  
  <%if(request.getParameter("RemoveBranches")!=null)
  {String target="AddCourses.jsp?status=Record is Failed";
   String colleagename=request.getParameter("collegename");
  String branch=request.getParameter("branch");
 CoursesDAO acoursesdao=new CoursesDAO();
boolean flag= acoursesdao.deleteCourses(branch,colleagename);
  if(flag)
  {
  target="AddCourses.jsp?status=Courses is Updated";
}
  RequestDispatcher rd=request.getRequestDispatcher(target);
  rd.forward(request,response);
  } %>
  
  </body>
</html>

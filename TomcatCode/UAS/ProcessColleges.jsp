<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ProcessColleges.jsp' starting page</title>
    
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
   if(request.getParameter("AddColleges")!=null)
   {
   
   String target="/CheckCollege.jsp?status=Colleges Inserting Failed "; 
   String city=request.getParameter("city");
   String collegename=request.getParameter("collegename");
   String university=request.getParameter("university");
   String state=request.getParameter("state");
   String country=request.getParameter("country");
   College acollege=new College();
   acollege.setCity(city);
 acollege.setCollegename(collegename);
 acollege.setUniversity(university);
 acollege.setState(state);
 acollege.setCountry(country);
 CollegesDAO acollegesdao=new CollegesDAO();
 boolean flag=acollegesdao.addColleges(acollege);
    if(flag)
    {
    target="/CheckCollege.jsp?status=Colleges Inserting Successful";
    }
    RequestDispatcher rd=request.getRequestDispatcher(target);
    rd.forward(request,response);
   } %>
   
   <% 
   if(request.getParameter("DeleteColleges")!=null)
   {
   
   String target="/CheckCollege.jsp?status=Colleges Regesitration Canceled Failed "; 
   String city=request.getParameter("city");
   String collegename=request.getParameter("collegename");
   String university=request.getParameter("university");
   College acollege=new College();
   acollege.setCity(city);
 acollege.setCollegename(collegename);
 acollege.setUniversity(university);
 CollegesDAO acollegesdao=new CollegesDAO();
 boolean flag=acollegesdao.deleteColleges(acollege);
    if(flag)
    {
    target="/CheckCollege.jsp?status=Colleges Regesitration Canceled Successful";
    }
    RequestDispatcher rd=request.getRequestDispatcher(target);
    rd.forward(request,response);
   } %>
   
   
  </body>
</html>

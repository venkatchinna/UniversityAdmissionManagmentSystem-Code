<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.dts.uas.dao.EnterMarksDAO"%>
<%@page import="com.dts.dae.model.Profile"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ViewMarksAction.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <<body>
		<br>
		<%
			String target = "LoginForm.jsp?status=Invalid username and password";
				try{
				 Profile  rb=new Profile();
				 String hno = request.getParameter("hno");
		         rb.setHno(hno);
		         
		         
		         rb=new EnterMarksDAO().getMarks(rb);
		         
		         if(true)
		         { 
		            target = "ViewMarks1.jsp?status=Welcome "+hno;
		            session.setAttribute("hno",hno);
		            session.setAttribute("subj1",rb.getSub1());
		             session.setAttribute("subj2",rb.getSub2());
		             session.setAttribute("subj3",rb.getSub3());
		         } 
		         else   {    target = "ViewMarks.jsp?status=Invalid hno";    	
		            session.setAttribute("hno",hno);
		            
		         
		            }}catch(Exception e){} 
		        response.sendRedirect(target);
		%>
	</body>
</html>

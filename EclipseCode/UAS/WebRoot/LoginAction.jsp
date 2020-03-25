<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.dts.dae.model.Profile,com.dts.dae.dao.SecurityDAO"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		

		<title>My JSP 'RegisterAction.jsp' starting page</title>

		
		

	</head>

	<body>
		<br>
		<%
			String target = "index.jsp?status=Invalid username and password";
				try{
				 Profile  rb=new Profile();
				 String username = request.getParameter("username");
		         rb.setLoginID(username);
		         rb.setPassword(request.getParameter("password"));
		         
		         String role=new SecurityDAO().loginCheck(rb);
		         System.out.println(role);
		         
		         if(role.equals("admin"))
		         { 
		            target = "AdminView.jsp?status=Welcome "+username;
		            session.setAttribute("user",username);
		            session.setAttribute("role",role);
		         } 
		         else if(role.equals("user"))
		         {
		            int status = new SecurityDAO().checkFirstLogin(username);
		            System.out.println("this is status"+status);
		           if(status==0)
		            	target = "Student.jsp";
		            else if(status==1)
		                target = "StudentFrames.html?status=Welcome "+username;
		            else
		                target = "index.jsp?status=Invalid username and password";    	
		            session.setAttribute("user",username);
		            session.setAttribute("role",role);
		         } 
		         else  
		            target = "index.jsp?status=Invalid username and password";
		            }catch(Exception e){} 
		        response.sendRedirect(target);
		%>
		
	</body>
</html>

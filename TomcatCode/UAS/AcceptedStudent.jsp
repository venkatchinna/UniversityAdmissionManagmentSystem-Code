

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AcceptedStudent.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<html>
<div align="center"><h1>W E L C O M E T O T H E U N I V A R S I T Y </h1><br/><br/><h1>A D M I N I S T R A T I O N</h1>
</div>
  
<body bgcolor="pink">
<centre>
<%@ page import="com.dts.uas.dao.RegistrationDAO" %>
<%@ page import="java.util.*"%>
<%@ page import="com.dts.dae.model.Profile"%>
<table border="2" align="center"><tr><td>LoginId</td><td>FirstName</td><td>LastName</td><td>BirthDate</td><td>City</td><td>State</td><td>Country</td><td>SscPercentage</td><td>Ugpercentage</td><td>Gpercentage</td></tr>
		<span class="style11">	<h4>SELECTED STUDENTS</h4></span>
<%
RegistrationDAO rd=new RegistrationDAO();
Hashtable p1=rd.getAcceptedStudents();
		Enumeration e=p1.keys();
		while(e.hasMoreElements())
		{
			Integer i2=(Integer)e.nextElement();
		
				Profile p2=(Profile)p1.get(i2);
				%>
			<tr><td>	<%=p2.getLoginID() %></td>
			<td><%= p2.getFirstName()%></td>
							<td><%=p2.getLastName()%></td>
				<td><%=p2.getBirthDate1()%></td>
				<td><%=p2.getCity()%></td>
				<td><%=p2.getState()%></td>
				<td><%=p2.getCountry()%></td>
				<td><%=p2.getSscpercentage()%></td>
				<td><%=p2.getUgpercentage()%></td>
				<td><%=p2.getGpercentage() %></td> 
				</tr>
		<% 		
			
		}
           %>
</table>
<center>
<br/><br />
<table><tr><td width="200">
<a href="Adminhome.jsp">Home</a></td><td width="200"><a href="AcceptedStudent.jsp">Selected Students</a></td><td width="200"><a href="RegectedStudent.jsp">Regicted Students</a></td></tr></table>
</centre>
</body></html>
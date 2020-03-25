<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ViewUniversites.jsp' starting page</title>
    
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
.style3 {color: #000000; font-weight: bold; }
.style4 {color: #FF0000}
-->
    </style>
</head>
  
  <body>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Natural Beauties by Free Css Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header">
	<div id="logo">
		<h1><jsp:include page="header.html"/></h1>
		
  </div>
	<div id="menu">
		<ul>
			<jsp:include page="Adminoptions1.html"/>
		</ul>
	</div>
</div>

<div id="content">
	<div id="posts">
		<div class="post">
			
			<div class="meta">
	
		  </div>
<div class="story">
				
		  </div>
		</div>
		</div>
	<div id="sidebar">
		<div id="archives" class="boxed">
			<h2>UNIVERSITY DETAILS</h2>
			<div class="content">
				<ul><li>
				  <form id="form1" method="post" action="">
				    <%@ page import="java.util.*"%>
 <%@ page import="com.dts.uas.model.*"%>
  <%@ page import="com.dts.uas.dao.*"%>
  <%@ page import="com.dts.core.util.*" %>
  <%@ page import="java.util.*" %>
  <% 
  
  
  
  CollegesDAO acollegesdao=new CollegesDAO();
  CoreHash acorehash=acollegesdao.viewColleges();
  Enumeration aenumeration=acorehash.keys();
  int n=acorehash.size();
  
  %>
  <table width="784">
    <tr bgcolor="#999900"><td width="171"><span class="style3">CollegeName</span></td>
    <td width="212"><span class="style3">UniverSity</span></td>
    <td width="130"><span class="style3">City</span></td>
    <td width="96"><span class="style3">State</span></td>
    <td width="151"><span class="style3">Country</span></td>
    </tr>
  <%  while(aenumeration.hasMoreElements())
  {
  Integer i1=(Integer)aenumeration.nextElement();
 College acollege=(College)acorehash.get(i1);
 int sno=acollege.getSid();
 String collegename=acollege.getCollegename();
 String university=acollege.getUniversity();
 String city=acollege.getCity();
 String state=acollege.getState();
 String country=acollege.getCountry();
  %>
  <tr bgcolor="#99CCCC"><td><span class="style4"><%=collegename %></span></td><td><span class="style4"><%=university %></span></td><td><span class="style4"><%=city %></span></td><td><span class="style4"><%=state%></span></td><td><span class="style4"><%=country%></span></td></tr>
  
  <%} %></table>
 </form>
				</li>
				</ul>
		  </div>
	  </div>
		</div>
</div>
<div id="footer"></div>
</body>
</html>
 
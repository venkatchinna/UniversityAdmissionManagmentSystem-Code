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
<style type="text/css">
<!--
.style1 {color: #000000}
.style4 {color: #FF0000}
-->
</style>
</head>
<body>
<div id="header">
	<div id="logo">
		<h1><jsp:include page="header.html"/></h1>
		
  </div>
	<div id="menu">
		<ul>
			<jsp:include page="usergeneraloptions.html"/>
		</ul>
	</div>
</div>

<div id="content">VIEW COLLEGE DETAILS </div>
	<div id="sidebar">
		<div id="archives" class="boxed">
					    <%@ page import="java.util.*"%>
 <%@ page import="com.dts.uas.model.*"%>
  <%@ page import="com.dts.uas.dao.*"%>
  <%@ page import="com.dts.core.util.*" %>
  <%@ page import="java.util.*" %>
  <% 
  
  
  String university=request.getParameter("university");
  CollegesDAO acollegesdao=new CollegesDAO();
  CoreHash acorehash=acollegesdao.viewUnivercityColleges(university);
  Enumeration aenumeration=acorehash.keys();
  int n=acorehash.size();
  System.out.println(n);
 
  %>
  <table width="913"><tr bgcolor="#999900"><td width="137"><span class="style1">CollegeName</span></td>
  <td width="138"><span class="style1">UniverSity</span></td>
  <td width="127"><span class="style1">City</span></td>
  <td width="190"><span class="style1">State</span></td>
  <td width="297"><span class="style1">Country</span></td>
  </tr>
  <%  while(aenumeration.hasMoreElements())
  {
  Integer i1=(Integer)aenumeration.nextElement();
 College acollege=(College)acorehash.get(i1);
 int sno=acollege.getSid();
 String collegename=acollege.getCollegename();
 university=acollege.getUniversity();
 String city=acollege.getCity();
 String state=acollege.getState();
 String country=acollege.getCountry();
  %>
  <tr bgcolor="#99CCFF"><td><span class="style4"><%=collegename %></span></td><td><span class="style4"><%=university %></span></td><td><span class="style4"><%=city %></span></td><td><span class="style4"><%=state%></span></td><td><span class="style4"><%=country%></span></td></tr>
  
  <%} %></table>
	
	  </div>
</div>

<div id="footer"></div>
</body>
</html>

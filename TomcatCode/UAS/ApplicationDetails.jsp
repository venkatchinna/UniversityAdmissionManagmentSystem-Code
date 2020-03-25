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
.style15 {color: #000000; font-weight: bold; }
.style18 {color: #660000; font-weight: bold; }
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

<div id="content">
		</div>
	<div id="sidebar">
		<div id="archives" class="boxed">
			<div class="content">
				<ul><li>
				  <form id="form1" method="post" action="">
		        Application Details  
		          <%@ page import="com.dts.uas.model.*" %>
		           <%@ page import="com.dts.uas.dao.*" %>
		        <%@ page import="com.dts.core.util.*"%>
		        <%@ page import="java.util.*" %>
		          <% ApplicationDAO applicationdao=new ApplicationDAO();
		          CoreHash acorehash=applicationdao.viewApplicationDetails();
		          Enumeration aenumeration=acorehash.keys();
		          %>
		          <table width="824" border="0">
		            <tr align="center" bgcolor="#999966"><td width="180" nowrap="nowrap" bgcolor="#D4D76E"><p class="style15">University</p></td>
		            <td width="242" nowrap="nowrap" bgcolor="#D4D76E"><p class="style15">ApplicationCourse</p></td>
		            <td width="204" nowrap="nowrap" bgcolor="#D4D76E"><p class="style15">StartDate</p></td>
		            <td width="178" nowrap="nowrap" bgcolor="#D4D76E"><p class="style15">LastDate</p></td>
		            </tr>
		          
		          <% 
		          while(aenumeration.hasMoreElements())
		          {
		          Integer i1=(Integer)aenumeration.nextElement();
		          Application application1=(Application)acorehash.get(i1);
		          String university=application1.getUniversity();
		          String applicationcourse=application1.getApplicationcourse();
		          String startdate=application1.getStartdate();
		          String lastdate=application1.getLastdate();
		          
		           %>
		           <tr><td bgcolor="#C5D7F3"><div align="center"><span class="style18"><%=university %></span></div></td>
		           <td bgcolor="#C5D7F3"><div align="center"><span class="style18"><%=applicationcourse%></span></div></td>
		           <td bgcolor="#C5D7F3"><div align="center"><span class="style18"><%=startdate%></span></div></td>
		           <td bgcolor="#C5D7F3"><div align="center"><span class="style18"><%=lastdate%></span></div></td>
		           </tr>
		              <%} %>  
	</table>	
				  </form>
<div id="footer"></div>
</body>
</html>

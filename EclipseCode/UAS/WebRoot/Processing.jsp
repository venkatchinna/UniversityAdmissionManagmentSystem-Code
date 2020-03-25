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
.style3 {color: #000000; font-weight: bold; }
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
		 <jsp:include page="Adminoptions1.html"/>
        </ul>
	</div>
</div>

<div id="content">
  <div id="sidebar1">
		<div id="archives" class="boxed">
			Welcome to the Administrator<br/><br/><%=(String)session.getAttribute("user") %>
			<div class="content">
				<ul><li>
                  <%@ page import="com.dts.core.util.*"%>
    <%@ page import="com.dts.uas.model.*"%>
    <%@ page import="com.dts.uas.dao.*" %>
<%@page  import="java.util.*" %>



    <table width="786" border="1">
    
      <tr bgcolor="#999900">
        <td> </td>
        
        <td><div align="center" class="style3">Full Name</div></td>
         <td><div align="center" class="style3">Last Name</div></td>
             
        <td><div align="center" class="style3">Birth Date</div></td>
        <td><div align="center" class="style3">City</div></td>
        <td><div align="center" class="style3">State</div></td>
      </tr>
         
         Selected Students
          <%
          try{
             String loginname = "";
             RegistrationDAO registrationdao = new RegistrationDAO();
             CoreHash aCoreHash = registrationdao.getAcceptedStudents();  
             Enumeration enu = aCoreHash.elements();
             com.dts.dae.model.Profile profile;
             while(enu.hasMoreElements())     
            {
               profile = (com.dts.dae.model.Profile)enu.nextElement();
               loginname = profile.getLoginID();
           %>
      <tr bgcolor="#99CC99"><td><span class="style4"></span></td>
        <td><div align="center" class="style4"><%=profile.getFirstName()%>&nbsp; </div></td>
        <td><div align="center" class="style4"><%=profile.getLastName()%>&nbsp; </div></td>
        
        <td><div align="center" class="style4"><%=DateWrapper.parseDate(profile.getBirthDate1())%></div></td>
        <td><div align="center" class="style4"><%=profile.getCity()%></div></td>
        <td><div align="center" class="style4"><%=profile.getState()%></div></td>
      </tr>
      <%} 
      }
      catch(Exception e){}
   %>    <tr>
       <td colspan="5"><div align="center"></div></td>
       
    </table>


				  </li>
				</ul>
		  </div>
	  </div>
		</div>
</div>
<div id="footer"></div>
</body>
</html>

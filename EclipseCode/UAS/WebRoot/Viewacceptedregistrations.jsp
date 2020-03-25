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
.style2 {color: #FF0000}
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
               <%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.dae.model.Profile,com.dts.uas.dao.RegistrationDAO,com.dts.core.util.CoreHash,com.dts.core.util.DateWrapper"%> 




    <table width="786" border="1">
    
      <tr bgcolor="#999900">
        <td><span class="style1"></span> </td>
        
        <td><div align="center" class="style1"><strong>Full Name</strong></div></td>
         <td><div align="center" class="style1"><strong>Last Name</strong></div></td>
             
        <td><div align="center" class="style1"><strong>Birth Date</strong></div></td>
        <td><div align="center" class="style1"><strong>City</strong></div></td>
        <td><div align="center" class="style1"><strong>State</strong></div></td>
      </tr>
         
         Selected Students
          <%
          try{
             String loginname = "";
             RegistrationDAO registrationdao = new RegistrationDAO();
             CoreHash aCoreHash = registrationdao.getAcceptedProfiles();  
             Enumeration enu = aCoreHash.elements();
             com.dts.dae.model.Profile profile;
             while(enu.hasMoreElements())     
            {
               profile = (com.dts.dae.model.Profile)enu.nextElement();
               loginname = profile.getLoginID();
           %>
      <tr bgcolor="#99CCCC"><td><span class="style2"></span></td>
        <td><div align="center" class="style2"><%=profile.getFirstName()%>&nbsp; </div></td>
        <td><div align="center" class="style2"><%=profile.getLastName()%>&nbsp; </div></td>
        
        <td><div align="center" class="style2"><%=DateWrapper.parseDate(profile.getBirthDate1())%></div></td>
        <td><div align="center" class="style2"><%=profile.getCity()%></div></td>
        <td><div align="center" class="style2"><%=profile.getState()%></div></td>
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

<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.uas.model.Acadamic,com.dts.uas.dao.AcadamicDAO,com.dts.core.util.CoreHash,com.dts.core.util.DateWrapper"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'Viewacadetails.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script language="JavaScript" src="scripts/general.js"></script>
    <style type="text/css">
<!--
.style38 {color: #FF0000}
.style40 {font-size: 18px}
-->
    </style>
  </head>
  
  <body>
   <form action="AccRegAction.jsp" name="acadamicreg" id="acadamic" >
               <input type="hidden"  name="loginname" value="<%=request.getParameter("loginname")%>">
                <%
          try{
             String loginname = request.getParameter("loginname");
             AcadamicDAO acadamicdao = new AcadamicDAO();
             Acadamic acadamic = acadamicdao.getAcademicDetails(loginname);
             if(acadamic!=null)
             {
             %>
      <table width="475" border="1" align="center">
        <tr>
          <td width="469" height="29"><div align="center" class="style11 style40"><strong>A c a d a m i c D e t a i l s </strong></div></td>
        </tr>
        <tr>
          <td height="141"><table width="468" border="1" align="center">
            <tr>
                <td width="149" height="33"><span class="style38 style36"><strong>SSC</strong></span></td>
              <td ><strong>RegNo</strong></td>
                <td colspan="2">
                <%=acadamic.getSscreg()%>                </td>
              </tr>
              <tr>
                <td height="34" class="style36"><strong>Year of Passed Out</strong></td>
                <td >
                    <%=acadamic.getYearofpass1()%></td>
                <td width="75" class="style36"><strong>Percentage</strong></td>
                <td width="144"><label>
                  <%=acadamic.getPercentage1()%>
                </label></td>
              </tr>
              <tr>
                <td height="35"><span class="style38 style36"><strong>Under Graduation</strong></span></td>
                <td ><strong>RegNo</strong></td>
                <td colspan="2"><%=acadamic.getUgreg()%></td>
              </tr>
              <tr>
                <td height="38"><span class="style36"><strong>Year of Passed Out </strong></span></td>
                <td><label>
                 
                    <%=acadamic.getYearofpass2()%>
                </label></td>
                <td class="style36"><strong>Percentage</strong></td>
                <td><label>
                  <%=acadamic.getPercentage2()%>
                </label></td>
              </tr>
              <tr>
                <td height="31"><span class="style38 style36"><strong>
                  
&nbsp;
                  Graduation</strong></span></td>
                <td ><strong>RegNo</strong></td>
                <td colspan="2"><%=acadamic.getGreg()%></td>
              </tr>
              <tr>
                <td height="38"><span class="style36"><strong>Year of Passed Out </strong></span></td>
                <td><label>
                  <%=acadamic.getYearofpass3()%>
                </label></td>
                <td class="style36"><strong>Percentage</strong></td>
                <td><label>
                  <%=acadamic.getPercentage3()%>
                </label></td>
              </tr>
              <tr>
                <td class="style36"></td>
                <td colspan="3"></td>
              </tr>

              <tr>
                <td><span class="style37"><strong>Course</strong></span></td>
                <td colspan="3"><label><%=acadamic.getCourse()%>   
                
                </label></td>
              </tr>
              <tr>
                <td><span class="style37"><strong>Discipline</strong></span></td>
                <td colspan="3"><label>
                  <%=acadamic.getDiscipline()%>
                </label></td>
              </tr>
              <tr>
                <td colspan="4"><label>
                  <div align="center">
                    <input type="submit" name="button" id="button" value="Accept">&nbsp;
                    <input type="submit" name="button" id="button2" value="Reject">
</div>
                </label></td>
              </tr>
          </table></td>
        </tr>
       
      </table>
    
     <%}
     else
     { %>
      <center><strong> No Records Found 
    <%} }
     catch(Exception e)
     {
     e.printStackTrace();
     } %>
    </form>
  </body>
</html>

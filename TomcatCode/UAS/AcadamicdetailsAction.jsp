<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.uas.model.Acadamic,com.dts.uas.dao.AcadamicDAO"%> 
<%
 	String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AcadamicdetailsAction.jsp' starting page</title>
    
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
   <%
   	String target = "/Acadamicdetails.jsp?status=Regestrion is Failed"; 
        String subject=request.getParameter("subject");
        application.setAttribute("subject",subject);
        
        try{
       Acadamic adto = new Acadamic();
       adto.setSubject(request.getParameter("subject"));
       adto.setLoginname(request.getParameter("loginname"));
       System.out.println(request.getParameter("loginname"));
       adto.setSscreg(request.getParameter("regno"));
       
       adto.setYearofpass1(request.getParameter("yearofpass1")); 
       adto.setPercentage1(Double.parseDouble(request.getParameter("percentage1")));
       adto.setUgreg(request.getParameter("ugreg")); 
       adto.setYearofpass2(request.getParameter("yearofpass2"));
       adto.setPercentage2(Double.parseDouble(request.getParameter("percentage2")));
       if(request.getParameter("ch")!=null)
       {
           adto.setGreg(request.getParameter("greg"));
           adto.setYearofpass3(request.getParameter("yearofpass3"));
           adto.setPercentage3(Double.parseDouble(request.getParameter("percentage3")));
       }
       else
       {
         //  adto.setSscreg("0");
           adto.setYearofpass3("0");
           adto.setPercentage3(0);
       }
       
       adto.setCourse(request.getParameter("course"));
       adto.setCourse(request.getParameter("discipline"));
         
       boolean flag = new AcadamicDAO().registerAcadamicDetails(adto); 
       System.out.println(flag);
       if(flag)
       {
       target="/Acadamicdetails.jsp?status=Regestrion is SuccessFul";
              }
              RequestDispatcher rd=request.getRequestDispatcher(target);
              rd.forward(request,response);
      }catch(Exception e){}   
        %>
   
  </body>
</html>

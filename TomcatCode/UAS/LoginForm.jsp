<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'LoginForm.jsp' starting page</title>
    
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
.style1 {
	font-size: 18px;
	font-weight: bold;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
.style2 {color: #FF0000}
-->
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
  
  <body><form action="LoginAction.jsp" method="post" name="register">
    <div align="center"><span class="style1">Login</span></div>
    <p align="center" class="style2">
    <%if(request.getParameter("status")!=null)
    {%>
    <%=request.getParameter("status")%>
    <%} %>
    </p>

                            <table width="222" border="0" align="center">
                        <tr>
                                  <td width="98" ><strong>Username</strong></td>
                                  <td width="185" ><input type="text" name="username">                                  </td>
                              </tr>
                                <tr>
                                  <td><strong>Password</strong></td>
                                  <td>
                                    <input type="password" name="password">                                  </td>
                                </tr>
                                <tr>
                                  <td colspan="2">
                                      <div align="center">
                                        <input type="submit" name="Submit" value="Sign In">
                                        &nbsp;
                                        <input name="Input2" type="reset" value="Clear">
                                      </div>                                    </td>
                                </tr>
                                <tr>
                            <td valign="baseline" colspan="2">
                            <div align="center"><strong><a href="RecoverPassword.jsp" target="bottom">Forgot Password ?......</a></strong></div></td>
                          </tr>
                          <tr>
                            <td valign="baseline" colspan="2"> <div align="center"><strong><a href="Registerform.jsp"  target="bottom">New User Sign Up !.....</a></strong></div></td>
                          </tr>
                            </table>
                    
    <div align="center"></div>
                    <div align="center"></div>
  </form>		
</body>
</html>

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
			<jsp:include page="generaloptions.html"/>
		</ul>
	</div>
</div>

<div id="content">
	<div id="posts">
		<div class="post">
			
			<div class="meta">
				<h2 class="title">Welcome to </h2>
		  </div>
<div class="story">
				  </div>
		</div>
		</div>
	<div id="sidebar">
		<div id="archives" class="boxed">
			<h2>LoginForm</h2>
			<div class="content">
				<ul><li>
				 
				  <%if(request.getParameter("status")!=null)
    {%>
    <%=request.getParameter("status")%>
    <%} %>
				 
				 
				 
				 
				  <form id="form1" method="post" action="LoginAction.jsp">
				    <table width="200" border="0" align="center">
                      <tr>
                        <td width="69">Username</td>
                        <td width="121"><label>
                          <input type="text" name="username" id="username" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="33">Password</td>
                        <td><label>
                          <input type="password" name="password" id="password" />
                        </label></td>
                      </tr>
                      <tr>
                        <td></td>
                        <td></td>
                      </tr>
                      <tr>
                        <td height="34" colspan="2">
                          <div align="center">
                            <input type="submit" name="button" id="button" value="Sign In" />
                          </div>
                       </td>
                      </tr>
                           <tr>
                            <td valign="baseline" colspan="2">
                            <div align="center"><strong><a href="RecoverPassword.jsp" target="bottom">Forgot Password ?......</a></strong></div></td>
                          </tr>
                           <tr>
                        <td colspan="2"><div align="center"><a href="Registerform.jsp">New user sign Up ! . . .</a></div></td>
                      </tr>
                    </table>
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

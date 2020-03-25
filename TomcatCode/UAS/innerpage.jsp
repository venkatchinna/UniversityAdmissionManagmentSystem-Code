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
		 <jsp:include page="adminoptions.html"/>
        </ul>
	</div>
</div>

<div id="content">
  <div id="sidebar1">
		<div id="archives" class="boxed">
			<h2>Registration</h2>
			<div class="content">
				<ul><li>
                
				  <form id="form1" method="post" action="">
                  <br />
				    <table width="247" border="0" align="center">
                      <tr>
                        <td width="74">First Name</td>
                        <td width="163"><label>
                          <input type="text" name="textfield" id="textfield" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="34">Last Name</td>
                        <td><label>
                          <input type="password" name="textfield2" id="textfield2" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="20">Age</td>
                        <td><input type="password" name="textfield3" id="textfield3" /></td>
                      </tr>
                      <tr>
                        <td height="34" colspan="2">
                          <div align="center">
                            <input type="submit" name="button" id="button" value="Sign In" />
                          </div>                       </td>
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

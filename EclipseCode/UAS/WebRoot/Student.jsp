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
			<jsp:include page="usergeneraloptions.html"/>
		</ul>
	</div>
</div>

<div id="content">
		</div>
	<div id="sidebar">
		<div id="archives" class="boxed">
			<h2>WELCOME TO THE USER <%=(String)session.getAttribute("user")%></h2>
			<div class="content">
				<ul><li>
				  <form id="form1" method="post" action="">
		          </form>
				</li>
				</ul>
		  </div>
	  </div>
		</div>

<div id="footer"></div>
</body>
</html>

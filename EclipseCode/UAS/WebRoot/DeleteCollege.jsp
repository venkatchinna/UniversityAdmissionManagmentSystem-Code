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
	<div id="posts">
		<div class="post">
			
			<div class="meta">
				</div>
<div class="story">
				 </div>
		</div>
		</div>
	<div id="sidebar">
		<div id="archives" class="boxed">
			<h2>Colleges</h2>
			<div class="content">
				<ul><li>
				 <FORM action="ProcessColleges.jsp" method="post" name="register">
<%
if(request.getParameter("status")!=null)
          out.println(request.getParameter("status"));
 %>           
   <div alighn="left">
			<TABLE width="481" border="0" align="left">
				<TR>
					<TD align="right">&nbsp;
						
					</TD>
					<TD>
						<TABLE width="313" border="2" align="left">
							<TR bgcolor="#999900">
								<TD width="159" height="27"><span class="style3">
								  CollegeName								</span></TD>
								<TD width="144" bgcolor="#FFFFFF">
							  <INPUT name="collegename" type="text"/>							  </TD>
						  </TR>
								<TR bgcolor="#99CC99">
								<TD bgcolor="#999900"><span class="style3">University </span></TD>
								<TD bgcolor="#FFFFFF">
								  <INPUT name="university" type="text"/>							  </TD>
							</TR>
							
							
							  <TR>
								<TD colspan="2">
									<DIV align="center">
										 <INPUT name="DeleteColleges" type="submit" value="DeleteColleges"/>	
									</DIV>								</TD>
							</TR>
					  </TABLE>
					</TD>
					<TD>&nbsp;
						
					</TD>
				</TR>

			</TABLE></div>
		</FORM>

	</li>
				</ul>
		  </div>
	  </div>
		</div>
</div>
<div id="footer"></div>
</body>
</html>

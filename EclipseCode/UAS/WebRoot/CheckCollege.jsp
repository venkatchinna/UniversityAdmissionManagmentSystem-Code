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
						<TABLE width="407" border="0" align="left">
							<TR>
								<TD bgcolor="#999900"><span class="style3">
								  CollegeName								</span></TD>
								<TD>
									<INPUT type="text" name="collegename"/>								</TD>
							</TR>
							<TR>
								<TD bgcolor="#999900"><span class="style3">
								  City								</span></TD>
								<TD>
									<INPUT type="text" name="city"/>								</TD>
							</TR>
							<TR>
								<TD bgcolor="#999900"><span class="style3">University </span></TD>
								<TD>
									<INPUT type="text" name="university"/>							  </TD>
							</TR>
							<TR>
								<TD bgcolor="#999900"><span class="style3">state </span></TD>
								<TD>
									<INPUT type="text" name="state"/>							  </TD>
							</TR>
							<TR>
								<TD bgcolor="#999900"><span class="style3">Country </span></TD>
								<TD>
									<INPUT type="text" name="country"/>							  </TD>
							</TR>
							
							
							  <TR bgcolor="#99CC99">
								<TD colspan="2">
									<DIV align="center" class="style3">
										<INPUT name="AddColleges" type="submit" value="AddColleges"/>&nbsp;</DIV>								</TD>
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

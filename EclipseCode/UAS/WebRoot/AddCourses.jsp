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
                <FORM action="ProcessCourses.jsp" method="post" name="register">
<%
if(request.getParameter("status")!=null)
          out.println(request.getParameter("status"));
 %>             
			<TABLE width="481" border="0" align="center">
				<TR>
					<TD align="right">&nbsp;
						
					</TD>
					<TD>
						<TABLE width="407" border="0" align="center">
							<TR>
								<TD bgcolor="#999900"><span class="style3">
								  College Name								</span></TD>
								<TD>
									<INPUT type="text" name="collegename"/>								</TD>
							</TR>
							<TR>
								<TD bgcolor="#999900"><span class="style3">
								  Course								</span></TD>
								<TD>
									<INPUT type="text" name="course"/>								</TD>
							</TR>
							<TR>
								<TD bgcolor="#999900"><span class="style3">
								  Branch								</span></TD>
								<TD>
									<INPUT type="text" name="branch"/>								</TD>
							</TR>
							
							
							
							<TR>
								<TD bgcolor="#999900"><span class="style3">No of Seats </span></TD>
								<TD>
									<INPUT type="text" name="noofseats"/>							  </TD>
							</TR>
							<TR>
								<TD bgcolor="#999900"><span class="style3">
								  BC Reservation </span></TD>
								<TD>
									<INPUT type="text" name="bcseats"/>							  </TD>
							</TR>
							<TR>
								<TD bgcolor="#999900"><span class="style3">SC reservation </span></TD>
								<TD>
									<INPUT type="text" name="scseats"/>							  </TD>
						  <TR bgcolor="#999900">
								<TD colspan="2">
									<DIV align="center" class="style3">
										<INPUT name="AddBranches" type="submit" value="AddBranches"/>&nbsp;										                                   
										    <INPUT name="UpdateBranches" type="submit" value="UpdateBranches"/>&nbsp;
										    
										    <INPUT name="RemoveBranches" type="submit" value="RemoveBranches"/>&nbsp;</DIV>							</TD>
						  </TR>
					  </TABLE>
					</TD>
					<TD>&nbsp;
						
					</TD>
				</TR>

			</TABLE>
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

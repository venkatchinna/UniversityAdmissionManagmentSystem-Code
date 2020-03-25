<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'ViewMarks1.jsp' starting page</title>

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
			String hno = (String) session.getAttribute("hno");
			String sub1 = (String) session.getAttribute("sub1");
			String sub2 = (String) session.getAttribute("sub2");
			String sub3 = (String) session.getAttribute("sub3");
		%>
		<table border="">
			<tr>
				<td>
					hno:
				</td>
				<td>
					<%=hno%>

				</td>

			</tr>
			<tr>
				<td>
					sub1:
				</td>
				<td>
					<%=sub1%>

				</td>

			</tr>
			<tr>
				<td>
					sub2:
				</td>
				<td>
					<%=sub2%>

				</td>

			</tr>
			<tr>
				<td>
					sub3:
				</td>
				<td>
					<%=sub3%>

				</td>

			</tr>
	</body>
</html>

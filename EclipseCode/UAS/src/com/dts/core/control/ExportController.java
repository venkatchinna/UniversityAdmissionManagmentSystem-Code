package com.dts.core.control;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExportController extends HttpServlet
{
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException
	{
		String exportMode = req.getParameter("em");
	
	}
}

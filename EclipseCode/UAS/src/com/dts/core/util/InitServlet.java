package com.dts.core.util;


import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.util.Properties;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;

import com.dts.core.db.DBFactory;
import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.LoggerManager;


public class InitServlet extends HttpServlet 
{	
	AbstractDataAccessObject dobject;
    public void init(ServletConfig sc)
    {
    	ServletContext ctx = sc.getServletContext();
    	dobject = new AbstractDataAccessObject();
    	InputStream fis = ctx.getResourceAsStream(sc.getInitParameter("config"));
    	Properties props = new Properties();
   	 	try 
   	 	{
			props.load(fis);
		} 
   	 	catch (IOException ioe) {
   	 		
   	 		ioe.printStackTrace();
			
		}
    	dobject.setProperties(props);
    	
    	LoggerManager.logger=new LoggerManager().getLogger(props.getProperty("logfile"));
    	LoggerManager.writeLogInfo("Logger Instatiated");
    	
    	try
    	{
    		new DBFactory();
    	}
    	catch(NullPointerException npe)
    	{
    		LoggerManager.writeLogWarning("Connection to database failed");
    	}
    }
}

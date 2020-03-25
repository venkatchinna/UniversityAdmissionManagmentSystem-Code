package com.dts.uas.dao;

import com.dts.core.dao.AbstractDataAccessObject;
import java.sql.*;
import com.dts.core.util.*;
import com.dts.uas.model.*;

public class ApplicationDAO extends AbstractDataAccessObject {
Connection con=null;
	public ApplicationDAO()
	{
		con=getConnection();
	}
	
	public CoreHash viewApplicationDetails()
	{
		CoreHash acorehash=new CoreHash();
		
		try{
			String selectsql="select * from ApplicationDetails";
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(selectsql);
		int i=0;
		Application application=null;
		while(rs.next())
		{
			application=new Application();
			application.setUniversity(rs.getString(1));
			application.setApplicationcourse(rs.getString(2));
		    application.setStartdate(rs.getString(3));
		    application.setLastdate(rs.getString(4));
		acorehash.put(new Integer(i),application);
		i++;
		}
		return acorehash;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return acorehash;
	}
	
	
	
	public boolean viewApplicationDetails(Application application)
	{
		CoreHash acorehash=new CoreHash();
		boolean flag=false;
		try{
			String insertsql="insert into ApplicationDetails values(?,?,?,?)";
		PreparedStatement pstapplication=con.prepareStatement(insertsql);
		pstapplication.setString(1,application.getUniversity());
		pstapplication.setString(2,application.getApplicationcourse());
		pstapplication.setString(3,application.getStartdate());
		pstapplication.setString(4,application.getLastdate());
		ResultSet rs=pstapplication.executeQuery();
		while(rs.next())
		{
			flag=true;
		}
		return flag;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
	public boolean updateApplicationDetails(Application application)
	{
		CoreHash acorehash=new CoreHash();
		boolean flag=false;
		try{
			String updatesql="update ApplicationDetails set startdate=?,lastdate=? where ApplicationCourse=? and university=?";
		PreparedStatement pstapplication=con.prepareStatement(updatesql);
		pstapplication.setString(4,application.getUniversity());
		pstapplication.setString(3,application.getApplicationcourse());
		pstapplication.setString(1,application.getStartdate());
		pstapplication.setString(2,application.getLastdate());
		ResultSet rs=pstapplication.executeQuery();
		while(rs.next())
		{
			flag=true;
		}
		return flag;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
	
	public boolean delteApplicationDetails(Application application)
	{
		CoreHash acorehash=new CoreHash();
		boolean flag=false;
		try{
			String updatesql="delete from ApplicationDetails  where ApplicationCourse=? and university=?";
		PreparedStatement pstapplication=con.prepareStatement(updatesql);
		pstapplication.setString(2,application.getUniversity());
		pstapplication.setString(1,application.getApplicationcourse());
		ResultSet rs=pstapplication.executeQuery();
		while(rs.next())
		{
			flag=true;
		}
		return flag;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
	}
			
		
	
}

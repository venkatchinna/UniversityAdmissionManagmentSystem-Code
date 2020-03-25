package com.dts.uas.dao;

import com.dts.core.dao.AbstractDataAccessObject;
import java.sql.*;
import com.dts.uas.model.*;
import com.dts.core.util.*;
public class CoursesDAO extends AbstractDataAccessObject {
Connection con=null;

	public CoursesDAO()
	{
		con=getConnection();
	}
	public boolean addCourses(Courses acourses)
	{
		boolean flag=false;
	
		try{
	String insertsql="insert into courses values(?,?,?,?,?,?)";
			PreparedStatement pstcourse=con.prepareStatement(insertsql);
			pstcourse.setString(1,acourses.getCollegename());
			pstcourse.setString(2,acourses.getCourses());
			pstcourse.setString(3,acourses.getBranch());
			pstcourse.setString(4,acourses.getNoofseats());
			pstcourse.setString(5,acourses.getBcseats());
			pstcourse.setString(6,acourses.getScseats());
			int n=pstcourse.executeUpdate();
			if(n>0)
			{
flag=true;			
			}
			return flag;
		
		}catch(Exception e)
		{
	e.printStackTrace();
}
		return flag;
	}
	
	
	public boolean updateCourses(Courses acourses)
	{
		boolean flag=false;
	
		try{
	String updatesql="update courses set noofseats=?,BCseats=?,Scseats=? where CollegeName=? and BRANCH=?";
			PreparedStatement pstcourse=con.prepareStatement(updatesql);
			pstcourse.setString(1,acourses.getNoofseats());
			pstcourse.setString(2,acourses.getBcseats());
			pstcourse.setString(3,acourses.getScseats());
			
			
			
			
			pstcourse.setString(4,acourses.getCollegename());
			pstcourse.setString(5,acourses.getBranch());
			
			int n=pstcourse.executeUpdate();
			if(n>0)
			{
flag=true;			
			}
			return flag;
		
		}catch(Exception e)
		{
	e.printStackTrace();
}
		return flag;
	}

	public CoreHash viewCourses(Courses acourses)
	{
		CoreHash acorehash=new CoreHash();
	
	
		try{
	String selectsql="select * from  courses  where collegename=?";
			PreparedStatement pstcourse=con.prepareStatement(selectsql);
			pstcourse.setString(1,acourses.getCollegename());
			ResultSet rs=pstcourse.executeQuery();
			Courses acourses1=null;
			int i=0;
			while(rs.next())
			{
				acourses1=new Courses();
				
				acourses1.setCollegename(rs.getString(1));
				acourses1.setCourses(rs.getString(2));
				acourses1.setBranch(rs.getString(3));
				acourses1.setNoofseats(rs.getString(4));
				acourses1.setBcseats(rs.getString(5));
				acourses1.setScseats(rs.getString(6));
				
				acorehash.put(new Integer(i),acourses1);
				i++;
			}
			return acorehash;
}catch(Exception e)
			{
				e.printStackTrace();
				
			}
			return acorehash;

}
	
	public CoreHash viewAllCourses()
	{
		CoreHash acorehash=new CoreHash();
	
	
		try{
	String selectsql="select * from  courses";
			PreparedStatement pstcourse=con.prepareStatement(selectsql);
			ResultSet rs=pstcourse.executeQuery();
			Courses acourses1=null;
			int i=0;
			while(rs.next())
			{
				acourses1=new Courses();
				
				acourses1.setCollegename(rs.getString(1));
				acourses1.setCourses(rs.getString(2));
				acourses1.setBranch(rs.getString(3));
				acourses1.setNoofseats(rs.getString(4));
				acourses1.setBcseats(rs.getString(5));
				acourses1.setScseats(rs.getString(6));
				
				acorehash.put(new Integer(i),acourses1);
				i++;
			}
			return acorehash;
}catch(Exception e)
			{
				e.printStackTrace();
				
			}
			return acorehash;

}	

	
	public boolean deleteCourses(String coursename,String collegename)
{
		boolean flag=false;
		PreparedStatement pstcourses=null;
		try
		{
			String deletesql="delete from courses where collegename=? and branch=?";
			pstcourses=con.prepareStatement(deletesql);
		pstcourses.setString(1,collegename);
		pstcourses.setString(2,coursename);
		
		int n=pstcourses.executeUpdate();
	if(n>0)	
	{
		flag=true;
	}
	return flag;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return flag;
			}
}

package com.dts.uas.dao;
import java.sql.*;
import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.uas.model.*;
import com.dts.core.util.*;
public class CollegesDAO extends AbstractDataAccessObject
{
	Connection con=null;
	public CollegesDAO()
	{
		con=getConnection();
		
		
	}
	public boolean addColleges(College acollege)
	{
		PreparedStatement pst=null;
		boolean flag=false;
		try{
			String insertsql="insert into colleges values(?,?,?,?,?,?)";
			 pst=con.prepareStatement(insertsql);
			int n=getSequenceID("colleges","sno");
			pst.setInt(1,n);
			pst.setString(2,acollege.getCollegename());
			pst.setString(3,acollege.getUniversity());
			pst.setString(4,acollege.getCity());
			pst.setString(5,acollege.getState());
			pst.setString(6,acollege.getCountry());	
			int n1=pst.executeUpdate();
	if(n1>0)
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
	
	public boolean deleteColleges(College acollege)
	{
		PreparedStatement pst=null;
		boolean flag=false;
		try{
			String insertsql="delete from  colleges where CollegeName=? and University=?";
			 pst=con.prepareStatement(insertsql);
			
			pst.setString(1,acollege.getCollegename());
			pst.setString(2,acollege.getUniversity());
			int n1=pst.executeUpdate();
	if(n1>0)
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
			
	public CoreHash viewColleges()
	{
		PreparedStatement pst=null;
		College acollege=null;
		
		CoreHash acorehash=new CoreHash();
		try{
			String insertsql="Select * from colleges";
			 pst=con.prepareStatement(insertsql);
					ResultSet rs=pst.executeQuery();
				
					
					int i=0;
					while(rs.next())
					{
						acollege=new College();
						acollege.setSid(rs.getInt(1));
						
						
						acollege.setCollegename(rs.getString(2));
						acollege.setUniversity(rs.getString(3));
						acollege.setCity(rs.getString(4));
						acollege.setState(rs.getString(5));
						acollege.setCountry(rs.getString(6));
						acorehash.put(new Integer(i),acollege);
						i++;
					}
					return acorehash;
		}catch(Exception e)
					{
						e.printStackTrace();
						
					}
					return acorehash;
	
}
	public CoreHash viewUnivercityColleges(String university)
	{
		PreparedStatement pst=null;
		College acollege=null;
		
		CoreHash acorehash=new CoreHash();
		try{
			String insertsql="Select * from colleges where university=?";
			 pst=con.prepareStatement(insertsql);
			 pst.setString(1,university);
					ResultSet rs=pst.executeQuery();
					int i=0;
					while(rs.next())
					{
						acollege=new College();
						acollege.setSid(rs.getInt(1));
						
						
						acollege.setCollegename(rs.getString(2));
						acollege.setUniversity(rs.getString(3));
						acollege.setCity(rs.getString(4));
						acollege.setState(rs.getString(5));
						acollege.setCountry(rs.getString(6));
						acorehash.put(new Integer(i),acollege);
					}
					return acorehash;
		}catch(Exception e)
					{
						e.printStackTrace();
						
					}
					return acorehash;
	
}
}
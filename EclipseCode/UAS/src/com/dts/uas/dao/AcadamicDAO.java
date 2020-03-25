package com.dts.uas.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.LoggerManager;
import com.dts.uas.model.Acadamic;

public class AcadamicDAO extends AbstractDataAccessObject{
  
	Connection con;
	public AcadamicDAO()
	{
		con=getConnection();
	}
	
	//Registering acadamic details
/*this is written adi*/
	public boolean registerAcadamicDetails(Acadamic adto)
	{
		Statement st;
		boolean flag = false;
		
		try {
              String loginname = adto.getLoginname();
              String sscreg = adto.getSscreg();
                String yearofpass1 = adto.getYearofpass1();
              double percentage1 = adto.getPercentage1();
              String ugreg = adto.getUgreg();
              String yearofpass2 = adto.getYearofpass2();
              double percentage2 = adto.getPercentage2();
              String greg = adto.getGreg();
              String yearofpass3 = adto.getYearofpass3();
              double percentage3 = adto.getPercentage3();
              String course = adto.getCourse();
              String discipline = adto.getDiscipline();
             String subject=adto.getSubject();
              PreparedStatement pst = con.prepareStatement("insert into UASACADEMICDETAILS values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
              
              pst.setString(1,loginname);
              pst.setString(2,sscreg);
              pst.setString(3, yearofpass1);
              pst.setDouble(4, percentage1);
              pst.setString(5, ugreg);
              pst.setString(6, yearofpass2);
              pst.setDouble(7, percentage2);
              pst.setString(8, greg);
              pst.setString(9, yearofpass3);
              pst.setDouble(10, percentage3);
              pst.setString(11, course);
              pst.setString(12, discipline);
              pst.setString(13,subject);

              int i=pst.executeUpdate();
              
              if(i!=0)
              {
            	      st=con.createStatement();
                      st.executeUpdate("Update logindetails set firstlogin=0 where loginname='"+loginname+"'");
                      flag=true; 
           	  
              }
              else
            	  flag=false;
              
              
		} catch (SQLException e) {
			flag=false;
			LoggerManager.writeLogSevere(e);
		}
		return flag;
	}
	
	//checking acadamic details
	public boolean checkAcadamicDetails(String loginname)
	{
		Statement st;
		boolean flag = false;
		try {
			st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from UASACADAMICDETAILS where loginname='"+loginname+"'");
			if(rs.next())
				flag = true;
				
		} catch (SQLException e) {
			LoggerManager.writeLogSevere(e);
		}
		return flag;
	}
	
	//get Acadamic details
	
	public Acadamic getAcademicDetails(String loginname)  
	{
		Acadamic acdto=null;
		try
		{
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select sscreg,sscyop,sscpercentage,ugreg,ugyop,ugpercentage," +
					"greg,gyop,gpercentage,course,descipline " +
					"from UASACADEMICDETAILS where loginname='"+loginname+"' and status ='Accepted'"); 
			if(rs.next())
			{
				acdto = new Acadamic();
				acdto.setSscreg(rs.getString(1));
			    acdto.setYearofpass1(rs.getString(2));
			    acdto.setPercentage1(rs.getDouble(3));
			    acdto.setUgreg(rs.getString(4));
			    acdto.setYearofpass2(rs.getString(5));
			    acdto.setPercentage2(rs.getDouble(6));
			    acdto.setGreg(rs.getString(7));
			    acdto.setYearofpass3(rs.getString(8));
			    acdto.setPercentage3(rs.getDouble(9));
			    acdto.setCourse(rs.getString(10));
			    acdto.setDiscipline(rs.getString(11));
			    acdto.setLoginname(loginname);
			}
		}
		catch(SQLException sqx)
		{
			sqx.printStackTrace();
			LoggerManager.writeLogSevere(sqx);
		}
		return acdto;
	}
	
	//Updating acadamic details
	public boolean updateAcadamicDetails(Acadamic adto)
	{
		Statement st;
		boolean flag = false;
		
		try {
			String loginname = adto.getLoginname();
			String sscreg = adto.getSscreg();
            String yearofpass1 = adto.getYearofpass1();
            double percentage1 = adto.getPercentage1();
            String ugreg = adto.getUgreg();
            String yearofpass2 = adto.getYearofpass2();
            double percentage2 = adto.getPercentage2();
            String greg = adto.getGreg();
            String yearofpass3 = adto.getYearofpass3();
            double percentage3 = adto.getPercentage3();
            String course = adto.getCourse();
            String discipline = adto.getDiscipline();
            
              
              PreparedStatement pst = con.prepareStatement("update UASACADEMICDETAILS set sscreg=?,sscyop=?,sscpercentage=?,ugreg=?,ugyop=?,ugpercentage=?,greg=?,gyop=?,gpercentage=?,course=?,discipline=? where loginname=?");
              
              pst.setString(1, sscreg);
              pst.setString(2, yearofpass1);
              pst.setDouble(3, percentage1);
              pst.setString(4, ugreg);
              pst.setString(5, yearofpass2);
              pst.setDouble(6, percentage2);
              pst.setString(7, greg);
              pst.setString(8, yearofpass3);
              pst.setDouble(9, percentage3);
              pst.setString(10, course);
              pst.setString(11, discipline);
              pst.setString(12, loginname);
              
              int i=pst.executeUpdate();
              if(i!=0)
              {
            	  flag = true;
              }
		}
		catch(Exception e)
		{
			LoggerManager.writeLogSevere(e);
		}
		return flag;
	}
	
	//Accept/reject details
	public boolean acceptorreject(String loginname,int status)
	{
		Statement st;
		boolean flag = false;
		try {
			st = con.createStatement();
		    int i = st.executeUpdate("update UASACADEMICDETAILS set status="+status+" where loginname='"+loginname+"'");
			if(i>0)
				flag = true;
				
		} catch (SQLException e) {
			LoggerManager.writeLogSevere(e);
		}
		return flag;
	}
	/* this is written adi*/
	public boolean checkLoginAdmin(String name,String pass)
	{
		
	boolean flag=false;
		try
		{
			String adminssql="select * from admin where loginname=? and password=?";
			PreparedStatement pstAdmin=con.prepareStatement(adminssql);
			pstAdmin.setString(1,name);
			pstAdmin.setString(2,pass);
			ResultSet rs=pstAdmin.executeQuery();
			while(rs.next())
			{
				flag=true;
			}
			
			return flag;
		}
		catch(SQLException se)
		{
			LoggerManager.writeLogSevere(se);
		}
		return flag;
	}
	
	public String getSubject(String loginname)
	{
		String subject="";
		try{
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select status from UASACADEMICDETAILS where loginname='"+loginname+"'");
			while(rs.next())
			{
			subject=rs.getString(1);	
			System.out.println("this is academicdao"+subject);
			}
			return subject;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return subject;
		
		}
	
}

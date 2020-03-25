package com.dts.uas.dao;

import com.dts.uas.model.Profile1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Hashtable;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.LoggerManager;
import com.dts.dae.model.Profile;

public class EnterMarksDAO extends AbstractDataAccessObject{
	
	public Connection con;
	//Getting profiles}
    boolean flag;
    int n;;
    String desc;
    public EnterMarksDAO() 
    {
       
               //getting Database Connection
    	con=getConnection();
               
    }
	 public int enterMarks(Profile regbean)
	    {
	        String hno=regbean.getHno();
	        String sub1=regbean.getSub1();
	        String sub3=regbean.getSub3();
	        String sub2=regbean.getSub2();
	        //String password=regbean.getPassword();
	       // String role="";        
	        try
	        {
	        	PreparedStatement pst=con.prepareStatement("insert into  marks values(?,?,?,?)");
	            pst.setString(1,hno);
	            pst.setString(2,sub1);
	            pst.setString(3,sub2);
	            pst.setString(4,sub3);
	           
	            n= pst.executeUpdate();
	          
	        	flag=true;
	            if(n==1)
	            {
	                /*Statement st=con.createStatement();
	                st.executeUpdate("Update login_details set firstlogin=1 where loginname='"+loginid+"'");*/
	      return n;
	             
	            }
	            else
	            {
	                flag=false;
	                desc="Entered Invalid hno";
	            }
	            
	        }
	        catch (SQLException ex) 
	        {
	        	LoggerManager.writeLogSevere(ex);
	            desc="Database Connection problem";
	            flag=false;
	        }
	        
	        return n;
	    }
	 public Profile getMarks(Profile regbean)
	    {
		 String hno=regbean.getHno();
		 Statement st;
			
			try {
				st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from marks where hno='"+hno+"'");
				if(rs.next()){
				regbean.setSub1(rs.getString(2));
				regbean.setSub2(rs.getString(3));
				regbean.setSub3(rs.getString(4));
				
					
				}
			} catch (SQLException e) {
				LoggerManager.writeLogSevere(e);
			}
			return regbean;
		}
/* this is written adi*/
	 public String issueHallTicket(String loginname)
	 {
		  	String loginstatus="";
		  try{
			
			PreparedStatement stLoginDetails=con.prepareStatement("select ld.loginstatus from logindetails ld,loginprofile lp where ld.loginname=lp.loginid and ld.loginname=?");
			stLoginDetails.setString(1,loginname);   
			ResultSet rs=stLoginDetails.executeQuery();		
		 
			 while(rs.next())
			 {
				loginstatus=rs.getString(1);
		        
			 }
			 return loginstatus;
		 }catch(Exception e)
		 {
			 System.out.println(e);
		 }
		 return loginstatus;
			 
		 
	 }

	 }
	    
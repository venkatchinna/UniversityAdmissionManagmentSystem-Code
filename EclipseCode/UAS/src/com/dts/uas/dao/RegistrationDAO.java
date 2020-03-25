package com.dts.uas.dao;

import com.dts.uas.model.Profile1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Hashtable;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.LoggerManager;
import com.dts.dae.model.Profile;

public class RegistrationDAO extends AbstractDataAccessObject{
	
	public Connection con;
	public RegistrationDAO()
	{
		con=getConnection();
        
	}
	//Getting profiles
/*this is written adi*/
	public CoreHash getAcceptedProfiles()
    {
        Profile rb=null;
        CoreHash aCoreHash = new CoreHash();
       try{ String ssql="select ld.loginname,ld.firstname,ld.lastname,lp.birthdate,lp.city,lp.state,lp.country from logindetails ld,loginprofile lp where ld.loginname=lp.loginid";
        
    	Statement  pstlogindetails= con.createStatement();
       ResultSet loginresult= pstlogindetails.executeQuery(ssql);
     
       int i=0;
       
       while(loginresult.next())
       {
    	   rb=new Profile();
    	   rb.setLoginID(loginresult.getString(1));
    	   rb.setFirstName(loginresult.getString(2));
    	   rb.setLastName(loginresult.getString(3));
    	   rb.setBirthDate1(loginresult.getDate(4));
    	   rb.setCity(loginresult.getString(5));
    	   rb.setState(loginresult.getString(6));
    	   rb.setCountry(loginresult.getString(7));
    	   aCoreHash.put(new Integer(i), rb);
    	   
    	   
    	   i++;
    	   
       }
       con.close();
    }
    catch(Exception e)
    {
    	System.out.println(e);
    	}
    return aCoreHash;
}


    
    public void issueHallticket(String loginname,int hallticketno)
    {
    	try
    	{
    		con = getConnection();
    		PreparedStatement pst = con.prepareStatement("insert into halltickets1 values(?,?)");
            
            pst.setString(1, loginname);
            pst.setInt(2, hallticketno);
            
            pst.executeUpdate();
            
            
    	}
    	catch(Exception e)
    	{
    		LoggerManager.writeLogWarning(e);
    	}
    }
    
    public int getHallticketID()
    {
    	int hallno =0;
    	try
    	{
    		con = getConnection();
    		Statement st = con.createStatement();
    		ResultSet rs = st.executeQuery("select max(HallticketNo)+1 from halltickets1");
    		if(rs.next())
    			hallno = rs.getInt(1);
    			
    	}
    	catch(Exception e)
    	{
    		
    	}
    	return hallno;
    }
    public String getStatus(String loginname)
    {
    	String status="";
    	try{
    		Statement st=con.createStatement();
    		ResultSet rs=st.executeQuery("select loginstatus from logindetails where loginname='"+loginname+"'");
    	while(rs.next())
    	{
    		status=rs.getString(1);
    		}
    	return status;
    	}catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return status;
    	}
    	
    	
    	
     
    /* this is written adi*/
	public CoreHash	getExamSchdule()
    {

		Profile1 rb=null;
       CoreHash aCoreHash = new  CoreHash();
        try{
        Statement stShduleExam=con.createStatement();
        ResultSet rsScduleExam=stShduleExam.executeQuery("select * from schduleExam");
          int i=0;    
        while(rsScduleExam.next())
        { 
        	rb=new Profile1();
        	rb.setSubject(rsScduleExam.getString(1));
        	rb.setExamDate(rsScduleExam.getDate(2));
        	rb.setCenter(rsScduleExam.getString(3));
        	rb.setCity(rsScduleExam.getString(4));
        	rb.setTime(rsScduleExam.getString(5));
        	rb.setOuttime(rsScduleExam.getString(6));
        aCoreHash.put(new Integer(i),rb);
         i++;
         }
        }catch(Exception e)
        {
        	System.out.println(e);
        }
        return aCoreHash;

    }
	 /* this is written adi*/
    
    public CoreHash getAcceptedStudents()
    {
		Profile rb=null;
     CoreHash aCoreHash = new CoreHash();
	   try
        {
        	Statement stuasacademicdetails=con.createStatement();
			Statement sthalltickets=con.createStatement();
        	ResultSet rsuasacademicdetails=stuasacademicdetails.executeQuery("select ld.loginname,ld.firstname,ld.lastname,lp.birthdate,lp.city,lp.state,lp.country,uas.sscpercentage,uas.ugpercentage,uas.gpercentage  from logindetails ld,loginprofile lp,uasacademicdetails uas where ld.loginname=lp.loginid and ld.loginname=uas.loginname and uas.sscpercentage>=60 and uas.ugpercentage>=60");
			   int i=0;
				Statement pstLoginDetails=con.createStatement();
			    Statement st4=con.createStatement();
	           while(rsuasacademicdetails.next())
	           {
	        	   rb=new Profile();
	        	   String loginid=rsuasacademicdetails.getString(1);
	        	   rb.setLoginID("this is loginid"+loginid);
	        	   System.out.println(loginid);
	          rb.setFirstName(rsuasacademicdetails.getString(2));
	        	   rb.setLastName(rsuasacademicdetails.getString(3));
	        	   rb.setBirthDate1(rsuasacademicdetails.getDate(4));
	        	   rb.setCity(rsuasacademicdetails.getString(5));
	        	   rb.setState(rsuasacademicdetails.getString(6));
	        	   rb.setCountry(rsuasacademicdetails.getString(7));
	        	 rb.setSscpercentage(rsuasacademicdetails.getDouble(8));
	        	  rb.setUgpercentage(rsuasacademicdetails.getDouble(9));
	        	  rb.setGpercentage(rsuasacademicdetails.getDouble(10));
	        	  
	        	   aCoreHash.put(new Integer(i), rb);
	        	   int n2=  pstLoginDetails.executeUpdate("update  logindetails set loginstatus='Accepted' where loginname='"+loginid+"'");
			       System.out.println("This is n2"+n2);
	        	   if(n2>0)
			       {
	        		   ResultSet rs4=st4.executeQuery("Select * from halltickets1 where loginname='"+loginid+"'");
	        		   boolean flag=rs4.next();
	        		   if(flag)
	        		   {
	        			   System.out.println("HallTicket is already Issued");
	        		   }else{
	        		   try{
			    	   int hallticketno=getHallticketID();
			    	   sthalltickets.executeUpdate("insert into halltickets1 values("+hallticketno+",'"+loginid+"')");
			       }
			       catch(Exception e)
			       {
			    	e.printStackTrace();   
			       }
			          
			       }
			       }
	        	   i++;
	           }
	           con.close();
	        }
	        catch(Exception e)
        {
        	System.out.println(e);
        }return aCoreHash;
	
}

    /* this is written adi*/
    public CoreHash getRegectedStudents()
    {
		Profile rb=null;
     CoreHash aCoreHash = new CoreHash();
 	  
     try
        {
        	Statement stuasacademicdetails=con.createStatement();
			ResultSet rsuasacademicdetails=stuasacademicdetails.executeQuery("select ld.loginname,ld.firstname,ld.lastname,lp.birthdate,lp.city,lp.state,lp.country,uas.sscpercentage,uas.ugpercentage,uas.gpercentage  from logindetails ld,loginprofile lp,uasacademicdetails uas where ld.loginname=lp.loginid and ld.loginname=uas.loginname and uas.sscpercentage<60 and uas.ugpercentage<60");
			Statement pstLoginDetails=con.createStatement();
			
			int i=0;
	           while(rsuasacademicdetails.next())
	           {
	        	   rb=new Profile();
	        	   String loginid=rsuasacademicdetails.getString(1);
	        	   rb.setLoginID(loginid);
	        rb.setFirstName(rsuasacademicdetails.getString(2));
	        	   rb.setLastName(rsuasacademicdetails.getString(3));
	        	   rb.setBirthDate1(rsuasacademicdetails.getDate(4));
	        	   rb.setCity(rsuasacademicdetails.getString(5));
	        	   rb.setState(rsuasacademicdetails.getString(6));
	        	   rb.setCountry(rsuasacademicdetails.getString(7));
	        	 rb.setSscpercentage(rsuasacademicdetails.getDouble(8));
	        	  rb.setUgpercentage(rsuasacademicdetails.getDouble(9));
	        	  rb.setGpercentage(rsuasacademicdetails.getDouble(10));
	        	  
	        	   aCoreHash.put(new Integer(i), rb);
	        	   int n2=  pstLoginDetails.executeUpdate("update  logindetails set loginstatus='Regected' where loginname='"+loginid+"'");
			       
	        	   i++;
	           }
	           con.close();
	        }
	        catch(Exception e)
        {
        	System.out.println(e);
        }return aCoreHash;
	
}
	public CoreHash		viewExamSchdule(String subject)
    {

		Profile1 rb=null;
		CoreHash aCoreHash = new CoreHash();
        try{
        Statement stShduleExam=con.createStatement();
        ResultSet rsScduleExam=stShduleExam.executeQuery("select * from schduleExam where subject='"+subject+"'");
          int i=0;    
        while(rsScduleExam.next())
        { 
        	rb=new Profile1();
        	rb.setSubject(rsScduleExam.getString(1));
        	rb.setExamDate(rsScduleExam.getDate(2));
        	rb.setCenter(rsScduleExam.getString(3));
        	rb.setCity(rsScduleExam.getString(4));
        	rb.setTime(rsScduleExam.getString(5));
        	rb.setOuttime(rsScduleExam.getString(6));
        aCoreHash.put(new Integer(i),rb);
         i++;
         }
        return aCoreHash;
        }catch(Exception e)
        {
        	System.out.println(e);
        }
        return aCoreHash;

    }
	public int getHallTicketNo(String loginname)
	{
		PreparedStatement pst=null;
		int n=0;
		try
		{	
		
			pst=con.prepareStatement("select hs.hallticketno,hs.loginname,ld.loginname  from halltickets1 hs,Logindetails ld where ld.loginname=hs.loginname and ld.loginname=?");
		pst.setString(1,loginname);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
		n=	rs.getInt(1);	
			}
			return n;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return n;
	}
	    

	public CoreHash getHallTicketStudents()
	{
		Statement st=null;
		CoreHash acorehash=new CoreHash();
		try{
			st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from halltickets1");
			int i=0;
			Profile1 aprofile1=null;
			while(rs.next())
			{
				aprofile1=new Profile1();
				aprofile1.setHallticketno(rs.getString("hallticketno"));
				aprofile1.setLoginname(rs.getString("loginname"));
				acorehash.put(new Integer(i),aprofile1);
				i++;
			}
			return acorehash;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return acorehash;
	}
	

    
    
    
    
}

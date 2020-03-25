package com.dts.uas.model;
import java.util.*;
public class Profile1
{
	private String subject;
	private String center;
	private Date ExamDate;
	private String city;
	private String time;
	private String outtime;
	private String loginname;
	private String loginstatus;
	private String hallticketno;
	public String getHallticketno() {
		return hallticketno;
	}
	public void setHallticketno(String hallticketno) {
		this.hallticketno = hallticketno;
	}
	public String getOuttime() {
		return outtime;
	}
	public void setOuttime(String outtime) {
		this.outtime = outtime;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getCenter() {
		return center;
	}
	public void setCenter(String center) {
		this.center = center;
	}
	public Date getExamDate() {
		return ExamDate;
	}
	public void setExamDate(Date examDate) {
		ExamDate = examDate;
	}
	public String getLoginname() {
		return loginname;
	}
	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}
	public String getLoginstatus() {
		return loginstatus;
	}
	public void setLoginstatus(String loginstatus) {
		this.loginstatus = loginstatus;
	}

}

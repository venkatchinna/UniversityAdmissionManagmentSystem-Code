<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Natural Beauties by Free Css Templates</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function validate()
{
   var temp = document.register;
  
   
 
  hell();
   var v1 = temp.loginname.value;
   if(v1.charAt(0)>='0'&& v1.charAt(0)<='9')
   {
      alert("login name 1st character must be alphabet only");
      return false;
   }
   if(temp.fname.value=="" || temp.lname.value=="" || temp.bdate.value=="" || temp.loginname.value=="" || temp.password.value=="" || temp.sanswer.value=="")
   {
       alert("All Fields are manditory");
       return false;
   }
   if(temp.ch.checked && temp.ownquest.value=="")
   {
       alert("All Fields are manditory");
       return false;
   }
   return true;
}
function check()
{
    var form = document.register;
    if(!form.ch.checked){
          form.ownquest.disabled=true;
          form.squest.disabled=false;
    }
    else{
          form.ownquest.disabled=false;
          form.squest.disabled=true;
    }
}
 function hello()
 {
  var temp = document.register;
  
   
  for(int i=0;i<temp.fname.value.length();i++)
  {
   if(v.charAt(i)>='0' && v.charAt(i)<='9')
   {
      alert("name filed must contain alphabets only");
      return false;     
   }
 }
 
</script>
  <script type="text/javascript" src="scripts/general.js"> </script>
    <script language="javascript" src="scripts/ts_picker.js"></script>







</head>
<body>
<div id="header">
	<div id="logo">
		<h1><jsp:include page="header.html"/></h1>
		
  </div>
	<div id="menu">
		<ul>
		
		</ul>
	</div>
</div>

<div id="content">
	<div id="posts">
		<div class="post">
			
			<div class="meta">
				
		  </div>
<div class="story">
				
		  </div>
		</div>
		</div>
	<div id="sidebar">
		<div id="archives" class="boxed">
			<h2>REGISTERATIONFORM</h2>
			<div class="content">
				<ul><li>
				  <form action="RegisterAction.jsp" method="post" name="register" onSubmit="return validate()">
  <p align="center" class="style2"><%if(request.getParameter("status")!=null)
    {%>
    <%=request.getParameter("status")%>
    <%} %></p>
  <table width="407" border="0" align="center">
    <tr>
      <td width="128"><strong>First Name </strong></td>
      <td width="269"><input type="text" name="fname" onclick="hello()"/>      </td>
    </tr>
    <tr>
      <td><strong>Last Name </strong></td>
      <td><input type="text" name="lname"/>      </td>
    </tr>
    <tr>
      <td><strong>Birth Date </strong></td>
      <td><input type="text" name="bdate" readonly/>
        <a href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);"> <img src="images/cal.gif" alt="c" width="18" height="18" border="0"/></a> </td>
    </tr>
    <tr>
      <td><strong>City</strong></td>
      <td><select name="city">
          <option>Hyderabad</option>
          <option>Mumbai</option>
        </select>      </td>
    </tr>
    <tr>
      <td><strong>State</strong></td>
      <td><select name="state">
          <option>Andhra pradesh</option>
          <option>Maharashtra</option>
        </select>      </td>
    </tr>
    <tr>
      <td><strong>Country</strong></td>
      <td><select name="country">
          <option>India</option>
        </select>      </td>
    </tr>
    <tr>
      <td><strong>Login Name</strong></td>
      <td><input type="text" name="loginname"/>      </td>
    </tr>
    <tr>
      <td><strong>Password</strong></td>
      <td><input name="password" type="password" id="password"/>      </td>
    </tr>
    <tr>
      <td><strong> Secret Question </strong></td>
      <td><select name="squest">
          <option value="1">What is your favorite pastime?</option>
          <option value="2">Who was your childhood hero?</option>
          <option value="3">What was the name of your first school?</option>
          <option value="4">Where did you meet your spouse?</option>
          <option value="5">What is your favorite sports team?</option>
          <option value="6">What is your father's middle name?</option>
          <option value="7">What was your high school mascot?</option>
          <option value="8">What make was your first car or bike?</option>
          <option value="9">What is your pet's name?</option>
      </select></td>
    </tr>
    <tr>
      <td colspan="2"><strong>
      <input type="checkbox" name="ch" value="1" onClick="check(register)"/>
      Own Question </strong></td>
    </tr>
    <tr>
      <td><strong>Own Question</strong></td>
      <td><input type="text" name="ownquest" disabled/>      </td>
    </tr>
    <tr>
      <td><strong>Secret Answer</strong></td>     
      <td><input name="sanswer" type="text"/></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input name="Input" type="submit" value="Register" onclick="hello"/>
        <br><a href="index.jsp">Login</a> 
      </div></td>
    </tr>
  </table>
  </form>
				</li>
				</ul>
		  </div>
	  </div>
		</div>
</div>
<div id="footer"></div>
</body>
</html>

<%@ page import="java.sql.*,java.io.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by CSS Templates For Free
http://www.csstemplatesforfree.com
Released for free under a Creative Commons Attribution 2.5 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>fog computing</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>
<style type="text/css">
.a{
background-color:white;
border-color:red;
border-size:1 px;

}

#b:hover{
background-color:#CC9999;
}
</style>
<body>
<div id="header">
 <div style="position:absolute; left:40px; top:28px; width: 699px; height: 46px;"> <font color="#ffffff" size="+1"><em>
  Fog  Computing:  Mitigating  Insider  Data  Theft
Attacks in the Cloud</em></font> 
  </div>
	<div id="menu">
		
    <ul>
      <li><a href="index.html" accesskey="1" title="">Home</a></li>
      <li id="menu a"><a href="register.jsp" accesskey="2" title="">signup</a></li>
      <li><a href="admin_login.jsp" accesskey="3" title="">admin</a></li>
      <li><a href="user_login.jsp" accesskey="4" title="">user</a></li>
    
    </ul>
	</div>
	
</div>
<div id="content"> 

  <div style="position:absolute; left:28px; top:117px; width: 687px; height: 316px;"> 
  <table width="688" height="315" align="center" bgcolor="#FFFFFF" >
    <tr> 
        <td width="65" height="309">&nbsp;</td>
	  <td width="643"><table width="587" height="152" >
	  <form action="ans_check.jsp" name="f" method="get">
          <tr>
              <td height="46" colspan="9"> </td>
          </tr>
          
          
          <%
	
	
String name=(String)session.getAttribute("un");
String fname=null;


try
{
Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foxcomputing","root","root");
PreparedStatement ps=con.prepareStatement("select question from signup where name='"+name+"' ");
ResultSet rs=ps.executeQuery();
while(rs.next())
{

fname=rs.getString("question");

}


%>
          <tr > 
          
            
            <td width="257" height="40" align="center"><em><font color="#000099"><%=fname%><u></u></a></font></em></td>
			<td width="318"><a href="a_user.jsp?<%=fname%>">hint</a></td>
            
			<%


}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
          </tr>
		  <tr><td height="56" align="center" ><input type="text" name="ans"></td></tr>
		 
		    <tr><td height="56" align="center" ><input type="submit" name="s" value="submit"></td></tr>
        </form>
		</table></td>
	
	</table>
	
	
	


  </div>
</div>
<div id="footer">
	<p>Copyright (c) 2006 Sitename.com. All rights reserved. Design by <a href="http://www.csstemplatesforfree.com/">CSS Templates For Free</a>.</p>
</div>
</body>
</html>

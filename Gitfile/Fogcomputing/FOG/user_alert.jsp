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
      <li id="menu a"><a href="user_upload.jsp" accesskey="2" title="">upload</a></li>
      <li><a href="view_file.jsp" accesskey="3" title="">Myfiles</a></li>
      <li><a href="password_change.jsp"accesskey="4" title="">change password</a></li>
	        <li><a href="user_alert.jsp" accesskey="4" title="">view alert</a></li>
      <li><a href="user_login.jsp" accesskey="4" title="">signout</a></li>
    </ul>
	</div>
	
</div>
<div id="content"> 

  <div style="position:absolute; left:320px; top:177px; width: 687px; height: 316px;"> 
 <table width="720" height="304" align="center" bgcolor="#FFFFFF" >
      <tr> 
        <td height="33" colspan="2" align="center" class="image"><u><font color="#6A006A" size="3"><em><font color="#003E00" size="4" face="Courier New, Courier, mono"><strong>Data 
          Misuse</strong></font></em></font></u></td>
      </tr>
    <tr> 
        <td width="176" height="263"><img src="images/xaX.jpg" width="129" height="108"/></td>
        <td width="532"> <table width="505"  align="center"  bgcolor="#000000">
            <tr bgcolor="#009966" > 
              <td width="173" height="21" align="center"><font color="#FFFFFF" size="2">filename</font></td>
              <td width="167" align="center"><font color="#FFFFFF" size="2">Real User</font></td>
              <td width="149" align="center" ><font color="#FFFFFF" size="2">Attacker</font></td>
              
            </tr>
            <%

String fname=null;
String fid=null;
String size=null;

String name=(String)session.getAttribute("un");

try
{

Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foxcomputing","root","root");
PreparedStatement ps=con.prepareStatement("select fname,au,uau  from fileupload where uname='"+name+"'" );
ResultSet rs=ps.executeQuery();
while (rs.next())
{

fname=rs.getString(1);
fid=rs.getString(2);
size=rs.getString(3);


%>
            <tr bgcolor="#FFFFFF"> 
              <td height="20" align="center" ><strong><em><font color="#002851">
                <%=fname%>
                </font></em></strong></td>
              <td align="center"><strong><em><font color="#002851">
                <%=fid%>
                </font></em></strong></td>
              <td align="center"><strong><em><font color="#002851">
                <%=size%>
                </font></em></strong></td>
             
            </tr>
            <%


}


}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
          </table></td>
    </tr>
  </table> 
          
	
	
   
          
	


  </div>
</div>
<div id="footer">
	
  <p>&nbsp;</p>
</div>
</body>
</html>

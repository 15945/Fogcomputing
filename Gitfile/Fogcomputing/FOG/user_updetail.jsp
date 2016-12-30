<%@ page  import="java.sql.*"  %>
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
      <li><a href="user_details.jsp" accesskey="1" title="">user detail</a></li>
      <li id="menu a"><a href="user_updetail.jsp" accesskey="2" title="">upload detail</a></li>
      <li><a href="user_login.jsp" accesskey="3" title="">logout</a></li>
      
    </ul>
	</div>
	
</div>
<div id="content"> 
<div style="position:absolute; left:330px; top:100px; width: 687px; height: 314px;"> 
  <table width="720" height="311" align="center" bgcolor="#FFFFFF" >
      <tr> 
        <td height="40" colspan="2" align="center" class="image"><u><font color="#FF0404" size="3"><em><font color="#6A006A"><strong>fileupload 
          details</strong></font></em></font></u></td>
      </tr>
    <tr> 
        <td width="150" height="263"><img src="images/h.jpg" width="193" height="160"/></td>
        <td width="534">
		<table width="432"  align="center"  bgcolor="#000000">
         
            <tr bgcolor="#333333" > 
              <td width="103" height="21" align="center"><font color="#FFFFFF" size="2">username</font></td>
                         <td width="103" height="21" align="center"><font color="#FFFFFF" size="2">filename</font></td>
			  <td width="104" align="center"><font color="#FFFFFF" size="2">fid</font></td>
              <td width="122" align="center" ><font color="#FFFFFF" size="2">size</font></td>
              <td width="83" align="center" ><font color="#FFFFFF" size="2">date</font></td>
          </tr>
          <%
String uname=null;
String fname=null;
String fid=null;
String size=null;
String date=null;


try
{

Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foxcomputing","root","root");
PreparedStatement ps=con.prepareStatement("select uname,fname,fid,size,date from fileupload" );
ResultSet rs=ps.executeQuery();
while (rs.next())
{
uname=rs.getString(1);
fname=rs.getString(2);
fid=rs.getString(3);
size=rs.getString(4);
date=rs.getString(5);

%>
          <tr bgcolor="#FFFFFF"> 
              <td height="20" align="center"><strong><em><font color="#002851">
                <%=uname%>
                </font></em></strong></td>
            <td align="center"><strong><em><font color="#002851"><%=fname%></font></em></strong></td>
            <td align="center"><strong><em><font color="#002851"><%=fid%></font></em></strong></td>
            <td align="center"><strong><em><font color="#002851"><%=size%></font></em></strong></td>
			       <td align="center"><strong><em><font color="#002851"><%=date%></font></em></strong></td>
          </tr>
          <%


}


}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
        </table>
		
		
		 </td>
    </tr>
  </table>
  </div>
</div>
<div id="footer">
	
  <p>&nbsp;</p>
</div>
</body>
</html>
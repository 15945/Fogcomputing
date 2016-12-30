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
<div style="position:absolute; left:318px; top:150px; width: 687px; height: 314px;"> 
  <table width="720" height="311" align="center" bgcolor="#FFFFFF" >
  <tr>
        <td height="40" colspan="2" align="center" class="image"><u><font color="#FF0404" size="3"><em><font color="#6A006A"><strong>USER 
          DETAILS</strong></font></em></font></u></td>
      </tr>
    <tr> 
        <td width="116" height="263"><img src="images/admin4.jpg" width="198" height="142"/></td>
        <td width="592">
		<table width="496"  align="center"  bgcolor="#000000">
         
            <tr bgcolor="#333333" > 
              <td width="63" height="30" align="center"><font color="#FFFFFF" size="2">name</font></td>
              <td width="67" align="center"><font color="#FFFFFF" size="2">email</font></td>
              <td width="69" align="center" ><font color="#FFFFFF" size="2">mobile</font></td>
              <td width="94" align="center" ><font color="#FFFFFF" size="2">address</font></td>
          
		   <td width="75" align="center" ><font color="#FFFFFF" size="2">start time</font></td>
		    <td width="100" align="center" ><font color="#FFFFFF" size="2">end time</font></td>
		  
		  </tr>
          <%
String name=null;
String email=null;
String mobile=null;
String address=null;
String st=null;
String et=null;


try
{

Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foxcomputing","root","root");
PreparedStatement ps=con.prepareStatement("select name,email,mobile,address,from1,to1 from signup" );
ResultSet rs=ps.executeQuery();
while (rs.next())
{
name=rs.getString(1);
email=rs.getString(2);
mobile=rs.getString(3);
address=rs.getString(4);
st=rs.getString(5);
et=rs.getString(6);


%>
          <tr bgcolor="#FFFFFF" align="center"> 
              <td height="31" align="center"><strong><em><font color="#008400">
                <%=name%>
                </font></em></strong></td>
            <td align="center"><strong><em><font color="#008400"><%=email%></font></em></strong></td>
            <td align="center"><strong><em><font color="#008400"><%=mobile%></font></em></strong></td>
            <td align="center"><strong><em><font color="#008400"><%=address%></font></em></strong></td>
                      <td align="center"><strong><em><font color="#008400"><%=st%></font></em></strong></td>
					              <td align="center"><strong><em><font color="#008400"><%=et%></font></em></strong></td>
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
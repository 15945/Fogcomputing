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
.button {
	background:#25A6E1;
	background:-moz-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#25A6E1),color-stop(100%,#188BC0));
	background:-webkit-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-o-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:-ms-linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	background:linear-gradient(top,#25A6E1 0%,#188BC0 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
	padding:4px10px;
	color:#FFFFFF;
	font-family:'Helvetica Neue',sans-serif;
	font-size:15px;
	border-radius:4px;
	-moz-border-radius:4px;
	-webkit-border-radius:4px;
	border:1px solid #1A87B9
}
</style>
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

  <div style="position:absolute; left:298px; top:211px; width: 749px; height: 316px;"> 
  <table width="735" height="318" align="center" bgcolor="#FFFFFF" >
  <tr>
 <td height="39" colspan="3" align="center" class="image"><u><font color="#6A006A" size="3"><em><font color="#003E00" size="4" face="Courier New, Courier, mono"><strong>security question
         </strong></font></em></font></u></td>
      </tr>
    <tr> 
        <td width="180" height="271">&nbsp;</td>
	    <td width="280"><table width="280" height="171" background="images/img04.jpg" >
            <form action="aa.jsp" name="f" method="get">
              <%
	
	String fid=request.getQueryString();
	session.setAttribute("fid",fid);
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
                <td width="272" height="46" align="center"><font size="4"><strong><em><font color="#800040"> 
                  <font size="2">1. 
                  <%=fname%>
                  </font> </font></em></strong></font></td>
                <%


}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
              </tr>
              <tr> 
                <td height="69" align="center" ><font size="4"><strong> 
                  <input type="text" name="ans" class="a" />
                  </strong></font></td>
              </tr>
              <tr> 
                <td height="46" align="center" ><font size="4"><strong> 
                  <input type="submit" name="s" value="submit" class="button"/>
                  </strong></font></td>
              </tr>
            </form>
          </table></td>
		  
        <td width="259"><img src="images/sss.jpg" width="203" height="156"/></td>
		  </tr>
	
	</table>
	
	
	


  </div>
</div>
<div id="footer">
	
  <p>&nbsp;</p>
</div>
</body>
</html>

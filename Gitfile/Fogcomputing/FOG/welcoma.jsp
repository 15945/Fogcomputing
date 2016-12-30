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
<div style="position:absolute; left:118px; top:116px; width: 687px; height: 314px;"> 
 <strong>Welcome to <%=session.getAttribute("un")%></strong>  </div>
</div>
<div id="footer">
	
  <p>&nbsp;</p>
</div>
</body>
</html>
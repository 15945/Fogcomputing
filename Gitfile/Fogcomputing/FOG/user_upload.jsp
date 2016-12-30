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
<script type="text/javascript">
function validation()
{
var a=document.ff.fn.value;

var c=document.ff.file1.value;
if(a=="")
{
alert("enter your file name");
document.ff.fn.focus();
return false;
}

if(c=="")
{
alert("plese select your file");
document.ff.file1.focus();
return false;
}
}
</script>
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
	 
	      <li><a href="user_alert.jsp" accesskey="4" title=""> view alert</a></li>
      <li><a href="user_login.jsp" accesskey="4" title="">Signout</a></li>
	
   
    </ul>
	</div>
	
</div>
<div id="content"> 
<div style="position:absolute; left:320px; top:217px; width: 687px; height: 316px;"> 
    <table width="720" height="315" align="center" bgcolor="#FFFFFF" >
    <tr> 
        <td width="225" height="309"><img src="images/clo.jpeg"/></td>
        <td width="483"><table width="348" height="234" align="center" >
        
        <!--     <form action="file_insert.jsp" method="post" enctype="multipart/form-data" name="ff" onsubmit="return validation()" > -->  
          <form method="post" action="uploadServlet" enctype="multipart/form-data" name="ff" onsubmit="return validation()" >
              <tr> 
                <td height="50" colspan="2" align="center"><font color="#CC0033"><strong><font color="#663366"><em><font size="4">Fileupload 
                  </font> </em> </font></strong></font></td>
              </tr>
              <tr> 
                <td width="117" height="36"><font color="#FFFFFF"><em><font color="#663333"><strong><font color="#400040">Filename:</font></strong></font></em></font></td>
                <td width="219"><input type="text" name="fn" class="a" /></td>
              </tr>
              <tr> 
                <td height="43"><em><font color="#663333"><strong><font color="#400040">File 
                  id:</font></strong></font></em></td>
                <td width="219"> <input type="text"  class="a"  name="fid"  value=" <%= (int) (Math.random() * 1000) %>" /></td>
              </tr>
              <tr> 
                <td height="46"><em><font color="#663333"><strong><font color="#400040">Choose 
                  file</font></strong></font></em></td>
                <td width="219"><input type="file" name="file1" class="a" /></td>
              </tr>
              <tr> 
                <td height="45" colspan="2" align="center"><input type="submit" name="submit1" class="button" value="upload"  /></td>
              </tr>
            </form>
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


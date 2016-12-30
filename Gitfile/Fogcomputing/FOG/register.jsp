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
border-color:white;
border-size:1 px;

}

#b:hover{
background-color:#CC9999;
}
</style>
<script type="text/javascript">
function validation1()
{
var a=document.form1.n.value;
var b=document.form1.p.value;
var c=document.form1.cp.value;
var m=document.form1.em.value;
var d=document.form1.mn.value;
var e=document.form1.ad.value;
var f=document.form1.f.value;
var g=document.form1.t.value;
//var h=document.form1.q.value;
var i=document.form1.an.value;
var passw=  /^[A-Za-z]\w{7,14}$/; 

if(a=="")
{
alert("enter name");
document.form1.n.focus();
return false;
}
if(b=="")
{
alert("enter ur password");
document.form1.p.focus();
return false;
}else {
if(passw.test(b.value)))   
{   
//alert('Correct, try another...')  
document.form1.p.focus();
return true;  
}  
else  
{   
alert('Password should contain 7 to 15 characters which contain only characters, numeric digits, underscore and first character must be a letter')  
document.form1.p.focus();
return false;
} 
}
if(c=="")
{
alert("enter ur conform password");
document.form1.cp.focus();
return false;
}
if(c!=b)
{
alert("password incorrect");
document.form1.cp.focus();
return false;
}
var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var m=emailfilter.test(document.form1.em.value);
if(m==false)
{
alert("Please enter a valid Email Id");
document.form1.em.focus();
return false;
}
if(d=="")
{
alert("enter your mobile number");
document.form1.mn.focus();
return false;
}
if(isNaN(d))
{
alert("enter digits");
document.form1.mn.focus();
return false;
}
if((d.length>10)||(d.length<10))
{
alert("enter 10 digit number");
document.form1.mn.focus();
return false;
}
if(e=="")
{
alert("enter ur address");
document.form1.ad.focus();
return false;
}
if(g<f)
{
alert("please choose correct time");
}
if(document.form1.q.selectedIndex==0)
{
alert("Please select your security question.");

return false;
}
if(i=="")
{
alert("enter your answer");
document.form1.an.focus();
return false;
}
}

</script>

<body>
<div id="header">
 <div style="position:absolute; left:40px; top:20px; width: 699px; height: 46px;"> <font color="#ffffff" size="+1"><em>
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
<div style="position:absolute; left:280px; top:218px; width: 737px; height: 416px; align="center"> 
<div id="content"> 
  <table width="743" height="321" align="center" bgcolor="#FFFFFF" >
    <form action="reg_insert.jsp" name="form1" method="get" onsubmit="CheckPassword(document.form1.p.value);return validation1();">
    <tr> 
        <td width="203" height="309"><img src="images/re.jpg" width="181" height="175"/></td>
      <td width="528" align="left"> <table width="469" align="center" >
        
              <tr> 
                <td height="41" colspan="2" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;<font color="#FFFFFF" size="4"><strong><em><font color="#660033" size="2">Registeration</font></em></strong></font></td>
            </tr>
            <tr> 
                <td width="186" height="24"><font color="#FFFFFF"><em><font color="#990033"> 
                  <font color="#FFFFFF" size="2"><strong><font color="#000000">Name</font></strong></font></font></em></font></td>
              <td width="271"><input type="text" name="n" size="18" class="a" /></td>
            </tr>
            <tr> 
                <td height="24"><em><font color="#FFFFFF" size="2"><strong><font color="#000000">Password:</font></strong></font></em></td>
              <td width="271"><input type="password" name="p" size="18" class="a" /></td>
            </tr>
            <tr> 
                <td width="186" height="34"><font color="#FFFFFF"><em><font color="#990033"> 
                  <font color="#FFFFFF" size="2"><strong><font color="#000000">Conform 
                  password</font></strong></font></font></em></font></td>
              <td width="271"><input type="password" name="cp" size="18" class="a" /></td>
            </tr>
            <tr> 
                <td height="24"><em><font color="#FFFFFF" size="2"><strong><font color="#000000">Email 
                  id:</font></strong></font></em></td>
              <td width="271"><input type="text" name="em" size="18" class="a" /></td>
            </tr>
            <tr> 
                <td height="29"><em><font color="#FFFFFF" size="2"><strong><font color="#000000">Mobile 
                  no:</font></strong></font></em></td>
              <td width="271"><input type="text" name="mn" size="18" class="a" /></td>
            </tr>
            <tr> 
                <td height="32"><em><font color="#FFFFFF" size="2"><strong><font color="#000000">Address:</font></strong></font></em></td>
              <td width="271"><input type="text" name="ad" size="18" class="a" /></td>
            </tr>
            <tr> 
                <td><font color="#FFFFFF" size="2"><strong><em><font color="#000000">Time:</font></em></strong></font></td>
                <td><font color="#0066CC"><font color="#660033" ><em>From</em></font><em><font color="#663333">:</font></em></font> 
                  <select name="f" class="a">
                    <option value="01:00:00"> 1</option>
                    <option value="02:00:00"> 2</option>
                    <option value="03:00:00"> 3</option>
                    <option value="04:00:00"> 4</option>
                    <option value="05:00:00"> 5</option>
                    <option value="06:00:00"> 6</option>
                    <option value="07:00:00"> 7</option>
                    <option value="08:00:00"> 8</option>
                    <option value="09:00:00"> 9</option>
                    <option value="10:00:00"> 10</option>
                    <option value="11:00:00"> 11</option>
                    <option value="12:00:00"> 12</option>
                    <option value="13:00:00"> 13</option>
                    <option value="14:00:00"> 14</option>
                    <option value="15:00:00"> 15</option>
                    <option value="16:00:00"> 16</option>
                    <option value="17:00:00"> 17</option>
                    <option value="18:00:00"> 18</option>
                    <option value="19:00:00"> 19</option>
                    <option value="20:00:00"> 20</option>
                    <option value="21:00:00"> 21</option>
                    <option value="22:00:00"> 22</option>
                    <option value="23:00:00"> 23</option>
                    <option value="24:00:00"> 24</option>
                  </select>
                  &nbsp; &nbsp;&nbsp;&nbsp;<font color="#993333">&nbsp;&nbsp;&nbsp;<font color="#0099CC">&nbsp;<font color="#660033" ><em>To:</em></font></font></font> 
                  <select name="t" class="a">
                    <option value="01:00:00"> 1</option>
                    <option value="02:00:00"> 2</option>
                    <option value="03:00:00"> 3</option>
                    <option value="04:00:00"> 4</option>
                    <option value="05:00:00"> 5</option>
                    <option value="06:00:00"> 6</option>
                    <option value="07:00:00"> 7</option>
                    <option value="08:00:00"> 8</option>
                    <option value="09:00:00"> 9</option>
                    <option value="10:00:00"> 10</option>
                    <option value="11:00:00"> 11</option>
                    <option value="12:00:00"> 12</option>
                    <option value="13:00:00"> 13</option>
                    <option value="14:00:00"> 14</option>
                    <option value="15:00:00"> 15</option>
                    <option value="16:00:00"> 16</option>
                    <option value="17:00:00"> 17</option>
                    <option value="18:00:00"> 18</option>
                    <option value="19:00:00"> 19</option>
                    <option value="20:00:00"> 20</option>
                    <option value="21:00:00"> 21</option>
                    <option value="22:00:00"> 22</option>
                    <option value="23:00:00"> 23</option>
                    <option value="24:00:00"> 24</option>
                  </select></td>
            </tr>
            <tr> 
                <td height="31"><em><font color="#FFFFFF" size="2"><strong><font color="#000000">Security 
                  questions:</font></strong></font></em></td>
                <td width="271"><em>
                  <select name="q" class="a">
                    <option ><font size="1">------choose your question------ </font></option>
                    <option> When was the first time (year) you used Google?</option>
                    <option>What is your favorite movie?</option>
                    <option> What was your favorite place to visit as a child?</option>
                  </select>
                  </em></td>
            </tr>
            <tr> 
                <td height="26"><em><font color="#FFFFFF" size="2"><strong><font color="#000000">Answer:</font></strong></font></em></td>
              <td width="271"><input type="text" name="an" size="18" class="a" /></td>
            </tr>
            <tr> 
              <td height="21" colspan="2" align="center"><input type="submit" name="submit1" class="button" value="register" /></td>
            </tr>
      
        </table></td>
    </tr>
	    </form>
  </table>
</div>
</div>
<div id="footer">
	

</div>
</body>
</html>

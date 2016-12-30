<%@ page import="java.sql.*"%>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/shtml; charset=iso-8859-1">
</head>

<body>
<%
String n=request.getParameter("n");
String p=request.getParameter("p");
String cp=request.getParameter("cp");
String em=request.getParameter("em");
String mn=request.getParameter("mn");
String ad=request.getParameter("ad");
String q=request.getParameter("q");
String a=request.getParameter("an");
String f=request.getParameter("f");
session.setAttribute("ft",f);
String t=request.getParameter("t");
session.setAttribute("tt",t);
String alert="yes";




try
{

Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foxcomputing","root","root");
PreparedStatement ps=con.prepareStatement("insert into signup(name,pass,cpass,email,mobile,address,question,answer,from1,to1,alert) values(?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,n);
ps.setString(2,p);
ps.setString(3,cp);
ps.setString(4,em);
ps.setString(5,mn);
ps.setString(6,ad);
ps.setString(7,q);
ps.setString(8,a);
ps.setString(9,f);
ps.setString(10,t);
ps.setString(11,alert);
int x=ps.executeUpdate();
if(x==0)
response.sendRedirect("register.jsp");
else
response.sendRedirect("confirm.html");

}
catch(Exception e)
{
out.println(e.getMessage());
}





%>
</body>
</html>

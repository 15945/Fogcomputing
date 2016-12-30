<%@ page  import="java.sql.*"  %>
<%
String op=request.getParameter("op");
String pw=request.getParameter("np");
session.setAttribute("op",op);
session.setAttribute("pw",pw);
String name=(String)session.getAttribute("un");


try
{

Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foxcomputing","root","root");
PreparedStatement ps=con.prepareStatement("select * from  signup where name='"+name+"' && cpass='"+op+"'");
ResultSet rs=ps.executeQuery();
if(rs.next())
{
response.sendRedirect("pass_update.jsp");
}
else
{
out.println("enter correct user name and password");
}
}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
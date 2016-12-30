<%@ page  import="java.sql.*"  %>
<%


String name=(String)session.getAttribute("un");

String pw=(String)session.getAttribute("pw");
try
{
Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foxcomputing","root","root");
PreparedStatement ps=con.prepareStatement("update signup set pass='"+pw+"',cpass='"+pw+"' where name='"+name+"' ");
ps.executeUpdate();


}
catch(Exception e)
{
out.println(e.getMessage());
}

 response.sendRedirect("user_login.jsp");
 


%>
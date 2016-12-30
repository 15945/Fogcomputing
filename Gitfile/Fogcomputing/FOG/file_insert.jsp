<%@ page
	import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException,java.util.Calendar"%>

<%@ page import="java.sql.*,java.io.*"%>
<%@ page
	import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page
	import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*"%>
<%@ page
	import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>




<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page
	import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page
	import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemIterator"%>
<%@page import="java.io.File"%>


<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>



	<%
		InputStream ins = null;

		String fn = null;
		String fid = null;
		String file1 = null;
		FileItem item = null;
		long fsize = 0;
		File tmpDir = new File("C:/temp");
		try {
			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
			fileItemFactory.setSizeThreshold(1 * 1024 * 1024); //1 MB
			fileItemFactory.setRepository(tmpDir);
			// ServletFileUpload uploadHandler = new ServletFileUpload(fileItemFactory);
			if (ServletFileUpload.isMultipartContent(request)) {
				ServletFileUpload uploadHandler = new ServletFileUpload(fileItemFactory);
				FileItemIterator itr = uploadHandler.getItemIterator(request);
				// List items = uploadHandler.parseRequest(request);
				//  Iterator itr = items.iterator();
				int a1;
				int a2;

				while (itr.hasNext()) {

					item = (FileItem) itr.next();

					if (item.isFormField()) {
						System.out.println(item.getFieldName() + " -->" + item.getString());
						if (item.getFieldName().equals("fn"))
							fn = item.getString();

						if (item.getFieldName().equals("fid"))
							fid = item.getString();
					} else {
						ins = item.getInputStream();
						fsize = item.getSize();
						file1 = item.getName();
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>



















	<%
		java.util.Date now = new java.util.Date();
		String DATE_FORMAT1 = "yyyy-MM-dd";
		SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
		String un = (String) session.getAttribute("un");

		String ds = sdf1.format(now);
		/*
		 String f="\\file\\";
		
		
		
		
		 
		  String size3 +=   itemgetSize();                  //Double.toString(size2);
		  session.setAttribute("filesize",size3);
		
		  */
		String u = "0";
		String a = "0";
		FileInputStream fis;
		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foxcomputing", "root",
					"root");
			PreparedStatement ps = con.prepareStatement(
					"insert into fileupload(uname,fname,fid,file,size,date,au,uau) values (?,?,?,?,?,?,?,?)");

			ps.setString(1, un);
			ps.setString(2, fn);
			ps.setString(3, fid);

			ps.setBinaryStream(4, (InputStream) ins, fsize);
			ps.setString(5, "" + fsize);
			ps.setString(6, ds);
			ps.setString(7, u);
			ps.setString(8, a);
			response.sendRedirect("user_upload.jsp");
		} catch (Exception e) {
			out.println(e.getMessage());
		}
	%>




</body>
</html>

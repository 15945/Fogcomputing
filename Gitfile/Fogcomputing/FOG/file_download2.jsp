
<%@ page
	import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>Chennai Sunday</title>
<script language="JavaScript">
	
</script>
</head>

<body>
	<%
		try {

			String fname = (String) session.getAttribute("fname");

			Blob result = (Blob) session.getAttribute("resumeBlob");

			InputStream inputStream = result.getBinaryStream();
			int fileLength = inputStream.available();

			System.out.println("fileLength = " + fileLength);

			ServletContext context = getServletContext();

			// set content properties and header attributes for the response
			response.setContentType("image/jpeg");
			response.setContentLength(fileLength);
			String headerKey = "Content-Disposition";
			String headerValue = String.format("attachment; filename=\"%s\"", fname+".jpg");
			response.setHeader(headerKey, headerValue);

			// writes the file to the client
			OutputStream outStream = response.getOutputStream();

			byte[] buffer = new byte[4096];
			int bytesRead = -1;

			while ((bytesRead = inputStream.read(buffer)) != -1) {
				outStream.write(buffer, 0, bytesRead);
			}

			inputStream.close();
			outStream.close();
		} catch (Exception e) {
			out.println("Exception :" + e);
		}
	%>

</body>
</html>
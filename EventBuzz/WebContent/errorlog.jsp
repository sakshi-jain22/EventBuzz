<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Icon Link -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<title>EventBuzz</title>
</head>
<body>
	<jsp:include page="head.jsp" />
	<br />
	<br />
	<br />
	<%
		String err = (String) session.getAttribute("error");
		out.write("<center>");
		out.print(err);
		out.write("</center>");
		session.removeAttribute("error");
	%>
</body>
</html>
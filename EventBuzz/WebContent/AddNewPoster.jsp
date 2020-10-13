<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.eventBuzz.Dao.RetrieveEventDao" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//fonts.googleapis.com/css?family=Domine&subset=latin"	rel="stylesheet" type="text/css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- Icon Link -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<title>EventBuzz</title>
</head>
<style type="text/css">
	<jsp:include page="css/style1.css" />
</style>
<body>
	<jsp:include page="head.jsp"/>
	<br>
	<center>
		<h1>
			<b><u class="heading">ADD POSTER</u></b>
		</h1>
	</center>
	<%
		session = request.getSession();
		String uname = (String) session.getAttribute("uname");
		String utype = (String) session.getAttribute("utype");
		if(utype != "FEST_COORDINATOR")
		{
			out.write("<script>alert('Retry Login as Fest Organiser'); </script>");
			response.sendRedirect("logout.jsp");
		}
		%>
<form class="form-horizontal" action=""_Event" method="post"	enctype="multipart/form-data">
<input type="hidden" class="form-control" name="event_id" value="${id }">
		
	<table align="center" class="form-table animated zoomIn delay-1s">
		<tr>
				<div class="form-group">
				
					<td align="right"><label class="control-label col-sm-12"	for="i_upload">Upload Poster : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
					<td>
						<div class="col-sm-12">
							<input type="file" class="from-control-file border"	name="i_upload">
						</div>
					</td>
					<td><i class="fa fa-file-image-o" aria-hidden="true"></i></td>
				</div>
				</div>
			</tr>
	<tr>
				<td align="center" colspan=2><br>
				<input type="submit" class="btn-info" formaction="updatePoster2" metohd="post" value="Update" enctype="multipart/form-data">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				<input type="reset" class="btn-danger" value="Cancel"></td>
			</tr>
		</table>
	</form>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="css/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.eventBuzz.Dao.RetrieveEventDao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css\style1.css">
<!-- Icon Link -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<title>EventBuzz</title>
</head>
<body>
	<jsp:include page="head.jsp"/>
	<br>
	<center>
		<h1>
			<b><u class="heading">UPDATE EVENT</u></b>
		</h1>
	</center>
	<%
		session = request.getSession();
		String uname = (String) session.getAttribute("uname");
		String utype = (String) session.getAttribute("utype");
		if(utype.equals("FEST_COORDINATOR") == false)
		{
			out.write("<script>alert('Retry Login as Fest Organiser'); </script>");
			response.sendRedirect("logout.jsp");
		}
		
	%>
	
	
	<form class="form-horizontal" action="AddUpdatedValues" method="post">
		<input type="hidden" class="form-control" name="event_id" value="${id }">
		<table align="center" class="form-table animated zoomIn delay-1s">
			<tr>
				<div class="form-group">
					<td align="right"><label class="control-label col-sm-12" for="e_nm">Event Name: &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
					<td>
						<div class="col-sm-12">
							<input type="text" class="form-control" name="e_nm"	placeholder="Enter EventName" value="${name}">
						</div>
					</td>
					<td><i class="fa fa-tasks" aria-hidden="true"></i></td>
				</div>
			</tr>
			<tr>
				<div class="form-group">
					<td align="right"><label class="control-label col-sm-12"	for="date">Date: &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
					<td>
						<div class="col-sm-12">
							<input type="date" class="form-control" name="date" value="${date}">
						</div>
					</td>
					<td><i class="fa fa-calendar-check-o" aria-hidden="true"></i>
					</td>
				</div>
			</tr>
			<tr>
				<div class="form-group">
					<td align="right"><label class="control-label col-sm-12"	for="time">Time: &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
					<td>
						<div class="col-sm-12">
							<input type=text class="form-control" name="time"	placeholder="hh:mm:ss" value="${time}">
						</div>
					</td>
					<td><i class="fa fa-clock-o" aria-hidden="true"></i></td>
				</div>
			</tr>
			<tr>
				<div class="form-group">
					<td align="right"><label class="control-label col-sm-12"	for="venue">Venue: &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
					<td>
						<div class="col-sm-12">
							<input type="text" class="form-control" name="venue"	placeholder="Enter Venue" value="${venue}">
						</div>
					</td>
					<td><i class="fa fa-building" aria-hidden="true"></i></td>
				</div>
			</tr>

			<tr>
				<div class="form-group">
					<td align="right"><label class="control-label col-sm-12"	for="fees">Participation Fees : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
					<td>
						<div class="col-sm-12">
							<input type="text" class="form-control" name="fees"	placeholder="Enter Participation Fees" value="${ fees }"> 
						</div>
					</td>
					<td><i class="fa fa-inr" aria-hidden="true">/head</i>
				</div>
			</tr>

			<tr>
				<div class="form-group">
					<td align="right"><label class="control-label col-sm-12"	for="p_link">Payment link : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
					<td>
						<div class="col-sm-12">
							<textarea class="form-control" name="p_link">${paymentlink }</textarea>
						</div>
					</td>
					<td><i class="fa fa-link" aria-hidden="true"></i></td>
				</div>
			</tr>

			<tr>
				<div class="form-group">
					<td align="right"><label class="control-label col-sm-12"	for="mnum">Maximum Team Size : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
					<td>
						<div class="col-sm-12">
							<input type="number" class="form-control" name="mnum" min="1"	max="25" placeholder="Enter Maximum Team Size" value="${size}">
						</div>
					</td>
					<td><i class="fa fa-users" aria-hidden="true"></i></td>
				</div>
			</tr>
			<tr>
				<td align="center" colspan=2><br>
				<input type="submit" class="btn-info" value="Update">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				<input type="reset" class="btn-danger" value="Cancel">
				<input type="submit" class="btn-success" formaction="updatePoster1" method="post"  value="Update Poster"></td>
	
						</tr>
		</table>
	</form>
	
	
	
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="css/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
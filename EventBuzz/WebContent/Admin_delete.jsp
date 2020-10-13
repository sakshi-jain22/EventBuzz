<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>EventBuzz- Delete</title>
        <link href="//fonts.googleapis.com/css?family=Domine&subset=latin" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <!-- Icon Link -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</head>
<style type="text/css">
<jsp:include page="css/style1.css" />
</style>
<body>
<jsp:include page="head.jsp"/>
	<br>
	<center>
		<h1>
			<b><u class="heading">Delete EVENT</u></b>
		</h1>
	</center>
	<form class="form-horizontal" action="deleteServlet" method="post">
		<table align="center" class="form-table animated zoomIn delay-1s">
			
			<tr>
				<div class="form-group">
					<td align="right"><label class="control-label col-sm-12"	for="date">Date: &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
					<td>
						<div class="col-sm-12">
							<input type="date" class="form-control" name="date">
						</div>
					</td>
					<td><i class="fa fa-calendar-check-o" aria-hidden="true"></i>
					</td>
				</div>
			</tr>
			
			<tr>
				<td align="center" colspan=2><br>
				<input type="submit" class="btn-info" value="Delete">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				<input type="reset" class="btn-danger" value="Cancel"></td>
			</tr>
		</table>
	</form>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
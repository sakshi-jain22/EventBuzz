<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EventBuzz- Admin</title>
<link href="//fonts.googleapis.com/css?family=Domine&subset=latin"	rel="stylesheet" type="text/css">
<link rel="stylesheet"	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- Icon Link -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</head>

<style type="text/css">
<jsp:include page="css/style1.css"/>
</style>

<body>
	<jsp:include page="head.jsp"/>
	<br>
	<br>
	<center>
		<h1>
			<u class="heading">Admin</u>
		</h1>
	</center>
	<form class="form-horizontal" action="Adminn" method="post">
		<table class="form-table animated zoomIn" align="center">
			<tr>
				<div class="form-group">
					<td align="right"><label class="control-label col-sm-12"	for="U_nm">Username : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
					<td>
						<div class="col-sm-12">
							<input type="text" class="form-control" name="U_nm"	placeholder="Enter username">
						</div>
					</td>
					<td><i class="fa fa-user-circle-o" aria-hidden="true"></i></td>
				</div>
			</tr>



			<tr>
				<div class="form-group">
					<td align="right"><label class="control-label col-sm-12"
						for="password">Password : &nbsp;&nbsp;&nbsp;&nbsp;</label><br>
					</td>
					<td>
						<div class="col-sm-12">
							<input type="password" class="form-control" name="password"	placeholder="Enter the password"><br>
						</div>
					</td>
				</div>
				<td><i class="fa fa-unlock-alt" aria-hidden="true"></i></td>
			</tr>


			<tr>
				<div class="form-group">
					<td align="right">
						<div class="col-sm-12">
							<button type="submit" class="btn-info">Submit</button>
							&nbsp;&nbsp;
						</div>
					</td>
					<td align="left">

						<div class="col-sm-12">
							<button type="reset" class="btn-danger">Cancel</button>
						</div>

					</td>
				</div>
			</tr>

		</table>
	</form>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="css/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
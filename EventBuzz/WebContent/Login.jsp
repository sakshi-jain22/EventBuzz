<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>EventBuzz- Login</title>
        <link href="//fonts.googleapis.com/css?family=Domine&subset=latin" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
                    <u class="heading">LOGIN</u>
                </h1>
            </center>
            <br>
            <form class="form-horizontal" action="route" method="post">
                <table class="animated fadeInUp" align="center">
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="User">User Type: &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <select class="custom-select" name="User">
								<option value=" " selected disabled>Select User</option>
								<option value="Student">STUDENT</option>
								<option value="Coordinator">FEST ORGANIZER</option>
							</select>
                                </div>
                            </td>
                            <td><i class="fa fa-user-secret" aria-hidden="true"></i></td>
                        </div>
                    </tr>
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="U_nm">UserName: &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="U_nm" placeholder="Enter UserName">
                                </div>
                            </td>
                            <td><i class="fa fa-user-circle"></i></td>
                        </div>
                    </tr>
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="password"> Password: &nbsp;&nbsp;&nbsp;&nbsp;<br></label>
                            </td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="password" class="form-control" name="password" placeholder="Enter Password"><br>
                                </div>
                            </td>
                            <td><i class="fa fa-key"></i></td>
                        </div>
                    </tr>
                    <tr>
                        <td colspan=2>
                            <center>
                                <div class="col-sm-12">
                                    <input type="submit" class="btn-info" value="Login"> &nbsp;&nbsp;&nbsp; <input type="reset" class="btn-danger" value="Cancel"> <br>
                                    <br>
                                    <br>
                            </center>
                        </td>
                    </tr>

                </table>
            </form>
            <center class="animated fadeInUp delay-1s">
                Not Registered?? Click On &nbsp; <a href="sign.jsp">SIGNUP <i class="fa fa-sign-in"></i></a>
            </center>

    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
    </html>
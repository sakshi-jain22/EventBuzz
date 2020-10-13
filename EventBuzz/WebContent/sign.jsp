<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link href="//fonts.googleapis.com/css?family=Domine&subset=latin" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Icon Link -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <title>EventBuzz- Signin</title>
    </head>
    <style type="text/css">
        <jsp:include page="css/bootstrap/css/bootstrap.min.css" />
        <jsp:include page="css/style1.css" />
    </style>

    <body>
        <jsp:include page="head.jsp"/>

      <%
		if(session.getAttribute("uname")==null)
		{
	%>
                <br />
                <br />
                <br />
                <center>
                    <h2>
                        <u class="heading">User Type</u>
                    </h2>
                    <br>
                </center>
                <br>
                <center>
                    <form action="progress.jsp" method="post">
                        <div class="form-group">
                            <div class="row animated fadeInUp delay-1s">
                                <div class="col-sm-4" align="right">
                                    <i class="fa fa-cog fa-spin fa-2x fa-fw"></i><span class="sr-only">Loading...</span>
                                </div>
                                <div class="col-sm-4" align="right">
                                    <select name="userType" class="custom-select">
							<option value="" selected disabled>------Select------</option>
							<option value="student">Student</option>
							<option value="coordinator">Fest Organizer</option>
						</select>
                                </div>
                                <div class="col-sm-4" align="left">
                                    <button type="submit" class="btn btn-success">Continue</button>
                                </div>
                            </div>
                        </div>

                    </form>
                </center>
   <%
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
	%>
			<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
             <script src="css/bootstrap/js/bootstrap.min.jss"></script>
    </body>

    </html>
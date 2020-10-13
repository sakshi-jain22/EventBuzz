<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>EventBuzz- Signup</title>
        <link href="//fonts.googleapis.com/css?family=Domine&subset=latin" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Icon Link -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    </head>
    <style type="text/css">
        <jsp:include page="css/bootstrap/css/bootstrap.min.css" />
        <jsp:include page="css/style1.css" />
    </style>

    <body>
        <jsp:include page="head.jsp"/>
            <%
		session = request.getSession();
		String userType = (String) session.getAttribute("utype");
		if(userType.equals("STUDENTS"))
		{
	%>
                <center>
                    <h1>
                        <b><u class="heading">Signup</u></b>
                    </h1>
                </center>
                <form class="form-horizontal" action="Signup" method="post">
                    <table class="animated fadeInUp delay-1s" align="center">
                        <tr>
                            <div class="form-group">
                                <td align="right"><label class="control-label col-sm-12" for="eno">College Enrollment No. :
							&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                <td>
                                    <div class="col-sm-12">
                                        <input type="text" class="form-control" name="eno" placeholder="Enter the enrollment no.">
                                    </div>
                                </td>
                                <td><i class="fa fa-id-badge" aria-hidden="true"></i></td>
                            </div>
                        </tr>
                        <tr>
                            <div class="form-group">
                                <td align="right"><label class="control-label col-sm-12" for="S_nm">Name : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                <td>
                                    <div class="col-sm-12">
                                        <input type="text" class="form-control" name="S_nm" placeholder="Enter the Name">
                                    </div>
                                </td>
                                <td><i class="fa fa-user-circle" aria-hidden="true"></i></td>
                            </div>
                        </tr>
                        <tr>
                            <div class="form-group">
                                <td align="right"><label class="control-label col-sm-12" for="U_nm">Unique Username : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                <td>
                                    <div class="col-sm-12">
                                        <input type="text" class="form-control" name="U_nm" placeholder="Enter a username">
                                    </div>
                                </td>
                                <td><i class="fa fa-tag" aria-hidden="true"></i></td>
                            </div>
                        </tr>
                        <tr>
                            <div class="form-group">
                                <td align="right"><label class="control-label col-sm-12" for="email">Email : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                <td>
                                    <div class="col-sm-12">
                                        <input type="email" class="form-control" name="email" placeholder="Enter your Email">
                                    </div>
                                </td>
                                <td><i class="fa fa-paper-plane" aria-hidden="true"></i></td>
                            </div>
                        </tr>
                        <tr>
                            <div class="form-group">
                                <td align="right"><label class="control-label col-sm-12" for="password">Password : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                <td>
                                    <div class="col-sm-12">
                                        <input type="password" class="form-control" name="password" placeholder="Enter the password">
                                    </div>
                                </td>
                                <td><i class="fa fa-key" aria-hidden="true"></i></td>
                            </div>
                        </tr>
                        <tr>
                            <div class="form-group">
                                <td align="right"><label class="control-label col-sm-12" for="C_password">Confirm Password :
							&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                <td>
                                    <div class="col-sm-12">
                                        <input type="password" class="form-control" name="C_password" placeholder=" Re-enter the Password">
                                    </div>
                                </td>
                                <td><i class="fa fa-key" aria-hidden="true"></i></td>
                            </div>
                        </tr>
                        <tr>
                            <div class="form-group">
                                <td align="right"><label class="control-label col-sm-12" for="P_No">Phone No : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                <td>
                                    <div class="col-sm-12">
                                        <input type="text" class="form-control" name="P_No" placeholder="Enter Phone No">
                                    </div>
                                </td>
                                <td><i class="fa fa-whatsapp" aria-hidden="true"></i></td>
                            </div>
                        </tr>
                        <tr>
                            <div class="form-group">
                                <td align="right"><label class="control-label col-sm-12" for="Course">Course : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                <td>
                                    <div class="col-sm-12">
                                        <select name="Course" class="custom-select" placeholder="Enter Course">
								<option value=" " selected disabled>---Select Course---</option>
								<option value="MCA">MCA</option>
								<option value="MBA">MBA</option>
								<option value="BCA">BCA</option>
								<option value="BBA">BBA</option>
								<option value="B.Sc.">B.Sc.</option>
								<option value="B.A.">B.A.</option>
								<option value="B.Com">B.Com</option>
								<option value="M.sc">M.sc</option>
								<option value="MA">MA</option>
								<option value="M.Com">M.Com</option>
								<option value="B.TECH">B.TECH</option>
								<option value="M.TECH">M.TECH</option>
								<option value="LLB.">LLB.</option>
								<option value="LLM.">LLM.</option>
							</select>
                                    </div>
                                </td>
                                <td><i class="fa fa-graduation-cap" aria-hidden="true"></i></td>
                            </div>
                        </tr>
                        <tr>
                            <div class="form-group">
                                <td align="right"><label class="control-label col-sm-12" for="C_name">College Name : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                <td>
                                    <div class="col-sm-12">
                                        <input type="text" class="form-control" name="C_name" placeholder="Enter CollegeName">
                                    </div>
                                </td>
                                <td><i class="fa fa-university" aria-hidden="true"></i></td>
                            </div>
                        </tr>
                        <tr>
                            <div class="form-group">
                                <td align="right"><label class="control-label col-sm-12" for="Year">Enter Year : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                                <td>
                                    <div class="col-sm-12">
                                        <select class="custom-select" name="Year">
								<option value=" " selected disabled>---Select Year---</option>
								<option value="1">First</option>
								<option value="2">Second</option>
								<option value="3">Third</option>
								<option value="4">Fourth</option>
								<option value="5">Fifth</option>
							</select>
                                    </div>
                                </td>
                                <td><i class="fa fa-hourglass-half" aria-hidden="true"></i></td>
                            </div>
                        </tr>
                        <tr>
                            <div class="form-group">
                                <td align="right">
                                    <div class="col-sm-12">
                                        <button type="submit" class="btn-info">Signup</button> &nbsp;&nbsp;
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
                <%
		}
		else
		{
			session.setAttribute("error", "Page access allowed only for students....");	
			response.sendRedirect("errorlog.jsp");
		}
		
	%>

 	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>

    </html>
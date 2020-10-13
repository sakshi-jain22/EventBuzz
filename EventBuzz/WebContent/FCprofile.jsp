<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>EventBuzz</title>
        <link href="//fonts.googleapis.com/css?family=Domine&subset=latin" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css\style1.css">
        <!-- Icon Link -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    </head>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function test() {
            alert("Page not accessible");
        }
    </script>
    <body>
        <%@ include file="head.jsp"%>
            <jsp:useBean id="organizerDao" class="com.eventBuzz.Dao.ManagerDao" />
            <jsp:useBean id="organizer" class="com.eventBuzz.Genuine.FestOrganizer" />
            <%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
		session = request.getSession();
		String userType = (String) session.getAttribute("utype");
		String uname = (String) session.getAttribute("uname");
		
		if(userType.equals("FEST_COORDINATOR")==false || uname.isEmpty()==true)
		{
			out.write("<script>test();</script>");
			response.sendRedirect("sign.jsp");
		}
		
		organizerDao.setFestOrganizer(uname);
		organizer = organizerDao.getFestOrganizer();
		
	%>
                <center class="animated bounceInUp">
                    <h1>
                        <u class="heading">your Profile</u>
                    </h1>
                </center>
                <table class="animated bounceInUp delay-1s" align="center">
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="U_nm">Username : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="U_nm" placeholder="Enter a username" value="<%= organizer.username %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-id-badge" aria-hidden="true"></i></td>
                        </div>
                    </tr>


                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="password">Password : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="password" class="form-control" name="password" placeholder="Enter the password" value="<%=organizer.getPassword() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-unlock-alt" aria-hidden="true"></i></td>
                        </div>
                    </tr>

                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="C_password">Confirm Password :
						&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="password" class="form-control" name="C_password" placeholder=" Re-enter the Password" value="<%=organizer.getPassword()%>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-unlock-alt" aria-hidden="true"></i></td>
                        </div>
                    </tr>

                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="C_name">College Name : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="C_name" placeholder="Enter College Name" value="<%= organizer.getCollegeName() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-building" aria-hidden="true"></i></td>
                        </div>
                    </tr>

                    <div class="form-group">
                        <tr></tr>
                        <td align="right"><label class="control-label col-sm-12" for="U_name">University : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                        <td>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" name="U_name" placeholder="Enter University" value="<%= organizer.getUniversity() %>" disabled>
                            </div>
                        </td>
                        <td><i class="fa fa-university" aria-hidden="true"></i></td>
                    </div>
                    </tr>


                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="L_name">Address Line 1 : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <textarea class="form-control" name="L_name" rows="1" disabled><%= organizer.getLocality() %></textarea>
                                </div>
                            </td>
                            <td><i class="fa fa-address-book-o" aria-hidden="true"></i></td>
                        </div>
                    </tr>

                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="addr">Address Line 2 : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="addr" placeholder="Enter the street" value="<%= organizer.getStreetAddr() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-address-book" aria-hidden="true"></i></td>
                        </div>
                    </tr>

                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="Ct_name">City : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="Ct_name" placeholder="Enter city" value="<%= organizer.getCity() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-bus" aria-hidden="true"></i></td>
                        </div>
                    </tr>


                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="St_name">State : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="St_name" placeholder="Enter State" value="<%= organizer.getState() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-map-marker" aria-hidden="true"></i></td>
                        </div>
                    </tr>

                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="P_name">PinCode : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="P_name" placeholder="Enter a PinCode" value="<%= organizer.getPinCode() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-map-pin" aria-hidden="true"></i></td>
                        </div>
                    </tr>

                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="M_name">NearestMetro : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="M_name" placeholder="Enter a Nearest Metro" value="<%= organizer.getNearestMetro() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-subway" aria-hidden="true"></i></td>
                        </div>
                    </tr>


                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="CEA_name">College Email Address :
						&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="CEA_name" placeholder="Enter the mail ID" value="<%= organizer.getCollegeEmail() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-envelope-open" aria-hidden="true"></i></td>
                        </div>
                    </tr>

                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="CW_name">College Website : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="CW_name" placeholder="Enter the college website" value="<%= organizer.getCollegeWebsite() %>" disabled>
                                </div>
                            </td>
                            <td><i class="fa fa-info-circle" aria-hidden="true"></i></td>
                        </div>
                    </tr>

                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="CCN_name">College Contact No. :
						&nbsp;&nbsp;&nbsp;&nbsp;</label><br></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="CCN_name" placeholder="Enter College Contact No" value="<%= organizer.getCollegePhnNo() %>" disabled> <br>
                                </div>
                            </td>
                            <td><i class="fa fa-phone-square" aria-hidden="true"></i><br>
                                <br></td>
                        </div>
                    </tr>

                    <tr>
                        <div class="form-group">
                            <td colspan=2 align="center">
                                <form action="UpdateFC.jsp" method="post">
                                    <div class="col-sm-12">
                                        <button type="submit" class="btn-success">&nbsp;Update&nbsp;</button> &nbsp;&nbsp;
                                    </div>
                                </form>
                            </td>
                        </div>
                    </tr>

                </table>

    </body>

    </html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>EventBuzz- Signin</title>
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

            <center>
                <h1>
                    <u class="heading">Signup</u>
                </h1>
            </center>
            <form class="form-horizontal" action="CSignup" method="post">
                <table class="animated fadeInUp delay-1s" align="center">
                    <tr>
                        <div class="form-group">
                            <td align="right"><label class="control-label col-sm-12" for="U_nm">Username : &nbsp;&nbsp;&nbsp;&nbsp;</label></td>
                            <td>
                                <div class="col-sm-12">
                                    <input type="text" class="form-control" name="U_nm" placeholder="Enter a username">
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
                                    <input type="password" class="form-control" name="password" placeholder="Enter the password">
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
                                    <input type="password" class="form-control" name="C_password" placeholder=" Re-enter the Password">
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
                                    <input type="text" class="form-control" name="C_name" placeholder="Enter College Name">
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
                                <input type="text" class="form-control" name="U_name" placeholder="Enter University">
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
                                    <textarea class="form-control" name="L_name" rows="1" placeholder="Enter the Locality"></textarea>
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
                                    <input type="text" class="form-control" name="addr" placeholder="Enter the street">
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
                                    <input type="text" class="form-control" name="Ct_name" placeholder="Enter city" value="New Delhi">
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
                                    <input type="text" class="form-control" name="St_name" placeholder="Enter State" value="Delhi">
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
                                    <input type="text" class="form-control" name="P_name" placeholder="Enter a PinCode">
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
                                    <input type="text" class="form-control" name="M_name" placeholder="Enter a Nearest Metro">
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
                                    <input type="email" class="form-control" name="CEA_name" placeholder="Enter the mail ID">
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
                                    <input type="text" class="form-control" name="CW_name" placeholder="Enter the college website">
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
                                    <input type="text" class="form-control" name="CCN_name" placeholder="Enter College Contact No"><br>
                                </div>
                            </td>
                            <td><i class="fa fa-phone-square" aria-hidden="true"></i><br>
                                <br></td>
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
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>

    </html>
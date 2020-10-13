<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>EventBuzz</title>
	<link rel="stylesheet"	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
    <link rel="stylesheet" href="css/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl-carousel/owl.theme.default.min.css">
	<link rel="stylesheet" href="css/about.css">
	<!-- Website Icon Link -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</head>
<body data-spy="scroll" data-target=".header" data-offset="200">
	<jsp:include page="head.jsp"/>
	
	<!-- Home Section starts-->
    <section id="home">
        <!-- For image-->
        <div id="home-cover" class="animated fadeInUp bg-parallax">
            <div id="home-content-box">
                <div id="home-content-box-inner">
                    <!-- For Heading -->
                    <div id="home-heading" class="wow zoomInDown">
                        <h3>Welcome to EventBuzz <br>The place for all college going enthusiastic students</h3>
                    </div>
                    <div id="home-btn" class="wow zoomIn delay-2s">
                        <a href="#work" role="button" class="btn btn-lg btn-general btn-white" title="view our work">View our work</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <br><br><br><br><br><br><br><br>
	
	<!-- Services Section -->
    <section id="services">
        <div class="content-box">
            <div class="content-title wow fadeInDown" data-wow-duration="1s" data-wow-delay=".5s">
                <h3>Features</h3>
                <div class="content-title-underline"></div>
            </div>

            <div class="container">
                <div class="row wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
                    <div class="col-md-4">
                        <div class="service-item">
                            <div class="service-item-icon"><i class="fa fa-sign-in fa-3x" aria-hidden="true"></i></div>
                            <div class="service-item-title">
                                <h3>New to our application</h3>
                            </div>
                            <div class="service-item-desc">
                                <p>Signup to the application as "student" to view, register and participate in various college fests. Or you can signup as "Fest Organiser" on behalf of the college to add fests or events and view students' registrations.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="service-item">
                            <div class="service-item-icon"><i class="fa fa-user fa-3x" aria-hidden="true"></i></div>
                            <div class="service-item-title">
                                <h3>Already a user</h3>
                            </div>
                            <div class="service-item-desc">
                                <p>Just click on LOGIN and start viewing and registering to your favourite events.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="service-item">
                            <div class="service-item-icon"><i class="fa fa-eye fa-3x" aria-hidden="true"></i></div>
                            <div class="service-item-title">
                                <h3>view events</h3>
                            </div>
                            <div class="service-item-desc">
                                <p>View as many Events as you want. Many events are available in our application. You just have to login first as a student to view all the events. Event Posters, Organizing colleges contact info are also available for your convenience. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="service-item">
                            <div class="service-item-icon"><i class="fa fa-cart-plus fa-3x" aria-hidden="true"></i></div>
                            <div class="service-item-title">
                                <h3>Register Events</h3>
                            </div>
                            <div class="service-item-desc">
                                <p>Students may register to their interested events by just clicking on the register button and then submitting the required details and participation fee (if any then submit a screenshot of the payment receipt)  
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="service-item">
                            <div class="service-item-icon"><i class="fa fa-puzzle-piece fa-3x" aria-hidden="true"></i></div>
                            <div class="service-item-title">
                                <h3>Add events</h3>
                            </div>
                            <div class="service-item-desc">
                                <p>Fest Organizers' may add different events to be held in their respective colleges. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="service-item">
                            <div class="service-item-icon"><i class="fa fa-registered fa-3x" aria-hidden="true"></i></div>
                            <div class="service-item-title">
                                <h3>View Registrations</h3>
                            </div>
                            <div class="service-item-desc">
                                <p>Students can register to the events of their interest. Required data for students who are registering to your event will be easily accessed.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="service-item">
                            <div class="service-item-icon"><i class="fa fa-eraser fa-3x" aria-hidden="true"></i></div>
                            <div class="service-item-title">
                                <h3>Cancel Event Registration</h3>
                            </div>
                            <div class="service-item-desc">
                                <p>If the student wishes to cancel out their registration for a specific event, he/she can also cancel thier registration simply by a click.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="service-item">
                            <div class="service-item-icon"><i class="fa fa-trash-o fa-3x" aria-hidden="true"></i></div>
                            <div class="service-item-title">
                                <h3>Event Cancellation</h3>
                            </div>
                            <div class="service-item-desc">
                                <p>If the student wishes to cancel out their registration for a specific event, he/she can also cancel thier registration simply by a click.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="service-item">
                            <div class="service-item-icon"><i class="fa fa-wrench fa-3x" aria-hidden="true"></i></div>
                            <div class="service-item-title">
                                <h3>Manage Profile</h3>
                            </div>
                            <div class="service-item-desc">
                                <p>Add, update, delete the profiles forstudent, fest ograganizer as well as for the events is possible and can be done the respective users.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                

            </div>
        </div>
        </div>
    </section>

    <br><br><br><br><br>
    
    <!-- About Project Section -->
    <section id="about">
        <div id="about-bg-diagonal" class="bg-parallax"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div id="about-content-box">
                        <div id="about-content-box-outer">
                            <div id="about-content-box-inner">
                                <div class="content-title wow fadeInDown" data-wow-duration="1s" data-wow-delay=".5s">
                                    <h3>About EventBuzz</h3>
                                    <div class="content-title-underline"></div>
                                </div>
                                <div id="about-desc" class="content-title wow zoomIn" data-wow-duration="1s" data-wow-delay=".5s">
                                    <p>This application leads in finding the college fests/events in easier way. This software of event scheduling helps students in finding all college event's at one place. The system manages all the events which are conducted in college/university along with features:- add event, event cancellation and event registration. The need for visiting to various websites for the event schedule is overcome here.
<p>
                                </div>
                                <div id="about-btn" class="content-title wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
                                    <a href="#" class="btn btn-lg btn-general btn-blue" role="button">Our Work</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <br><br><br><br><br><br><br>
	<br><br><br><br>
    <!-- Work Section -->
    <section id="work">
        <div class="content-box">
            <div class="content-title wow fadeInDown" data-wow-duration="1s" data-wow-delay=".5s">
                <h3>Gallery</h3>
                <div class="content-title-underline"></div>
            </div>
            <div class="container-fluid">
                <div class="row no-gutters">
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/gallery/gallery-1.jpg" title="Gallery"><img src="img/gallery/gallery-1.jpg" class="image-fluid" alt="Work"></a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/gallery/gallery-2.jpg" title="Gallery"><img src="img/gallery/gallery-2.jpg" class="image-fluid" alt="Work"></a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/gallery/gallery-3.jpeg" title="Gallery"><img src="img/gallery/gallery-3.jpeg" class="image-fluid" alt="Work"></a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/gallery/gallery-4.jpeg" title="Gallery"><img src="img/gallery/gallery-4.jpeg" class="image-fluid" alt="Work"></a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/gallery/gallery-9.jpg" title="Gallery"><img src="img/gallery/gallery-9.jpg" class="image-fluid" alt="Work"></a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/gallery/gallery-6.jpg" title="Gallery"><img src="img/gallery/gallery-6.jpg" class="image-fluid" alt="Work"></a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/gallery/gallery-7.jpg" title="Gallery"><img src="img/gallery/gallery-7.jpg" class="image-fluid" alt="Work"></a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/gallery/gallery-8.jpg" title="Gallery"><img src="img/gallery/gallery-8.jpg" class="image-fluid" alt="Work"></a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/gallery/gallery-10.jpg" title="Gallery"><img src="img/gallery/gallery-10.jpg" class="image-fluid" alt="Work"></a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/gallery/gallery-11.jpg" title="Gallery"><img src="img/gallery/gallery-11.jpg" class="image-fluid" alt="Work"></a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/gallery/gallery-12.jpg" title="Gallery"><img src="img/gallery/gallery-12.jpg" class="image-fluid" alt="Work"></a>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="img-wrapper">
                            <a href="img/gallery/gallery-13.jpg" title="Gallery"><img src="img/gallery/gallery-13.jpg" class="image-fluid" alt="Work"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <br><br><br><br>

    <!-- Team Section -->
    <section id="team">
        <div class="content-box">
            <div class="content-title wow fadeInDown" data-wow-duration="1s" data-wow-delay=".5s">
                <h3>Our Team</h3>
                <div class="content-title-underline"></div>
            </div>
            <div class="container">
                <div class="row wow fadeInDown" data-wow-delay=".5s">
                    <div class="col-md-12">
                        <div id="team-members" class="owl-carousel owl-theme">
                            <div class="team-member">
                                <img src="img/team/1.jpg" class="img-fluid" alt="team member">
                                <div class="team-member-info-text-center">
                                    <h4 class="team-member-name">Kajal Mittal</h4>
                                    <h4 class="team-member-designation">MCA Section-2</h4>
                                    <ul class="social-list">
                                        <li><a href="#" class="social-icon icon-gray"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#" class="social-icon icon-gray"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#" class="social-icon icon-gray"><i class="fa fa-google"></i></a></li>

                                    </ul>
                                </div>
                            </div>
                            <div class="team-member">
                                <img src="img/team/2.jpg" class="img-fluid" alt="team member">
                                <div class="team-member-info-text-center">
                                    <h4 class="team-member-name">Narayani</h4>
                                    <h4 class="team-member-designation">MCA Section-2</h4>
                                    <ul class="social-list">
                                        <li><a href="#" class="social-icon icon-gray"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#" class="social-icon icon-gray"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#" class="social-icon icon-gray"><i class="fa fa-google"></i></a></li>

                                    </ul>
                                </div>
                            </div>
                            <div class="team-member">
                                <img src="img/team/3.jpg" class="img-fluid" alt="team member">
                                <div class="team-member-info-text-center">
                                    <h4 class="team-member-name">Sakshi Jain</h4>
                                    <h4 class="team-member-designation">MCA Section-2</h4>
                                    <ul class="social-list">
                                        <li><a href="#" class="social-icon icon-gray"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#" class="social-icon icon-gray"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#" class="social-icon icon-gray"><i class="fa fa-google"></i></a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
    <script src="js/owl-carousel/owl.carousel.min.js"></script>
    <script src="js/about.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>EventBUZZ: Home</title>
        <!-- Icon Link -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <style>
            <jsp:include page="css/slider.css" />
            <jsp:include page="css/style2.css"/>
        </style>
    </head>

    <body>
        <jsp:include page="head.jsp"/>
            <div id="div1" style="width: 100%; height: 20px"></div>

            <div class="slideshow-container">

                <div class="mySlides fade">
                    <div class="numbertext">1 / 5</div>
                    <img src="/EventBuzz/img/img4.jpg" style="width: 100%; height: 500px">
                    <div class="text">View Events</div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">2 / 5</div>
                    <img src="/EventBuzz/img/img1.jpg" style="width: 100%; height: 500px">
                    <div class="text">Event Posters</div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">3 / 5</div>
                    <img src="/EventBuzz/img/img3.jpg" style="width: 100%; height: 500px">
                    <div class="text">Caption Three</div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">4 / 5</div>
                    <img src="/EventBuzz/img/img2.jpg" style="width: 100%; height: 500px">
                    <div class="text">Caption Four</div>
                </div>

                <div class="mySlides fade">
                    <div class="numbertext">5 / 5</div>
                    <img src="/EventBuzz/img/img5.jpg" style="width: 100%; height: 500px">
                    <div class="text">Registration</div>
                </div>

            </div>
            <br>
            <div style="text-align: center">
                <span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
                <span class="dot"></span> <span class="dot"></span>
            </div>
            
            <script src="js/slider.js"></script>

    </body>

    </html>
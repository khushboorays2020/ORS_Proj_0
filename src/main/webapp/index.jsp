<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<head>

<title>Home Page</title>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<!-- Libraries CSS Files -->
<link href="resources/indexCss/font-awesome.min.css" rel="stylesheet">
<link href="resources/indexCss/animate.min.css" rel="stylesheet">
<link href="resources/indexCss/ionicons.min.css" rel="stylesheet">
<link href="resources/indexCss/owl.carousel.min.css" rel="stylesheet">
<link href="resources/indexCss/lightbox.min.css" rel="stylesheet">
<link href="resources/indexCss/creative.min.css" rel="stylesheet">


<!-- Main Stylesheet File -->
<link href="resources/indexCss/style.css" rel="stylesheet">

<style>
body {
	font: 400 15px/1.8 Lato, sans-serif;
	color: #777;
}

.container {
	padding: 80px 120px;
}

.navbar {
	font-family: Montserrat, sans-serif;
	margin-bottom: 0;
	background-color: #2d2d30;
	border: 0;
	/* font-size: 11px !important; */
	letter-spacing: 4px;
	opacity: 0.9;
}

.navbar li a, .navbar .navbar-brand {
	color: #d5d5d5 !important;
}

.navbar-nav li a:hover {
	color: #fff !important;
}

.navbar-nav li.active a {
	color: #fff !important;
	background-color: #29292c !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
}

.open .dropdown-toggle {
	color: #fff;
	background-color: #555 !important;
}

.dropdown-menu li a {
	color: #000 !important;
}

.dropdown-menu li a:hover {
	background-color: red !important;
}

footer {
	background-color: #2d2d30;
	color: #f5f5f5;
	padding: 32px;
}

footer a {
	color: #f5f5f5;
}

footer a:hover {
	color: #777;
	text-decoration: none;
}

.form-control {
	border-radius: 0;
}

textarea {
	resize: none;
}

.btn.btn-signin {
	background-color: rgb(104, 145, 162);
	padding: 0px;
	font-weight: 700;
	font-size: 14px;
	height: 36px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	border: none;
}
</style>
</head>
<body id="myPage">
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid" style="background-color: #2d2d30;">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>


			<a class="navbar-brand" href="<c:url value="/Welcome" />"><font
				style="color: red; font-size: 45px"><b>R</b></font><font
				style="color: white;"><b>AYS</b></font></a>

		</div>
		<div class="collapse navbar-collapse" id="myNavbar" style="background-color: #2d2d30;">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#myPage"><span class="fa fa-home"></span>HOME</a></li>
				<li><a href="#about"><span class="fa fa-user-circle-o "></span>ABOUT</a></li>
				<li><a href="#services"> <span class="fa fa-cog px"></span>SERVICES</a></li>
				<li><a href="#contact">  <span class="fa fa-address-book  15px"></span>CONTACT</a></li>
			</ul>
		</div>
	</div>
</nav>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">

		<!-- Wrapper for slides 1 -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src='<c:url value="resources/img/ncs.jpg"></c:url>'
					alt="Chicago" style="width: 100%; height: 700px">
				<div class="carousel-caption">

					<button
						style="background-color: #18d26e; margin-bottom: 15%; padding: 0px; font-weight: 700; 
						font-size: 14px; height: 36px; -moz-border-radius: 8px; -webkit-border-radius: 3px; 
						border-radius: 18px; border: none;">

						<a href="<c:url value="/Welcome" />"
							style="color: black; font-size: 20px; text-decoration: none;">Online Result System </a>
					</button>

					<h2 style="color: white-space;">
						<b>THINK IT THINK US</b>
					</h2>
					<h3 style="color: white-space:;">providing expert care advice
						& services using RAYS Technology</h3>
				</div>
			</div>
			
			<!-- Wrapper for slides 2 -->
			<div class="item">
				<img src="<c:url value="resources/img/Index5.jpg"/> " alt="New York"
					style="width: 100%; height: 700px">
				<div class="carousel-caption">
					<button
						style="background-color: #18d26e; margin-bottom: 5% padding: 0px; font-weight: 700; font-size: 14px; height: 36px; -moz-border-radius: 8px; -webkit-border-radius: 3px; border-radius: 18px; border: none;">

						<a href="<c:url value="/Welcome" />"
							style="color: black; font-size: 20px; text-decoration: none;">Online Result System </a>
					</button>

					<br> <br>
					<h2 style="color: blue;">
						<b>Your Performance is your job guarantee</b>
					</h2>

					<h2 style="color: black;">Dont Neglect</h2>
					<h3 style="color: black;">Providing Expert Care Advice &
						Services Using RAYS Technology</h3>
				</div>
			</div>



    <!-- Wrapper for slides 3 -->
			<div class="item">
				<img src='<c:url value="resources/img/President.png"></c:url>'
					alt="Los Angeles" style="width: 100%; height: 700px">
				<div class="carousel-caption">

					<button
						style="background-color: #18d26e; margin-bottom: 18%; padding: 0px; font-weight: 700; font-size: 14px; height: 36px; -moz-border-radius: 8px; -webkit-border-radius: 3px; border-radius: 18px; border: none;">

						<a href="<c:url value="/Welcome" />"
							style="color: black; font-size: 20px; text-decoration: none;">Online
							Result System </a>
					</button>
					<h2 style="color: black;"></h2>
					<h3>Even though the traffic was a mess, we had the best time
						playing at Venice Beach!</h3>
				</div>
			</div>
		</div>
		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span></a>
		 <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>

	</div>

	<!-- Container (The Band Section) -->
	<div id="about" class="container text-center">
		<div class="col-lg-12 text-center">
			<h2 class="section-heading">
				<b>ABOUT</b>
			</h2>
			<hr class="my-4">
		</div>
		<p></p>
		<p>We are providing training to Corporate Employees and
			Professionals on end-to-end enterprise solutions. Our Training
			contents are designed according to the current Industry Standards.
			Our courses are highly valued in the corporate IT world. Our courses
			cover the most comprehensive portfolio of IT. Our rich experience
			with customer centric approach has prepared us to enrich the
			knowledge and skill sets of dynamic software engineers by providing
			value added training in the areas of Software Development and
			Testing. Our trainers have got rich training and technical experience
			and are especially trained & certified for the training services. We
			successfully seek to create an excellent environment within company.
			Our core focus along with expertise area is open source technologies
			and Frameworks. We have expertise in J2EE, Web Services, SOA,
			Messaging Services, OOAD, Spring, Hibernate, RUP, Weblogic,
			Webshpere, MQ Workflow, MQ Series, JBoss. Net, Android, WCF Web
			Services, Ruby on Rails, Oracle, HADOOP and BIG Data.</p>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<p class="text-center">
					<strong>Node Js</strong>
				</p>
				<br> <a href="#demo" data-toggle="collapse"> <img
					src='<c:url value="resources/img/Node.png"></c:url>'
					class="img-circle person" alt="Random Name" width="255"
					height="255">
				</a>

			</div>
			<div class="col-sm-4">
				<p class="text-center">
					<strong>Angular Js</strong>
				</p>
				<br> <a href="#demo2" data-toggle="collapse"> <img
					src='<c:url value="resources/img/Angular.jpg"></c:url>'
					class="img-circle person" alt="Random Name" width="255"
					height="255">
				</a>

			</div>
			<div class="col-sm-4">
				<p class="text-center">
					<strong>Spring</strong>
				</p>
				<br> <a href="#demo3" data-toggle="collapse"> <img
					src='<c:url value="resources/img/Spring.jpg"></c:url>'
					class="img-circle person" alt="Random Name" width="255"
					height="255">
				</a>

			</div>
		</div>
	</div>

	<!-- #about -->
	<!--==========================
      Portfolio Section
    ============================-->

	<section id="services">


	<div class="col-lg-12 text-center">
		<h2 class="section-heading">
			<b>OUR SERVICES</b>
		</h2>
		<hr class="my-4">
	</div>



	<section class="p-0" id="portfolio">
	<div class="container-fluid p-0">
		<div class="row no-gutters popup-gallery">
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href='<c:url value="resources/img/Angular.jpg"></c:url>'> <img
					class="img-fluid" style="width: 410px; height: 250px"
					src='<c:url value="resources/img/Angular.jpg"></c:url>' alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Course</div>
							<div class="project-name">Angular</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box" style=""
					href='<c:url value="resources/img/hibernate.jpg"></c:url>'> <img
					class="img-fluid" style="width: 410px; height: 250px"
					src='<c:url value="resources/img/hibernate.jpg"></c:url>' alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Course</div>
							<div class="project-name">Hibernate</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href='<c:url value="resources/img/Java.png"></c:url>'> <img
					class="img-fluid" style="width: 410px; height: 250px"
					src='<c:url value="resources/img/Java.png"></c:url>' alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Course</div>
							<div class="project-name">Java</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href='<c:url value="resources/img/Node.png"></c:url>'> <img
					class="img-fluid" style="width: 410px; height: 250px"
					src='<c:url value="resources/img/Node.png"></c:url>' alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Course</div>
							<div class="project-name">Node Js</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href='<c:url value="resources/img/Spring.jpg"></c:url>'> <img
					class="img-fluid" style="width: 410px; height: 250px"
					src='<c:url value="resources/img/Spring.jpg"></c:url>' alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Course</div>
							<div class="project-name">Spring</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a class="portfolio-box"
					href='<c:url value="resources/img/bs.jpg"></c:url>'> <img
					class="img-fluid" style="width: 410px; height: 250px"
					src='<c:url value="resources/img/bs.jpg"></c:url>' alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Course</div>
							<div class="project-name">Bootstrap</div>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	</section></section>

	<!-- #portfolio -->
	<!--==========================
       Contact Section
    ============================-->
	<section id="contact" class="section-bg wow fadeInUp">
	<div class="col-lg-12 text-center">
		<h2 class="section-heading">
			<b>CONTACT</b>
		</h2>
		<hr class="my-4">
	</div>
	<div class="container">




		<div class="row contact-info">

			<div class="col-md-4">
				<div class="contact-address">
					<i style="color: black;"
						class="fa fa-map-marker fa-3x mb-3 sr-contact"></i>
					<h3>Address</h3>
					<address>
						<font size="2">212 President Tower, 6/2 South Tukogunj,
							Madhumilan Square, Indore, Madhya Pradesh 452001</font>
					</address>
				</div>
			</div>

			<div class="col-md-4">
				<div class="contact-phone">
					<i style="color: black;" class="fa fa-phone fa-3x mb-3 sr-contact"></i>
					<h3>Phone Number</h3>
					<p>
						<font size="2">0731 424 9244</font>
					</p>
				</div>
			</div>

			<div class="col-md-4">
				<div class="contact-email">
					<i style="color: black;"
						class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
					<h3>Email</h3>
					<p>
						<a target=blank; style="text-decoration: underline;"
							href="http://www.raystec.com/"><font size="2">www.raystec.com</font></a>
					</p>
				</div>
			</div>

		</div>

	</div>
	</form>
	</div>

	</div>
	</section>
	<!-- #contact -->
	</main>




	<!-- Footer -->
	<a href="#" style="background-color: Tomato" class="back-to-top"><i
		style="color: black;" class="fa fa-chevron-up"></i></a>



	<script>
		$(document).ready(
				function() {
					// Initialize Tooltip
					$('[data-toggle="tooltip"]').tooltip();

					// Add smooth scrolling to all links in navbar + footer link
					$(".navbar a, footer a[href='#myPage']").on('click',
							function(event) {

								// Make sure this.hash has a value before overriding default behavior
								if (this.hash !== "") {

									// Prevent default anchor click behavior
									event.preventDefault();

									// Store hash
									var hash = this.hash;

									// Using jQuery's animate() method to add smooth page scroll
									// The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
									$('html, body').animate({
										scrollTop : $(hash).offset().top
									}, 900, function() {

										// Add hash (#) to URL when done scrolling (default click behavior)
										window.location.hash = hash;
									});
								} // End if
							});
				})
	</script>
	<!-- JavaScript Libraries -->
	<script src="resources/indexJs/jquery.min.js"></script>
	<script src="resources/indexJs/jquery-migrate.min.js"></script>
	<script src="resources/indexJs/bootstrap.bundle.min.js"></script>
	<script src="resources/indexJs/easing.min.js"></script>
	<script src="resources/indexJs/hoverIntent.js"></script>
	<script src="resources/indexJs/superfish.min.js"></script>
	<script src="resources/indexJs/wow.min.js"></script>
	<script src="resources/indexJs/waypoints.min.js"></script>
	<script src="resources/indexJs/counterup.min.js"></script>
	<script src="resources/indexJs/owl.carousel.min.js"></script>
	<script src="rresources/indexJs/isotope.pkgd.min.js"></script>
	<script src="resources/indexJs/lightbox.min.js"></script>
	<script src="resources/indexJs/jquery.touchSwipe.min.js"></script>
	<!-- Contact Form JavaScript File -->
	<script src="resources/indexJs/contactform.js"></script>

	<!-- Template Main Javascript File -->
	<script src="resources/indexJs/main.js"></script>
</body>
</html>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/img/fav.png">
<!-- Author Meta -->
<meta name="author" content="codepixer">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>Job Listing</title>

<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">
<!--
			CSS
			============================================= -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/linearicons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">


<script>
	var modal = document.getElementById('id01');

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>

<script>
	var modal = document.getElementById('id02');

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>

</head>
<body>

	<header id="header" id="home">
		<div class="container">
			<div class="row align-items-center justify-content-between d-flex">
				<div id="logo">
					<a href="index.html"><img
						src="${pageContext.request.contextPath}/resources/img/logo.png"
						alt="" title="" /></a>
				</div>
				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li class="menu-active"><a href="${pageContext.request.contextPath}/">Home</a></li>
						<li><a href="${pageContext.request.contextPath}/about">About Us</a></li>
						<li><a href="${pageContext.request.contextPath}/newuser">Register / SignUp?</a></li>

					</ul>
				</nav>
				<!-- #nav-menu-container -->


			</div>
		</div>
	</header>
	<!-- #header -->





	<!-- start banner Area -->
	<section class="banner-area relative" id="home">
		<div class="overlay overlay-bg"></div>
		<div class="container">





			<div
				class="row fullscreen d-flex align-items-center justify-content-center">
				<div class="banner-content col-lg-6">

					
					</h5>

						<form class="modal-content animate"
							action="${pageContext.request.contextPath}/create" method="POST"
							class="form-horizontal">

							<h5 style="color:red;">
								<c:if test="${usernameExists== true}">

							<p><i> Email Already taken, choose another one!!</i></p>
							</c:if>
							</h5>

							<h5 style="color:blue;">
								<c:if test="${userCreated== true}">

							<p><i> Account created, Please Login to continue</i></p>
							</c:if>
							</h5>
							
							<div class="container1">
								<label for="uname">Username</label> <input type="text"
									placeholder="Enter Username" class="input1" name="username"
									pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
									title="Must contain in the format example@domain.com"
									required> 
									
									
									<label for="psw"><b>Password</b></label> <input
									type="password" placeholder="Enter Password" class="input1"
									name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
									title="Must be of 8 character with atleast one uppercase letter and one number">

								<button type="submit" >Sign Up</button>
							</div>

							
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />

						</form>



				</div>

			</div>
		</div>




	</section>
	<!-- End banner Area -->


	<!-- Start popular-post Area -->
	<section class="popular-post-area pt-100">
		<div class="container">
			<div class="row align-items-center">
				<div class="active-popular-post-carusel">
					<div class="single-popular-post d-flex flex-row">
						<div class="thumb">
							<img class="img-fluid"
								src="${pageContext.request.contextPath}/resources/img/p1.png"
								alt=""> <a class="btns text-uppercase" href="#">view
								job post</a>
						</div>
						<div class="details">
							<a href="#"><h4>Creative Designer</h4></a>
							<h6>Los Angeles</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod temporinc ididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam quis.</p>
						</div>
					</div>
					<div class="single-popular-post d-flex flex-row">
						<div class="thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/p2.png"
								alt=""> <a class="btns text-uppercase" href="#">view
								job post</a>
						</div>
						<div class="details">
							<a href="#"><h4>Creative Designer</h4></a>
							<h6>Los Angeles</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod temporinc ididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam quis.</p>
						</div>
					</div>
					<div class="single-popular-post d-flex flex-row">
						<div class="thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/p1.png"
								alt=""> <a class="btns text-uppercase" href="#">view
								job post</a>
						</div>
						<div class="details">
							<a href="#"><h4>Creative Designer</h4></a>
							<h6>Los Angeles</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod temporinc ididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam quis.</p>
						</div>
					</div>
					<div class="single-popular-post d-flex flex-row">
						<div class="thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/p2.png"
								alt=""> <a class="btns text-uppercase" href="#">view
								job post</a>
						</div>
						<div class="details">
							<a href="#"><h4>Creative Designer</h4></a>
							<h6>Los Angeles</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod temporinc ididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam quis.</p>
						</div>
					</div>
					<div class="single-popular-post d-flex flex-row">
						<div class="thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/p1.png"
								alt=""> <a class="btns text-uppercase" href="#">view
								job post</a>
						</div>
						<div class="details">
							<a href="#"><h4>Creative Designer</h4></a>
							<h6>Los Angeles</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod temporinc ididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam quis.</p>
						</div>
					</div>
					<div class="single-popular-post d-flex flex-row">
						<div class="thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/p2.png"
								alt=""> <a class="btns text-uppercase" href="#">view
								job post</a>
						</div>
						<div class="details">
							<a href="#"><h4>Creative Designer</h4></a>
							<h6>Los Angeles</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod temporinc ididunt ut labore et dolore magna
								aliqua. Ut enim ad minim veniam quis.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End popular-post Area -->

	<!-- Start feature-cat Area -->
	<section class="feature-cat-area pt-100" id="category">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-60 col-lg-10">
					<div class="title text-center">
						<h1 class="mb-10">Featured Job Categories</h1>
						<p>Who are in extremely love with eco friendly system.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-2 col-md-4 col-sm-6">
					<div class="single-fcat">
						<a href="category.html"> <img
							src="${pageContext.request.contextPath}/resources/img/o1.png"
							alt="">
						</a>
						<p>Accounting</p>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-6">
					<div class="single-fcat">
						<a href="category.html"> <img
							src="${pageContext.request.contextPath}/resources/img/o2.png"
							alt="">
						</a>
						<p>Development</p>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-6">
					<div class="single-fcat">
						<a href="category.html"> <img
							src="${pageContext.request.contextPath}/resources/img/o3.png"
							alt="">
						</a>
						<p>Technology</p>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-6">
					<div class="single-fcat">
						<a href="category.html"> <img
							src="${pageContext.request.contextPath}/resources/img/o4.png"
							alt="">
						</a>
						<p>Media & News</p>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-6">
					<div class="single-fcat">
						<a href="category.html"> <img
							src="${pageContext.request.contextPath}/resources/img/o5.png"
							alt="">
						</a>
						<p>Medical</p>
					</div>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-6">
					<div class="single-fcat">
						<a href="category.html"> <img
							src="${pageContext.request.contextPath}/resources/img/o6.png"
							alt="">
						</a>
						<p>Goverment</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End feature-cat Area -->

	<!-- Start download Area -->
	<section class="download-area section-gap" id="app">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 download-left">
					<img class="img-fluid"
						src="${pageContext.request.contextPath}/resources/img/d1.png"
						alt="">
				</div>
				<div class="col-lg-6 download-right">
					<h1>
						Download the <br> Job Listing App Today!
					</h1>
					<p class="subs">It won’t be a bigger problem to find one
						video game lover in your neighbor. Since the introduction of
						Virtual Game, it has been achieving great heights so far as its
						popularity and technological advancement are concerned.</p>
					<div class="d-flex flex-row">
						<div class="buttons">
							<i class="fa fa-apple" aria-hidden="true"></i>
							<div class="desc">
								<a href="#">
									<p>
										<span>Available</span> <br> on App Store
									</p>
								</a>
							</div>
						</div>
						<div class="buttons">
							<i class="fa fa-android" aria-hidden="true"></i>
							<div class="desc">
								<a href="#">
									<p>
										<span>Available</span> <br> on Play Store
									</p>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End download Area -->

	<!-- start footer Area -->
	<footer class="footer-area section-gap">
		<div class="container">

			<div class="row footer-bottom d-flex justify-content-between">
				<p class="col-lg-8 col-sm-12 footer-text m-0 text-white">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="fa fa-heart-o" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
				<div class="col-lg-4 col-sm-12 footer-social">
					<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-dribbble"></i></a> <a href="#"><i
						class="fa fa-behance"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<!-- End footer Area -->

	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/hoverIntent.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/superfish.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.sticky.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/parallax.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>
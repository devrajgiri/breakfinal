<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="img/fav.png">
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

<script>
	var modal = document.getElementById('id03');

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
						<li class="menu-active"><a href="index.html">Home</a></li>
						<li class="menu-active"><a
							href="${pageContext.request.contextPath}/about">About Us</a></li>
						<li><a href="${pageContext.request.contextPath}/">Signup</a></li>
						<li><a href="${pageContext.request.contextPath}/">Login</a></li>
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
				<div class="banner-content col-lg-12">
					<form action="${pageContext.request.contextPath}/worker"
						class="serach-form-area" method="GET">
						<div class="row justify-content-center form-wrap">
							<div class="col-lg-4 form-cols">
								<input type="text" class="form-control" name="worker"
									placeholder="You looking for? Eg. Taxi Driver" required>
							</div>
							<div class="col-lg-3 form-cols">
								<div class="default-select" id="default-selects"">
									<select name="country">
										<option value="Nepal">Nepal</option>
										<option value="America">America</option>
										<option value="India">India</option>
									</select>
								</div>
							</div>

							<div class="col-lg-2 form-cols">
								<input type="text" class="form-control" id="city" name="city"
									placeholder="Enter City" required>
							</div>



							<div class="col-lg-2 form-cols">
								<input type="submit" class="form-control" value="submit">
							</div>


						</div>
					</form>



					<h3 class="text-white">
						<span>${count}</span> users found
					</h3>
				


					
					
				</div>

			</div>
		</div>




	</section>
	<!-- End banner Area -->


	<!-- Start post Area -->
	<section class="post-area section-gap">
		<div class="container">
			<div class="row justify-content-center d-flex">
				<div class="col-lg-8 post-list">
					<c:forEach var="tempCustomer" items="${local}">

						<div class="single-post d-flex flex-row">
							<div class="thumb">
								<div class="col-lg-12">
									<img src="data:image/jpeg;base64,${tempCustomer.imgUtility}"
										height=100 width=100 alt="no data">
								</div>
							</div>

							<div class="details">
								<div class="title d-flex flex-row justify-content-between">
									<div class="titles">
										<a href="#"><h4 style="color: gray;">Worker Profile</h4></a>
										<p class="address">
											Name:<span> ${tempCustomer.workerName} </span>
										</p>
										<p class="address">
											Country:<span> ${tempCustomer.country} </span>
										</p>
										<p class="address">
											City:<span> ${tempCustomer.city} </span>
										</p>
										<p class="address">
											Location:<span> ${tempCustomer.location} </span>
										</p>
										<br>
										<h4 style="color: green;">Skills:</h4>
										<p class="address">
											<span> ${tempCustomer.item1} </span>
										</p>
										<p class="address">
											<span> ${tempCustomer.item2} </span>
										</p>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>


				<div class="col-lg-4 sidebar">

					<div class="single-slidebar">
						<h4>Jobs by Location</h4>
						<ul class="cat-list">
							<li><a class="justify-content-between d-flex" href="#"><p>New
										York</p>
									<span>37</span></a></li>
							<li><a class="justify-content-between d-flex" href="#"><p>Park
										Montana</p>
									<span>57</span></a></li>
							<li><a class="justify-content-between d-flex" href="#"><p>Atlanta</p>
									<span>33</span></a></li>
							<li><a class="justify-content-between d-flex" href="#"><p>Arizona</p>
									<span>36</span></a></li>
							<li><a class="justify-content-between d-flex" href="#"><p>Florida</p>
									<span>47</span></a></li>
							<li><a class="justify-content-between d-flex" href="#"><p>Rocky
										Beach</p>
									<span>27</span></a></li>
							<li><a class="justify-content-between d-flex" href="#"><p>Chicago</p>
									<span>17</span></a></li>
						</ul>
					</div>

					<div class="single-slidebar">
						<h4>Top rated job posts</h4>
						<div class="active-relatedjob-carusel">
							<div class="single-rated">
								<img class="img-fluid"
									src="${pageContext.request.contextPath}/resources/img/r1.jpg"
									alt="">
								<h4>Creative Art Designer</h4>
								<h6>Premium Labels Limited</h6>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod temporinc ididunt ut dolore magna aliqua.</p>
								<h5>Job Nature: Full time</h5>
								<p class="address">
									<span class="lnr lnr-map"></span> 56/8, Panthapath Dhanmondi
									Dhaka
								</p>
								<p class="address">
									<span class="lnr lnr-database"></span> 15k - 25k
								</p>
								<a href="#" class="btns text-uppercase">Apply job</a>
							</div>
							<div class="single-rated">
								<img class="img-fluid"
									src="${pageContext.request.contextPath}/resources/img/r1.jpg"
									alt="">
								<h4>Creative Art Designer</h4>
								<h6>Premium Labels Limited</h6>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod temporinc ididunt ut dolore magna aliqua.</p>
								<h5>Job Nature: Full time</h5>
								<p class="address">
									<span class="lnr lnr-map"></span> 56/8, Panthapath Dhanmondi
									Dhaka
								</p>
								<p class="address">
									<span class="lnr lnr-database"></span> 15k - 25k
								</p>
								<a href="#" class="btns text-uppercase">Apply job</a>
							</div>
							<div class="single-rated">
								<img class="img-fluid"
									src="${pageContext.request.contextPath}/resources/img/r1.jpg"
									alt="">
								<h4>Creative Art Designer</h4>
								<h6>Premium Labels Limited</h6>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod temporinc ididunt ut dolore magna aliqua.</p>
								<h5>Job Nature: Full time</h5>
								<p class="address">
									<span class="lnr lnr-map"></span> 56/8, Panthapath Dhanmondi
									Dhaka
								</p>
								<p class="address">
									<span class="lnr lnr-database"></span> 15k - 25k
								</p>
								<a href="#" class="btns text-uppercase">Apply job</a>
							</div>
						</div>
					</div>

					<div class="single-slidebar">
						<h4>Jobs by Category</h4>
						<ul class="cat-list">
							<li><a class="justify-content-between d-flex" href="#"><p>Technology</p>
									<span>37</span></a></li>
							<li><a class="justify-content-between d-flex" href="#"><p>Media
										& News</p>
									<span>57</span></a></li>
							<li><a class="justify-content-between d-flex" href="#"><p>Goverment</p>
									<span>33</span></a></li>
							<li><a class="justify-content-between d-flex" href="#"><p>Medical</p>
									<span>36</span></a></li>
							<li><a class="justify-content-between d-flex" href="#"><p>Restaurants</p>
									<span>47</span></a></li>
							<li><a class="justify-content-between d-flex" href="#"><p>Developer</p>
									<span>27</span></a></li>
							<li><a class="justify-content-between d-flex" href="#"><p>Accounting</p>
									<span>17</span></a></li>
						</ul>
					</div>

					<div class="single-slidebar">
						<h4>Carrer Advice Blog</h4>
						<div class="blog-list">
							<div class="single-blog "
								style="background:#000 url(${pageContext.request.contextPath}/resources/img/blog1.jpg);">
								<a href="#"><h4>
										Home Audio Recording <br> For Everyone
									</h4></a>
								<div class="meta justify-content-between d-flex">
									<p>02 Hours ago</p>
									<p>
										<span class="lnr lnr-heart"></span> 06 <span
											class="lnr lnr-bubble"></span> 02
									</p>
								</div>
							</div>
							<div class="single-blog "
								style="background:#000 url(${pageContext.request.contextPath}/resources/img/blog2.jpg);">
								<a href="#"><h4>
										Home Audio Recording <br> For Everyone
									</h4></a>
								<div class="meta justify-content-between d-flex">
									<p>02 Hours ago</p>
									<p>
										<span class="lnr lnr-heart"></span> 06 <span
											class="lnr lnr-bubble"></span> 02
									</p>
								</div>
							</div>
							<div class="single-blog "
								style="background:#000 url(${pageContext.request.contextPath}/resources/img/blog1.jpg);">
								<a href="#"><h4>
										Home Audio Recording <br> For Everyone
									</h4></a>
								<div class="meta justify-content-between d-flex">
									<p>02 Hours ago</p>
									<p>
										<span class="lnr lnr-heart"></span> 06 <span
											class="lnr lnr-bubble"></span> 02
									</p>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- End post Area -->

	<!-- Start callto-action Area -->
	<section class="callto-action-area section-gap">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content col-lg-9">
					<div class="title text-center">
						<h1 class="mb-10 text-white">Join us today without any
							hesitation</h1>
						<p class="text-white">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit, sed do eiusmod tempor incididunt ut labore et
							dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
							exercitation.</p>
						<a class="primary-btn" href="#">I am a Candidate</a> <a
							class="primary-btn" href="#">Request Free Demo</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End calto-action Area -->

	<!-- start footer Area -->
	<footer class="footer-area section-gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-12">
					<div class="single-footer-widget">
						<h6>Top Products</h6>
						<ul class="footer-nav">
							<li><a href="#">Managed Website</a></li>
							<li><a href="#">Manage Reputation</a></li>
							<li><a href="#">Power Tools</a></li>
							<li><a href="#">Marketing Service</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-6  col-md-12">
					<div class="single-footer-widget newsletter">
						<h6>Newsletter</h6>
						<p>You can trust us. we only send promo offers, not a single
							spam.</p>
						<div id="mc_embed_signup">
							<form target="_blank" novalidate="true"
								action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
								method="get" class="form-inline">

								<div class="form-group row" style="width: 100%">
									<div class="col-lg-8 col-md-12">
										<input name="EMAIL" placeholder="Enter Email"
											onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Enter Email '" required=""
											type="email">
										<div style="position: absolute; left: -5000px;">
											<input name="b_36c4fd991d266f23781ded980_aefe40901a"
												tabindex="-1" value="" type="text">
										</div>
									</div>

									<div class="col-lg-4 col-md-12">
										<button class="nw-btn primary-btn">
											Subscribe<span class="lnr lnr-arrow-right"></span>
										</button>
									</div>
								</div>
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-3  col-md-12">
					<div class="single-footer-widget mail-chimp">
						<h6 class="mb-20">Instragram Feed</h6>
						<ul class="instafeed d-flex flex-wrap">
							<li><img
								src="${pageContext.request.contextPath}/resources/img/i1.jpg"
								alt=""></li>
							<li><img
								src="${pageContext.request.contextPath}/resources/img/i2.jpg"
								alt=""></li>
							<li><img
								src="${pageContext.request.contextPath}/resources/img/i3.jpg"
								alt=""></li>
							<li><img
								src="${pageContext.request.contextPath}/resources/img/i4.jpg"
								alt=""></li>
							<li><img
								src="${pageContext.request.contextPath}/resources/img/i5.jpg"
								alt=""></li>
							<li><img
								src="${pageContext.request.contextPath}/resources/img/i6.jpg"
								alt=""></li>
							<li><img
								src="${pageContext.request.contextPath}/resources/img/i7.jpg"
								alt=""></li>
							<li><img
								src="${pageContext.request.contextPath}/resources/img/i8.jpg"
								alt=""></li>
						</ul>
					</div>
				</div>
			</div>

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
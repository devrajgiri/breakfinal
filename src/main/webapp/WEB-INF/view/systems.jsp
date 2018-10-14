<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
			<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/linearicons.css">
			<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
			<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
			<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
			<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css">					
			<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
			<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css">
			<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/easy-autocomplete/1.3.5/easy-autocomplete.min.css"
	rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.11.2.js"
	integrity="sha256-WMJwNbei5YnfOX5dfgVCS5C4waqvc+/0fV7W2uy3DyU="
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/easy-autocomplete/1.3.5/jquery.easy-autocomplete.min.js"
	type="text/javascript"></script>

		</head>
		<body>

		  <header id="header" id="home" >
			    <div class="container">
			    	<div class="row align-items-center justify-content-between d-flex">
				      <div id="logo">
				        <a href="#"><img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="" title="" /></a>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				          <li class="menu-active"><a href="${pageContext.request.contextPath}/">Home</a></li>
				          <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
				        </ul>
				      </nav><!-- #nav-menu-container -->		    		
			    	</div>
			    </div>
				
			  </header><!-- #header -->


			<!-- start banner Area -->
			<section class="submit-area section-gap1" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h3 class="text-white">
								Insert Your Details				
							</h3>	


<div class="container">
  	<form action="${pageContext.request.contextPath}/insertworker" method="POST" class="form-horizontal" enctype="multipart/form-data">

<input type="hidden" name="userid" value="<security:authentication property="principal.id"/>"/>
<div class="form-group">

      <label class="control-label col-sm-2 text-white" for="country">Country:</label>
      <div class="col-sm-10">
	<select name="country" class="form-control" required>
		<option value="Nepal" >Nepal</option>
		<option value="America" >America</option>
		<option value="India" >India</option>
		
		</select>
      </div>
    </div>



    <div class="form-group">
      <label class="control-label col-sm-2 text-white" for="city">City:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="city" placeholder="E.g: NewYork" name="city" required>
      </div>
    </div>
				<script>
								var options = {
									url : "${pageContext.request.contextPath}/city",
									getValue : "city",
									list : {
										match : {
											enabled : true
										}
									}
								};
								$("#city").easyAutocomplete(options);
							</script>
	

    <div class="form-group">
      <label class="control-label col-sm-2 text-white" for="city">Select Image:</label>
      <div class="col-sm-10">
      <div class="col-sm-3">      <input type="file"  name="file" required></div>
      </div>
    </div>

    <div class="form-group">
      <label class="control-label col-sm-2 text-white" for="location">Location:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="location" placeholder="E.g: Gwarko" name="location">
      </div>
    </div>
			
	
    <div class="form-group">
      <label class="control-label col-sm-2 text-white" for="seller">Worker Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="worker" placeholder="E.g:john doe" name="worker" required>
      </div>
    </div>
			
    <div class="form-group">
      <label class="control-label col-sm-2 text-white" for="website">website:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="web" placeholder="E.g: www.Lalitpur.com" name="web" required>
      </div>
    </div>
			


    <div class="form-group">
      <label class="control-label col-sm-2 text-white" for="item">I will work as:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="item1" placeholder="Eg. taxi driver" name="item1" required>
      </div>
    </div>

    <div class="form-group">
      <label class="control-label col-sm-2 text-white" for="item">I will work as:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="item2" placeholder="Eg. plumber" name="item2" required>
      </div>
    </div>

		<div style="margin-top: 10px" class="form-group">
			<div class="col-sm-6 controls">
				<button type="submit" class="btn btn-success">Insert</button>
			</div>
		</div>
</form>	
	</div>
<a href="${pageContext.request.contextPath}/">Back to Home Page</a>
						</div>											
					</div>
			</div>
			</section>
			<!-- End banner Area -->	



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
						<div class="col-lg-6 col-md-12">
							<div class="single-footer-widget newsletter">
								<h6>Newsletter</h6>
								<p>You can trust us. we only send promo offers, not a single spam.</p>
								<div id="mc_embed_signup">
									<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">

										<div class="form-group row" style="width: 100%">
											<div class="col-lg-8 col-md-12">
												<input name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '" required="" type="email">
												<div style="position: absolute; left: -5000px;">
													<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
												</div>
											</div> 
										
											<div class="col-lg-4 col-md-12">
												<button class="nw-btn primary-btn">Subscribe<span class="lnr lnr-arrow-right"></span></button>
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
									<li><img src="${pageContext.request.contextPath}/resources/img/i1.jpg" alt=""></li>
									<li><img src="${pageContext.request.contextPath}/resources/img/i2.jpg" alt=""></li>
									<li><img src="${pageContext.request.contextPath}/resources/img/i3.jpg" alt=""></li>
									<li><img src="${pageContext.request.contextPath}/resources/img/i4.jpg" alt=""></li>
									<li><img src="${pageContext.request.contextPath}/resources/img/i5.jpg" alt=""></li>
									<li><img src="${pageContext.request.contextPath}/resources/img/i6.jpg" alt=""></li>
									<li><img src="${pageContext.request.contextPath}/resources/img/i7.jpg" alt=""></li>
									<li><img src="${pageContext.request.contextPath}/resources/img/i8.jpg" alt=""></li>
								</ul>
							</div>
						</div>						
					</div>

					<div class="row footer-bottom d-flex justify-content-between">
						<p class="col-lg-8 col-sm-12 footer-text m-0 text-white">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
						<div class="col-lg-4 col-sm-12 footer-social">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-dribbble"></i></a>
							<a href="#"><i class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</footer>
			<!-- End footer Area -->		

			<script src="${pageContext.request.contextPath}/resources/js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="${pageContext.request.contextPath}/resources/js/vendor/bootstrap.min.js"></script>			
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="${pageContext.request.contextPath}/resources/js/easing.min.js"></script>			
			<script src="${pageContext.request.contextPath}/resources/js/hoverIntent.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/superfish.min.js"></script>	
			<script src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>	
			<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>			
			<script src="${pageContext.request.contextPath}/resources/js/jquery.sticky.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>			
			<script src="${pageContext.request.contextPath}/resources/js/parallax.min.js"></script>		
			<script src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>	
			<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>	
		</body>
	</html>
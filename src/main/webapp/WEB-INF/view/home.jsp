<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
<title>Local store</title>
</head>

<body>


	<hr>

	<!-- display user name and role -->
	<!-- Login Form -->
	<form action="${pageContext.request.contextPath}/insert" method="POST"
		class="form-horizontal">

		<!-- Place for messages: error, alert etc ... -->
	<input type="hidden" name="userid" value="<security:authentication property="principal.id"/>" />
		<!-- User name -->
		<div style="margin-bottom: 25px" class="input-group">
			<span class="input-group-addon"> <i
				class="glyphicon glyphicon-user"></i></span> <label for="country">
				Country</label> <select name="country" id="country" class="form-control">
				<option value="Nepal">Nepal</option>
				<option value="America">America</option>
				<option value="India">India</option>
			</select> <br> 

			<label for="city">City</label> <select name="city" class="form-control">
				<option value="lalitpur">Lalitpur</option>
				<option value="kathmandu">kathmandu</option>
				<option value="biratnagar">biratnagar</option>
				<option value="dharan">Dharan</option>
				<option value="pokhara">pokhara</option>
				<option value="ithari">ithari</option>
				<option value="chitwan">chitwan</option>
				<option value="butwal">butwal</option>
				<option value="birgunj">birgunj</option>
				<option value="bhaktapur">bhaktapur</option>
				
			</select> <br> 
			
			
			 <label
				for="item">Location</label> <input type="text" name="location"
				placeholder="location" class="form-control"> <i>e.g:
				Gwarko</i> <br>
				
				<label for="seller">Seller Name</label> <input
				type="text" name="seller" placeholder="Shop Name" class="form-control"><i>e.g:
				New cosmetics</i><br>  
				<label for="website">Your website</label> <input
				type="text" name="web" placeholder="website" class="form-control"><i>e.g:
				www.lalitpurcosmetics.com</i><br>  

				<label for="item">Look for</label> <input
				type="text" name="item1" placeholder="item" class="form-control"><i>e.g:
				Shoes</i> <br> <label for="item">Look for</label> <input
				type="text" name="item2" placeholder="item" class="form-control"><i>e.g:
				Shoes</i> <br> <label for="item">Look for</label> <input
				type="text" name="item3" placeholder="item" class="form-control"><i>e.g:
				Shoes</i> <br> <label for="item">Look for</label> <input
				type="text" name="item4" placeholder="item" class="form-control"><i>e.g:
				Shoes</i> <br> <label for="item">Look for</label> <input
				type="text" name="item5" placeholder="item" class="form-control"><i>e.g:
				Shoes</i> <br> <label for="item">Look for</label> <input
				type="text" name="item6" placeholder="item" class="form-control"><i>e.g:
				Shoes</i> <br> <label for="item">Look for</label> <input
				type="text" name="item7" placeholder="item" class="form-control"><i>e.g:
				Shoes</i> <br> <label for="item">Look for</label> <input
				type="text" name="item8" placeholder="item" class="form-control"><i>e.g:
				Shoes</i>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />

		</div>

		<!-- Login/Submit Button -->
		<div style="margin-top: 10px" class="form-group">
			<div class="col-sm-6 controls">
				<button type="submit" class="btn btn-success">Insert</button>
			</div>
		</div>
	</form>




	<hr>


	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">

		<input type="submit" value="Logout" />

	</form:form>

</body>

</html>










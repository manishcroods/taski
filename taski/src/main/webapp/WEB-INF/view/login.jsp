<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Taski-croods app</title>

<!-- Global stylesheets -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900"
	rel="stylesheet" type="text/css">
<link href="../../../../global_assets/css/icons/icomoon/styles.min.css"
	rel="stylesheet" type="text/css">
<link href="assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="assets/css/bootstrap_limitless.min.css" rel="stylesheet"
	type="text/css">
<link href="assets/css/layout.min.css" rel="stylesheet" type="text/css">
<link href="assets/css/components.min.css" rel="stylesheet"
	type="text/css">
<link href="assets/css/colors.min.css" rel="stylesheet" type="text/css">
<!-- /global stylesheets -->

<!-- Core JS files -->
<script
	src="<%=request.getContextPath()%>/global_assets/js/main/jquery.min.js"></script>
<script
	src="<%=request.getContextPath()%>/global_assets/js/main/bootstrap.bundle.min.js"></script>
<script
	src="<%=request.getContextPath()%>/global_assets/js/plugins/loaders/blockui.min.js"></script>
<!-- /core JS files -->

<!-- Theme JS files -->
<script
	src="<%=request.getContextPath()%>/global_assets/js/plugins/visualization/d3/d3.min.js"></script>
<script
	src="<%=request.getContextPath()%>/global_assets/js/plugins/visualization/d3/d3_tooltip.js"></script>
<script
	src="<%=request.getContextPath()%>/global_assets/js/plugins/forms/styling/switchery.min.js"></script>
<script
	src="<%=request.getContextPath()%>/global_assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
<script
	src="<%=request.getContextPath()%>/global_assets/js/plugins/ui/moment/moment.min.js"></script>
<script
	src="<%=request.getContextPath()%>/global_assets/js/plugins/pickers/daterangepicker.js"></script>

<script src="assets/js/app.js"></script>
<script
	src="<%=request.getContextPath()%>/global_assets/js/demo_pages/dashboard.js"></script>
<!-- /theme JS files -->

</head>

<body>


	<!-- Main navbar -->
	<div class="navbar navbar-expand-md navbar-dark">
		<div class="navbar-brand">
			<a href="/login" class="d-inline-block"> <img
				src="<%=request.getContextPath()%>croods.jpg" alt="">
			</a>
		</div>

		<div class="collapse navbar-collapse" id="navbar-mobile">
			<span class="badge bg-success ml-md-3 mr-md-auto">WELL COME TO
				CROODS 
			</span>
			<ul class="navbar-nav"></ul>
		</div>
	</div>


	<!-- sb admin  -->
<body class="bg-dark">
	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">
				<h1>Login</h1>
			</div>
			<div class="card-body">
				<form id="login-form" class="form" name="loginform" action="/login"
					method="post">

					<div class="form-group">
						<div class="form-label-group">
							<input type="email" id="inputEmail" name="email"
								class="form-control" placeholder="Email address"
								autofocus="autofocus">
						</div>
					</div>

					<div class="form-group">
						<div class="form-label-group">
							<input type="password" id="inputPassword" name="password"
								class="form-control" placeholder="Password">

						</div>
					</div>

					<div class="form-group">
						<div class="checkbox">
							<label> <input type="checkbox" value="remember-me">
								Remember Password
							</label>
						</div>
					</div>

					<button type="submit" class="btn btn-primary">Login</button>

				</form>

				<!-- <div class="text-center">
						<a class="d-block small mt-3" href="/register">Register anAccount</a> 
							<a class="d-block small" href="forgot-password.html">ForgotPassword?</a>
					</div> -->
			</div>
		</div>
	</div>





	<script>
$("#login-form").submit(function(){
    var isFormValid = true;

    $("input").each(function(){
        if ($.trim($(this).val()).length == 0){
            $(this).addClass("highlight");
            isFormValid = false;
        }
        else{
            $(this).removeClass("highlight");
        }
    });

    if (!isFormValid) alert("Please fill in all the required fields (indicated by *)");

    return isFormValid;
});
</script>
</body>


</html>

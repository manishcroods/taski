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


<!-- code for preventing back after logout  -->

<script>
	function preventBack() {
		window.history.forward();
	}
	setTimeout("preventBack()", 0);
	window.onunload = function() {
		null;
	}
</script>


<body class="bg-dark">

	<div class="container ">
		<div class="card card-login mx-auto mt-5">
			<h1 align="center">YOU ARE LOGGED OUT</h1>
			<h2 align="center">Please Log-In</h2>

			<div class="card-body">
				<form id="login-form" class="form" name="loginform" action="/login"
					method="get">

					<!-- <button type="submit" class="btn btn-primary">Login</button> -->
					<button type="submit" class="btn btn-primary"
						style="margin-left: auto; margin-right: auto; display: block; margin-top: 0%; margin-bottom: 1%">
						LogIn</button>

				</form>

			</div>
		</div>
	</div>
</html>

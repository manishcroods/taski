<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
<script
	src="<%=request.getContextPath()%>/global_assets/js/plugins/notifications/pnotify.min.js"></script>

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

<body>

	<!-- Main navbar -->
	<div class="navbar navbar-expand-md navbar-dark">

		<div class="navbar-brand">
			<a href="/dashboard" class="d-inline-block"> <img
				src="<%=request.getContextPath()%>croods.jpg" alt="">
			</a>
		</div>

		<div class="d-md-none">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbar-mobile">
				<i class="icon-tree5"></i>
			</button>
			<button class="navbar-toggler sidebar-mobile-main-toggle"
				type="button">
				<i class="icon-paragraph-justify3"></i>
			</button>
		</div>

		<div class="collapse navbar-collapse" id="navbar-mobile">
			<ul class="navbar-nav">
				<li class="nav-item"><a href="#"
					class="navbar-nav-link sidebar-control sidebar-main-toggle d-none d-md-block">
						<i class="icon-paragraph-justify3"></i>
				</a></li>

				<li class="nav-item dropdown">
					<!-- <a href="#" class="navbar-nav-link dropdown-toggle caret-0" data-toggle="dropdown">
						<i class="icon-git-compare"></i>
						<span class="d-md-none ml-2">Git updates</span>
						<span class="badge badge-pill bg-warning-400 ml-auto ml-md-0">9</span>
					</a> -->

					<div class="dropdown-menu dropdown-content wmin-md-350">
						<div class="dropdown-content-header">
							<span class="font-weight-semibold">Git updates</span> <a href="#"
								class="text-default"><i class="icon-sync"></i></a>
						</div>

						<div class="dropdown-content-body dropdown-scrollable">
							<ul class="media-list">
								<li class="media">
									<div class="mr-3">
										<a href="#"
											class="btn bg-transparent border-primary text-primary rounded-round border-2 btn-icon"><i
											class="icon-git-pull-request"></i></a>
									</div>

									<div class="media-body">
										Drop the IE <a href="#">specific hacks</a> for temporal inputs
										<div class="text-muted font-size-sm">4 minutes ago</div>
									</div>
								</li>

								<li class="media">
									<div class="mr-3">
										<a href="#"
											class="btn bg-transparent border-warning text-warning rounded-round border-2 btn-icon"><i
											class="icon-git-commit"></i></a>
									</div>

									<div class="media-body">
										Add full font overrides for popovers and tooltips
										<div class="text-muted font-size-sm">36 minutes ago</div>
									</div>
								</li>

								<li class="media">
									<div class="mr-3">
										<a href="#"
											class="btn bg-transparent border-info text-info rounded-round border-2 btn-icon"><i
											class="icon-git-branch"></i></a>
									</div>

									<div class="media-body">
										<a href="#">Chris Arney</a> created a new <span
											class="font-weight-semibold">Design</span> branch
										<div class="text-muted font-size-sm">2 hours ago</div>
									</div>
								</li>

								<li class="media">
									<div class="mr-3">
										<a href="#"
											class="btn bg-transparent border-success text-success rounded-round border-2 btn-icon"><i
											class="icon-git-merge"></i></a>
									</div>

									<div class="media-body">
										<a href="#">Eugene Kopyov</a> merged <span
											class="font-weight-semibold">Master</span> and <span
											class="font-weight-semibold">Dev</span> branches
										<div class="text-muted font-size-sm">Dec 18, 18:36</div>
									</div>
								</li>

								<li class="media">
									<div class="mr-3">
										<a href="#"
											class="btn bg-transparent border-primary text-primary rounded-round border-2 btn-icon"><i
											class="icon-git-pull-request"></i></a>
									</div>

									<div class="media-body">
										Have Carousel ignore keyboard events
										<div class="text-muted font-size-sm">Dec 12, 05:46</div>
									</div>
								</li>
							</ul>
						</div>

						<div class="dropdown-content-footer bg-light">
							<a href="#" class="text-grey mr-auto">All updates</a>
							<div>
								<a href="#" class="text-grey" data-popup="tooltip"
									title="Mark all as read"><i class="icon-radio-unchecked"></i></a>
								<a href="#" class="text-grey ml-2" data-popup="tooltip"
									title="Bug tracker"><i class="icon-bug2"></i></a>
							</div>
						</div>
					</div>
				</li>
			</ul>

			<span class="badge bg-success ml-md-3 mr-md-auto">Online</span>

			<ul class="navbar-nav">



				<li class="nav-item dropdown dropdown-user"><a href=""
					class="navbar-nav-link d-flex align-items-center dropdown-toggle"
					data-toggle="dropdown"> <span> Hello "${user.userName}"</span>
				</a>

					<div class="dropdown-menu dropdown-menu-right">
						<div class="dropdown-divider"></div>
						
						<a href="/changepassword" class="dropdown-item">
								<i class="icon-pencil"></i>Change password
						</a>
							
						<a href="/logout" class="dropdown-item">
								<i class="icon-switch2"></i> Logout
						</a>
							
					</div></li>
			</ul>
		</div>
	</div>
	<!-- main navbar -->


	<!-- Page content -->
	<div class="page-content">

		<!-- Main sidebar -->
		<div class="sidebar sidebar-dark sidebar-main sidebar-expand-md">

			<!-- Sidebar mobile toggler -->
			<div class="sidebar-mobile-toggler text-center">
				<a href="#" class="sidebar-mobile-main-toggle"> <i
					class="icon-arrow-left8"></i>
				</a> Navigation <a href="#" class="sidebar-mobile-expand"> <i
					class="icon-screen-full"></i> <i class="icon-screen-normal"></i>
				</a>
			</div>
			<!-- /sidebar mobile toggler -->


			<!-- Sidebar content -->
			<div class="sidebar-content">

				<!-- User menu -->
				<div class="sidebar-user">
					<div class="card-body">
						<div class="media">
							<div class="mr-3">
								<a href="#"><img
									src="../../../../global_assets/images/placeholders/placeholder.jpg"
									width="38" height="38" class="rounded-circle" alt=""></a>
							</div>

							<div class="media-body">
								<div class="media-title font-weight-semibold">Croods</div>
								<div class="font-size-xs opacity-50">
									<i class="icon-pin font-size-sm"></i> &nbsp;Vastrapur,Ahemdabad
								</div>
							</div>

							<div class="ml-3 align-self-center">
								<a href="#" class="text-white"><i class="icon-cog3"></i></a>
							</div>
						</div>
					</div>
				</div>

				<!-- /user menu -->


				<!-- Main navigation -->
				<div class="card card-sidebar-mobile">
					<ul class="nav nav-sidebar" data-nav-type="accordion">

						<!-- Main -->
						<li class="nav-item-header"><div
								class="text-uppercase font-size-xs line-height-xs">Main</div> <i
							class="icon-menu" title="Main"></i></li>
						<li class="nav-item"><a href="/dashboard"
							class="nav-link active"> <i class="icon-home4"></i> <span>
									Dashboard </span>
						</a></li>
						<li class="nav-item nav-item-submenu"><a href="#"
							class="nav-link"><i class="icon-copy"></i> <span>Task</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Layouts">
								<li class="nav-item"><a href="/addtask"
									class="nav-link active">Add new Task</a></li>
								<li class="nav-item"><a href="/runningtask"
									class="nav-link">Running Task</a></li>
								<li class="nav-item"><a href="/completedtask"
									class="nav-link">Completed Task</a></li>
							</ul></li>
						<li class="nav-item nav-item-submenu"><a href="#"
							class="nav-link"><i class="icon-color-sampler"></i> <span>Personal
									Task</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Layouts">
								<li class="nav-item"><a href="/addpersonaltask"
									class="nav-link active">Add new Task</a></li>
								<li class="nav-item"><a href="/runningpersonaltask"
									class="nav-link">Running Task</a></li>
								<li class="nav-item"><a href="/completedpersonaltask"
									class="nav-link">Completed Task</a></li>
							</ul></li>


						<!-- categories bars -->



						<li class="nav-item"><a href="/category" class="nav-link">
								<i class="icon-width"> </i> <span
								class="glyphicon glyphicon-cog">Category</span>
						</a></li>

						<!-- <li class="nav-item nav-item-submenu">
							<a href="/category" class="nav-link">
								<i class="icon-stack"></i> <span>Categories</span></a>
						</li> -->


						<!-- Users slide bar -->

						<li class="nav-item nav-item-submenu"><a href="#"
							class="nav-link"><i class="icon-stack"></i> <span>Users</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Starter kit">
								<!-- <li class="nav-item"><a href="../seed/layout_nav_horizontal.html" class="nav-link">Horizontal navigation</a></li>
								<li class="nav-item"><a href="../seed/sidebar_none.html" class="nav-link">No sidebar</a></li> -->
								<li class="nav-item"><a href="/saveuser" class="nav-link">Add
										new User</a></li>
								<li class="nav-item nav-item-submenu"><a href="/user"
									class="nav-link">All Users</a></li>
								<!-- <li class="nav-item nav-item-submenu">
									<a href="#" class="nav-link">3 sidebars</a>
									<ul class="nav nav-group-sub">
										<li class="nav-item"><a href="../seed/sidebar_right_hidden.html" class="nav-link">Right sidebar hidden</a></li>
										<li class="nav-item"><a href="../seed/sidebar_right_visible.html" class="nav-link">Right sidebar visible</a></li>
									</ul>
								</li> -->
							</ul></li>


						<!-- Contacts bar -->

						<li class="nav-item nav-item-submenu"><a href="#"
							class="nav-link"><i class="icon-stack"></i> <span>Contacts</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Starter kit">

								<li class="nav-item"><a href="/addcontacts"
									class="nav-link">Add New Contacts</a></li>
								<li class="nav-item nav-item-submenu"><a href="/contacts"
									class="nav-link">All Contacts</a> <!-- 	<ul class="nav nav-group-sub">
										<li class="nav-item"><a href="../seed/sidebar_secondary.html" class="nav-link">Secondary sidebar</a></li>
										<li class="nav-item"><a href="../seed/sidebar_right.html" class="nav-link">Right sidebar</a></li>
									</ul> --></li>
							</ul></li>

						<!-- settings  bar -->

						<li class="nav-item"><a href="setting" class="nav-link">
								<i class="icon-width"> </i> <span
								class="glyphicon glyphicon-cog">Settings</span>
						</a></li>
					</ul>
				</div>
				<!-- /main navigation -->

			</div>
			<!-- /sidebar content -->

		</div>

		<div class="container">
			<div class="card card-login mx-auto mt-5">
				<div class="card-header">
					<h1>Change Password</h1>
				</div>
				
				<div class="card-body">
					<form id="changepassword-form" class="form"
						name="changepasswordform" action="/changepassword" method="post">

						<div class="form-group">
							<div class="col-md-8">
								<input type="password" id="oldpassword" name="oldpassword"
									class="form-control oldpassword" placeholder="Old Password"
									autofocus="autofocus">
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-8">
								<input type="password" id="newpassword" name="newpassword"
									class="form-control pass" placeholder="New Password">

							</div>
						</div>

						<div class="form-group">
							<div class="col-md-8">
								<input type="password" id="conformnewpassword" name="conformnewpassword"
									class="form-control pass" placeholder="Confirm Password">
							</div>
						</div>

						<button type="button" id="savebutton" class="btn btn-primary">Change Password</button>

					</form>

					
				</div>
			</div>
		</div>
	</div>
</body>

       <!--  *********validation for change password**********  -->

		<script type="text/javascript">
		
			$( document ).ready(function()
					{
						console.log("000");
						$('#savebutton').prop('disabled', true);
		                
		              	var password = document.getElementById("newpassword") ,
						    confirm_password = document.getElementById("conformnewpassword");
		
						function validatePassword()
							{
							  if(password.value != confirm_password.value) 
								  {
						               $('#savebutton').prop('disabled', true);
									   console.log("Passwords Don't Match");
									   confirm_password.setCustomValidity("Passwords Don't Match");
								  } 
							  else 
							  	  {
					                $('#savebutton').prop('disabled', false);
									console.log("Passwords  Match");
							    	confirm_password.setCustomValidity('');
							  	  }
							
							}
						 	 $(".pass").keyup(function()
					                {
										console.log("000");
										validatePassword();
					                	//  $("input").css("background-color", "pink");
					                });
						 	 
			 /* old password chechking */
			 
						 	$("#savebutton").click(function()
						 			{
						 				console.log("old password checking");
						 				var oldpassword = $('#oldpassword').val();
						 				var newpassword=$('#newpassword').val();
						 				console.log(oldpassword);
						 				//alert(oldpassword);
						 				
						 				 $.post(
						 						{
						 						    
						 						    url: "/checkoldpassword",
						 						    data:{"oldpassword":oldpassword,"newpassword":newpassword},
						 						    success: function (data) 
						 						    	{
						 						    		if(data=="old password is wrong")
						 						    		{
								 						       // alert("old password is InCorrect")
						 						    			  new PNotify({
						 						    	                title: 'OOps',
						 						    	                text: 'old password is InCorrect',
						 						    	                icon: 'icon-blocked',
						 						    	                type: 'error'
						 						    	            });
						 						    		}else if(data=="your password updated succussful")
						 						    		{
								 						    	//alert("Password Updated")
								 						    	new PNotify({
															                title: 'Success',
															                text: 'Password Updated Successfully',
															                icon: 'icon-checkmark3',
															                type: 'success'
		           														});
								 						    	setTimeout(function() {
																  location.href="/login";
																},1000); 
								 						    	
						 						    		}
						 						         
						 						  		},
						 						          error: function (data) 
						 						          {
						 						        	  alert("old password is not correct")	
						 						          } 
						 						});
						 			
						 			
						 				});
						 	
					});
		
				</script>
</body>
</html>

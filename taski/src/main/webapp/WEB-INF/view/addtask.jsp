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

<script src="assets/js/app.js"></script>
<script
	src="<%=request.getContextPath()%>/global_assets/js/demo_pages/dashboard.js"></script>
<!-- /theme JS files -->

</head>

<body>


	<!-- Main navbar -->
	<div class="navbar navbar-expand-md navbar-dark">

		<div class="navbar-brand">
			<a href="/addcontacts" class="d-inline-block"> <img
				src="<%=request.getContextPath()%>/global_assets/images/logo_light.png"
				alt="">
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
				<li class="nav-item dropdown"><a href="#"
					class="navbar-nav-link dropdown-toggle caret-0"
					data-toggle="dropdown"> <i class="icon-people"></i> <span
						class="d-md-none ml-2">Users</span>
				</a>

					<div
						class="dropdown-menu dropdown-menu-right dropdown-content wmin-md-300">
						<div class="dropdown-content-header">
							<span class="font-weight-semibold">Users online</span> <a
								href="#" class="text-default"><i
								class="icon-search4 font-size-base"></i></a>
						</div>

						<div class="dropdown-content-body dropdown-scrollable">
							<ul class="media-list">
								<li class="media">
									<div class="mr-3">
										<img
											src="../../../../global_assets/images/placeholders/placeholder.jpg"
											width="36" height="36" class="rounded-circle" alt="">
									</div>
									<div class="media-body">
										<a href="#" class="media-title font-weight-semibold">Jordana
											Ansley</a> <span class="d-block text-muted font-size-sm">Lead
											web developer</span>
									</div>
									<div class="ml-3 align-self-center">
										<span class="badge badge-mark border-success"></span>
									</div>
								</li>

								<li class="media">
									<div class="mr-3">
										<img
											src="../../../../global_assets/images/placeholders/placeholder.jpg"
											width="36" height="36" class="rounded-circle" alt="">
									</div>
									<div class="media-body">
										<a href="#" class="media-title font-weight-semibold">Will
											Brason</a> <span class="d-block text-muted font-size-sm">Marketing
											manager</span>
									</div>
									<div class="ml-3 align-self-center">
										<span class="badge badge-mark border-danger"></span>
									</div>
								</li>

								<li class="media">
									<div class="mr-3">
										<img
											src="../../../../global_assets/images/placeholders/placeholder.jpg"
											width="36" height="36" class="rounded-circle" alt="">
									</div>
									<div class="media-body">
										<a href="#" class="media-title font-weight-semibold">Hanna
											Walden</a> <span class="d-block text-muted font-size-sm">Project
											manager</span>
									</div>
									<div class="ml-3 align-self-center">
										<span class="badge badge-mark border-success"></span>
									</div>
								</li>

								<li class="media">
									<div class="mr-3">
										<img
											src="../../../../global_assets/images/placeholders/placeholder.jpg"
											width="36" height="36" class="rounded-circle" alt="">
									</div>
									<div class="media-body">
										<a href="#" class="media-title font-weight-semibold">Dori
											Laperriere</a> <span class="d-block text-muted font-size-sm">Business
											developer</span>
									</div>
									<div class="ml-3 align-self-center">
										<span class="badge badge-mark border-warning-300"></span>
									</div>
								</li>

								<li class="media">
									<div class="mr-3">
										<img
											src="../../../../global_assets/images/placeholders/placeholder.jpg"
											width="36" height="36" class="rounded-circle" alt="">
									</div>
									<div class="media-body">
										<a href="#" class="media-title font-weight-semibold">Vanessa
											Aurelius</a> <span class="d-block text-muted font-size-sm">UX
											expert</span>
									</div>
									<div class="ml-3 align-self-center">
										<span class="badge badge-mark border-grey-400"></span>
									</div>
								</li>
							</ul>
						</div>

						<div class="dropdown-content-footer bg-light">
							<a href="#" class="text-grey mr-auto">All users</a> <a href="#"
								class="text-grey"><i class="icon-gear"></i></a>
						</div>
					</div></li>

				<li class="nav-item dropdown"><a href="#"
					class="navbar-nav-link dropdown-toggle caret-0"
					data-toggle="dropdown"> <i class="icon-bubbles4"></i> <span
						class="d-md-none ml-2">Messages</span> <span
						class="badge badge-pill bg-warning-400 ml-auto ml-md-0">2</span>
				</a>

					<div
						class="dropdown-menu dropdown-menu-right dropdown-content wmin-md-350">
						<div class="dropdown-content-header">
							<span class="font-weight-semibold">Messages</span> <a href="#"
								class="text-default"><i class="icon-compose"></i></a>
						</div>

						<div class="dropdown-content-body dropdown-scrollable">
							<ul class="media-list">
								<li class="media">
									<div class="mr-3 position-relative">
										<img
											src="../../../../global_assets/images/placeholders/placeholder.jpg"
											width="36" height="36" class="rounded-circle" alt="">
									</div>

									<div class="media-body">
										<div class="media-title">
											<a href="#"> <span class="font-weight-semibold">James
													Alexander</span> <span class="text-muted float-right font-size-sm">04:58</span>
											</a>
										</div>

										<span class="text-muted">who knows, maybe that would be
											the best thing for me...</span>
									</div>
								</li>

								<li class="media">
									<div class="mr-3 position-relative">
										<img
											src="../../../../global_assets/images/placeholders/placeholder.jpg"
											width="36" height="36" class="rounded-circle" alt="">
									</div>

									<div class="media-body">
										<div class="media-title">
											<a href="#"> <span class="font-weight-semibold">Margo
													Baker</span> <span class="text-muted float-right font-size-sm">12:16</span>
											</a>
										</div>

										<span class="text-muted">That was something he was
											unable to do because...</span>
									</div>
								</li>

								<li class="media">
									<div class="mr-3">
										<img
											src="../../../../global_assets/images/placeholders/placeholder.jpg"
											width="36" height="36" class="rounded-circle" alt="">
									</div>
									<div class="media-body">
										<div class="media-title">
											<a href="#"> <span class="font-weight-semibold">Jeremy
													Victorino</span> <span class="text-muted float-right font-size-sm">22:48</span>
											</a>
										</div>

										<span class="text-muted">But that would be extremely
											strained and suspicious...</span>
									</div>
								</li>

								<li class="media">
									<div class="mr-3">
										<img
											src="../../../../global_assets/images/placeholders/placeholder.jpg"
											width="36" height="36" class="rounded-circle" alt="">
									</div>
									<div class="media-body">
										<div class="media-title">
											<a href="#"> <span class="font-weight-semibold">Beatrix
													Diaz</span> <span class="text-muted float-right font-size-sm">Tue</span>
											</a>
										</div>

										<span class="text-muted">What a strenuous career it is
											that I've chosen...</span>
									</div>
								</li>

								<li class="media">
									<div class="mr-3">
										<img
											src="../../../../global_assets/images/placeholders/placeholder.jpg"
											width="36" height="36" class="rounded-circle" alt="">
									</div>
									<div class="media-body">
										<div class="media-title">
											<a href="#"> <span class="font-weight-semibold">Richard
													Vango</span> <span class="text-muted float-right font-size-sm">Mon</span>
											</a>
										</div>

										<span class="text-muted">Other travelling salesmen live
											a life of luxury...</span>
									</div>
								</li>
							</ul>
						</div>

						<div class="dropdown-content-footer justify-content-center p-0">
							<a href="#" class="bg-light text-grey w-100 py-2"
								data-popup="tooltip" title="Load more"><i
								class="icon-menu7 d-block top-0"></i></a>
						</div>
					</div></li>

				<li class="nav-item dropdown dropdown-user"><a href="#"
					class="navbar-nav-link d-flex align-items-center dropdown-toggle"
					data-toggle="dropdown"> <img
						src="../../../../global_assets/images/placeholders/placeholder.jpg"
						class="rounded-circle mr-2" height="34" alt=""> <span>Victoria</span>
				</a>

					<div class="dropdown-menu dropdown-menu-right">
						<a href="#" class="dropdown-item"><i class="icon-user-plus"></i>
							My profile</a> <a href="#" class="dropdown-item"><i
							class="icon-coins"></i> My balance</a> <a href="#"
							class="dropdown-item"><i class="icon-comment-discussion"></i>
							Messages <span class="badge badge-pill bg-blue ml-auto">58</span></a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"><i class="icon-cog5"></i>
							Account settings</a> <a href="#" class="dropdown-item"><i
							class="icon-switch2"></i> Logout</a>
					</div></li>
			</ul>
		</div>
	</div>
	<!-- /main navbar -->


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
								<div class="media-title font-weight-semibold">Victoria
									Baker</div>
								<div class="font-size-xs opacity-50">
									<i class="icon-pin font-size-sm"></i> &nbsp;Santa Ana, CA
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
								<li class="nav-item"><a
									href="/runningtask"
									class="nav-link">Running Task</a></li>
								<li class="nav-item"><a
									href="/completedtask"
									class="nav-link">Completed Task</a></li>
							</ul></li>
						<li class="nav-item nav-item-submenu"><a href="#"
							class="nav-link"><i class="icon-color-sampler"></i> <span>Personal
									Task</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Layouts">
								<li class="nav-item"><a href="/addpersonaltask"
									class="nav-link active">Add new Task</a></li>
								<li class="nav-item"><a
									href="/runningpersonaltask"
									class="nav-link">Running Task</a></li>
								<li class="nav-item"><a
									href="/completedpersonaltask"
									class="nav-link">Completed Task</a></li>
							</ul></li>


						<!-- categories bars -->


						<li class="nav-item"><a href="/Contacts" class="nav-link">
								<i class="icon-width"> </i> <span
								class="glyphicon glyphicon-cog">Contacts</span>
						</a></li>


						<!-- Users slide bar -->

						<li class="nav-item nav-item-submenu"><a href="#"
							class="nav-link"><i class="icon-stack"></i> <span>Users</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Starter kit">
								<!-- <li class="nav-item"><a href="../seed/layout_nav_horizontal.html" class="nav-link">Horizontal navigation</a></li>
								<li class="nav-item"><a href="../seed/sidebar_none.html" class="nav-link">No sidebar</a></li> -->
								<li class="nav-item"><a href="/saveuser"
									class="nav-link">Add new User</a></li>
								<li class="nav-item nav-item-submenu"><a href="/user"
									class="nav-link">All Users</a>
									</li>		
									</ul></li>


						<!-- Contacts bar -->

						<li class="nav-item nav-item-submenu"><a href="#"
							class="nav-link"><i class="icon-stack"></i> <span>Contacts</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Starter kit">

								<li class="nav-item"><a href="/addcontacts" class="nav-link">Add
										Contacts</a></li>
								<li class="nav-item nav-item-submenu"><a href="/contacts"
									class="nav-link">All Users</a> 
										</li>
							</ul></li>
						



						<!-- settings  bar -->

						<li class="nav-item"><a
							href="/setting" class="nav-link">
								<i class="icon-width"> </i> <span
								class="glyphicon glyphicon-cog">Settings</span>
						</a></li>
						<!-- /main -->

					</ul>
				</div>
				<!-- /main navigation -->

			</div>
			<!-- /sidebar content -->

		</div>
		
<!-- page content  -->

			<div class="container">
				<div class="card card-register mx-auto mt-5">
					<div class="card-body">
						<div class="card-header">
							<header>
		                    	<h2>Create New task</h2>
		                	</header>
						</div>
					
						<form id="task-form" class="form" action="/savetask"
							method="post" >
							
							<div class="form-group">
								<div class="form-label-group">
									<h4>Title</h4>
										<input type="text" id="title" name="title" class="form-control"
											placeholder="Title" required="required"
											autofocus="autofocus">
									</div>
								</div>
								
									
									<div class="form-group">
				                        <h4>Category</h4>
					                        <select class="form-control  chosen-select" name="category.categoryId">
					                        	<c:forEach var="category" items="${categorylist}">
																<option value="${category.categoryId}">${category.categoryName}</option>
												</c:forEach>
					                        </select>
				                    </div>
				                    
				                    <div class="form-group">
				                        <h4>User</h4>
					                        <select class="form-control  chosen-select" name="user.userId">
					                        	<c:forEach var="user" items="${userlist}">
															<option value="${user.userId}">${user.userName}</option>
														</c:forEach>
					                        </select>
				                    </div>
									
							
								
								<div class="form-group">
									<div class="form-label-group">
										<h4>Task Description</h4><textarea class="form-control" name="taskDescription" rows="3" required="required" 
												placeholder="please give task discraption"></textarea>
									</div>
								</div>
							
							<button type="submit" class="btn btn-primary btn-block">Add New Task</button>
						</form>

					</div>
				</div>
			</div>
</body>

</html>

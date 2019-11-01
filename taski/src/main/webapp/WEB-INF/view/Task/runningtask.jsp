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
								<div class="media-title font-weight-semibold">Croods
									Consolidates</div>
								<div class="font-size-xs opacity-50">
									<i class="icon-pin font-size-sm"></i> &nbsp;Ahemdabad, GUJ
								</div>
							</div>

							<div class="ml-3 align-self-center">
								<a href="/setting" class="text-white"><i class="icon-cog3"></i></a>
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
								<li class="nav-item"><a href="/dashboard"
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
								<li class="nav-item"><a href="/dashboard"
									class="nav-link active">Add new Task</a></li>
								<li class="nav-item"><a href="/runningtask"
									class="nav-link">Running Task</a></li>
								<li class="nav-item"><a href="/completedtask"
									class="nav-link">Completed Task</a></li>
							</ul></li>


						<!-- categories bars -->


						<li class="nav-item"><a href="/category" class="nav-link">
								<i class="icon-width"> </i> <span
								class="glyphicon glyphicon-cog">Category</span>
						</a></li>


						<!-- Users slide bar -->

						<li class="nav-item nav-item-submenu"><a href="#"
							class="nav-link"><i class="icon-stack"></i> <span>Users</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Starter kit">
								<li class="nav-item"><a href="/saveuser" class="nav-link">Add
										new User</a></li>
								<li class="nav-item nav-item-submenu"><a href="/user"
									class="nav-link">All Users</a></li>
							</ul></li>


						<!-- Contacts bar -->

						<li class="nav-item nav-item-submenu"><a href="#"
							class="nav-link"><i class="icon-stack"></i> <span>Contacts</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Starter kit">

								<li class="nav-item"><a href="/addcontacts"
									class="nav-link">Add Contacts</a></li>
								<li class="nav-item nav-item-submenu"><a href="/contacts"
									class="nav-link">All Users</a></li>
							</ul></li>



						<!-- settings  bar -->

						<li class="nav-item"><a href="/setting" class="nav-link">
								<i class="icon-width"> </i> <span
								class="glyphicon glyphicon-cog">Settings</span>
						</a></li>
					</ul>
				</div>
			</div>

		</div>



		<!-- Main content -->
		<div class="content-wrapper">

			<!-- Page header -->
			<div class="page-header page-header-light">

				<div
					class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="/dashboard" class="breadcrumb-item"><i
								class="icon-home2 mr-2"></i> Home</a> <span
								class="breadcrumb-item active">User</span>
						</div>

						<a href="#" class="header-elements-toggle text-default d-md-none"><i
							class="icon-more"></i></a>
					</div>


				</div>
			</div>
			<!-- /page header -->






			<!-- category data -->


			<div class="card mb-6">

				<div class="container">



					<!-- ** product table ** -->
					<div class="card-body">
						<div class="table-responsive">
							<h2>User List</h2>
							<table class="table table-hover" id="dataTable">
								<thead>
									<tr>
										<th>#</th>
										<th>Name</th>
										<th>Created</th>
										<th>Status</th>
										<th>Assigned to</th>
										<th>Send Warning</th>
										<th>Actions</th>

									</tr>
								</thead>

								<tbody>
									<c:forEach var="task" items="${runningtasklist}">
										<tr id="list${task.taskId}">
											<td id="taskid">${task.taskId }</td>
											<td id="titleid">${task.title}</td>
											<td id="createdid">${task.created }</td>
											<td id="statusid">${task.status}</td>
											<td id="userid">${task.user.userName}</td>
											<td>
												<button type="button" data-user=${task.taskId }
													class="warning glyphicon glyphicon-bell btn btn-warning"
													data-toggle="modal" data-target="#myModal">Warning
												</button>

											</td>
											<td>
											<td><span> <input type="button"
													class="btn btn-primary btn-sm view-task"
													data-item-id="${task.taskId}" id="view-task${task.taskId}"
													value="view" /> <%-- <input type="text" name="edittaskName${task.taskId}" id="edittaskName${user.id}" 
											             		value="${task.title}" /> --%> <%-- <input type="button" class="btn btn-primary btn-sm edit-task" data-item-id="${task.taskId}" 
											             		id="edit-task${task.taskId}" name="editTask"  value="Edit" />  --%>

													<a href="JavaScript:Void(0)" data-toggle="modal"
													data-id="${task.taskId}"
													class="btn btn-primary btn-sm edit-task" title="Edit">
														<i class="fa fa-trash"> </i>Edit
												</a> <input type="button"
													class="btn btn-primary btn-sm done-task"
													data-item-id="${task.taskId}" id="done-task${task.taskId}"
													value="Done" /> <a href="JavaScript:Void(0)"
													data-toggle="modal" data-id="${task.taskId}"
													class="btn btn-primary btn-sm delete-task" title="Delete">
														<i class="fa fa-trash"> </i>Delete
												</a> <%-- <a href="JavaScript:Void(0)" data-toggle="modal" 
																data-id="${user.userId}"
																onclick="updateUserfun(this,${user.userId})"
																data-target="#user_update_modal"
																class="btn btn-primary btn-sm edit-user"
																title="Edit"> <i class="fa fa-edit"></i>Edit
																</a> --%> <%-- <a href="JavaScript:Void(0)" data-toggle="modal"
																data-id="${user.userId}"
																class="btn btn-primary btn-sm delete-user"
																title="Delete"> <i class="fa fa-trash"></i>Done</a> --%>





											</span></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>



			<!-- update user  -->

			<!-- <!--  edit model  -->

			<div class="modal fade" id="task_update_modal">
				<div class="modal-dialog">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header">
							<h2>Update Task</h2>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<!-- Modal body -->
						<div class="modal-body">
							<form id="task-form" class="form" action="/savetask"
								method="post">

								<div class="form-group">


									<input type="hidden" id="updatetaskid" name="taskId"
										value=${task.taskId }>

									<div class="form-group">
										<div class="form-label-group">
											<h4>Title</h4>
											<input type="text" data-id="titleid" id="titleid"
												name="title" class="form-control" value="${task.title}"
												required="required" autofocus="autofocus">
										</div>
									</div>

									<div class="form-group">
										<h4>Category</h4>
										<select class="form-control  chosen-select" name="categoryId"  id="categoryid" >
											<c:forEach var="category" items="${categorylist}">
												<option value="${category.categoryId}">${category.categoryName}</option>
											</c:forEach>
										</select>
									</div>

									<div class="form-group">
										<h4>User</h4>
										<select class="form-control  chosen-select" name="userId" id="userid">
											<c:forEach var="user" items="${userlist}">
												<option value="${user.userId}">${user.userName}</option>
											</c:forEach>
										</select>
									</div>



									<div class="form-group">
										<div class="form-label-group">
											<h4>Task Description</h4>
											<input type="text" id="taskdesceiptionid"
												name="taskDescription" class="form-control"
												value="${task.taskDescription}" required="required"
												autofocus="autofocus">
										</div>
									</div>
									<button type="submit" class="btn btn-primary btn-block">Update
									</button>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>


<script>
$(document).ready(function() {

	
	
	$("#task-form").submit(function(e) {

	    e.preventDefault(); // avoid to execute the actual submit of the form.
		var form = $(this);
	  

	    $.ajax({
		           type: "POST",
		           url: "/savetask",
		           data: form.serialize(), // serializes the form's elements.
		           success: function(data)
			           {
			        	   var task = '<tr id="list' + data.taskId + '"><td>' + data.taskId + '</td><td>' + data.title + '</td><td>' + data.category + '</td><td>' + data.user + '</td>';
			               user += '<td><a href="javascript:void(0)" id="edit-task" data-id="' + data.id + '" class="btn btn-info edit-user">Edit</a></td>';
			               user += '<td><a href="javascript:void(0)" id="delete-task" data-id="' + data.id + '" class="btn btn-danger delete-user">Delete</a></td></tr>';
			               console.log(data);
		
			               $("#list" + data.taskid).replaceWith(task);
			               $('#task-form').trigger("reset");
			               $('#task_update_modal').modal('hide');
			               $('#list').modal('show');
			              
			               //alert(data); 
			              // console.log(data);
			             	 location.reload();
			              
			           }
	         });
	});

});

					
				 function updateTaskfun(row, id) {
					$("#updatetask").attr("disabled", false);
				
					var crow = $(row).closest('tr');
					var id=$(crow).find('td:eq(0)').text();
					var title = $(crow).find('td:eq(1)').text();
					var category = $(crow).find('td:eq(2)').text();
					var user = $(crow).find('td:eq(3)').text();
					var taskDescripation = $(crow).find('td:eq(4)').text();
				
					console.log(id);
					console.log(title);
					console.log(category);
					
					$('#titleid').val(title);
					$('#categoryid').val(category);
					$('#userid').val(user);
					$('#taskdesceiptionid').val(taskDescripation);
				
				}
				</script>

<script>
				   
		$('body').on('click', '.delete-task', function () 
			{
				var taskid = $(this).data("id");
				alert(taskid);
				confirm("Are You sure want to delete !");
				
				 $.ajax(
					{
					        	
					    type: "GET",
					    url: "/task/delete/"+taskid,
					    success: function (data) {
					            	
					          $("#list" + taskid).remove();
					          location.reload();
						      $('#list').modal('show');
					          $('.result').html(data);
					  },
					            
					          error: function (data) 
					          {
					          	console.log('Error:', data);
					          } 
					      
					        });
					     
					    });   
					    
					  </script>


<!-- <script>
		
		
    		$(document).ready(function()
    			{
    			
    			$("#list").on('click','.edit-task',function(){
    		          
    	            var value = $(event.target).val();
    	            var id = $(event.target).data('taskId');
    	            var tdclassshow = ".edit"+id;
    	            var tdclasshide = ".display"+id;
    	            var edittaskid = "#editTask"+id;
    	            var edittaskDescriptionid = "#editTaskDescription"+id;
    	            var confirmbuttonshow = ".edit"+id;
    	            
    	            if(value==="Update")
    	            {
    	                $(tdclassshow).show();
    	                $(tdclasshide).hide();
    	                $(confirmbuttonshow).show();
    	                
    	            }else if(value==="Confirm")
    	            {
    	                var title = $(edittaskid).val();
    	                var taskSescripation = $(edittaskDescriptionid).val();
    	                
    	                var data = JSON.stringify(
    	                		{
    	                			"id":id ,
    	           					"title":title,
    	                			"taskSescripation":taskSescripation
    	                		});
    	                
    	                $.ajax({
    	                   type : "PUT",
    	                   url : "/task/edit/{id}",
    	                   contentType: "application/json",
    	                   data : data,
    	                   success: function(data){
    	                     $(tdclassshow).hide();
    	                     $(tdclasshide).show();
    	                     $(confirmbuttonshow).hide();
    	                     
    	                     var titleid = "#taskid"+id;
    	                     var title = "#titleid "+id;
    	                     //var taskdescripation= "#"+ id;
    	                     
    	                     $(titleid).text(title);
    	                     $(taskSescripationid).text(taskSescripation);
    	                     
    	                  
    	                   }
    	                 });
    	                 
    	            }
    	          
    	        });
    			});
    			
    
    	</script> -->










</html>

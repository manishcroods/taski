<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<title>Taski-Croods App</title>


<!-- *****Global stylesheets***** -->

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


<!-- *******global stylesheets****** -->



<!-- Core JS files -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.8.0.min.js"></script>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/jquery-ui.min.js"></script>

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
				src="<%=request.getContextPath()%>croods.jpg"
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
				<!--  <li class="nav-item  ">
					<button type="button" 
						id="attendancebutton" class="btn btn-primary attendance-button "
						data-toggle="modal"
						data-target="#user_attendance_modal"
						title="Add-Attendance">Attendance</button>
				</li> 
			 -->
			
			

				<li class="nav-item dropdown dropdown-user">
				
					<a href=""class="navbar-nav-link d-flex align-items-center dropdown-toggle"
						data-toggle="dropdown"> 
						<span> Hello "${user.userName}"</span>
					</a>

					<div class="dropdown-menu dropdown-menu-right">
						<div class="dropdown-divider">
						</div>
						
							<a href="JavaScript:Void(0)"
								data-toggle="modal"
								data-target="#user_attendance_modal"
								class="dropdown-item" title="Add-Attendance">
								<i class="icon-add">
								  Attendance
								</i>
							</a>
					
							<a href="/changepassword" class="dropdown-item">
								<i class="icon-pencil"></i>Change Password
							</a>
							
							<a href="/logout" class="dropdown-item">
								<i class="icon-switch2"></i> Logout
							</a>
					</div>
				</li>
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
									<i class="icon-pin font-size-sm"></i> &nbsp;
									Vastrapur,Ahemdabad
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
						
						<li class="nav-item nav-item-submenu">
							<a href="#" class="nav-link">
								<i class="icon-task"></i> 
									<span>Task</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Layouts">
							
								<li class="nav-item ">
									<a href="/addtask" class="nav-link active">
									<span>Add new Task</span></a>
								</li>
								
								<li class="nav-item"><a
									href="/runningtask"
									class="nav-link">Running Task</a>
								</li>
								
								<li class="nav-item"><a
									href="/completedtask"
									class="nav-link">Completed Task</a>
								</li>
								
							</ul>
						</li>
						<li class="nav-item nav-item-submenu"><a href="#"
							class="nav-link"><i class="icon-menu down"></i> <span>Personal
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
							class="nav-link"><i class="icon-user"></i> <span>Users</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Starter kit">
								
								<li class="nav-item"><a href="/saveuser" class="nav-link">Add
										new User</a></li>
								<li class="nav-item nav-item-submenu"><a href="/user"
									class="nav-link">All Users</a></li>
							</ul></li>


						<!-- Contacts bar -->

						<li class="nav-item nav-item-submenu"><a href="#"
							class="nav-link"><i class="icon-list"></i> <span>Contacts</span></a>

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
								<i class="icon-cog"> </i> <span
								class="glyphicon glyphicon-cog">Settings</span>
						</a></li>
						<!-- /main -->






					</ul>
				</div>
				<!-- /main navigation -->

			</div>
			<!-- /sidebar content -->

		</div>
		<!-- /main sidebar -->


		<!-- Main content -->
		<div class="content-wrapper">

			<!-- Page header -->
			<div class="page-header page-header-light">
				<div class="page-header-content header-elements-md-inline">
					<div class="page-title d-flex">
						<h4>
							 <span
								class="font-weight-semibold">Well Come -</span>   ${user.userName}
						</h4>
						<a href="#" class="header-elements-toggle text-default d-md-none"><i
							class="icon-more"></i></a>
					</div>

					
				</div>

				<div
					class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="/dashboard" class="breadcrumb-item"><i
								class="icon-home2 mr-2"></i> Home</a> <span
								class="breadcrumb-item active">Dashboard</span>
						</div>

						<a href="#" class="header-elements-toggle text-default d-md-none"><i
							class="icon-more"></i></a>
					</div>

					<div class="header-elements d-none">
						<div class="breadcrumb justify-content-center">
						

							<div class="breadcrumb-elements-item dropdown p-0">
								<a href="#" class="breadcrumb-elements-item dropdown-toggle"
									data-toggle="dropdown"> <i class="icon-gear mr-2"></i>
									Settings
								</a>

								<div class="dropdown-menu dropdown-menu-right">
									<a href="#" class="dropdown-item"><i class="icon-user-lock"></i>
										Account security</a> <a href="#" class="dropdown-item">
										<i class="icon-statistics"></i> Analytics</a> 
										<a href="#" class="dropdown-item"><i class="icon-accessibility"></i>
										Accessibility</a>
									<div class="dropdown-divider"></div>
									<a href="#" class="dropdown-item"><i class="icon-gear"></i>
										All settings</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /page header -->


			<!-- Content area -->
			<div class="content">

				<!-- Main charts -->
				<div class="row">
					<div class="col-md-6 dashboard-left-cell">
						<!-- /personal task -->
						<div class="admin-content-con">
						<div class="table-responsive">
							<h2 style="text-align: center">Running Task List</h2>
							<table class="table table-hover" id="dataTable">
								<thead>
									<tr>
										<th>#</th>
										<th>Task-Name</th>
										<th>Created</th>
										<th>Status</th>
										<th>Actions</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach var="task" items="${personaltasklist}">
										<tr id="list${task.taskId}">
											<td id="taskid">${task.taskId }</td>
											<td id="titleid">${task.title}</td>
											<td id="createdid">${task.created }</td>
											<td id="statusid">${task.status}</td>
											<td>
												<span> 
													<a href="JavaScript:Void(0)"
														data-toggle="modal" data-id="${task.taskId}"
														class="btn btn-primary btn-sm view-task" title="View">
														<i class="fa fa-trash"> </i>View
													</a>
												</span>
											</td>
											
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
				<div class="col-md-6 dashboard-right-cell">
					<div class="admin-content-con">
						<div class="table-responsive">
							<h2 style="text-align: center">Completed Task List</h2>
							<table class="table table-hover" id="dataTable">
								<thead>
									<tr>
										<th>#</th>
										<th>Task-Name</th>
										<th>Created</th>
										<th>Actions</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach var="task" items="${completedtasklist}">
										<tr id="list${task.taskId}">
											<td id="taskid">${task.taskId }</td>
											<td id="titleid">${task.title}</td>
											<td id="createdid">${task.created }</td>
											<td>
												<span> 
													<a href="JavaScript:Void(0)"
														data-toggle="modal" data-id="${task.taskId}"
														class="btn btn-primary btn-sm view-task" title="View">
														<i class="fa fa-trash"> </i>View
													</a> 
												
													<%-- a href="JavaScript:Void(0)" data-toggle="modal"
														data-id="${task.taskId}"
														
														data-target="#task_update_modal"
														class="btn btn-primary btn-sm edit-task" title="Edit">
															<i class="fa fa-edit"></i>Edit 
													</a>--%>
												</span>
											</td>
											
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
				
				
				
				
				<!-- /main charts -->


				<!-- Dashboard content -->
				<div class="row">
					<div class="col-xl-8">

						

					</div>
					<!-- /dashboard content -->

				</div>
				<!-- /content area -->


				<!-- Footer -->
				<div class="navbar navbar-expand-lg navbar-light">
					<div class="text-center d-lg-none w-100">
						<button type="button" class="navbar-toggler dropdown-toggle"
							data-toggle="collapse" data-target="#navbar-footer">
							<i class="icon-unfold mr-2"></i> Footer
						</button>
					</div>

					<div class="navbar-collapse collapse" id="navbar-footer">
						<span class="navbar-text"> &copy; 2019 - 2020. <a href="http://www.vasyerp.com/" target="_blank">Croods Consolidates</a> 
						</span>
					</div> 
				</div>
				<!-- /footer -->

			</div>
			<!-- /main content -->

		</div>
		</div>
		<!-- /page content -->
</body>


<!-- view page code  -->


			 <div class="modal fade" id="task_view_modal">
				<div class="modal-dialog">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header bg-primary">
							<h2>View Task</h2>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<!-- Modal body -->
					
						<div class="modal-body">
							<form id="task-form" class="form" action="/task/edit/{id}"
								method="post">

								<div class="form-group">

									<input type="hidden" id="viewtaskid" name="taskId"
										value=${task.taskId }>
									<div class="admin-content-con">
									
									<div class="form-group">
										<div class="form-label-group">
											<h4>Title</h4>
												<input type="text" id="viewtitle" name="title" class="form-control"
													 autofocus="autofocus" readonly>
										</div>
									</div>
									
									<div class="form-group">
										<div class="form-label-group">
											<h4>Task Description</h4>
												<input type="text" id="viewstatus" name="status" class="form-control"
													placeholder="status " autofocus="autofocus" readonly>
										</div>
									</div>
									
									<div class="form-group">
										<div class="form-label-group">
											<h4> Status</h4>
												<input type="text" id="viewtaskescription" name="taskDescription" class="form-control"
													placeholder="task Description" autofocus="autofocus" readonly>
										</div>
									</div>
				                 </div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

<!-- view task  -->

<!-- attendance saving code -->


		<div class="modal fade"  id="user_attendance_modal">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header" >
							<h2 align="center" class="modal-title" style="padding-left:90px">Add Attendance</h2>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<!-- Modal body -->
						<div class="modal-body">
							<form id="attendance-form" class="form" 
								action="/saveattendance" name="attendanceform"
								method="post">
							<div class="form-group" style="padding-left:90px">
								
								<div class="row">
									<div class="col-sm-5">
									<div class="form-group">
										<div class="form-label-group">
											<button type="button" id="intimeid" name="inTime"
													class="btn btn-success" >In
												</button>
													  
										</div>
									</div>
								</div>

								<div class="col-sm-4">
									<div class="form-group">
										<div class="form-label-group">
												<button type="button" id="outtimeid" name="outTime"
													class="btn btn-danger" >Out
												</button>
										</div>
									</div>
								</div>
								</div>
									</div>
							</form>
						</div>
					</div>
				</div>
				</div>



	<script>
				   
			$('body').on('click', '.view-task', function () 
				{
					var taskid = $(this).data("id");
						//alert(taskid);
					//confirm("Are You sure want to view this page !");
					
					 $.ajax(
						{
						        	
						    type: "GET",
						    url: "/task/view/"+taskid,
						    success: function (data) 
						    { 
						          $('#task_view_modal').modal('show');
							      console.log(data);
							      
							      $('#viewtaskid').val(data.taskId);
							      $('#viewtitle').val(data.title);
							      $('#viewstatus').val(data.status);
							     // $('#viewcategoryid').val(data.category.categoryId);
							      //$('#viewuserid').val(data.user.userId);
							      $("#viewtaskescription").val(data.taskDescription);
 
						  	},
						            
						          error: function (data) 
						          {
						          	console.log('Error:', data);
						          }    
						 });
				});   
						    
	</script>
			 
 <!-- in time ajax code -->
 
 	<script>
		$("#intimeid").click(function()
						 {
					        var intime = $('#intime').val();
					        console.log(intime);
					        console.log("Are You sure want save attendance !");
					 
					     $.post({
					            url: "/saveintime",
					            data:{"inTime":intime },
					            success: function (data) 
					            	{   
					            	    if(data=="succussfull")
	 						    		{
					            	    	new PNotify(
					            	    		{
									                title: 'Success',
									                text: 'attendance saved Successfully',
									                icon: 'icon-checkmark3',
									                type: 'success'
												});
					            	    	
					            	    	setTimeout(function() 
					            	    			{
													  location.reload();
													},500);
					           		 	}else if(data=="failed")
	 						    		{
			 						    	new PNotify(
			 						    		{
				 						    		title: 'OOps',
	 						    	                text: 'your are already done for today ,"SEE YOU TOMMORROW"',
	 						    	                icon: 'icon-blocked',
	 						    	                type: 'error'
												});
			 						    	
			 						    	setTimeout(function() 
			 						    		{
			 						    		location.reload();
												},1000); 
			 						    	
	 						    		}
					            	    
					            	},
					            
					            error: function (data) 
					            	{
					                console.log('Error:', data);
					            	}
					    });
					     
					    }); 
			 </script>
 	
 <!-- ** out time ajax code ** -->
 	
 	<script>
		$("#outtimeid").click(function()
						 {
					        var outtime = $('#outtime').val();
					        console.log(outtime);
					        console.log("Are You sure want leave !");
					 
					     $.post({
					            url: "/saveouttime",
					            data:{"outTime":outtime },
					            success: function (data) 
					            	{   
					            	    if(data=="succussfull")
	 						    		{
					            	    	new PNotify({
								                title: 'Success',
								                text: 'attendance saved Successfully',
								                icon: 'icon-checkmark3',
								                type: 'success'
												});
					            	    	setTimeout(function() {
												  location.reload();
												},500);
					           		 	}else if(data=="failed")
	 						    		{
			 						    	new PNotify({
			 						    		title: 'OOps',
 						    	                text: 'please enter in time first',
 						    	                icon: 'icon-blocked',
 						    	                type: 'error'
														});
			 						    	setTimeout(function() {
											  location.href="/dashboard";
											},1000); 
			 						    	
	 						    		}
					            	},
					            
					            error: function (data) 
					            	{
					                console.log('Error:', data);
					            	}
					    });
					     
					    }); 
			 </script>
 	
 	
	</html>

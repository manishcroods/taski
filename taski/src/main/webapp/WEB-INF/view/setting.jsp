<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Taski-croods app</title>

	<!-- Global stylesheets -->
	
	
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
	<link href="../../../../global_assets/css/icons/icomoon/styles.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/bootstrap_limitless.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/layout.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/components.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/colors.min.css" rel="stylesheet" type="text/css">
	
	<!-- /global stylesheets -->


	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.8.0.min.js"></script>	
	
<!-- Core JS files -->

		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
		
		<script src="https://code.jquery.com/jquery-1.8.0.min.js"></script>
		
		<script src="<%=request.getContextPath()%>/global_assets/js/demo_pages/dashboard.js"></script>
		
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/jquery-ui.min.js"></script>
		
		<script
			src="<%=request.getContextPath()%>/global_assets/js/main/jquery.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/global_assets/js/main/bootstrap.bundle.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/global_assets/js/plugins/loaders/blockui.min.js"></script>
			
<!-- /core JS files -->
	
	
	
	<!-- Theme JS files -->
	
	<script src="<%=request.getContextPath()%>/global_assets/js/plugins/visualization/d3/d3.min.js"></script>
	<script src="<%=request.getContextPath()%>/global_assets/js/plugins/visualization/d3/d3_tooltip.js"></script>
	<script src="<%=request.getContextPath()%>/global_assets/js/plugins/forms/styling/switchery.min.js"></script>
	<script src="<%=request.getContextPath()%>/global_assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
	<script src="<%=request.getContextPath()%>/global_assets/js/plugins/ui/moment/moment.min.js"></script>
	<script src="<%=request.getContextPath()%>/global_assets/js/plugins/pickers/daterangepicker.js"></script>

	<script src="assets/js/app.js"></script>
	
	
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
							
							
							
							<!-- <ul class="media-list">
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
							</ul> -->
							
							
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

				<li class="nav-item dropdown dropdown-user"><a href="#"
					class="navbar-nav-link d-flex align-items-center dropdown-toggle"
					data-toggle="dropdown"> <img
						src="../../../../global_assets/images/placeholders/placeholder.jpg"
						class="rounded-circle mr-2" height="34" alt=""> <span>${user.userName}</span>
				</a>

					<div class="dropdown-menu dropdown-menu-right">
						<div class="dropdown-divider"></div>
						
						<a href="JavaScript:Void(0)"
								data-toggle="modal"
								data-target="#user_attendance_modal"
								class="dropdown-item" title="Add-Attendance">
								<i class="icon-add">
								  Attendance
								</i>
						</a>
						
						<a href="/changepassword" class="dropdown-item">
								<i class="icon-pencil"></i>Change password
						</a>
							
						<a href="/logout" class="dropdown-item">
								<i class="icon-switch2"></i> Logout
						</a>
						
					</div>
				</li>
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
	<!-- /side bar mobile toggler -->


	<!-- Side bar content -->
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

				
						<!-- Users slide bar -->

						<li class="nav-item nav-item-submenu"><a href="#"
							class="nav-link"><i class="icon-stack"></i> <span>Users</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Starter kit">
								<!-- <li class="nav-item"><a href="../seed/layout_nav_horizontal.html" class="nav-link">Horizontal navigation</a></li>
								<li class="nav-item"><a href="../seed/sidebar_none.html" class="nav-link">No sidebar</a></li> -->
								<li class="nav-item"><a href="/saveuser" class="nav-link">Add
										new User</a></li>
								<li class="nav-item nav-item-submenu"><a href="/user"
									class="nav-link">All Users</a>
								</li>
							</ul>
						</li>


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

						<li class="nav-item">
							<a href="setting" class="nav-link">
								<i class="icon-width"> </i> <span
								class="glyphicon glyphicon-cog">Settings</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		


		<!-- Main content -->
		<div class="content-wrapper">

			<!-- Page header -->
			<div class="page-header page-header-light">
				<div class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="/dashboard" class="breadcrumb-item"><i
								class="icon-home2 mr-2"></i> Home</a> <span
								class="breadcrumb-item active">Setting</span>
						</div>

						<a href="#" class="header-elements-toggle text-default d-md-none"><i
							class="icon-more"></i></a>
					</div>


				</div>
			</div>
			<!-- /page header -->






<!-- ** form tebal for setting  **  -->


<div class="admin-content-con">
	<header>
		<h2 >Company Name </h2>
	</header>

	<form id="setting-form" class="form" action="/savedetailes" method="post">
		<div class="form-group col-md-8">
			<input type="text" class="form-control " id="title" required
				name="companyName" placeholder="Enter Company Name" style="text-align: center">
		</div>

		<div class="container">
			<div class="row">
			
				
<!-- ** iN time form**  -->
					<div class="col-md-4">
						<h6 style="text-align: center" class="font-weight-semibold">In time</h6>
							<div class="input-group">
								<span class="input-group-prepend">
										<span class="input-group-text">
											<i class="icon-alarm"></i>
										</span>
								</span>
								<input type="text" class="form-control pickatime" id="title" 
									name="inTime" placeholder="In time" style="text-align: center" required>
							</div>
					</div>


<!-- ** out time form**  -->
					<div class="col-md-4">
						<h6 style="text-align: center" class="font-weight-semibold">Out time</h6>
							<div class="input-group">
								<span class="input-group-prepend">
										<span class="input-group-text">
											<i class="icon-alarm"></i>
										</span>
								</span>
								<input type="text" class="form-control pickatime" id="title" 
									name="outTime" placeholder="Out time" style="text-align: center" required>
							</div>
					</div>
				
				
				
			</div>
		</div>

		<div class="form-group col-md-2 ">
			<button type="submit" class="btn btn-primary btn-block">save
			</button>
		</div>
	</form>
</div>
			
			
<!--** showing page of data **  -->	

			<div class="card-body">
						<div class="table-responsive">
							<h2 style="text-align: center">Company Details</h2>
							<table class="table table-hover" id="dataTable">
								<thead>
									<tr>
										<th>#</th>
										<th>Company Name</th>
										<th>In-Time</th>
										<th>Out-Time</th>
										<th>Actions</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach var="company" items="${companylist}">
										<tr id="list${company.companyId}">
											<td id="compnayid">${company.companyId}</td>
											<td id="companynameid">${company.companyName}</td>
											<td id="intimeid">${company.inTime}</td>
											<td id="outtimeid">${company.outTime}</td>
											<td>
												<span> 
												
													<a href="JavaScript:Void(0)" data-toggle="modal"
														data-id="${company.companyId}"
														data-target="#company_update_modal"
														class="btn btn-primary btn-sm edit-company" title="Edit">
															<i class="fa fa-edit"></i>Edit
													</a> 
													
													<a href="JavaScript:Void(0)" data-toggle="modal"
														data-id="${company.companyId}"
														class="btn btn-primary btn-sm delete-company" title="Delete">
														<i class="fa fa-trash"> </i>Delete
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
	</div>
	
	
<!--******* update model ********  -->

	<div class="modal fade" id="company_update_modal">
				<div class="modal-dialog">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header bg-warning">
							<h2>Update Company Details</h2>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<!-- Modal body -->
						<div class="modal-body">
							<form id="company-form" class="form" action="/savedetailes"
								method="post">

								<div class="form-group">


									<input type="hidden" id="updatecompanyid" name="companyId">

									<div class="form-group">
										<div class="form-label-group">
											<h4>Company Name</h4>
											<input type="text" data-id="editname" id="editname"
												name="companyName" class="form-control" value="${company.companyName}"
												required="required" autofocus="autofocus">
										</div>
									</div>

									<div class="form-group">
										<div class="form-label-group">
											<h4>In-Time</h4>
											<input type="text" id="editintime" data-id="editintime"
												name="inTime" class="form-control"
												value="${company.inTime}" required="required"
												autofocus="autofocus">
										</div>
									</div>
									
									<div class="form-group">
										<div class="form-label-group">
											<h4>In-Time</h4>
											<input type="text" id="editouttime" data-id="editouttime"
												name="outTime" class="form-control"
												value="${company.outTime}" required="required"
												autofocus="autofocus">
										</div>
									</div>

									<button type="submit"
										class="btn btn-primary btn-block update-task">Update
									</button>

								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
			
			

<!-- *******attendance saving code ********-->

		<div class="modal fade"  id="user_attendance_modal">
				<div class="modal-dialog">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header ">
							<h2>Add Attendance</h2>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<!-- Modal body -->
						<div class="modal-body">
							<form id="attendance-form" class="form" 
								action="/saveattendance" name="attendanceform"
								method="post">
								
								<div class="form-group">
									<div class="form-group">
									
										<div class="form-label-group">
											<button type="button" id="intimeid" name="inTime"
												class="btn btn-success" >In
											</button>
										</div>
									</div>

									<div class="form-group">
										<div class="form-label-group">
											<button type="button" id="outtimeid" name="outTime"
												class="btn btn-danger" >Out
											</button>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				</div>
</body>


<script>
	$(document).ready(function() 
		{
			$("#company-form").submit(function(e) 
				{
					e.preventDefault(); // avoid to execute the actual submit of the form.
					var form = $(this);
					console.log("hello");
					  
					$.ajax(
							{
					           type: "POST",
					           url: "/savedetailes",
					           data: form.serialize(), // serializes the form's elements.
					           success: function(data)
						           {
						        	   var company = '<tr id="list' + data.companyId + '"><td>' + data.companyId + '</td><td>' + data.CompanyName + '</td><td>' + data.inTime + '</td><td>' + data.outTime + '</td>';
						        	   company += '<td><a href="javascript:void(0)" id="edit-company" data-id="' + data.id + '" class="btn btn-info edit-company">Edit</a></td>';
						        	   company += '<td><a href="javascript:void(0)" id="delete-company" data-id="' + data.id + '" class="btn btn-danger delete-company">Delete</a></td></tr>';
						               console.log(data);
					
						               $("#list" + data.companyId).replaceWith(company);
						               $('#company-form').trigger("reset");
						               $('#company_update_modal').modal('hide');
						               $('#list').modal('show');
						              
						               location.reload();
						              
						           }
				         });
				});
	
		});
	
	
	   
	$('body').on('click', '.edit-company', function () 
		{
			var companyid = $(this).data("id");
			console.log("hello is");
			alert(companyid);
			
			 $.ajax(
				{    	
				    type: "GET",
				    //please check url
				    url: "/company/findbyid/"+companyid,
				    success: function (data) 
				    {
					      $('#company_update_modal').modal('show');
					      console.log(data);
					      
					      $('#updatecompanyid').val(data.companyId);
					      $('#editname').val(data.companyName);
					      $('#editintime').val(data.inTime);
					      $('#editouttime').val(data.outTime);
					      
				          
				          //location.reload();
				  	},
				          error: function (data) 
				          {
				          	console.log('Error:', data);
				          }  
				 });	     
		});   
	    
</script> 
	
<!--***** delete task ***** -->
<script>
	$('body').on('click', '.delete-company', function () 
		{
			var companyid = $(this).data("id");
			alert(companyid);
			confirm("Are You sure want to delete ?");
			
			 $.ajax(
				{
				        	
				    type: "GET",
				    url: "/company/delete/"+companyid,
				    success: function (data) 
				    {
				            		
				          $("#list" + companyid).remove();
					      $('#list').modal('show');
				          $('.result').html(data);
				          location.reload();
				  	},
				            
				          error: function (data) 
				          {
				          	console.log('Error:', data);
				          } 
				      
				 });
			 updatestatus
		});   
						    
</script>
	
				 
<!--***** in time ajax code *****-->
 
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
 	
 <!-- ***** out time ajax code ***** -->
 	
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

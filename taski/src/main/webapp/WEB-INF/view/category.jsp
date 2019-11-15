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
						</li>



						<!-- settings  bar -->

						<li class="nav-item"><a href="setting" class="nav-link">
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
		<!-- /main sidebar -->


		<!-- Main content -->
		<div class="content-wrapper">

			<!-- Page header -->
			<div class="page-header page-header-light">
				<div class="page-header-content header-elements-md-inline">
					<div class="page-title d-flex">
						<h4>
							<i class="icon-arrow-left52 mr-2"></i> <span
								class="font-weight-semibold">Home</span> - Dashboard
						</h4>
						<a href="#" class="header-elements-toggle text-default d-md-none"><i
							class="icon-more"></i></a>
					</div>
				</div>

				<div
					class="breadcrumb-line breadcrumb-line-light header-elements-md-inline">
					<div class="d-flex">
						<div class="breadcrumb">
							<a href="/category" class="breadcrumb-item"><i
								class="icon-home2 mr-2"></i> Home</a> <span
								class="breadcrumb-item active">Category</span>
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
					<!-- Button to Open the Modal -->

					<div class="row">
						<div class="col-md-6 dashboard-right-cell">
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#myModal">+Add Category</button>
						</div>

						<div class="col-md-6 dashboard-left-cell">
							<div class="topnav">
								<!-- <form class="example" action="/categorylist"
									style="margin: auto; max-width: 300px">
									<input id="input" type="text" placeholder="Search.."
										name="search">
									<button type="submit">
										<i class="fa fa-search"></i>search
									</button>
								</form> -->
							</div>
						</div>
					</div>
				</div>
			</div>



			<!-- ** product table ** -->
			<div class="card-body">
				<div class="table-responsive">
					<table class="table datatable-basic" id="dataTable">
						<thead>
							<tr>
								<th>#</th>
								<th>Name</th>
								<th>Created</th>
								<th>Actions</th>

							</tr>
						</thead>

						<tbody>
							<c:forEach var="category" items="${categorylist}">
								<tr id="list${category.categoryId}">
									<td>${category.categoryId}</td>
									<td>${category.categoryName}</td>
									<td>${category.createdBy.userName}
									<td>
										<span>
											<a href="JavaScript:Void(0)"
												data-toggle="modal" data-id="${category.categoryId}"
												onclick="updateCategoryfun(this,${category.categoryId})"
												data-target="#category_update_modal"
												class="btn btn-primary btn-sm edit-category" title="Edit">
												<i class="fa fa-edit"></i>Edit
											</a>
											
											<a href="JavaScript:Void(0)" data-toggle="modal"
												data-id="${category.categoryId}"
												class="btn btn-primary btn-sm delete-category" title="Delete">
													<i class="fa fa-trash"></i>Delete
											</a>


									</span></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>


			<!-- pop-up open for add product -->
			<div class="modal fade" id="myModal">
				<div class="modal-dialog">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title">Add New Category</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<!-- Modal body -->
						<div class="modal-body">
							<form id="category-form" class="form" action="/savecategory"
								method="post">

								<div class="form-group">
									<h4>Category Name</h4>
									<div class="form-input-group">
										<input type="text" id="categoryname" name="categoryName"
											class="form-control" placeholder="Category Name"
											required="required" autofocus="autofocus">
									</div>

								</div>


								<div class="modal-footer">
									<button type="submit" data-toggle="modal" class="btn btn-primary">Save</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>






			<!-- <!--  edit model  -->

			<div class="modal fade" id="category_update_modal">
				<div class="modal-dialog">
					<div class="modal-content">

						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title">update category</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<!-- Modal body -->
						<div class="modal-body">
							<form id="category-form" class="form" action="/savecategory"
								method="post">

								<div class="form-group">


									<input type="hidden" id="updatecategoryid" name="categoryId" 	>

									<div class="form-group">
										<div class="form-label-group">
											<input type="text" id="updatecategoryname"
												data-id="updatecategoryname" name="categoryName"
												class="form-control" value="${category.categoryName }"
												required="required" autofocus="autofocus">
										</div>
									</div>
									
									<button type="submit" class="btn btn-primary btn-block save-category">Update
										</button>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>



<!-- AJAx code  -->


<script>

$(document).ready(function() {

	
	
	$("#category-form").submit(function(e) 
			{

			    e.preventDefault(); // avoid to execute the actual submit of the form.
				var form = $(this);
			  
		
			    $.ajax({
				           type: "POST",
				           url: "/savecategory",
				           data: form.serialize(), // serializes the form's elements.
				           success: function(data)
					           {
				        	   	$('#myModal').modal('hide');
					        	  	var category = '<tr id="list' + data.categoryId + '"><td>' + data.categoryId + '</td>';
					              	category += '<td><a href="javascript:void(0)" id="edit-category" data-id="' + data.id + '" class="btn btn-info edit-category">Edit</a></td>';
					             	category += '<td><a href="javascript:void(0)" id="delete-category" data-id="' + data.id + '" class="btn btn-danger delete-category">Delete</a></td></tr>';
					              	 console.log(data);
				
					               $("#list" + data.categoryId).replaceWith(category);
					               $('#category-form').trigger("reset");
					               $('#category_update_modal').modal('hide');
					               $('#list').modal('show'); 
					              
					                // console.log(data);
					                
					             	location.reload();
					              
					           }
			         });
			});
		
		});

						function updateCategoryfun(row, id) 
							{
								$("#updatecategory").attr("disabled", false);
							
								var crow = $(row).closest('tr');
								var categoryid=$(crow).find('td:eq(0)').text();
								var categoryName = $(crow).find('td:eq(1)').text();
								
								console.log(categoryid);
								console.log(categoryName);
								
								$('#updatecategoryid').val(id);
								$('#updatecategoryname').val(categoryName);
								
							
								//alert("hello you are editing ");
								//alert(categoryid);
							
							}
				
						
	</script>


	<!-- delete code  -->
				<script>
					   
					    $('body').on('click', '.delete-category', function () {
					        var categoryid = $(this).data("id");
					        alert(categoryid);
					        confirm("Are You sure want to delete !");
					 
					       
					     $.ajax({
					        	
					            type: "GET",
					            url: "/category/delete/"+categoryid,
					            success: function (data) {
					            	
					                $("#list" + categoryid).remove();
					                //location.reload();
						            $('#list').modal('show');
					                $('.result').html(data);
					            },
					            
					            error: function (data) {
					                console.log('Error:', data);
					            } 
					      
					        });
					     
					    });   
					    
					 </script>


					<script type="text/javascript">
						function showAlert(){
						alert("do you want to delete it?");
						}
					</script>


</html>

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

<!-- <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
 -->
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


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


</head>

<body>


	<!-- Main navbar -->
	<div class="navbar navbar-expand-md navbar-dark">

		<div class="navbar-brand">
			<a href="/category" class="d-inline-block"> <img
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
						class="rounded-circle mr-2" height="34" alt=""> <span>${user.userName}</span>
				</a>

					<div class="dropdown-menu dropdown-menu-right">
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"><i class="icon-cog5"></i>
							Account settings</a> 
						<a href="/logout" class="dropdown-item"><i
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


				<!-- Main left side navigation -->
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
								<li class="nav-item"><a
									href="../../../../layout_2/LTR/default/full/index.html"
									class="nav-link">Running Task</a></li>
								<li class="nav-item"><a
									href="../../../../layout_3/LTR/default/full/index.html"
									class="nav-link">Completed Task</a></li>
							</ul></li>
						<li class="nav-item nav-item-submenu"><a href="#"
							class="nav-link"><i class="icon-color-sampler"></i> <span>Personal
									Task</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Layouts">
								<li class="nav-item"><a href="/dashboard"
									class="nav-link active">Add new Task</a></li>
								<li class="nav-item"><a
									href="../../../../layout_2/LTR/default/full/index.html"
									class="nav-link">Running Task</a></li>
								<li class="nav-item"><a
									href="../../../../layout_3/LTR/default/full/index.html"
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
								<li class="nav-item"><a href="../seed/sidebar_main.html"
									class="nav-link">Add new User</a></li>
								<li class="nav-item nav-item-submenu"><a href="#"
									class="nav-link">All Users</a></li>
							</ul></li>


						<!-- Contacts bar -->

						<li class="nav-item nav-item-submenu"><a href="#"
							class="nav-link"><i class="icon-stack"></i> <span>Contacts</span></a>

							<ul class="nav nav-group-sub" data-submenu-title="Starter kit">

								<li class="nav-item"><a href="/addcontacts"
									class="nav-link">Add Contacts</a></li>
								<li class="nav-item nav-item-submenu"><a href="/contacts"
									class="nav-link">All Users</a> <!-- 	<ul class="nav nav-group-sub">
										</li>
							</ul></li>
						</li>



						<!-- settings  bar -->
								<li class="nav-item"><a
									href="../../../RTL/default/full/index.html" class="nav-link">
										<i class="icon-width"> </i> <span
										class="glyphicon glyphicon-cog">Settings</span>
								</a></li>
					</ul>
					</li>
				</div>
			</div>
		</div>


	</div>



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
	</div>
	<!-- /page header -->



	<div class="container">

		<div class="row">
			<div class="col-12">
				<!-- <a href="JavaScript:Void(0)" class="btn btn-success add-category"
					id="create-new-category">Add Category</a> -->
					
					
					<a href="JavaScript:Void(0)" data-toggle="modal"
							id="create-new-category"
							class="btn btn-success add-category"
							title="Save"> <i class="fa fa-save"></i>Save
					</a>

				<table class="table table-bordered" id="laravel_crud">
					<thead>
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>Created</th>
							<td colspan="2">Action</td>
						</tr>
					</thead>
					<tbody id="tcategoryid">
						<c:forEach var="category" items="${categorylist}">

							<tr id="listid${category.categoryId}">
								<td>${category.categoryId}</td>
								<td>${category.categoryName}</td>
								<td>${category.created}</td>
								<td>
									<a href="javascript:void(0)"
										data-id="${category.categoryId}" class="btn btn-info edit-user">Edit</a></td>
								<td>
								
									<a href="JavaScript:Void(0)" 
										data-toggle="modal"
										data-id="${category.categoryId}"
										class="btn btn-primary btn-sm delete-user"
										title="Delete"> 
										<i class="fa fa-trash"></i>Delete
															</a>
									<%-- <a href="javascript:void(0)"
										data-id="${category.categoryId}"
										class="btn btn-danger delete-user">Delete
									</a> --%>
										
								</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	
	
<!-- edit model start -->

							<div class="modal fade" id="ajax-category-model">
								<div class="modal-dialog">
									<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header">
									<h2>Update Category</h2>
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>

								<!-- Modal body -->
								<div class="modal-body">
									<form id="categoryForm" name="categoryForm" class="form-horizontal"
										 action="/savecategory" method="post">
										
									<div class="form-group">
									
											
											<input type="hidden" id="categoryid" name="categoryId" value=${category.categoryId }>
							
												<div class="form-group">
													<div class="form-label-group">
														<h4>Category Name </h4>
														<input type="text" data-id="categoryname" id="categoryname" name="categoryName" 
														class="form-control" value="${category.categoryName}" required="required" autofocus="autofocus" >
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

<!-- edit model end  -->


	<%-- <div class="modal fade" id="ajax-category-model" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="categorymodel"></h4>
				</div>
				<div class="modal-body">
					<form id="categoryForm" name="categoryForm" class="form-horizontal">
						<input type="hidden" name="categoryid" id="categoryid" value="${category.categoryId}">

						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">Name</label>
							<div class="col-sm-12">
								<input type="text" class="form-control" id="categoryname"
									name="categoryName" placeholder="Enter Name" value="${category.categoryName}"
									maxlength="50" required="required">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary save-category"
						id="btn-save" value="create">Save</button>
				</div>
			</div>
		</div>
	</div> --%>





	<!-- ajax started -->

	<!-- ajax end -->



	<script>
		$(document).ready(function() 
				{

			/*  When user click add user button */
			$('#create-new-category').click(function() {
				//alert(001);
				$('#btn-save').val("create-user");
				$('#categoryForm').trigger("reset");
				$('#categorymodel').html("Add New Category");
				$('#ajax-category-model').modal('show');
				//alert(001);
			});

			/* When click edit user */
			$('body').on('click', '.edit-user', function() {
				//alert("hello");
				console.log($(this).html());
				var categoryid = $(this).data('id');
				alert(categoryid);

				$.get('category/' + 'edit/' + categoryid, function(data) {
					$('#categorymodal').html("Edit category");
					$('#btn-save').val("editcategory");
					$('#ajax-category-model').modal('show');
					$('#categoryid').val(data.id);
					$('#name').val(data.name);
					$('#created').val(data.created);
				})
			});

			//delete user login
			$('body').on('click', '.delete-user', function() {
				var categoryid = $(this).data("id");
				alert(categoryid);
				confirm("Are You sure want to delete !");

				$.ajax({

					type : "GET",
					url : "/category/delete/" + categoryid,
					success : function(data) {
						$("#listid" + categoryid).remove();
						    $('#listid').modal('show');
			                $('.result').html(data);
					},
					error : function(data) {
						console.log('Error:', data);
					}
				});
			}); //delete-userdelete-user
		});

		//save category

		$('body').on('click','.save-category',function() {

							var categoryid = $(this).data('id');

							({
								url : '/savecategory',
								data : {"categoryName" : $('#categoryname').val()},
								type : 'post',
								success : function(data) {
									$('#ajax-category-model').modal('hide');
					                $('.result').html(data);
									location.reload();

									/* for adding new data */

									var category = '<tr id="listid' + data.id + '"><td>'
											+ data.id
											+ '</td><td>'
											+ data.categoryName + '</td>';

									category += '<td><a href="javascript:void(0)" id="edit-user" data-id="'
											+ data.id
											+ '" class="btn btn-info">Edit</a></td>';

									category += '<td><a href="javascript:void(0)" id="delete-user" data-id="'
											+ data.id
											+ '" class="btn btn-danger delete-user">Delete</a></td></tr>';

									/*  */

									if (actionType == "save-category") {
										$('#tcategoryid').prepend(category);
									} else {
										$("#listid" + data.id).replaceWith(
												category);
									}

									$('#categoryForm').trigger("reset");
									$('#ajax-category-model').modal('hide');
									$('#btn-save').html('Save Changes');

								},
								error : function(data) {
									console.log('Error:', data);
									$('#btn-save').html('Save Changes');
								}
							});

						});
	</script>


</body>
</html>

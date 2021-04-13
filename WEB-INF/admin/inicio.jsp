<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mezcales La Parroquia |</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">

<link rel="stylesheet" href="document/css/all.min.css">
<link rel="stylesheet" href="document/css/fontawesome.min.css"
	type="text/css">

<link rel="stylesheet" href="document/css/adminlte.min.css">

<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
</head>
<body class="hold-transition sidebar-mini">
	<!-- Site wrapper -->
	<div class="wrapper">
		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Inicio</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Contacto</a></li>
			</ul>

			<!-- SEARCH FORM -->
			<form class="form-inline ml-3">
				<div class="input-group input-group-sm">
					<input class="form-control form-control-navbar" type="search"
						placeholder="Search" aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-navbar" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</form>
		</nav>

		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="#" class="brand-link"> <img src="imagenes/busqueda.png"
				alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
				style="opacity: .8"> <span
				class="brand-text font-weight-light">MLP</span>
			</a>

			<div class="sidebar">
				<!-- Sidebar user (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="imagenes/busqueda.png" class="img-circle elevation-2"
							alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">${usuario}</a>
					</div>
				</div>

				<!-- SidebarSearch Form -->
				<div class="form-inline">
					<div class="input-group" data-widget="sidebar-search">
						<input class="form-control form-control-sidebar" type="search"
							placeholder="Search" aria-label="Search">
						<div class="input-group-append">
							<button class="btn btn-sidebar">
								<i class="fas fa-search fa-fw"></i>
							</button>
						</div>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item"><a href="${pageContext.request.contextPath}/Modificar?accion=busqueda"
							class="nav-link"> <i class="nav-icon fas fa-tachometer-alt"></i>
								<p>Editar Productos</p>
						</a></li>
						<li class="nav-item"><a href="${pageContext.request.contextPath}/Modificar?accion=pagina" class="nav-link"> <i
								class="nav-icon fas fa-copy"></i>
								<p>Clientes Registrados</p>
						</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/Modificar?accion=pagina" class="nav-link"> <i
								class="nav-icon fas fa-chart-pie"></i>
								<p>Ventas</p>
						</a></li>
						<li class="nav-item"><a href="${pageContext.request.contextPath}/LoginUsuario?accion=cerrar" class="nav-link"> <i
								></i>
								<p>Cerrar sesion</p>
						</a></li>
					</ul>
				</nav>
			</div>
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->

			<p>Editar Informacion</p>

				
		</div>
		<!-- /.content-wrapper -->

		<footer class="main-footer">

		</footer>

		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<script src="document/plugins/bootstrap.bundle.min.js"></script>
	<script src="document/plugins/Chart.min.js"></script>
	<script src="document/plugins/sparkline.js"></script>
	<script src="document/plugins/jquery.vmap.min.js"></script>
	<script src="document/plugins/jquery.vmap.usa.js"></script>
	<script src="document/plugins/jquery.knob.min.js"></script>
	<script src="document/plugins/moment.min.js"></script>
	<script src="document/plugins/daterangepicker.js"></script>
	<script src="document/plugins/tempusdominus-bootstrap-4.min.js"></script>
	<script src="document/plugins/summernote-bs4.min.js"></script>
	<script src="document/plugins/jquery.overlayScrollbars.min.js"></script>
	<script src="document/js/adminlte.js"></script>
	<script src="document/js/demo.js"></script>
	<script src="document/js/pages/dashboard.js"></script>

	<script src="document/js/jquery.min.js"></script>
	<script src="document/js/bootstrap.bundle.min.js"></script>
	<script src="document/js/adminlte.min.js"></script>
	<script src="document/js/demo.js"></script>
	<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mezcales.parroquia.modelo.Producto"%>

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
		</nav>

		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="#" class="brand-link"> <img src="images/mez.png"
				alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
				style="opacity: .8"> <span
				class="brand-text font-weight-light">Mezcales La Parroquia</span>
			</a>

			<div class="sidebar">
				<!-- Sidebar user (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="images/mez.png" class="img-circle elevation-2"
							alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">${usuario}</a>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item"><a href="${pageContext.request.contextPath}/Administrador?accion=paginaEditar"
							class="nav-link"> <i class="nav-icon fas fa-tachometer-alt"></i>
								<p>Productos</p>
						</a></li>
						<li class="nav-item"><a href="${pageContext.request.contextPath}/Administrador?accion=paginaEditar" class="nav-link"> <i
								class="nav-icon fas fa-copy"></i>
								<p>Clientes Registrados</p>
						</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/Administrador?accion=pagina" class="nav-link"> <i
								class="nav-icon fas fa-chart-pie"></i>
								<p>Ventas</p>
						</a></li>
						<li class="nav-item"><a href="${pageContext.request.contextPath}/Administrador?accion=cerrarSesion" class="nav-link"> <i
								></i>
								<p>Cerrar sesion</p>
						</a></li>
					</ul>
				</nav>
			</div>
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<section id="personas">
	<div class="col-md-50">
	
	   <jsp:include page="/WEB-INF/admin/productos/agregarProducto.jsp" />
	
	   <!--Cabecero-->
        <jsp:include page="/WEB-INF/admin/comunes/cabecero.jsp"/>

        <!--Botones de navegacion-->
        <jsp:include page="/WEB-INF/admin/comunes/botonesNavegacion.jsp"/>
	
	
	<h4></h4>
	
			<table border="1" style="width: 100%">
				<thead class="thead-dark">
					<tr>
						<th></th>
						<th>Nombre Del Producto</th>
						<th>Fotografia</th>
						<th>Descripcion</th>
						<th>Precio</th>
						<th>Stock</th>
						<th>Categoria</th>
						
					</tr>
				</thead>
				<tbody>
					<!-- Iteramos cada elemento de la lista de clientes -->
					<c:forEach var="pro" items="${producto}">
						<tr>
							<td><a
								href="${pageContext.request.contextPath}/Administrador?accion=editarProducto&id=${pro.getId()}"
								class="btn btn-secondary"> <i
									class="fas fa-angle-double-right"></i> Editar
							</a></td>
							<td>${pro.getNombres()}</td>
							<td><img src="ControladorIMG?id=${pro.getId()}"
										width="100" height="100"></td>
							<td>${pro.getDescripcion()}</td>
							<td>${pro.getPrecio()}</td>
							<td>${pro.getStock()}</td>
							<td>${pro.getCategoria()}</td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>	
	</div>
	
<style>
 
  table{ 
 	background-color: white; 
 	border-collapse: collapse; 
 	width: 500%; 
 }

 thead{ 
	background-color: #246355; 
 	border-bottom: solid 0px #0F362D; 
	color: white; 
} 

 tr:nth-child(even){ 
 	background-color: #ddd; 
 } 

    tr:hover td{ 
 	background-color: #369681; 
 	color: white;
    } 

</style>
	
</section>

		</div>
		<footer class="main-footer">
		</footer>
		<aside class="control-sidebar control-sidebar-dark">
		</aside>
	</div>
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
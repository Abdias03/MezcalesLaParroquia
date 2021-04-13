<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="conexion.ConexionDaoJDBC"%>
<%@ page import="com.mezcales.parroquia.modelo.Producto"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- anexeo para cache -->
<meta http-equiv="Expires" content="0">
<meta http-equiv="Last-Modified" content="0">
<meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
<meta http-equiv="Pragma" content="no-cache">
<!-- fin anexo -->
<title>Mezcales La Parroquia</title>

<meta charset="utf-8">
<jsp:include page="/jsp/Comunes/Estilos.jsp" />
<link rel="stylesheet" type="text/css" href="css/tienda.css">
</head>

<body>

	<div class="super_container">

		<!-- Header -->

		<header class="header trans_300">

			<!-- Navegacion Superior -->
			<jsp:include page="/jsp/Comunes/NavSuperior.jsp" />

			<!-- Login -->
			<jsp:include page="/jsp/Comunes/Login.jsp" />

			<!-- Registro -->
			<jsp:include page="/jsp/Comunes/Registro.jsp" />

			<!-- Main Navigation -->
			<jsp:include page="/jsp/Comunes/MainNav.jsp" />

		</header>

		<div class="fs_menu_overlay"></div>

		<!-- Hamburger Menu -->

		<jsp:include page="/jsp/Comunes/NavMovil.jsp" />

		<div class="container product_section_container">

			<!-- Tienda anexada -->
			<div class="new_arrivals">
				<div class="container">
					<div class="row">
						<div class="col text-center">
							<div class="section_title new_arrivals_title">
								<h4>PRODUCTOS</h4>
							</div>
						</div>
					</div>
					<div class="row align-items-center">
						<div class="col text-center">
							<div class="new_arrivals_sorting">
								<ul
									class="arrivals_grid_sorting clearfix button-group filters-button-group">
									<li
										class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center active is-checked"
										data-filter="*">Todos</li>
									<li
										class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center"
										data-filter=".crema">Crema</li>
									<li
										class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center"
										data-filter=".pulpa">Pulpa</li>
									<li
										class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center"
										data-filter=".natural">Natural</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="product-grid"
								data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>

								<c:forEach var="pro" items="${productos}">

									<c:set var="producto" value="${pro.getCategoria()}" />

									<c:if test="${fn:containsIgnoreCase(producto, 'pulpa')}">
										<!-- Product 1 -->
										
										<div class="product-item pulpa">
											<div class="product discount product_filter">
											<div class="product-box">
												<div class="product_image">
													<img src="ControladorIMG?id=${pro.getId()}" alt="">
												</div>
												<div class="favorite favorite_left"></div>
												<div class="product_info">
													<h6 class="product_name">
														<a href="single.jsp">${pro.getNombres()}</a>
													</h6>
													<div class="product_price">${pro.getPrecio()}</div>
												</div>
											<div class="red_button_tienda add_to_cart_button">
												<a
													href="Controlador?accion=AgregarCarrito&id=${pro.getId()}">Agregar
													al carrito</a>
											</div>
										</div>
										</div>
										</div>
									</c:if>
									<!-- Product Crema 2 -->
									<c:if test="${fn:containsIgnoreCase(producto, 'crema')}">
									  
										<div class="product-item crema">
										<div class="product-box">
											<div class="product product_filter">
												<div class="product_image">
													<img src="ControladorIMG?id=${pro.getId()}" alt="">
												</div>
												<div class="favorite"></div>
												<div class="product_info">
													<h6 class="product_name">
														<a href="single.jsp">${pro.getNombres()}</a>
													</h6>
													<div class="product_price">${pro.getPrecio()}
														<span>$500.00</span>
													</div>
												</div>
											<div class="red_button_tienda add_to_cart_button">
												<a
													href="Controlador?accion=AgregarCarrito&id=${pro.getId()}">Agregar
													al carrito</a>
											</div>
										</div>	
										</div>
										</div>
									</c:if>
									<!-- Product Natural 3 -->
									<c:if test="${fn:containsIgnoreCase(producto, 'natural')}">
										<div class="product-item natural">
											<div class="product product_filter">
											 <div class="product-box">
												<div class="product_image">
													<img src="ControladorIMG?id=${pro.getId()}" alt="">
												</div>
												<div class="favorite"></div>
												<div class="product_info">
													<h6 class="product_name">
														<a href="single.jsp">${pro.getNombres()}</a>
													</h6>
													<div class="product_price">${pro.getPrecio()}
														<span>$500.00</span>
													</div>
												</div>
											<div class="red_button_tienda add_to_cart_button">
												<a
													href="Controlador?accion=AgregarCarrito&id=${pro.getId()}">Agregar
													al carrito</a>
											</div>
										</div>
										</div>
										</div>
									</c:if>
								</c:forEach>

							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Benefit -->
			<jsp:include page="/jsp/Comunes/PieDePaginaTienda.jsp" />
		</div>

		<jsp:include page="/jsp/Comunes/Scripts.jsp" />
</body>

</html>

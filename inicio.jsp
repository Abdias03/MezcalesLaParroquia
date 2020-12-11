<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="conexion.ConexionDaoJDBC"%>
<%@ page import="com.mezcales.parroquia.modelo.Producto"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<!-- anexeo para cache -->
<meta http-equiv="Expires" content="0">
  <meta http-equiv="Last-Modified" content="0">
  <meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
  <meta http-equiv="Pragma" content="no-cache">
<!-- fin anexo -->
<meta charset="utf-8">
<title>Mezcales La Parroquia</title>
<jsp:include page="/jsp/Comunes/Estilos.jsp" />

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

		<!-- Navegador Movil -->

		<jsp:include page="/jsp/Comunes/NavMovil.jsp" />

		<!-- Slider -->

		<div class="main_slider"
			style="background-image: url(images/slider_Mezcales.jpg)">
			<div class="container fill_height">
				<div class="row align-items-center fill_height">
					<div class="col">
						<div class="main_slider_content">
							<h6></h6>
							<h1></h1>
							<div class="red_button shop_now_button">
								<a href="Controlador?accion=tienda">Comprar</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Banner -->

		<jsp:include page="/jsp/Comunes/Banner.jsp" />

		<!-- Tienda -->
		<c:forEach var="pro" items="${productos}">

			<c:set var="producto" value="${pro.getCategoria()}" />

			<c:if test="${fn:containsIgnoreCase(producto, 'promo')}">

				<div class="deal_ofthe_week">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-lg-6">
								<div class="deal_ofthe_week_img">
									<img src="ControladorIMG?id=${pro.getId()}" alt="">
								</div>
							</div>
							<div class="col-lg-6 text-right deal_ofthe_week_col">
								<div
									class="deal_ofthe_week_content d-flex flex-column align-items-center float-right">
									<div class="section_title">
										<h2>${pro.getNombres()}</h2>
									</div>
									<ul class="timer">
										<li
											class="d-inline-flex flex-column justify-content-center align-items-center">
											<div id="day" class="timer_num">03</div>
											<div class="timer_unit">Dia</div>
										</li>
										<li
											class="d-inline-flex flex-column justify-content-center align-items-center">
											<div id="hour" class="timer_num">15</div>
											<div class="timer_unit">Hora</div>
										</li>
										<li
											class="d-inline-flex flex-column justify-content-center align-items-center">
											<div id="minute" class="timer_num">45</div>
											<div class="timer_unit">Minutos</div>
										</li>
										<li
											class="d-inline-flex flex-column justify-content-center align-items-center">
											<div id="second" class="timer_num">23</div>
											<div class="timer_unit">Segundos</div>
										</li>
									</ul>
									<div class="red_button deal_ofthe_week_button">
										<a href="Controlador?accion=Comprar&id=${pro.getId()}">Comprar
											Ahora</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:if>
		</c:forEach>

		<!-- Best Sellers -->
		<jsp:include page="/jsp/Comunes/PieDePaginaInicio.jsp" />
		
		<!-- Scrips -->
		<jsp:include page="/jsp/Comunes/Scripts.jsp" />

</body>

</html>

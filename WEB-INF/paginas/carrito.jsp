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
<!-- <script scr="https://www.paypalobjects.com/api/checkout.js"></script> -->
<script src="https://www.paypal.com/sdk/js?client-id=AQJqospxVrbtlWQXWbUzzQhfZkfmYyK6zqyN0fTfemEjsE6QOpXUy9UVxY2mEG4SSlvL0WyVGwrfpeRU"></script>
</head>

<body>

	<!-- Header -->

	<header class="header trans_300">

		<!-- Navegacion Superior -->
		<jsp:include page="/jsp/Comunes/NavSuperior.jsp" />
		<jsp:include page="/jsp/Comunes/Login.jsp" />
		<jsp:include page="/jsp/Comunes/Registro.jsp" />
		<jsp:include page="/jsp/Comunes/MainNav.jsp" />

	</header>

	<div class="fs_menu_overlay"></div>

	<!-- Navegador Movil -->
	<jsp:include page="/jsp/Comunes/NavMovil.jsp" />

	<div class="container product_section_container">

		<div class="container mt-4">
			<h3>Carrito</h3>
			<br>
			<div class="row">
				<div class="col-sm-8">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>ITEM</th>
								<th>NOMBRES</th>
								<th>DESCRIPCION</th>
								<th>PRECIO</th>
								<th>CANT</th>
								<th>SUBTOTAL</th>
								<th>ACCION</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="car" items="${carrito}">
								<tr>
									<td>${car.getItem()}</td>
									<td>${car.getNombres()}</td>
									<td><img src="ControladorIMG?id=${car.getIdProducto()}"
										width="100" height="100"> <br>${car.getDescripcion()}
									</td>

									<td><lable>$</lable>${car.getPrecioCompra()}</td>
									<td>
									<input type="hidden" id="idProducto" value="${car.getIdProducto()}">
									<input type="number" id="idCantidad" value="${car.getCantidad()}" min="1">
									</td>
									<td><lable>$</lable>${car.getSubTotal()}</td>
									<td>
										<input type="hidden" id="idp" value="${car.getIdProducto()}">
										<button style="background-color: Tomato;" type="button" href="#" id="btnDelete" value="Eliminar">Eliminar</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

				</div>
				<div class="col-sm-4">
					<div class="card">
						<div class="card-header">
							<h3>Generar Compra</h3>
						</div>
						<div class="card-body">
						<form action="${pageContext.request.contextPath}/AuthorizePaymentServlet?accion=pagar" method="POST">
						
							<label>subtotal:</label> 
							<input type="text" name="subtotal" value="${totalPagar}" name="subtotal" readonly="" class="form-control">
							<label>Descuento:</label>
							<input type="text" readonly="" class="form-control">
							<label>TotalPagar:</label> 
							<input type="text" name="Total_pagar" value="${totalPagar}" readonly="" class="form-control">
<%-- 							<input type="hidden" id="idProducto" value="${car.getNombres()}" name="nombre"> --%>
						</div>
						<div class="card-footer">
							 <button type="submit" class="signupbtn">Comprar</button>
							 <img data-testid="header-logo" src="https://www.paypalobjects.com/checkoutweb/release/hermione/media/logo.7e5b43e3.svg" width="112" height="29" alt="PayPal">
<%-- 								<%@include file="checkout.jsp"%> --%>
<!-- 							<a href="Controlador?accion=GenerarCompra" class="btn btn-danger btn-block">Generar Compra</a> -->
						</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="benefit">
			<div class="container">
				<div class="row benefit_row">
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-truck" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>Envios a Domicilio</h6>
								<p>Envios Unicamente en CDMX</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-money" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>Cobro</h6>
								<p>Efectivo - Tranferencia Electronica</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-clock-o" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>Abierto Toda la semana</h6>
								<p>8AM - 09PM</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Newsletter -->

		<div class="newsletter">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div
							class="newsletter_text d-flex flex-column justify-content-center align-items-lg-start align-items-md-center text-center">
							<h4>Infografia</h4>
							<p>Subscribete a Nuestra Infografia</p>
						</div>
					</div>
					<div class="col-lg-6">
						<form action="post">
							<div
								class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-lg-end justify-content-center">
								<input id="newsletter_email" type="email" placeholder="Tu email"
									required="required" data-error="Valid email is required.">
								<button id="newsletter_submit" type="submit"
									class="newsletter_submit_btn trans_300" value="Submit">subscribir</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer -->

		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div
							class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center">
							<ul class="footer_nav">
								<li><a href="#">Blog</a></li>
								<li><a href="#">FAQs</a></li>
								<li><a href="contact.jsp">Contactanos</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div
							class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">
							<ul>
								<li><a href="https://www.facebook.com/MezcalesLaParroquia"><i
										class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<!--<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li> -->
								<li><a
									href="https://www.instagram.com/mezcales.laparroquia"><i
										class="fa fa-instagram" aria-hidden="true"></i></a></li>
								<!--<li><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li> -->
								<!--<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li> -->
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="footer_nav_container">
							<div class="cr">
								©2020 todos los derechos by: <a href="#">Asimov320</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>

	</div>

	<!-- Scrips -->
	<jsp:include page="/jsp/Comunes/Scripts.jsp" />
</body>

</html>
